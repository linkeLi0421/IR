; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_drv.c"
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
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.75, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.82, ptr, i32, ptr, i8, i32 }
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
%struct.anon.82 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.102, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.102 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.msm_vblank_work = type { %struct.work_struct, i32, i8, ptr }
%struct.msm_kms_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.msm_mdss = type { ptr, ptr }
%struct.msm_mdss_funcs = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.msm_file_private = type { %struct.rwlock_t, %struct.list_head, i32, ptr, %struct.kref, i32, [12 x ptr] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.96, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.96 = type { i8, i64 }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.72, ptr }
%union.anon.72 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.drm_msm_param = type { i32, i32, i64 }
%struct.drm_msm_gem_new = type { i64, i32, i32 }
%struct.drm_msm_gem_info = type { i32, i32, i64, i32, i32 }
%struct.msm_gem_object = type { %struct.drm_gem_object, i32, i8, i8, i8, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.list_head, ptr, [32 x i8], i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_msm_gem_cpu_prep = type { i32, i32, %struct.drm_msm_timespec }
%struct.drm_msm_timespec = type { i64, i64 }
%struct.drm_msm_wait_fence = type { i32, i32, %struct.drm_msm_timespec, i32 }
%struct.msm_gpu_submitqueue = type { i32, i32, i32, i32, i32, ptr, %struct.list_head, %struct.idr, %struct.mutex, %struct.kref, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.77, i64, i64, i32, %struct.kref, i32 }
%union.anon.77 = type { i64 }
%struct.drm_msm_gem_madvise = type { i32, i32, i32 }
%struct.drm_msm_submitqueue = type { i32, i32, i32 }

@__UNIQUE_ID_fbdev303 = internal constant [37 x i8] c"parm=fbdev:Enable fbdev compat layer\00", section ".modinfo", align 1
@__param_str_fbdev = internal constant [6 x i8] c"fbdev\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@fbdev = internal global i8 1, align 1
@__param_fbdev = internal constant %struct.kernel_param { ptr @__param_str_fbdev, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @fbdev } }, section "__param", align 4
@__UNIQUE_ID_fbdevtype304 = internal constant [20 x i8] c"parmtype=fbdev:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_vram305 = internal constant [65 x i8] c"parm=vram:Configure VRAM size (for devices without IOMMU/GPUMMU)\00", section ".modinfo", align 1
@__param_str_vram = internal constant [5 x i8] c"vram\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@vram = internal global ptr @.str.3, align 4
@__param_vram = internal constant %struct.kernel_param { ptr @__param_str_vram, ptr @__this_module, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.64 { ptr @vram } }, section "__param", align 4
@__UNIQUE_ID_vramtype306 = internal constant [20 x i8] c"parmtype=vram:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_dumpstate307 = internal constant [40 x i8] c"parm=dumpstate:Dump KMS state on errors\00", section ".modinfo", align 1
@__param_str_dumpstate = internal constant [10 x i8] c"dumpstate\00", align 1
@dumpstate = dso_local global i8 0, align 1
@__param_dumpstate = internal constant %struct.kernel_param { ptr @__param_str_dumpstate, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @dumpstate } }, section "__param", align 4
@__UNIQUE_ID_dumpstatetype308 = internal constant [24 x i8] c"parmtype=dumpstate:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_modeset309 = internal constant [70 x i8] c"parm=modeset:Use kernel modesetting [KMS] (1=on (default), 0=disable)\00", section ".modinfo", align 1
@__param_str_modeset = internal constant [8 x i8] c"modeset\00", align 1
@modeset = internal global i8 1, align 1
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype310 = internal constant [22 x i8] c"parmtype=modeset:bool\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"%s_clk\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Using legacy clk name binding.  Use \22%s\22 instead of \22%s\22\0A\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"crtc=%u\00", align 1
@dt_match = internal constant [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdp4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-mdss\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author311 = internal constant [38 x i8] c"author=Rob Clark <robdclark@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [27 x i8] c"description=MSM DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"16m\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to get memory resource: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to ioremap: %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"init\0A\00", align 1
@msm_platform_driver = internal global %struct.platform_driver { ptr @msm_pdev_probe, ptr @msm_pdev_remove, ptr @msm_pdev_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"msm\00", align 1
@msm_pm_ops = internal constant %struct.dev_pm_ops { ptr @msm_pm_prepare, ptr @msm_pm_complete, ptr @msm_pm_suspend, ptr @msm_pm_resume, ptr @msm_pm_suspend, ptr @msm_pm_resume, ptr @msm_pm_suspend, ptr @msm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @msm_runtime_suspend, ptr @msm_runtime_resume, ptr null }, align 4
@msm_drm_ops = internal constant %struct.component_master_ops { ptr @msm_drm_bind, ptr @msm_drm_unbind }, align 4
@.str.9 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to populate children devices\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"*ERROR* failed to find MDSS MDP node\0A\00", align 1
@dpu_dt_match = external dso_local constant [0 x %struct.of_device_id], align 4
@mdp5_dt_match = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"qcom,mdp4\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"*ERROR* unable to parse port endpoint\0A\00", align 1
@msm_gpu_match = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adreno-3xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amd,imageon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,kgsl-3d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@msm_driver = internal constant %struct.drm_driver { ptr null, ptr @msm_open, ptr @msm_postclose, ptr @drm_fb_helper_lastclose, ptr null, ptr null, ptr null, ptr null, ptr @msm_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @msm_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @msm_gem_dumb_create, ptr @msm_gem_dumb_map_offset, ptr null, i32 1, i32 8, i32 0, ptr @.str.8, ptr @.str.31, ptr @.str.32, i32 59, ptr @msm_ioctls, i32 13, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.13 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to allocate drm_device\0A\00", align 1
@msm_drm_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"&priv->obj_lock\00", align 1
@msm_drm_init.__key.15 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"&priv->mm_lock\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"drivers/gpu/drm/msm/msm_drv.c\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"*ERROR* failed to load kms\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"*ERROR* kms hw init failed: %d\0A\00", align 1
@mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @msm_framebuffer_create, ptr null, ptr @drm_fb_helper_output_poll_changed, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@mode_config_helper_funcs = internal constant %struct.drm_mode_config_helper_funcs { ptr @msm_atomic_commit_tail, ptr null }, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"crtc_event:%d\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"*ERROR* failed to create crtc_event kthread\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"*ERROR* failed to initialize vblank\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"*ERROR* failed to install IRQ handler\0A\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"*ERROR* msm_disp_snapshot_init failed ret = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"\016[drm] using VRAM carveout: %lx@%pa\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"\016[drm] using %s VRAM carveout\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"*ERROR* failed to allocate VRAM\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"VRAM: %08x->%08x\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"MSM Snapdragon DRM\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"20130625\00", align 1
@msm_ioctls = internal constant [13 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @msm_ioctl_get_param, ptr @.str.33 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @msm_ioctl_gem_new, ptr @.str.34 }, %struct.drm_ioctl_desc { i32 -1072143293, i32 32, ptr @msm_ioctl_gem_info, ptr @.str.35 }, %struct.drm_ioctl_desc { i32 1075340356, i32 32, ptr @msm_ioctl_gem_cpu_prep, ptr @.str.36 }, %struct.drm_ioctl_desc { i32 1074029637, i32 32, ptr @msm_ioctl_gem_cpu_fini, ptr @.str.37 }, %struct.drm_ioctl_desc { i32 -1068997562, i32 32, ptr @msm_ioctl_gem_submit, ptr @.str.38 }, %struct.drm_ioctl_desc { i32 1075864647, i32 32, ptr @msm_ioctl_wait_fence, ptr @.str.39 }, %struct.drm_ioctl_desc { i32 -1072929720, i32 32, ptr @msm_ioctl_gem_madvise, ptr @.str.40 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072929718, i32 32, ptr @msm_ioctl_submitqueue_new, ptr @.str.41 }, %struct.drm_ioctl_desc { i32 1074029643, i32 32, ptr @msm_ioctl_submitqueue_close, ptr @.str.42 }, %struct.drm_ioctl_desc { i32 1075340364, i32 32, ptr @msm_ioctl_submitqueue_query, ptr @.str.43 }], align 4
@fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@load_gpu.init_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @load_gpu.init_lock, i64 12), ptr getelementptr (i8, ptr @load_gpu.init_lock, i64 12) } }, align 4
@context_init.ident = internal global %struct.atomic_t zeroinitializer, align 4
@.str.33 = private unnamed_addr constant [14 x i8] c"MSM_GET_PARAM\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"MSM_GEM_NEW\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"MSM_GEM_INFO\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"MSM_GEM_CPU_PREP\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"MSM_GEM_CPU_FINI\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"MSM_GEM_SUBMIT\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"MSM_WAIT_FENCE\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"MSM_GEM_MADVISE\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"MSM_SUBMITQUEUE_NEW\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"MSM_SUBMITQUEUE_CLOSE\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"MSM_SUBMITQUEUE_QUERY\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"invalid flags: %08x\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"invalid op: %08x\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"invalid pad: %08x\0A\00", align 1
@wait_fence._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.wait_fence = private unnamed_addr constant [11 x i8] c"wait_fence\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"*ERROR* waiting on invalid fence: %u (of %u)\0A\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"fini\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_dumpstate307, ptr @__UNIQUE_ID_dumpstatetype308, ptr @__UNIQUE_ID_fbdev303, ptr @__UNIQUE_ID_fbdevtype304, ptr @__UNIQUE_ID_license313, ptr @__UNIQUE_ID_modeset309, ptr @__UNIQUE_ID_modesettype310, ptr @__UNIQUE_ID_vram305, ptr @__UNIQUE_ID_vramtype306, ptr @__param_dumpstate, ptr @__param_fbdev, ptr @__param_modeset, ptr @__param_vram], section "llvm.metadata"

