; ModuleID = '/llk/IR/drivers/gpu/drm/lima/lima_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/lima/lima_drv.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.lima_device = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [26 x %struct.lima_ip], [2 x %struct.lima_sched_pipe], ptr, i64, i64, ptr, i32, %struct.lima_devfreq, %struct.lima_dump_head, %struct.list_head, %struct.mutex }
%struct.lima_ip = type { ptr, i32, i8, ptr, i32, %union.anon.69 }
%union.anon.69 = type { %struct.spinlock }
%struct.lima_sched_pipe = type { %struct.drm_gpu_scheduler, i64, i32, %struct.spinlock, ptr, ptr, ptr, [8 x ptr], i32, [2 x ptr], i32, [8 x ptr], i32, ptr, ptr, i32, i8, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lima_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.lima_dump_head = type { i32, i16, i16, i32, i32, [4 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.66, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.68, ptr, i32, ptr, i8, i32 }
%struct.anon.66 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.68 = type { i32, ptr }
%struct.lima_drm_priv = type { ptr, %struct.lima_ctx_mgr }
%struct.lima_ctx_mgr = type { %struct.mutex, %struct.xarray }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.lima_vm = type { %struct.mutex, %struct.kref, %struct.drm_mm, ptr, %struct.lima_vm_page, [128 x %struct.lima_vm_page] }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.lima_vm_page = type { ptr, i32 }
%struct.drm_lima_get_param = type { i32, i32, i64 }
%struct.drm_lima_gem_create = type { i32, i32, i32, i32 }
%struct.drm_lima_gem_info = type { i32, i32, i64 }
%struct.lima_submit = type { ptr, i32, i32, ptr, ptr, i32, [2 x i32], i32, ptr }
%struct.drm_lima_gem_submit = type { i32, i32, i32, i32, i64, i64, i32, i32, [2 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.lima_sched_task = type { %struct.drm_sched_job, ptr, ptr, ptr, i32, i8, ptr, ptr }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.70, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.70 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_lima_gem_wait = type { i32, i32, i64 }
%struct.drm_lima_ctx_create = type { i32, i32 }
%struct.lima_sched_error_task = type { %struct.list_head, ptr, i32 }

@lima_heap_init_nr_pages = dso_local global i32 8, align 4
@__UNIQUE_ID_sched_timeout_ms236 = internal constant [45 x i8] c"parm=sched_timeout_ms:task run timeout in ms\00", section ".modinfo", align 1
@__param_str_sched_timeout_ms = internal constant [17 x i8] c"sched_timeout_ms\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@lima_sched_timeout_ms = dso_local global i32 0, align 4
@__param_sched_timeout_ms = internal constant %struct.kernel_param { ptr @__param_str_sched_timeout_ms, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @lima_sched_timeout_ms } }, section "__param", align 4
@__UNIQUE_ID_sched_timeout_mstype237 = internal constant [30 x i8] c"parmtype=sched_timeout_ms:int\00", section ".modinfo", align 1
@__UNIQUE_ID_heap_init_nr_pages238 = internal constant [57 x i8] c"parm=heap_init_nr_pages:heap buffer init number of pages\00", section ".modinfo", align 1
@__param_str_heap_init_nr_pages = internal constant [19 x i8] c"heap_init_nr_pages\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_heap_init_nr_pages = internal constant %struct.kernel_param { ptr @__param_str_heap_init_nr_pages, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @lima_heap_init_nr_pages } }, section "__param", align 4
@__UNIQUE_ID_heap_init_nr_pagestype239 = internal constant [33 x i8] c"parmtype=heap_init_nr_pages:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_error_tasks240 = internal constant [55 x i8] c"parm=max_error_tasks:max number of error tasks to save\00", section ".modinfo", align 1
@__param_str_max_error_tasks = internal constant [16 x i8] c"max_error_tasks\00", align 1
@lima_max_error_tasks = dso_local global i32 0, align 4
@__param_max_error_tasks = internal constant %struct.kernel_param { ptr @__param_str_max_error_tasks, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @lima_max_error_tasks } }, section "__param", align 4
@__UNIQUE_ID_max_error_taskstype241 = internal constant [30 x i8] c"parmtype=max_error_tasks:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_job_hang_limit242 = internal constant [90 x i8] c"parm=job_hang_limit:number of times to allow a job to hang before dropping it (default 0)\00", section ".modinfo", align 1
@__param_str_job_hang_limit = internal constant [15 x i8] c"job_hang_limit\00", align 1
@lima_job_hang_limit = dso_local global i32 0, align 4
@__param_job_hang_limit = internal constant %struct.kernel_param { ptr @__param_str_job_hang_limit, ptr @__this_module, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.60 { ptr @lima_job_hang_limit } }, section "__param", align 4
@__UNIQUE_ID_job_hang_limittype243 = internal constant [29 x i8] c"parmtype=job_hang_limit:uint\00", section ".modinfo", align 1
@dt_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-400\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,mali-450\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author246 = internal constant [31 x i8] c"author=Lima Project Developers\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [28 x i8] c"description=Lima DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@lima_platform_driver = internal global %struct.platform_driver { ptr @lima_pdev_probe, ptr @lima_pdev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lima_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"lima\00", align 1
@lima_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lima_device_suspend, ptr @lima_device_resume, ptr null }, align 4
@lima_drm_driver = internal constant %struct.drm_driver { ptr null, ptr @lima_drm_driver_open, ptr @lima_drm_driver_postclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lima_gem_create_object, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_shmem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr null, ptr null, ptr null, i32 1, i32 1, i32 0, ptr @.str, ptr @.str.3, ptr @.str.4, i32 41, ptr @lima_drm_driver_ioctls, i32 7, ptr @lima_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Fatal error during devfreq init\0A\00", align 1
@lima_error_state_attr = internal constant %struct.bin_attribute { %struct.attribute { ptr @.str.14, i16 384 }, i32 0, ptr null, ptr null, ptr @lima_error_state_read, ptr @lima_error_state_write, ptr null }, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"fail to create error state sysfs\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"lima DRM\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"20191231\00", align 1
@lima_drm_driver_ioctls = internal constant [7 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @lima_ioctl_get_param, ptr @.str.5 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 32, ptr @lima_ioctl_gem_create, ptr @.str.6 }, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @lima_ioctl_gem_info, ptr @.str.7 }, %struct.drm_ioctl_desc { i32 1076913219, i32 32, ptr @lima_ioctl_gem_submit, ptr @.str.8 }, %struct.drm_ioctl_desc { i32 1074816068, i32 32, ptr @lima_ioctl_gem_wait, ptr @.str.9 }, %struct.drm_ioctl_desc { i32 -2146933691, i32 32, ptr @lima_ioctl_ctx_create, ptr @.str.10 }, %struct.drm_ioctl_desc { i32 1074291782, i32 32, ptr @lima_ioctl_ctx_free, ptr @.str.11 }], align 4
@lima_drm_driver_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"LIMA_GET_PARAM\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"LIMA_GEM_CREATE\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"LIMA_GEM_INFO\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"LIMA_GEM_SUBMIT\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"LIMA_GEM_WAIT\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"LIMA_CTX_CREATE\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"LIMA_CTX_FREE\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_heap_init_nr_pages238, ptr @__UNIQUE_ID_heap_init_nr_pagestype239, ptr @__UNIQUE_ID_job_hang_limit242, ptr @__UNIQUE_ID_job_hang_limittype243, ptr @__UNIQUE_ID_license248, ptr @__UNIQUE_ID_max_error_tasks240, ptr @__UNIQUE_ID_max_error_taskstype241, ptr @__UNIQUE_ID_sched_timeout_ms236, ptr @__UNIQUE_ID_sched_timeout_mstype237, ptr @__param_heap_init_nr_pages, ptr @__param_job_hang_limit, ptr @__param_max_error_tasks, ptr @__param_sched_timeout_ms], section "llvm.metadata"

@__mod_of__dt_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @lima_platform_driver, ptr noundef nonnull @__this_module) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @lima_platform_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_pdev_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @lima_sched_slab_init() #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %50

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 1616, i32 noundef 3520) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %4
  store ptr %5, ptr %6, align 8
  %9 = tail call ptr @of_device_get_match_data(ptr noundef %5) #12
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr inbounds %struct.lima_device, ptr %6, i32 0, i32 2
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %6, ptr %12, align 8
  %13 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @lima_drm_driver, ptr noundef %5) #12
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = ptrtoint ptr %13 to i32
  br label %50

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  store ptr %6, ptr %18, align 4
  %19 = getelementptr inbounds %struct.lima_device, ptr %6, i32 0, i32 1
  store ptr %13, ptr %19, align 4
  %20 = tail call i32 @lima_device_init(ptr noundef nonnull %6) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = tail call i32 @lima_devfreq_init(ptr noundef nonnull %6) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #13
  br label %44

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8
  %28 = tail call i32 @__pm_runtime_set_status(ptr noundef %27, i32 noundef 0) #12
  %29 = load ptr, ptr %6, align 8
  %30 = tail call i64 @ktime_get_mono_fast_ns() #12
  %31 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 11, i32 22
  store volatile i64 %30, ptr %31, align 8
  %32 = load ptr, ptr %6, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %32, i32 noundef 200) #12
  %33 = load ptr, ptr %6, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %33, i1 noundef zeroext true) #12
  %34 = load ptr, ptr %6, align 8
  tail call void @pm_runtime_enable(ptr noundef %34) #12
  %35 = tail call i32 @drm_dev_register(ptr noundef %13, i32 noundef 0) #12
  %36 = icmp slt i32 %35, 0
  %37 = load ptr, ptr %6, align 8
  br i1 %36, label %43, label %38