@__mod_of__dt_match_device_table = dso_local alias [8 x %struct.of_device_id], ptr @dt_match

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_clk_bulk_get_clock(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %2)
  %6 = icmp ne ptr %0, null
  %7 = icmp sgt i32 %1, 0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %21, %3
  %10 = phi i32 [ %22, %21 ], [ 0, %3 ]
  %11 = getelementptr %struct.clk_bulk_data, ptr %0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull %4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %9
  %19 = getelementptr %struct.clk_bulk_data, ptr %0, i32 %10, i32 1
  %20 = load ptr, ptr %19, align 4
  br label %24

21:                                               ; preds = %15
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %9, label %24

24:                                               ; preds = %21, %18, %3
  %25 = phi ptr [ %20, %18 ], [ null, %3 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #13
  ret ptr %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_clk_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef %1) #13
  %6 = icmp ule ptr %5, inttoptr (i32 -4096 to ptr)
  %7 = icmp eq ptr %5, inttoptr (i32 -517 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %1)
  %11 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %1, ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = phi ptr [ %5, %2 ], [ %11, %13 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_ioremap(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #5 {
  %4 = tail call fastcc ptr @_msm_ioremap(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef null)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @_msm_ioremap(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #5 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull %1) #13
  br label %10

8:                                                ; preds = %4
  %9 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  br i1 %2, label %30, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %1) #13
  br label %30

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %11, align 4
  %20 = add i32 %18, 1
  %21 = sub i32 %20, %19
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %23 = tail call ptr @devm_ioremap(ptr noundef %22, i32 noundef %19, i32 noundef %21) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  br i1 %2, label %30, label %26

26:                                               ; preds = %25
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %1) #13
  br label %30

27:                                               ; preds = %16
  %28 = icmp eq ptr %3, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  store i32 %21, ptr %3, align 4
  br label %30

30:                                               ; preds = %29, %27, %26, %25, %14, %13
  %31 = phi ptr [ %23, %29 ], [ %23, %27 ], [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -22 to ptr), %13 ], [ inttoptr (i32 -12 to ptr), %26 ], [ inttoptr (i32 -12 to ptr), %25 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_ioremap_quiet(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull %1) #13
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #13
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %10, align 4
  %16 = add i32 %14, 1
  %17 = sub i32 %16, %15
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %19 = tail call ptr @devm_ioremap(ptr noundef %18, i32 noundef %15, i32 noundef %17) #13
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr inttoptr (i32 -12 to ptr), ptr %19
  br label %22

22:                                               ; preds = %12, %9
  %23 = phi ptr [ inttoptr (i32 -22 to ptr), %9 ], [ %21, %12 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_ioremap_size(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = tail call fastcc ptr @_msm_ioremap(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %3)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_writel(i32 noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !9
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %0) #13, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_readl(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #13, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !12
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_rmw(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #13, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #13, !srcloc !12
  %5 = xor i32 %1, -1
  %6 = and i32 %4, %5
  %7 = or i32 %6, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !9
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 %7) #13, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hrtimer_queue_work(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  tail call void @hrtimer_start_range_ns(ptr noundef %0, i64 noundef %1, i64 noundef 0, i32 noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hrtimer_work_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  tail call void @hrtimer_init(ptr noundef %0, i32 noundef %3, i32 noundef %4) #13
  %6 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 2
  store ptr @msm_hrtimer_worktimer, ptr %6, align 8
  %7 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %0, i32 0, i32 2
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %0, i32 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %9, i8 0, i32 12, i1 false)
  store volatile ptr %8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %0, i32 0, i32 1, i32 1
  store ptr %2, ptr %11, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hrtimer_worktimer(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_hrtimer_work, ptr %0, i32 0, i32 1
  %5 = tail call zeroext i1 @kthread_queue_work(ptr noundef %3, ptr noundef %4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @msm_use_mmu(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #13
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i1 [ true, %1 ], [ %8, %7 ]
  ret i1 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iommu_present(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_crtc_enable_vblank(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %2, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %14, %12 ], [ null, %10 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %4) #13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2848, i32 noundef 28) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  store i32 -32, ptr %18, align 8
  %21 = getelementptr inbounds %struct.work_struct, ptr %18, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.work_struct, ptr %18, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.work_struct, ptr %18, i32 0, i32 2
  store ptr @vblank_ctrl_worker, ptr %23, align 4
  %24 = getelementptr inbounds %struct.msm_vblank_work, ptr %18, i32 0, i32 1
  store i32 %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.msm_vblank_work, ptr %18, i32 0, i32 2
  store i8 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.msm_vblank_work, ptr %18, i32 0, i32 3
  store ptr %6, ptr %26, align 8
  %27 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 22
  %28 = load ptr, ptr %27, align 8
  %29 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef nonnull %18) #13
  br label %30

30:                                               ; preds = %20, %15, %1
  %31 = phi i32 [ -6, %1 ], [ 0, %20 ], [ -12, %15 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_crtc_disable_vblank(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %2, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %14, %12 ], [ null, %10 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %16, i32 noundef 32, ptr noundef nonnull @.str.2, i32 noundef %4) #13
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2848, i32 noundef 28) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  store i32 -32, ptr %18, align 8
  %21 = getelementptr inbounds %struct.work_struct, ptr %18, i32 0, i32 1
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.work_struct, ptr %18, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.work_struct, ptr %18, i32 0, i32 2
  store ptr @vblank_ctrl_worker, ptr %23, align 4
  %24 = getelementptr inbounds %struct.msm_vblank_work, ptr %18, i32 0, i32 1
  store i32 %4, ptr %24, align 8
  %25 = getelementptr inbounds %struct.msm_vblank_work, ptr %18, i32 0, i32 2
  store i8 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.msm_vblank_work, ptr %18, i32 0, i32 3
  store ptr %6, ptr %26, align 8
  %27 = getelementptr inbounds %struct.msm_drm_private, ptr %6, i32 0, i32 22
  %28 = load ptr, ptr %27, align 8
  %29 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %28, ptr noundef nonnull %18) #13
  br label %30

30:                                               ; preds = %20, %15, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #8 section ".init.text" {
  %1 = load i8, ptr @modeset, align 1, !range !13
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #13
  tail call void @msm_mdp_register() #14
  tail call void @msm_dpu_register() #14
  tail call void @msm_dsi_register() #14
  tail call void @msm_hdmi_register() #14
  %4 = tail call i32 @msm_dp_register() #14
  tail call void @adreno_register() #14
  %5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_platform_driver, ptr noundef nonnull @__this_module) #13
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ -22, %0 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #8 section ".exit.text" {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51) #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_platform_driver) #13
  tail call void @msm_dp_unregister() #14
  tail call void @msm_hdmi_unregister() #14
  tail call void @adreno_unregister() #14
  tail call void @msm_dsi_unregister() #14
  tail call void @msm_mdp_unregister() #14
  tail call void @msm_dpu_unregister() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vblank_ctrl_worker(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.msm_vblank_work, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_vblank_work, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4, !range !13
  %8 = icmp eq i8 %7, 0
  %9 = load ptr, ptr %5, align 8
  br i1 %8, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.msm_kms_funcs, ptr %9, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.msm_vblank_work, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 26, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %12(ptr noundef %5, ptr noundef %16) #13
  br label %25

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.msm_kms_funcs, ptr %9, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.msm_vblank_work, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 26, i32 %22
  %24 = load ptr, ptr %23, align 4
  tail call void %20(ptr noundef %5, ptr noundef %24) #13
  br label %25

25:                                               ; preds = %18, %10
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_mdp_register() local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dpu_register() local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dsi_register() local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_register() local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @msm_dp_register() local_unnamed_addr #7 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @adreno_register() local_unnamed_addr #7 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pdev_probe(ptr noundef %0) #5 {
  %2 = alloca %struct.of_endpoint, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 712, i32 noundef 3520) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %100, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %4) #13
  %10 = ptrtoint ptr %9 to i32
  switch i32 %10, label %19 [
    i32 5, label %11
    i32 3, label %13
  ]

11:                                               ; preds = %7
  %12 = tail call i32 @mdp5_mdss_init(ptr noundef %0) #13
  br label %15

13:                                               ; preds = %7
  %14 = tail call i32 @dpu_mdss_init(ptr noundef %0) #13
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %14, %13 ], [ %12, %11 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store ptr null, ptr %8, align 8
  br label %100

19:                                               ; preds = %15, %7
  %20 = tail call ptr @of_device_get_match_data(ptr noundef %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %73, label %22

22:                                               ; preds = %19
  %23 = tail call ptr @of_device_get_match_data(ptr noundef %4) #13
  %24 = ptrtoint ptr %23 to i32
  switch i32 %24, label %39 [
    i32 5, label %25
    i32 3, label %25
    i32 4, label %38
  ]

25:                                               ; preds = %22, %22
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @of_platform_populate(ptr noundef %27, ptr noundef null, ptr noundef null, ptr noundef %4) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9) #13
  br label %88

31:                                               ; preds = %25
  %32 = tail call ptr @device_find_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @find_mdp_node) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10) #13
  tail call void @of_platform_depopulate(ptr noundef %4) #13
  br label %88

35:                                               ; preds = %31
  tail call void @put_device(ptr noundef nonnull %32) #13
  %36 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 25
  %37 = load ptr, ptr %36, align 8
  call void @drm_of_component_match_add(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull @compare_of, ptr noundef %37) #13
  br label %39

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38, %35, %22
  %40 = phi ptr [ null, %22 ], [ %4, %38 ], [ %32, %35 ]
  %41 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 25
  %42 = load ptr, ptr %41, align 8
  %43 = call i32 @of_device_is_compatible(ptr noundef %42, ptr noundef nonnull @.str.11) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi ptr [ %47, %45 ], [ %40, %39 ]
  %50 = call ptr @of_graph_get_next_endpoint(ptr noundef %42, ptr noundef null) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %73, label %52

52:                                               ; preds = %69, %48
  %53 = phi ptr [ %70, %69 ], [ %50, %48 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #13, !annotation !8
  %54 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %53, ptr noundef nonnull %2) #13
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = call i32 @of_device_is_compatible(ptr noundef %42, ptr noundef nonnull @.str.11) #13
  %58 = icmp ne i32 %57, 0
  %59 = load i32, ptr %2, align 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %53) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %63) #13
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  call void @drm_of_component_match_add(ptr noundef %49, ptr noundef nonnull %3, ptr noundef nonnull @compare_of, ptr noundef nonnull %63) #13
  br label %68

68:                                               ; preds = %67, %65
  call void @of_node_put(ptr noundef nonnull %63) #13
  br label %69

69:                                               ; preds = %68, %62, %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  %70 = call ptr @of_graph_get_next_endpoint(ptr noundef %42, ptr noundef nonnull %53) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %52

72:                                               ; preds = %52
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12) #13
  call void @of_node_put(ptr noundef nonnull %53) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #13
  call void @of_platform_depopulate(ptr noundef %4) #13
  br label %88

73:                                               ; preds = %69, %48, %19
  %74 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @msm_gpu_match, ptr noundef null) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %74) #13
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  call void @drm_of_component_match_add(ptr noundef %4, ptr noundef nonnull %3, ptr noundef nonnull @compare_of, ptr noundef nonnull %74) #13
  br label %79

79:                                               ; preds = %78, %76
  call void @of_node_put(ptr noundef nonnull %74) #13
  br label %80

80:                                               ; preds = %79, %73
  %81 = call i32 @dma_set_mask(ptr noundef %4, i64 noundef -1) #13
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = call i32 @dma_set_coherent_mask(ptr noundef %4, i64 noundef -1) #13
  %85 = load ptr, ptr %3, align 4
  %86 = call i32 @component_master_add_with_match(ptr noundef %4, ptr noundef nonnull @msm_drm_ops, ptr noundef %85) #13
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %83, %80, %72, %34, %30
  %89 = phi i32 [ %86, %83 ], [ %81, %80 ], [ %54, %72 ], [ -19, %34 ], [ %28, %30 ]
  call void @of_platform_depopulate(ptr noundef %4) #13
  %90 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.msm_mdss, ptr %91, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.msm_mdss_funcs, ptr %95, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  call void %99(ptr noundef nonnull %91) #13
  br label %100