38:                                               ; preds = %26
  %39 = tail call i32 @sysfs_create_bin_file(ptr noundef %37, ptr noundef nonnull @lima_error_state_attr) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.2) #13
  br label %50

43:                                               ; preds = %26
  tail call void @__pm_runtime_disable(ptr noundef %37, i1 noundef zeroext true) #12
  tail call void @lima_devfreq_fini(ptr noundef nonnull %6) #12
  br label %44

44:                                               ; preds = %43, %25
  %45 = phi i32 [ %23, %25 ], [ %35, %43 ]
  tail call void @lima_device_fini(ptr noundef nonnull %6) #12
  br label %46

46:                                               ; preds = %44, %17
  %47 = phi i32 [ %20, %17 ], [ %45, %44 ]
  tail call void @drm_dev_put(ptr noundef %13) #12
  br label %48

48:                                               ; preds = %46, %4
  %49 = phi i32 [ %47, %46 ], [ -12, %4 ]
  tail call void @lima_sched_slab_fini() #12
  br label %50

50:                                               ; preds = %48, %41, %38, %15, %1
  %51 = phi i32 [ %16, %15 ], [ %49, %48 ], [ %2, %1 ], [ 0, %41 ], [ 0, %38 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_pdev_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.lima_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  tail call void @sysfs_remove_bin_file(ptr noundef %6, ptr noundef nonnull @lima_error_state_attr) #12
  tail call void @drm_dev_unregister(ptr noundef %5) #12
  %7 = load ptr, ptr %3, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %7, i32 noundef -1) #12
  %8 = load ptr, ptr %3, align 8
  tail call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #12
  tail call void @lima_devfreq_fini(ptr noundef %3) #12
  tail call void @lima_device_fini(ptr noundef %3) #12
  tail call void @drm_dev_put(ptr noundef %5) #12
  tail call void @lima_sched_slab_fini() #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_sched_slab_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_devfreq_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_devfreq_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_device_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_sched_slab_fini() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_drm_driver_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @lima_vm_create(ptr noundef %4) #12
  store ptr %9, ptr %6, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #12
  br label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lima_drm_priv, ptr %6, i32 0, i32 1
  tail call void @lima_ctx_mgr_init(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  store ptr %6, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %11, %2
  %16 = phi i32 [ 0, %12 ], [ -12, %11 ], [ -12, %2 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lima_drm_driver_postclose(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lima_drm_priv, ptr %4, i32 0, i32 1
  tail call void @lima_ctx_mgr_fini(ptr noundef %5) #12
  %6 = load ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lima_vm, ptr %6, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !10
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #12
  br label %17

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void @lima_vm_release(ptr noundef %9) #12
  br label %17

17:                                               ; preds = %16, %15, %13, %2
  tail call void @kfree(ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_gem_create_object(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_shmem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_vm_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_ctx_mgr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_ctx_mgr_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_vm_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @lima_ioctl_get_param(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #6 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_lima_get_param, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = load i32, ptr %1, align 8
  switch i32 %10, label %33 [
    i32 0, label %11
    i32 1, label %18
    i32 2, label %22
    i32 3, label %26
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.lima_device, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 1
  %15 = select i1 %14, i64 2, i64 0
  %16 = icmp eq i32 %13, 0
  %17 = select i1 %16, i64 1, i64 %15
  br label %30

18:                                               ; preds = %9
  %19 = getelementptr %struct.lima_device, ptr %5, i32 0, i32 12, i32 1, i32 12
  %20 = load i32, ptr %19, align 4
  %21 = sext i32 %20 to i64
  br label %30

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.lima_device, ptr %5, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  br label %30

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.lima_device, ptr %5, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %26, %22, %18, %11
  %31 = phi i64 [ %21, %18 ], [ %25, %22 ], [ %29, %26 ], [ %17, %11 ]
  %32 = getelementptr inbounds %struct.drm_lima_get_param, ptr %1, i32 0, i32 2
  store i64 %31, ptr %32, align 8
  br label %33

33:                                               ; preds = %30, %9, %3
  %34 = phi i32 [ -22, %3 ], [ -22, %9 ], [ 0, %30 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_lima_gem_create, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_lima_gem_create, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.drm_lima_gem_create, ptr %1, i32 0, i32 2
  %16 = tail call i32 @lima_gem_create_handle(ptr noundef %0, ptr noundef %2, i32 noundef %12, i32 noundef %9, ptr noundef %15) #12
  br label %17

17:                                               ; preds = %14, %11, %7, %3
  %18 = phi i32 [ %16, %14 ], [ -22, %3 ], [ -22, %7 ], [ -22, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_info(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = load i32, ptr %1, align 8
  %5 = getelementptr inbounds %struct.drm_lima_gem_info, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_lima_gem_info, ptr %1, i32 0, i32 2
  %7 = tail call i32 @lima_gem_get_info(ptr noundef %2, i32 noundef %4, ptr noundef %5, ptr noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_submit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca %struct.lima_submit, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false)
  %9 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %138, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %138, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 6
  %18 = load i32, ptr %17, align 8
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %138

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.lima_device, ptr %6, i32 0, i32 12
  %22 = getelementptr %struct.lima_sched_pipe, ptr %21, i32 %10
  %23 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.lima_sched_pipe, ptr %21, i32 %10, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %138

28:                                               ; preds = %20
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 12) #12
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %138, label %31, !prof !13

31:                                               ; preds = %28
  %32 = extractvalue { i32, i1 } %29, 0
  %33 = tail call noalias ptr @kvmalloc_node(i32 noundef %32, i32 noundef 3520, i32 noundef -1) #15
  %34 = icmp eq ptr %33, null
  br i1 %34, label %138, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %13, align 8
  %37 = shl i32 %36, 3
  %38 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 4
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = inttoptr i32 %40 to ptr
  %42 = icmp slt i32 %37, 0
  %43 = load i1, ptr @check_copy_size.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !13

46:                                               ; preds = %35
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %47

47:                                               ; preds = %46, %35
  br i1 %42, label %136, label %48, !prof !13

48:                                               ; preds = %47
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %41, i32 %37, i32 -1090519040) #16, !srcloc !14
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59, !prof !11

52:                                               ; preds = %48
  %53 = tail call ptr @llvm.thread.pointer() #12
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #17, !srcloc !15
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #12, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !17
  %58 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %33, ptr noundef %41, i32 noundef %37) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #12, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !17
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i32 [ %58, %52 ], [ %37, %48 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62, !prof !11

62:                                               ; preds = %59
  %63 = sub i32 %37, %60
  %64 = getelementptr i8, ptr %33, i32 %63
  tail call void @llvm.memset.p0.i32(ptr align 1 %64, i8 0, i32 %60, i1 false) #12
  br label %136

65:                                               ; preds = %59
  %66 = getelementptr %struct.lima_sched_pipe, ptr %21, i32 %10, i32 19
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %67, i32 noundef 3520) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %136, label %70

70:                                               ; preds = %65
  %71 = getelementptr %struct.lima_sched_task, ptr %68, i32 1
  %72 = getelementptr inbounds %struct.lima_sched_task, ptr %68, i32 0, i32 2
  store ptr %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 5
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = inttoptr i32 %75 to ptr
  %77 = load i32, ptr %23, align 4
  %78 = icmp slt i32 %77, 0
  %79 = load i1, ptr @check_copy_size.__already_done, align 1
  %80 = xor i1 %79, true
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %83, !prof !13

82:                                               ; preds = %70
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %83

83:                                               ; preds = %82, %70
  br i1 %78, label %133, label %84, !prof !13

84:                                               ; preds = %83
  %85 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %76, i32 %77, i32 -1090519040) #16, !srcloc !14
  %86 = extractvalue { i32, i32 } %85, 0
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95, !prof !11

88:                                               ; preds = %84
  %89 = tail call ptr @llvm.thread.pointer() #12
  %90 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 3
  %91 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %90) #17, !srcloc !15
  %92 = and i32 %91, -13
  %93 = or i32 %92, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #12, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !17
  %94 = tail call i32 @arm_copy_from_user(ptr noundef %71, ptr noundef %76, i32 noundef %77) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %91) #12, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !17
  br label %95

95:                                               ; preds = %88, %84
  %96 = phi i32 [ %94, %88 ], [ %77, %84 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %101, label %98, !prof !11

98:                                               ; preds = %95
  %99 = sub i32 %77, %96
  %100 = getelementptr i8, ptr %71, i32 %99
  tail call void @llvm.memset.p0.i32(ptr align 1 %100, i8 0, i32 %96, i1 false) #12
  br label %133

101:                                              ; preds = %95
  %102 = getelementptr %struct.lima_sched_pipe, ptr %21, i32 %10, i32 20
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 %103(ptr noundef %22, ptr noundef nonnull %68) #12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.lima_drm_priv, ptr %8, i32 0, i32 1
  %108 = load i32, ptr %1, align 8
  %109 = tail call ptr @lima_ctx_get(ptr noundef %107, i32 noundef %108) #12
  %110 = icmp eq ptr %109, null
  br i1 %110, label %133, label %111

111:                                              ; preds = %106
  %112 = load i32, ptr %9, align 4
  %113 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 1
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 3
  store ptr %33, ptr %114, align 4
  %115 = getelementptr i8, ptr %33, i32 %37
  %116 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 4
  store ptr %115, ptr %116, align 4
  %117 = load i32, ptr %13, align 8
  %118 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 5
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 8
  store ptr %68, ptr %119, align 4
  store ptr %109, ptr %4, align 4
  %120 = load i32, ptr %17, align 8
  %121 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 2
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 8
  %123 = load i32, ptr %122, align 8
  %124 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 6
  store i32 %123, ptr %124, align 4
  %125 = getelementptr %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 8, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 6, i32 1
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.drm_lima_gem_submit, ptr %1, i32 0, i32 7
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.lima_submit, ptr %4, i32 0, i32 7
  store i32 %129, ptr %130, align 4
  %131 = call i32 @lima_gem_submit(ptr noundef %2, ptr noundef nonnull %4) #12
  call void @lima_ctx_put(ptr noundef nonnull %109) #12
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %111, %106, %101, %98, %83
  %134 = phi i32 [ %131, %111 ], [ -2, %106 ], [ %104, %101 ], [ -14, %83 ], [ -14, %98 ]
  %135 = load ptr, ptr %66, align 8
  call void @kmem_cache_free(ptr noundef %135, ptr noundef nonnull %68) #12
  br label %136

136:                                              ; preds = %133, %111, %65, %62, %47
  %137 = phi i32 [ %134, %133 ], [ 0, %111 ], [ -12, %65 ], [ -14, %47 ], [ -14, %62 ]
  call void @kvfree(ptr noundef nonnull %33) #12
  br label %138

138:                                              ; preds = %136, %31, %28, %20, %16, %12, %3
  %139 = phi i32 [ %137, %136 ], [ -22, %12 ], [ -22, %3 ], [ -22, %16 ], [ -22, %20 ], [ -12, %31 ], [ -12, %28 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_ioctl_gem_wait(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_lima_gem_wait, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 8
  %9 = getelementptr inbounds %struct.drm_lima_gem_wait, ptr %1, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = tail call i32 @lima_gem_wait(ptr noundef %2, i32 noundef %8, i32 noundef %5, i64 noundef %10) #12
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %11, %7 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_ioctl_ctx_create(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.drm_lima_ctx_create, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.lima_drm_priv, ptr %11, i32 0, i32 1
  %13 = tail call i32 @lima_ctx_create(ptr noundef %9, ptr noundef %12, ptr noundef %1) #12
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i32 [ %13, %7 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_ioctl_ctx_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.drm_lima_ctx_create, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lima_drm_priv, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %1, align 4
  %12 = tail call i32 @lima_ctx_free(ptr noundef %10, i32 noundef %11) #12
  br label %13

13:                                               ; preds = %7, %3
  %14 = phi i32 [ %12, %7 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_create_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_get_info(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lima_ctx_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_submit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lima_ctx_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_gem_wait(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_ctx_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_ctx_free(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_error_state_read(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = trunc i64 %4 to i32
  %10 = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %10) #12
  %11 = icmp ult i32 %9, 32
  br i1 %11, label %12, label %20

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 19
  %14 = sub nuw nsw i32 32, %9
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %5) #12
  %16 = getelementptr i8, ptr %13, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %16, i32 %15, i1 false) #12
  %17 = getelementptr i8, ptr %3, i32 %15
  %18 = add nuw nsw i32 %15, %9
  %19 = sub i32 %5, %15
  br label %20

20:                                               ; preds = %12, %6
  %21 = phi ptr [ %17, %12 ], [ %3, %6 ]
  %22 = phi i32 [ %19, %12 ], [ %5, %6 ]
  %23 = phi i32 [ %18, %12 ], [ %9, %6 ]
  %24 = phi i32 [ %15, %12 ], [ 0, %6 ]
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 20
  br label %28

28:                                               ; preds = %53, %26
  %29 = phi ptr [ %21, %26 ], [ %54, %53 ]
  %30 = phi i32 [ 32, %26 ], [ %40, %53 ]
  %31 = phi i32 [ %22, %26 ], [ %55, %53 ]
  %32 = phi i32 [ %23, %26 ], [ %56, %53 ]
  %33 = phi i32 [ %24, %26 ], [ %57, %53 ]
  %34 = phi ptr [ %27, %26 ], [ %35, %53 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %27
  br i1 %36, label %59, label %37

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.lima_sched_error_task, ptr %35, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %30
  %41 = icmp ugt i32 %40, %32
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.lima_sched_error_task, ptr %35, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = sub i32 %40, %32
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %31) #12
  %47 = sub i32 %32, %30
  %48 = getelementptr i8, ptr %44, i32 %47
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %29, ptr align 1 %48, i32 %46, i1 false) #12
  %49 = getelementptr i8, ptr %29, i32 %46
  %50 = add i32 %46, %32
  %51 = add i32 %46, %33
  %52 = sub i32 %31, %46
  br label %53

53:                                               ; preds = %42, %37
  %54 = phi ptr [ %49, %42 ], [ %29, %37 ]
  %55 = phi i32 [ %52, %42 ], [ %31, %37 ]
  %56 = phi i32 [ %50, %42 ], [ %32, %37 ]
  %57 = phi i32 [ %51, %42 ], [ %33, %37 ]
  %58 = icmp eq i32 %55, 0
  br i1 %58, label %59, label %28

59:                                               ; preds = %53, %28, %20
  %60 = phi i32 [ %24, %20 ], [ %57, %53 ], [ %33, %28 ]
  tail call void @mutex_unlock(ptr noundef %10) #12
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lima_error_state_write(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i64 noundef %4, i32 noundef returned %5) #2 {
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 20
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %20, label %13

13:                                               ; preds = %13, %6
  %14 = phi ptr [ %15, %13 ], [ %11, %6 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kvfree(ptr noundef %14) #12
  %19 = icmp eq ptr %15, %10
  br i1 %19, label %20, label %13

20:                                               ; preds = %13, %6
  %21 = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 19, i32 4
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.lima_device, ptr %8, i32 0, i32 19, i32 3
  store i32 0, ptr %22, align 8
  tail call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_device_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lima_device_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
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
!8 = !{i64 2148154976}
!9 = !{i64 551910, i64 2148041881, i64 2148041907, i64 2148041954, i64 2148041976, i64 2148042004, i64 2148042024}
!10 = !{i64 2148057111, i64 2148057143, i64 2148057172, i64 2148057206, i64 2148057237, i64 2148057260}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149004039}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2151320350, i64 2151320375}
!15 = !{i64 3816462}
!16 = !{i64 3816659}
!17 = !{i64 2151301938}