100:                                              ; preds = %97, %93, %88, %83, %18, %1
  %101 = phi i32 [ %16, %18 ], [ -12, %1 ], [ 0, %83 ], [ %89, %97 ], [ %89, %93 ], [ %89, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pdev_remove(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %6, ptr noundef nonnull @msm_drm_ops) #13
  tail call void @of_platform_depopulate(ptr noundef %6) #13
  %7 = icmp eq ptr %5, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.msm_mdss, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.msm_mdss_funcs, ptr %10, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef nonnull %5) #13
  br label %15

15:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_pdev_shutdown(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8
  tail call void @drm_atomic_helper_shutdown(ptr noundef %10) #13
  br label %11

11:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdp5_mdss_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_mdss_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @find_mdp_node(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @dpu_dt_match, ptr noundef %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8
  %9 = tail call ptr @of_match_node(ptr noundef nonnull @mdp5_dt_match, ptr noundef %8) #13
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 1, %2 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #10 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_drm_bind(ptr noundef %0) #5 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.resource, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @msm_driver, ptr noundef %0) #13
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13) #13
  %9 = ptrtoint ptr %6 to i32
  br label %225

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  store ptr %5, ptr %11, align 4
  store ptr %6, ptr %5, align 8
  %12 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 655362, i32 noundef 1) #13
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 22
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 39
  store i32 500, ptr %14, align 8
  %15 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 14
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 14, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.14, ptr noundef nonnull @msm_drm_init.__key) #13
  %18 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 16
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 16, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 17
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 17, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 18, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %24, ptr noundef nonnull @.str.16, ptr noundef nonnull @msm_drm_init.__key.15) #13
  %25 = tail call i32 @drmm_mode_config_init(ptr noundef %6) #13
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 25
  %30 = load ptr, ptr %29, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #13, !annotation !8
  %31 = call i32 @__of_parse_phandle_with_args(ptr noundef %30, ptr noundef nonnull @.str.25, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #13
  %32 = icmp ne i32 %31, 0
  %33 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #13
  %34 = icmp eq ptr %33, null
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #13, !annotation !8
  %37 = call i32 @of_address_to_resource(ptr noundef nonnull %33, i32 noundef 0, ptr noundef nonnull %3) #13
  call void @of_node_put(ptr noundef nonnull %33) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = load i32, ptr %3, align 4
  %43 = sub i32 %41, %42
  %44 = add i32 %43, 1
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %44, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

46:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %225

47:                                               ; preds = %10
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.msm_drm_private, ptr %48, i32 0, i32 8
  %50 = load i8, ptr %49, align 4, !range !13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %47
  %53 = call zeroext i1 @iommu_present(ptr noundef nonnull @platform_bus_type) #13
  br i1 %53, label %79, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr @vram, align 4
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %55) #14
  %57 = load ptr, ptr @vram, align 4
  %58 = call i64 @memparse(ptr noundef %57, ptr noundef null) #13
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %54, %39
  %61 = phi i32 [ %59, %54 ], [ %44, %39 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 35
  store i32 %61, ptr %64, align 8
  %65 = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 35, i32 2
  %66 = lshr i32 %61, 12
  %67 = add nsw i32 %66, -1
  %68 = zext i32 %67 to i64
  call void @drm_mm_init(ptr noundef %65, i64 noundef 0, i64 noundef %68) #13
  %69 = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 35, i32 3
  store i32 0, ptr %69, align 8
  %70 = load ptr, ptr %27, align 4
  %71 = getelementptr inbounds %struct.msm_drm_private, ptr %26, i32 0, i32 35, i32 1
  %72 = call ptr @dma_alloc_attrs(ptr noundef %70, i32 noundef %61, ptr noundef %71, i32 noundef 3264, i32 noundef 20) #13
  %73 = icmp eq ptr %72, null
  %74 = load ptr, ptr %27, align 4
  br i1 %73, label %75, label %76

75:                                               ; preds = %63
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %74, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.28) #13
  store i32 0, ptr %71, align 4
  br label %225

76:                                               ; preds = %63
  %77 = load i32, ptr %71, align 4
  %78 = add i32 %77, %61
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %74, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %77, i32 noundef %78) #13
  br label %79

79:                                               ; preds = %76, %60, %52, %47
  %80 = call i32 @component_bind_all(ptr noundef %0, ptr noundef %6) #13
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %225

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 20
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i32 -1, ptr %84, align 4
  br label %87

87:                                               ; preds = %86, %82
  call void @msm_gem_shrinker_init(ptr noundef %6) #13
  %88 = call ptr @of_device_get_match_data(ptr noundef %0) #13
  %89 = ptrtoint ptr %88 to i32
  switch i32 %89, label %98 [
    i32 4, label %90
    i32 5, label %93
    i32 3, label %95
  ]

90:                                               ; preds = %87
  %91 = call ptr @mdp4_kms_init(ptr noundef %6) #13
  %92 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  store ptr %91, ptr %92, align 4
  br label %105

93:                                               ; preds = %87
  %94 = call ptr @mdp5_kms_init(ptr noundef %6) #13
  br label %105

95:                                               ; preds = %87
  %96 = call ptr @dpu_kms_init(ptr noundef %6) #13
  %97 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  store ptr %96, ptr %97, align 4
  br label %105

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102, !prof !14

102:                                              ; preds = %98
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 568, i32 noundef 9, ptr noundef null) #13
  br label %103

103:                                              ; preds = %102, %98
  %104 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 98
  store i8 1, ptr %104, align 1
  br label %121

105:                                              ; preds = %95, %93, %90
  %106 = phi ptr [ %96, %95 ], [ %94, %93 ], [ %91, %90 ]
  %107 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18) #13
  %109 = ptrtoint ptr %106 to i32
  %110 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 1
  store ptr null, ptr %110, align 4
  br label %223

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 98
  store i8 1, ptr %112, align 1
  %113 = icmp eq ptr %106, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.msm_kms, ptr %106, i32 0, i32 1
  store ptr %6, ptr %115, align 4
  %116 = load ptr, ptr %106, align 8
  %117 = load ptr, ptr %116, align 4
  %118 = call i32 %117(ptr noundef nonnull %106) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, i32 noundef %118) #13
  br label %223

121:                                              ; preds = %114, %111, %103
  %122 = phi i1 [ false, %114 ], [ true, %111 ], [ true, %103 ]
  %123 = phi ptr [ %106, %114 ], [ null, %111 ], [ null, %103 ]
  %124 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 27
  store ptr @mode_config_funcs, ptr %124, align 4
  %125 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 103
  store ptr @mode_config_helper_funcs, ptr %125, align 4
  %126 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 25
  %127 = load i32, ptr %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %149, label %129

129:                                              ; preds = %143, %121
  %130 = phi i32 [ %146, %143 ], [ 0, %121 ]
  %131 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 26, i32 %130
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.drm_crtc, ptr %132, i32 0, i32 5
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 27, i32 %130
  %136 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 27, i32 %130, i32 1
  store i32 %134, ptr %136, align 4
  store ptr %6, ptr %135, align 4
  %137 = call ptr (i32, ptr, ...) @kthread_create_worker(i32 noundef 0, ptr noundef nonnull @.str.20, i32 noundef %134) #13
  %138 = getelementptr %struct.msm_drm_private, ptr %5, i32 0, i32 27, i32 %130, i32 2
  store ptr %137, ptr %138, align 4
  %139 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21) #13
  %141 = load ptr, ptr %138, align 4
  %142 = ptrtoint ptr %141 to i32
  br label %223

143:                                              ; preds = %129
  %144 = getelementptr inbounds %struct.kthread_worker, ptr %137, i32 0, i32 4
  %145 = load ptr, ptr %144, align 4
  call void @sched_set_fifo(ptr noundef %145) #13
  %146 = add nuw i32 %130, 1
  %147 = load i32, ptr %126, align 8
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %129, label %149

149:                                              ; preds = %143, %121
  %150 = phi i32 [ 0, %121 ], [ %147, %143 ]
  %151 = call i32 @drm_vblank_init(ptr noundef %6, i32 noundef %150) #13
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.22) #13
  br label %223

154:                                              ; preds = %149
  br i1 %122, label %202, label %155

155:                                              ; preds = %154
  %156 = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #13
  %157 = getelementptr inbounds %struct.msm_kms, ptr %123, i32 0, i32 2
  %158 = load i32, ptr %157, align 8
  %159 = icmp eq i32 %158, -2147483648
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #13
  br label %200

162:                                              ; preds = %155
  %163 = load ptr, ptr %11, align 4
  %164 = getelementptr inbounds %struct.msm_drm_private, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %168, !prof !15

167:                                              ; preds = %162
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/msm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

168:                                              ; preds = %162
  %169 = load ptr, ptr %165, align 8
  %170 = getelementptr inbounds %struct.msm_kms_funcs, ptr %169, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  call void %171(ptr noundef nonnull %165) #13
  %172 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.drm_driver, ptr %173, i32 0, i32 21
  %175 = load ptr, ptr %174, align 4
  %176 = call i32 @request_threaded_irq(i32 noundef %158, ptr noundef nonnull @msm_irq, ptr noundef null, i32 noundef 0, ptr noundef %175, ptr noundef %6) #13
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %168
  %179 = load ptr, ptr %11, align 4
  %180 = getelementptr inbounds %struct.msm_drm_private, ptr %179, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %184, !prof !15

183:                                              ; preds = %178
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/msm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

184:                                              ; preds = %178
  %185 = load ptr, ptr %181, align 8
  %186 = getelementptr inbounds %struct.msm_kms_funcs, ptr %185, i32 0, i32 2
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %184
  %190 = call i32 %187(ptr noundef nonnull %181) #13
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = call ptr @free_irq(i32 noundef %158, ptr noundef %6) #13
  br label %196

194:                                              ; preds = %189, %184
  %195 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #13
  br label %205

196:                                              ; preds = %192, %168
  %197 = phi i32 [ %190, %192 ], [ %176, %168 ]
  %198 = call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #13
  %199 = icmp slt i32 %197, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %196, %160
  %201 = phi i32 [ -107, %160 ], [ %197, %196 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.23) #13
  br label %223

202:                                              ; preds = %154
  %203 = call i32 @drm_dev_register(ptr noundef %6, i32 noundef 0) #13
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %218, label %223

205:                                              ; preds = %196, %194
  %206 = call i32 @drm_dev_register(ptr noundef %6, i32 noundef 0) #13
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %205
  %209 = call i32 @msm_disp_snapshot_init(ptr noundef %6) #13
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.24, i32 noundef %209) #13
  br label %212

212:                                              ; preds = %211, %208
  call void @drm_mode_config_reset(ptr noundef %6) #13
  %213 = load i8, ptr @fbdev, align 1, !range !13
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = call ptr @msm_fbdev_init(ptr noundef %6) #13
  %217 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 10
  store ptr %216, ptr %217, align 8
  br label %219

218:                                              ; preds = %202
  call void @drm_mode_config_reset(ptr noundef %6) #13
  br label %219

219:                                              ; preds = %218, %215, %212
  %220 = call i32 @msm_debugfs_late_init(ptr noundef %6) #13
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  call void @drm_kms_helper_poll_init(ptr noundef %6) #13
  br label %225

223:                                              ; preds = %219, %205, %202, %200, %153, %140, %120, %108
  %224 = phi i32 [ %109, %108 ], [ %118, %120 ], [ %142, %140 ], [ %151, %153 ], [ %201, %200 ], [ %203, %202 ], [ %220, %219 ], [ %206, %205 ]
  call fastcc void @msm_drm_uninit(ptr noundef %0) #13
  br label %225

225:                                              ; preds = %223, %222, %79, %75, %46, %8
  %226 = phi i32 [ %9, %8 ], [ %224, %223 ], [ 0, %222 ], [ %80, %79 ], [ %37, %46 ], [ -12, %75 ]
  ret i32 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_drm_unbind(ptr noundef %0) #5 {
  tail call fastcc void @msm_drm_uninit(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_shrinker_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp4_kms_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdp5_kms_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dpu_kms_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_worker(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_disp_snapshot_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_fbdev_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_debugfs_late_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @msm_drm_uninit(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 8
  %8 = load i8, ptr %7, align 4, !range !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @drm_dev_unregister(ptr noundef %4) #13
  tail call void @drm_atomic_helper_shutdown(ptr noundef %4) #13
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 22
  %13 = load ptr, ptr %12, align 8
  tail call void @flush_workqueue(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 25
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %25, %11
  %18 = phi i32 [ %26, %25 ], [ %15, %11 ]
  %19 = phi i32 [ %27, %25 ], [ 0, %11 ]
  %20 = getelementptr %struct.msm_drm_private, ptr %3, i32 0, i32 27, i32 %19, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  tail call void @kthread_destroy_worker(ptr noundef nonnull %21) #13
  %24 = load i32, ptr %14, align 8
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %18, %17 ], [ %24, %23 ]
  %27 = add nuw i32 %19, 1
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %17, label %29

29:                                               ; preds = %25, %11
  tail call void @msm_gem_shrinker_cleanup(ptr noundef %4) #13
  tail call void @drm_kms_helper_poll_fini(ptr noundef %4) #13
  tail call void @msm_perf_debugfs_cleanup(ptr noundef %3) #13
  tail call void @msm_rd_debugfs_cleanup(ptr noundef %3) #13
  %30 = load i8, ptr @fbdev, align 1, !range !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @msm_fbdev_free(ptr noundef %4) #13
  br label %37

37:                                               ; preds = %36, %32, %29
  tail call void @msm_disp_snapshot_destroy(ptr noundef %4) #13
  tail call void @drm_mode_config_cleanup(ptr noundef %4) #13
  %38 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #13
  %39 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.msm_drm_private, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.msm_kms_funcs, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %42) #13
  %46 = getelementptr inbounds %struct.msm_kms, ptr %42, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = tail call ptr @free_irq(i32 noundef %47, ptr noundef %4) #13
  %49 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 4) #13
  %50 = icmp eq ptr %6, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %37
  %52 = load ptr, ptr %6, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.msm_kms_funcs, ptr %52, i32 0, i32 18
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef nonnull %6) #13
  br label %57

57:                                               ; preds = %54, %51, %37
  %58 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 35, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 35
  %63 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 35, i32 2
  tail call void @drm_mm_takedown(ptr noundef %63) #13
  %64 = load i32, ptr %62, align 8
  %65 = load i32, ptr %58, align 4
  tail call void @dma_free_attrs(ptr noundef %0, i32 noundef %64, ptr noundef null, i32 noundef %65, i32 noundef 16) #13
  br label %66

66:                                               ; preds = %61, %57
  tail call void @component_unbind_all(ptr noundef %0, ptr noundef %4) #13
  store ptr null, ptr %39, align 4
  tail call void @drm_dev_put(ptr noundef %4) #13
  %67 = load ptr, ptr %12, align 8
  tail call void @destroy_workqueue(ptr noundef %67) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_output_poll_changed(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_atomic_commit_tail(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !15

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/msm_drv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 238, 0\0A.popsection", ""() #13, !srcloc !18
  unreachable

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.msm_kms_funcs, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef nonnull %6) #13
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_destroy_worker(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_shrinker_cleanup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_perf_debugfs_cleanup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_rd_debugfs_cleanup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_fbdev_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_open(ptr noundef %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @load_gpu.init_lock) #13
  %5 = getelementptr inbounds %struct.msm_drm_private, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call ptr @adreno_load_gpu(ptr noundef %0) #13
  store ptr %9, ptr %5, align 8
  br label %10

10:                                               ; preds = %8, %2
  tail call void @mutex_unlock(ptr noundef nonnull @load_gpu.init_lock) #13
  %11 = load ptr, ptr %3, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 76) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.msm_file_private, ptr %13, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.msm_file_private, ptr %13, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 8
  store i32 0, ptr %13, align 8
  %18 = getelementptr inbounds %struct.msm_file_private, ptr %13, i32 0, i32 4
  store volatile i32 1, ptr %18, align 4
  %19 = tail call i32 @msm_submitqueue_init(ptr noundef %0, ptr noundef nonnull %13) #13
  %20 = getelementptr inbounds %struct.msm_drm_private, ptr %11, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  %22 = tail call ptr @llvm.thread.pointer() #13
  %23 = tail call ptr @msm_gpu_create_private_address_space(ptr noundef %21, ptr noundef %22) #13
  %24 = getelementptr inbounds %struct.msm_file_private, ptr %13, i32 0, i32 3
  store ptr %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %13, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @context_init.ident) #13, !srcloc !20
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @context_init.ident, ptr nonnull @context_init.ident, i32 1, ptr nonnull elementtype(i32) @context_init.ident) #13, !srcloc !21
  %27 = extractvalue { i32, i32 } %26, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !22
  %28 = getelementptr inbounds %struct.msm_file_private, ptr %13, i32 0, i32 5
  store i32 %27, ptr %28, align 8
  br label %29

29:                                               ; preds = %15, %10
  %30 = phi i32 [ 0, %15 ], [ -12, %10 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_postclose(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  tail call void @msm_submitqueue_close(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.msm_file_private, ptr %4, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #13, !srcloc !20
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #13, !srcloc !24
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %13, label %11, !prof !14

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #13
  br label %13

12:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void @__msm_file_private_destroy(ptr noundef %5) #13, !callees !26
  br label %13

13:                                               ; preds = %12, %11, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fb_helper_lastclose(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_debugfs_init(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_dumb_create(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_load_gpu(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_init(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gpu_create_private_address_space(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_submitqueue_close(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__msm_file_private_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_get_param(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) #5 {
  %4 = load i32, ptr %1, align 8
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msm_drm_private, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.drm_msm_param, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_msm_param, ptr %1, i32 0, i32 2
  %19 = tail call i32 %15(ptr noundef nonnull %10, i32 noundef %17, ptr noundef %18) #13
  br label %20

20:                                               ; preds = %12, %6, %3
  %21 = phi i32 [ %19, %12 ], [ -22, %3 ], [ -6, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_new(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.drm_msm_gem_new, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -983044
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %5) #13
  br label %14

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.drm_msm_gem_new, ptr %1, i32 0, i32 2
  %13 = tail call i32 @msm_gem_new_handle(ptr noundef %0, ptr noundef %2, i32 noundef %11, i32 noundef %5, ptr noundef %12, ptr noundef null) #13
  br label %14

14:                                               ; preds = %9, %8
  %15 = phi i32 [ -22, %8 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_info(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %127

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %127 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %14
    i32 3, label %14
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %127

14:                                               ; preds = %10, %7, %7
  %15 = load i32, ptr %1, align 8
  %16 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %15) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %127, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %8, align 4
  switch i32 %19, label %118 [
    i32 0, label %20
    i32 1, label %23
    i32 2, label %36
    i32 3, label %80
  ]

20:                                               ; preds = %18
  %21 = tail call i64 @msm_gem_mmap_offset(ptr noundef nonnull %16) #13
  %22 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 2
  store i64 %21, ptr %22, align 8
  br label %118

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.msm_drm_private, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %118, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 2
  %31 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.msm_file_private, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @msm_gem_get_iova(ptr noundef nonnull %16, ptr noundef %34, ptr noundef %30) #13
  br label %118

36:                                               ; preds = %18
  %37 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = icmp ugt i32 %38, 31
  br i1 %39, label %118, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.msm_gem_object, ptr %16, i32 0, i32 12
  %42 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = inttoptr i32 %44 to ptr
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %45, i32 %38, i32 -1090519040) #16, !srcloc !27
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56, !prof !14

49:                                               ; preds = %40
  %50 = tail call ptr @llvm.thread.pointer() #13
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #17, !srcloc !28
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #13, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !30
  %55 = tail call i32 @arm_copy_from_user(ptr noundef %41, ptr noundef %45, i32 noundef %38) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #13, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !30
  br label %56

56:                                               ; preds = %49, %40
  %57 = phi i32 [ %55, %49 ], [ %38, %40 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59, !prof !14

59:                                               ; preds = %56
  %60 = sub i32 %38, %57
  %61 = getelementptr i8, ptr %41, i32 %60
  tail call void @llvm.memset.p0.i32(ptr align 1 %61, i8 0, i32 %57, i1 false) #13
  store i8 0, ptr %41, align 8
  br label %118

62:                                               ; preds = %56
  %63 = load i32, ptr %37, align 8
  %64 = getelementptr %struct.msm_gem_object, ptr %16, i32 0, i32 12, i32 %63
  store i8 0, ptr %64, align 1
  %65 = load i32, ptr %37, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %118, label %70

67:                                               ; preds = %70
  %68 = add nuw i32 %71, 1
  %69 = icmp eq i32 %68, %65
  br i1 %69, label %118, label %70

70:                                               ; preds = %67, %62
  %71 = phi i32 [ %68, %67 ], [ 0, %62 ]
  %72 = getelementptr %struct.msm_gem_object, ptr %16, i32 0, i32 12, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %74
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, -105
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %67

79:                                               ; preds = %70
  store i8 0, ptr %72, align 1
  br label %118

80:                                               ; preds = %18
  %81 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 2
  %82 = load i64, ptr %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.msm_gem_object, ptr %16, i32 0, i32 12
  %86 = tail call i32 @strlen(ptr noundef %85)
  %87 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 3
  store i32 %86, ptr %87, align 8
  br label %118

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.drm_msm_gem_info, ptr %1, i32 0, i32 3
  %90 = load i32, ptr %89, align 8
  %91 = getelementptr inbounds %struct.msm_gem_object, ptr %16, i32 0, i32 12
  %92 = tail call i32 @strlen(ptr noundef %91)
  %93 = icmp ult i32 %90, %92
  br i1 %93, label %118, label %94

94:                                               ; preds = %88
  store i32 %92, ptr %89, align 8
  %95 = trunc i64 %82 to i32
  %96 = inttoptr i32 %95 to ptr
  %97 = icmp slt i32 %92, 0
  %98 = load i1, ptr @check_copy_size.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !15

101:                                              ; preds = %94
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.45, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %102

102:                                              ; preds = %101, %94
  br i1 %97, label %118, label %103, !prof !15

103:                                              ; preds = %102
  %104 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %96, i32 %92, i32 -1090519040) #16, !srcloc !31
  %105 = extractvalue { i32, i32 } %104, 0
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = tail call ptr @llvm.thread.pointer() #13
  %109 = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %110 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %109) #17, !srcloc !28
  %111 = and i32 %110, -13
  %112 = or i32 %111, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %112) #13, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !30
  %113 = tail call i32 @arm_copy_to_user(ptr noundef %96, ptr noundef %91, i32 noundef %92) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #13, !srcloc !29
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !30
  br label %114

114:                                              ; preds = %107, %103
  %115 = phi i32 [ %113, %107 ], [ %92, %103 ]
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, i32 0, i32 -14
  br label %118

118:                                              ; preds = %114, %102, %88, %84, %79, %67, %62, %59, %36, %29, %23, %20, %18
  %119 = phi i32 [ 0, %18 ], [ -14, %59 ], [ 0, %79 ], [ 0, %20 ], [ -22, %36 ], [ -22, %88 ], [ %35, %29 ], [ -22, %23 ], [ 0, %84 ], [ 0, %62 ], [ -14, %102 ], [ %117, %114 ], [ 0, %67 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #13, !srcloc !20
  %120 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #13, !srcloc !24
  %121 = extractvalue { i32, i32, i32 } %120, 0
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = icmp sgt i32 %121, 0
  br i1 %124, label %127, label %125, !prof !14

125:                                              ; preds = %123
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #13
  br label %127

126:                                              ; preds = %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %16) #13, !callees !26
  br label %127

127:                                              ; preds = %126, %125, %123, %14, %10, %7, %3
  %128 = phi i32 [ -22, %3 ], [ -22, %10 ], [ -22, %7 ], [ -2, %14 ], [ %119, %123 ], [ %119, %125 ], [ %119, %126 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_cpu_prep(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #5 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, ptr %1, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = icmp sgt i64 %6, 9223372035
  br i1 %7, label %14, label %8, !prof !15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, ptr %1, i32 0, i32 2, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = mul i64 %6, 1000000000
  %12 = and i64 %10, 4294967295
  %13 = add i64 %12, %11
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i64 [ %13, %8 ], [ 9223372036854775807, %3 ]
  store i64 %15, ptr %4, align 8
  %16 = getelementptr inbounds %struct.drm_msm_gem_cpu_prep, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.47, i32 noundef %17) #13
  br label %34

20:                                               ; preds = %14
  %21 = load i32, ptr %1, align 8
  %22 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %21) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %16, align 4
  %26 = call i32 @msm_gem_cpu_prep(ptr noundef nonnull %22, i32 noundef %25, ptr noundef nonnull %4) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #13, !srcloc !20
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #13, !srcloc !24
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %34, label %32, !prof !14

32:                                               ; preds = %30
  call void @refcount_warn_saturate(ptr noundef nonnull %22, i32 noundef 3) #13
  br label %34

33:                                               ; preds = %24
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  call void @drm_gem_object_free(ptr noundef nonnull %22) #13, !callees !26
  br label %34

34:                                               ; preds = %33, %32, %30, %20, %19
  %35 = phi i32 [ -22, %19 ], [ -2, %20 ], [ %26, %30 ], [ %26, %32 ], [ %26, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_cpu_fini(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #5 {
  %4 = load i32, ptr %1, align 4
  %5 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @msm_gem_cpu_fini(ptr noundef nonnull %5) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #13, !srcloc !20
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #13, !srcloc !24
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %16, label %14, !prof !14

14:                                               ; preds = %12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #13
  br label %16

15:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #13, !callees !26
  br label %16

16:                                               ; preds = %15, %14, %12, %3
  %17 = phi i32 [ -2, %3 ], [ %8, %12 ], [ %8, %14 ], [ %8, %15 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_ioctl_gem_submit(ptr noundef, ptr noundef, ptr noundef) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_wait_fence(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %5) #13
  br label %116

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.msm_drm_private, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %116, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = tail call ptr @msm_submitqueue_get(ptr noundef %16, i32 noundef %18) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %116, label %21

21:                                               ; preds = %14
  %22 = load i32, ptr %1, align 8
  %23 = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %1, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = icmp sgt i64 %24, 9223372035
  br i1 %25, label %32, label %26, !prof !15

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.drm_msm_wait_fence, ptr %1, i32 0, i32 2, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = mul i64 %24, 1000000000
  %30 = and i64 %28, 4294967295
  %31 = add i64 %30, %29
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i64 [ %31, %26 ], [ 9223372036854775807, %21 ]
  %34 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %19, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 %22, %35
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = tail call i32 @___ratelimit(ptr noundef nonnull @wait_fence._rs, ptr noundef nonnull @__func__.wait_fence) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %106, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49, i32 noundef %22, i32 noundef %42) #13
  br label %106

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %19, i32 0, i32 8
  %45 = tail call i32 @mutex_lock_interruptible(ptr noundef %44) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %19, i32 0, i32 7
  %49 = tail call ptr @idr_find(ptr noundef %48, i32 noundef %22) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %75, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.dma_fence, ptr %49, i32 0, i32 6
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %65, %51
  %56 = phi i32 [ %63, %65 ], [ %53, %51 ]
  %57 = add i32 %56, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #13, !srcloc !20
  br label %58

58:                                               ; preds = %58, %55
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 %56, i32 %57, ptr elementtype(i32) %52) #13, !srcloc !32
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %58

62:                                               ; preds = %58
  %63 = extractvalue { i32, i32 } %59, 1
  %64 = icmp eq i32 %63, %56
  br i1 %64, label %67, label %65, !prof !14

65:                                               ; preds = %62
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %67, label %55

67:                                               ; preds = %65, %62, %51
  %68 = phi i32 [ 0, %51 ], [ %56, %62 ], [ 0, %65 ]
  %69 = add i32 %68, 1
  %70 = or i32 %69, %68
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %73, label %72, !prof !14

72:                                               ; preds = %67
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef 0) #13
  br label %73

73:                                               ; preds = %72, %67
  %74 = icmp eq i32 %68, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %73, %47
  tail call void @mutex_unlock(ptr noundef %44) #13
  br label %106

76:                                               ; preds = %73
  tail call void @mutex_unlock(ptr noundef %44) #13
  %77 = tail call i64 @ktime_get() #13
  %78 = icmp slt i64 %33, %77
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = sub i64 %33, %77
  %81 = tail call i64 @llvm.abs.i64(i64 %80, i1 false) #13
  %82 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %81) #16, !srcloc !33
  %83 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %81, i64 %82, i32 0) #16, !srcloc !34
  %84 = extractvalue { i64, i32 } %83, 0
  %85 = icmp slt i64 %80, 0
  %86 = lshr i64 %84, 23
  %87 = sub nsw i64 0, %86
  %88 = select i1 %85, i64 %87, i64 %86
  br label %89

89:                                               ; preds = %79, %76
  %90 = phi i64 [ %88, %79 ], [ 0, %76 ]
  %91 = tail call i64 @llvm.smax.i64(i64 %90, i64 0) #13
  %92 = tail call i64 @llvm.umin.i64(i64 %91, i64 2147483647) #13
  %93 = trunc i64 %92 to i32
  %94 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %49, i1 noundef zeroext true, i32 noundef %93) #13
  %95 = icmp eq i32 %94, 0
  %96 = icmp eq i32 %94, -512
  %97 = select i1 %96, i32 -512, i32 0
  %98 = select i1 %95, i32 -110, i32 %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #13, !srcloc !20
  %99 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #13, !srcloc !24
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %89
  %103 = icmp sgt i32 %100, 0
  br i1 %103, label %106, label %104, !prof !14

104:                                              ; preds = %102
  tail call void @refcount_warn_saturate(ptr noundef %52, i32 noundef 3) #13
  br label %106

105:                                              ; preds = %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void @dma_fence_release(ptr noundef %52) #13, !callees !26
  br label %106

106:                                              ; preds = %105, %104, %102, %75, %43, %41, %38
  %107 = phi i32 [ -22, %41 ], [ -22, %38 ], [ %45, %43 ], [ 0, %75 ], [ %98, %102 ], [ %98, %104 ], [ %98, %105 ]
  %108 = getelementptr inbounds %struct.msm_gpu_submitqueue, ptr %19, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %108) #13, !srcloc !20
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %108, ptr %108, i32 1, ptr elementtype(i32) %108) #13, !srcloc !24
  %110 = extractvalue { i32, i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = icmp sgt i32 %110, 0
  br i1 %113, label %116, label %114, !prof !14

114:                                              ; preds = %112
  tail call void @refcount_warn_saturate(ptr noundef %108, i32 noundef 3) #13
  br label %116

115:                                              ; preds = %106
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void @msm_submitqueue_destroy(ptr noundef %108) #13, !callees !26
  br label %116

116:                                              ; preds = %115, %114, %112, %14, %8, %7
  %117 = phi i32 [ -22, %7 ], [ 0, %8 ], [ -2, %14 ], [ %107, %112 ], [ %107, %114 ], [ %107, %115 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_gem_madvise(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, ptr noundef %2) #5 {
  %4 = getelementptr inbounds %struct.drm_msm_gem_madvise, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %8) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 4
  %13 = tail call i32 @msm_gem_madvise(ptr noundef nonnull %9, i32 noundef %12) #13
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_msm_gem_madvise, ptr %1, i32 0, i32 2
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ 0, %15 ], [ %13, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #13, !srcloc !20
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #13, !srcloc !24
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %26, label %24, !prof !14

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef nonnull %9, i32 noundef 3) #13
  br label %26

25:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %9) #13, !callees !26
  br label %26

26:                                               ; preds = %25, %24, %22, %7, %3
  %27 = phi i32 [ -22, %3 ], [ -2, %7 ], [ %18, %22 ], [ %18, %24 ], [ %18, %25 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_submitqueue_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_msm_submitqueue, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_msm_submitqueue, ptr %1, i32 0, i32 2
  %12 = tail call i32 @msm_submitqueue_create(ptr noundef %0, ptr noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef %11) #13
  br label %13

13:                                               ; preds = %6, %3
  %14 = phi i32 [ %12, %6 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_submitqueue_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @msm_submitqueue_remove(ptr noundef %6, i32 noundef %4) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_ioctl_submitqueue_query(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @msm_submitqueue_query(ptr noundef %0, ptr noundef %5, ptr noundef %1) #13
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_new_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @msm_gem_mmap_offset(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_iova(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_cpu_prep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_cpu_fini(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_submitqueue_get(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_submitqueue_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_madvise(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_remove(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_submitqueue_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pm_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8
  %11 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %10) #13
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i32 [ %11, %9 ], [ 0, %5 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_pm_complete(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8
  %11 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %10) #13
  br label %12

12:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pm_suspend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.msm_mdss, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.msm_mdss_funcs, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef nonnull %14) #13
  br label %24

24:                                               ; preds = %20, %16, %10, %5
  %25 = phi i32 [ 0, %5 ], [ %23, %20 ], [ 0, %16 ], [ 0, %10 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_pm_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.msm_drm_private, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.msm_mdss, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i32 %21(ptr noundef nonnull %14) #13
  br label %23

23:                                               ; preds = %20, %16, %10, %5
  %24 = phi i32 [ 0, %5 ], [ %22, %20 ], [ 0, %16 ], [ 0, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_runtime_suspend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.msm_mdss, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.msm_mdss_funcs, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef nonnull %5) #13
  br label %15

15:                                               ; preds = %11, %7, %1
  %16 = phi i32 [ %14, %11 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_runtime_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.msm_mdss, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = tail call i32 %12(ptr noundef nonnull %5) #13
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dp_unregister() local_unnamed_addr #7 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_hdmi_unregister() local_unnamed_addr #7 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @adreno_unregister() local_unnamed_addr #7 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dsi_unregister() local_unnamed_addr #7 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_mdp_unregister() local_unnamed_addr #7 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @msm_dpu_unregister() local_unnamed_addr #7 section ".exit.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind readonly }

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
!9 = !{i64 2156129438}
!10 = !{i64 4985863}
!11 = !{i64 4986281}
!12 = !{i64 2156129851}
!13 = !{i8 0, i8 2}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156132951, i64 2156133445, i64 2156132988, i64 2156133044, i64 2156133078, i64 2156133102, i64 2156133143, i64 2156133164, i64 2156133192, i64 2156133226}
!17 = !{i64 2156133981, i64 2156134475, i64 2156134018, i64 2156134074, i64 2156134108, i64 2156134132, i64 2156134173, i64 2156134194, i64 2156134222, i64 2156134256}
!18 = !{i64 2156131921, i64 2156132415, i64 2156131958, i64 2156132014, i64 2156132048, i64 2156132072, i64 2156132113, i64 2156132134, i64 2156132162, i64 2156132196}
!19 = !{i64 2148306210}
!20 = !{i64 643536, i64 2148145102, i64 2148145128, i64 2148145175, i64 2148145197, i64 2148145225, i64 2148145245}
!21 = !{i64 2148209048, i64 2148209080, i64 2148209109, i64 2148209143, i64 2148209174, i64 2148209197}
!22 = !{i64 2148306413}
!23 = !{i64 2148310044}
!24 = !{i64 2148212179, i64 2148212211, i64 2148212240, i64 2148212274, i64 2148212305, i64 2148212328}
!25 = !{i64 2149337039}
!26 = !{ptr @__msm_file_private_destroy, ptr @dma_fence_release, ptr @drm_gem_object_free, ptr @msm_submitqueue_destroy}
!27 = !{i64 2152023166, i64 2152023191}
!28 = !{i64 4519278}
!29 = !{i64 4519475}
!30 = !{i64 2152004754}
!31 = !{i64 2152023744, i64 2152023769}
!32 = !{i64 629599, i64 629623, i64 629644, i64 629661, i64 629678}
!33 = !{i64 1202058, i64 1202085}
!34 = !{i64 1202753, i64 1202780, i64 1202813, i64 1202834, i64 1202861, i64 1202887}
