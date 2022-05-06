; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/submit.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/submit.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gather_bo = type { %struct.host1x_bo, %struct.kref, ptr, ptr, i32, i32 }
%struct.host1x_bo = type { ptr, %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.tegra_drm_file = type { %struct.idr, %struct.mutex, %struct.xarray, %struct.xarray }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_tegra_channel_submit = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, %struct.drm_tegra_submit_syncpt }
%struct.drm_tegra_submit_syncpt = type { i32, i32, i32, i32 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.dma_fence = type { ptr, ptr, %union.anon.75, i64, i64, i32, %struct.kref, i32 }
%union.anon.75 = type { i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.74, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.74 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.drm_tegra_submit_buf = type { i32, i32, %struct.anon.84 }
%struct.anon.84 = type { i64, i32, i32 }
%struct.tegra_drm_mapping = type { %struct.kref, ptr, ptr, i32, i32 }
%struct.tegra_drm_used_mapping = type { ptr, i32 }
%struct.tegra_drm_submit_data = type { ptr, i32 }
%struct.host1x_job = type { %struct.kref, %struct.list_head, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, i8 }
%struct.drm_tegra_submit_cmd = type { i32, i32, %union.anon.85 }
%union.anon.85 = type { %struct.drm_tegra_submit_cmd_gather_uptr }
%struct.drm_tegra_submit_cmd_gather_uptr = type { i32, [3 x i32] }
%struct.drm_tegra_submit_cmd_wait_syncpt = type { i32, i32, [2 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@gather_bo_ops = dso_local constant %struct.host1x_bo_ops { ptr @gather_bo_get, ptr @gather_bo_put, ptr @gather_bo_pin, ptr @gather_bo_unpin, ptr @gather_bo_mmap, ptr @gather_bo_munmap }, align 4
@tegra_drm_ioctl_channel_submit._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.tegra_drm_ioctl_channel_submit = private unnamed_addr constant [31 x i8] c"tegra_drm_ioctl_channel_submit\00", align 1
@.str = private unnamed_addr constant [40 x i8] c"\013%s: %s: invalid channel context '%#x'\00", align 1
@tegra_drm_ioctl_channel_submit._rs.1 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"%s: job submission failed: invalid syncobj_in '%#x'\0A\00", align 1
@tegra_drm_ioctl_channel_submit._rs.3 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"%s: job submission failed: wait for syncobj_in timed out\0A\00", align 1
@tegra_drm_ioctl_channel_submit._rs.5 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"%s: job submission failed: invalid syncobj_out '%#x'\0A\00", align 1
@tegra_drm_ioctl_channel_submit._rs.7 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [67 x i8] c"%s: job submission failed: failed to allocate memory for job data\0A\00", align 1
@tegra_drm_ioctl_channel_submit._rs.9 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"%s: job submission failed: failed to pin job: %d\0A\00", align 1
@tegra_drm_ioctl_channel_submit._rs.11 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [58 x i8] c"%s: job submission failed: could not power up engine: %d\0A\00", align 1
@tegra_drm_ioctl_channel_submit._rs.13 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [61 x i8] c"%s: job submission failed: host1x job submission failed: %d\0A\00", align 1
@tegra_drm_ioctl_channel_submit._rs.15 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [59 x i8] c"%s: job submission failed: failed to create postfence: %d\0A\00", align 1
@submit_copy_gather_data._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.submit_copy_gather_data = private unnamed_addr constant [24 x i8] c"submit_copy_gather_data\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"%s: job submission failed: gather_data_words cannot be zero\0A\00", align 1
@submit_copy_gather_data._rs.18 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.19 = private unnamed_addr constant [59 x i8] c"%s: job submission failed: gather_data_words is too large\0A\00", align 1
@submit_copy_gather_data._rs.20 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [66 x i8] c"%s: job submission failed: failed to allocate memory for bo info\0A\00", align 1
@submit_copy_gather_data._rs.22 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.23 = private unnamed_addr constant [70 x i8] c"%s: job submission failed: failed to allocate memory for gather data\0A\00", align 1
@submit_copy_gather_data._rs.24 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.25 = private unnamed_addr constant [70 x i8] c"%s: job submission failed: failed to copy gather data from userspace\0A\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@submit_process_bufs._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.submit_process_bufs = private unnamed_addr constant [20 x i8] c"submit_process_bufs\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"%s: job submission failed: failed to copy bufs array from userspace\0A\00", align 1
@submit_process_bufs._rs.29 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.30 = private unnamed_addr constant [71 x i8] c"%s: job submission failed: failed to allocate memory for mapping info\0A\00", align 1
@submit_process_bufs._rs.31 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [62 x i8] c"%s: job submission failed: invalid flag specified for buffer\0A\00", align 1
@submit_process_bufs._rs.33 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.34 = private unnamed_addr constant [63 x i8] c"%s: job submission failed: invalid mapping ID '%u' for buffer\0A\00", align 1
@submit_write_reloc._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.submit_write_reloc = private unnamed_addr constant [19 x i8] c"submit_write_reloc\00", align 1
@.str.35 = private unnamed_addr constant [93 x i8] c"%s: job submission failed: relocation has too large gather offset (%u vs gather length %zu)\0A\00", align 1
@submit_create_job._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.submit_create_job = private unnamed_addr constant [18 x i8] c"submit_create_job\00", align 1
@.str.36 = private unnamed_addr constant [69 x i8] c"%s: job submission failed: failed to copy cmds array from userspace\0A\00", align 1
@submit_create_job._rs.37 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.38 = private unnamed_addr constant [62 x i8] c"%s: job submission failed: failed to allocate memory for job\0A\00", align 1
@submit_create_job._rs.39 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.40 = private unnamed_addr constant [56 x i8] c"%s: job submission failed: unknown flags given for cmd\0A\00", align 1
@submit_create_job._rs.41 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.42 = private unnamed_addr constant [52 x i8] c"%s: job submission failed: non-zero reserved value\0A\00", align 1
@submit_create_job._rs.43 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@submit_create_job._rs.44 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.45 = private unnamed_addr constant [92 x i8] c"%s: job submission failed: syncpoint ID in CMD_WAIT_SYNCPT_RELATIVE is not used by the job\0A\00", align 1
@submit_create_job._rs.46 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.47 = private unnamed_addr constant [45 x i8] c"%s: job submission failed: unknown cmd type\0A\00", align 1
@submit_create_job._rs.48 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.49 = private unnamed_addr constant [62 x i8] c"%s: job submission failed: job must have at least one gather\0A\00", align 1
@submit_get_syncpt._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.submit_get_syncpt = private unnamed_addr constant [18 x i8] c"submit_get_syncpt\00", align 1
@.str.50 = private unnamed_addr constant [62 x i8] c"%s: job submission failed: invalid flag specified for syncpt\0A\00", align 1
@submit_get_syncpt._rs.51 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [76 x i8] c"%s: job submission failed: syncpoint specified in syncpt was not allocated\0A\00", align 1
@submit_job_add_gather._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.submit_job_add_gather = private unnamed_addr constant [22 x i8] c"submit_job_add_gather\00", align 1
@.str.53 = private unnamed_addr constant [75 x i8] c"%s: job submission failed: non-zero reserved field in GATHER_UPTR command\0A\00", align 1
@submit_job_add_gather._rs.54 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.55 = private unnamed_addr constant [66 x i8] c"%s: job submission failed: too many words in GATHER_UPTR command\0A\00", align 1
@submit_job_add_gather._rs.56 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.57 = private unnamed_addr constant [56 x i8] c"%s: job submission failed: too many total words in job\0A\00", align 1
@submit_job_add_gather._rs.58 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.59 = private unnamed_addr constant [70 x i8] c"%s: job submission failed: GATHER_UPTR command overflows gather data\0A\00", align 1
@submit_job_add_gather._rs.60 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.61 = private unnamed_addr constant [57 x i8] c"%s: job submission failed: job was rejected by firewall\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gather_bo_get(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.gather_bo, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !9
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !11

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #12
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gather_bo_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gather_bo, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !13
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %19, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %19

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %10 = getelementptr %struct.gather_bo, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.gather_bo, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 2
  %15 = getelementptr %struct.gather_bo, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.gather_bo, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef 0) #12
  tail call void @kfree(ptr noundef %0) #12
  br label %19

19:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gather_bo_pin(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 56) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  store volatile i32 1, ptr %5, align 8
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 2
  store i32 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 7
  store ptr %0, ptr %13, align 8
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 12) #13
  %16 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 5
  store ptr %15, ptr %16, align 8
  %17 = icmp eq ptr %15, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.gather_bo, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gather_bo, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gather_bo, ptr %1, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.gather_bo, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 2
  %28 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %20, ptr noundef nonnull %15, ptr noundef %22, i32 noundef %24, i32 noundef %27, i32 noundef 0) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %18
  %31 = load ptr, ptr %16, align 8
  %32 = tail call i32 @dma_map_sgtable(ptr noundef %0, ptr noundef %31, i32 noundef %2, i32 noundef 0) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load ptr, ptr %16, align 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 8
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %25, align 4
  %41 = shl i32 %40, 2
  %42 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 9
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %5, i32 0, i32 6
  store i32 0, ptr %43, align 4
  br label %51

44:                                               ; preds = %30, %18
  %45 = phi i32 [ %28, %18 ], [ %32, %30 ]
  %46 = load ptr, ptr %16, align 8
  tail call void @sg_free_table(ptr noundef %46) #12
  %47 = load ptr, ptr %16, align 8
  tail call void @kfree(ptr noundef %47) #12
  br label %48

48:                                               ; preds = %44, %7
  %49 = phi i32 [ %45, %44 ], [ -12, %7 ]
  tail call void @kfree(ptr noundef nonnull %5) #12
  %50 = inttoptr i32 %49 to ptr
  br label %51

51:                                               ; preds = %48, %34, %3
  %52 = phi ptr [ %50, %48 ], [ %5, %34 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gather_bo_unpin(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %10, i32 noundef %12, i32 noundef %9, i32 noundef 0) #12
  %13 = load ptr, ptr %6, align 4
  tail call void @sg_free_table(ptr noundef %13) #12
  %14 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %14) #12
  %15 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.host1x_bo_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %16) #12
  tail call void @kfree(ptr noundef nonnull %0) #12
  br label %20

20:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @gather_bo_mmap(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gather_bo, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @gather_bo_munmap(ptr nocapture noundef %0, ptr nocapture noundef %1) #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_submit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_drm_file, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.tegra_drm_file, ptr %7, i32 0, i32 2
  %10 = load i32, ptr %1, align 8
  %11 = tail call ptr @xa_load(ptr noundef %9, i32 noundef %10) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef %8) #12
  %14 = tail call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %659, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @llvm.thread.pointer() #12
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 85
  %19 = load i32, ptr %1, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit, ptr noundef %18, i32 noundef %19) #14
  br label %659

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 7
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !15
  %26 = call i32 @drm_syncobj_find_fence(ptr noundef %2, i32 noundef %23, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %5) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.1, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %11, align 4
  %33 = getelementptr inbounds %struct.host1x_client, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call ptr @llvm.thread.pointer() #12
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 85
  %37 = load i32, ptr %22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.2, ptr noundef %36, i32 noundef %37) #14
  br label %63

38:                                               ; preds = %25
  %39 = load ptr, ptr %5, align 4
  %40 = call i32 @dma_fence_wait_timeout(ptr noundef %39, i1 noundef zeroext true, i32 noundef 1000) #12
  %41 = load ptr, ptr %5, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.dma_fence, ptr %41, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #12, !srcloc !8
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #12, !srcloc !13
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = icmp sgt i32 %46, 0
  br i1 %49, label %52, label %50, !prof !11

50:                                               ; preds = %48
  call void @refcount_warn_saturate(ptr noundef %44, i32 noundef 3) #12
  br label %52

51:                                               ; preds = %43
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  call void @dma_fence_release(ptr noundef %44) #12, !callees !16
  br label %52

52:                                               ; preds = %51, %50, %48, %38
  %53 = icmp eq i32 %40, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %52
  %55 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.3, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %11, align 4
  %59 = getelementptr inbounds %struct.host1x_client, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = tail call ptr @llvm.thread.pointer() #12
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.4, ptr noundef %62) #14
  br label %63

63:                                               ; preds = %57, %54, %31, %28
  %64 = phi i32 [ %40, %54 ], [ %40, %57 ], [ %26, %28 ], [ %26, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %657

65:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %66

66:                                               ; preds = %65, %21
  %67 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %66
  %71 = call ptr @drm_syncobj_find(ptr noundef %2, i32 noundef %68) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.5, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %657, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %11, align 4
  %78 = getelementptr inbounds %struct.host1x_client, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = tail call ptr @llvm.thread.pointer() #12
  %81 = getelementptr inbounds %struct.task_struct, ptr %80, i32 0, i32 85
  %82 = load i32, ptr %67, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.6, ptr noundef %81, i32 noundef %82) #14
  br label %657

83:                                               ; preds = %70, %66
  %84 = phi ptr [ %71, %70 ], [ null, %66 ]
  %85 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %646, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %11, align 4
  %95 = getelementptr inbounds %struct.host1x_client, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = tail call ptr @llvm.thread.pointer() #12
  %98 = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.17, ptr noundef %98) #14
  br label %646

99:                                               ; preds = %83
  %100 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %88, i32 4) #12
  %101 = extractvalue { i32, i1 } %100, 1
  %102 = extractvalue { i32, i1 } %100, 0
  br i1 %101, label %103, label %112

103:                                              ; preds = %99
  %104 = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.18, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %646, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %11, align 4
  %108 = getelementptr inbounds %struct.host1x_client, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = tail call ptr @llvm.thread.pointer() #12
  %111 = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.19, ptr noundef %111) #14
  br label %646

112:                                              ; preds = %99
  %113 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %114 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %113, i32 noundef 3520, i32 noundef 36) #13
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.20, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %646, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %11, align 4
  %121 = getelementptr inbounds %struct.host1x_client, ptr %120, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = tail call ptr @llvm.thread.pointer() #12
  %124 = getelementptr inbounds %struct.task_struct, ptr %123, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.21, ptr noundef %124) #14
  br label %646

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.host1x_bo, ptr %114, i32 0, i32 1
  store volatile ptr %126, ptr %126, align 4
  %127 = getelementptr inbounds %struct.host1x_bo, ptr %114, i32 0, i32 1, i32 1
  store ptr %126, ptr %127, align 8
  %128 = getelementptr inbounds %struct.host1x_bo, ptr %114, i32 0, i32 2
  store i32 0, ptr %128, align 4
  store ptr @gather_bo_ops, ptr %114, align 8
  %129 = getelementptr inbounds %struct.gather_bo, ptr %114, i32 0, i32 1
  store volatile i32 1, ptr %129, align 8
  %130 = getelementptr %struct.gather_bo, ptr %114, i32 0, i32 2
  store ptr %86, ptr %130, align 4
  %131 = getelementptr %struct.gather_bo, ptr %114, i32 0, i32 4
  %132 = call ptr @dma_alloc_attrs(ptr noundef %86, i32 noundef %102, ptr noundef %131, i32 noundef 11456, i32 noundef 0) #12
  %133 = getelementptr %struct.gather_bo, ptr %114, i32 0, i32 3
  store ptr %132, ptr %133, align 8
  %134 = icmp eq ptr %132, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %125
  %136 = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.22, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr %11, align 4
  %140 = getelementptr inbounds %struct.host1x_client, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = tail call ptr @llvm.thread.pointer() #12
  %143 = getelementptr inbounds %struct.task_struct, ptr %142, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.23, ptr noundef %143) #14
  br label %144

144:                                              ; preds = %138, %135
  call void @kfree(ptr noundef nonnull %114) #12
  br label %646

145:                                              ; preds = %125
  %146 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 6
  %147 = load i64, ptr %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = inttoptr i32 %148 to ptr
  %150 = icmp slt i32 %102, 0
  %151 = load i1, ptr @check_copy_size.__already_done, align 1
  %152 = xor i1 %151, true
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %155, !prof !10

154:                                              ; preds = %145
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %155

155:                                              ; preds = %154, %145
  br i1 %150, label %173, label %156, !prof !10

156:                                              ; preds = %155
  %157 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %149, i32 %102, i32 -1090519040) #15, !srcloc !17
  %158 = extractvalue { i32, i32 } %157, 0
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167, !prof !11

160:                                              ; preds = %156
  %161 = tail call ptr @llvm.thread.pointer() #12
  %162 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 3
  %163 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %162) #16, !srcloc !18
  %164 = and i32 %163, -13
  %165 = or i32 %164, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %165) #12, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  %166 = call i32 @arm_copy_from_user(ptr noundef nonnull %132, ptr noundef %149, i32 noundef %102) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %163) #12, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  br label %167

167:                                              ; preds = %160, %156
  %168 = phi i32 [ %166, %160 ], [ %102, %156 ]
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %185, label %170, !prof !11

170:                                              ; preds = %167
  %171 = sub i32 %102, %168
  %172 = getelementptr i8, ptr %132, i32 %171
  call void @llvm.memset.p0.i32(ptr align 1 %172, i8 0, i32 %168, i1 false) #12
  br label %173

173:                                              ; preds = %170, %155
  %174 = call i32 @___ratelimit(ptr noundef nonnull @submit_copy_gather_data._rs.24, ptr noundef nonnull @__func__.submit_copy_gather_data) #12
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr %11, align 4
  %178 = getelementptr inbounds %struct.host1x_client, ptr %177, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  %180 = tail call ptr @llvm.thread.pointer() #12
  %181 = getelementptr inbounds %struct.task_struct, ptr %180, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %179, ptr noundef nonnull @.str.25, ptr noundef %181) #14
  br label %182

182:                                              ; preds = %176, %173
  %183 = load ptr, ptr %133, align 8
  %184 = load i32, ptr %131, align 4
  call void @dma_free_attrs(ptr noundef %86, i32 noundef %102, ptr noundef %183, i32 noundef %184, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %114) #12
  br label %646

185:                                              ; preds = %167
  %186 = load i32, ptr %87, align 4
  %187 = getelementptr %struct.gather_bo, ptr %114, i32 0, i32 5
  store i32 %186, ptr %187, align 8
  %188 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %189 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %188, i32 noundef 3520, i32 noundef 8) #13
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %200

191:                                              ; preds = %185
  %192 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.7, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %632, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %11, align 4
  %196 = getelementptr inbounds %struct.host1x_client, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = tail call ptr @llvm.thread.pointer() #12
  %199 = getelementptr inbounds %struct.task_struct, ptr %198, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.8, ptr noundef %199) #14
  br label %632

200:                                              ; preds = %185
  %201 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 4
  %202 = load i64, ptr %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = inttoptr i32 %203 to ptr
  %205 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = call fastcc ptr @alloc_copy_user_array(ptr noundef %204, i32 noundef %206) #12
  %208 = icmp ugt ptr %207, inttoptr (i32 -4096 to ptr)
  br i1 %208, label %209, label %220

209:                                              ; preds = %200
  %210 = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs, ptr noundef nonnull @__func__.submit_process_bufs) #12
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %11, align 4
  %214 = getelementptr inbounds %struct.host1x_client, ptr %213, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = tail call ptr @llvm.thread.pointer() #12
  %217 = getelementptr inbounds %struct.task_struct, ptr %216, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %215, ptr noundef nonnull @.str.28, ptr noundef %217) #14
  br label %218

218:                                              ; preds = %212, %209
  %219 = ptrtoint ptr %207 to i32
  br label %339

220:                                              ; preds = %200
  %221 = load i32, ptr %205, align 4
  %222 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %221, i32 8) #12
  %223 = extractvalue { i32, i1 } %222, 1
  br i1 %223, label %233, label %224, !prof !10

224:                                              ; preds = %220
  %225 = extractvalue { i32, i1 } %222, 0
  %226 = call noalias align 64 ptr @__kmalloc(i32 noundef %225, i32 noundef 3520) #17
  %227 = icmp eq ptr %226, null
  br i1 %227, label %233, label %228

228:                                              ; preds = %224
  %229 = load i32, ptr %205, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %327, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.tegra_drm_context, ptr %11, i32 0, i32 3
  br label %242

233:                                              ; preds = %224, %220
  %234 = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs.29, ptr noundef nonnull @__func__.submit_process_bufs) #12
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %337, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %11, align 4
  %238 = getelementptr inbounds %struct.host1x_client, ptr %237, i32 0, i32 2
  %239 = load ptr, ptr %238, align 4
  %240 = tail call ptr @llvm.thread.pointer() #12
  %241 = getelementptr inbounds %struct.task_struct, ptr %240, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %239, ptr noundef nonnull @.str.30, ptr noundef %241) #14
  br label %337

242:                                              ; preds = %307, %231
  %243 = phi i32 [ 0, %231 ], [ %324, %307 ]
  %244 = getelementptr %struct.drm_tegra_submit_buf, ptr %207, i32 %243, i32 1
  %245 = load i32, ptr %244, align 4
  %246 = icmp ult i32 %245, 2
  br i1 %246, label %256, label %247

247:                                              ; preds = %242
  %248 = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs.31, ptr noundef nonnull @__func__.submit_process_bufs) #12
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %305, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %11, align 4
  %252 = getelementptr inbounds %struct.host1x_client, ptr %251, i32 0, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = tail call ptr @llvm.thread.pointer() #12
  %255 = getelementptr inbounds %struct.task_struct, ptr %254, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %253, ptr noundef nonnull @.str.32, ptr noundef %255) #14
  br label %305

256:                                              ; preds = %242
  %257 = getelementptr %struct.drm_tegra_submit_buf, ptr %207, i32 %243
  %258 = load i32, ptr %257, align 8
  call void @_raw_spin_lock(ptr noundef %232) #12
  %259 = call ptr @xa_load(ptr noundef %232, i32 noundef %258) #12
  %260 = icmp eq ptr %259, null
  br i1 %260, label %273, label %261

261:                                              ; preds = %256
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %259) #12, !srcloc !8
  %262 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %259, ptr nonnull %259, i32 1, ptr nonnull elementtype(i32) %259) #12, !srcloc !9
  %263 = extractvalue { i32, i32, i32 } %262, 0
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %269, label %265, !prof !10

265:                                              ; preds = %261
  %266 = add i32 %263, 1
  %267 = or i32 %266, %263
  %268 = icmp sgt i32 %267, -1
  br i1 %268, label %285, label %269, !prof !11

269:                                              ; preds = %265, %261
  %270 = phi i32 [ 2, %261 ], [ 1, %265 ]
  call void @refcount_warn_saturate(ptr noundef nonnull %259, i32 noundef %270) #12
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %271 = load i16, ptr %232, align 4
  %272 = add i16 %271, 1
  store i16 %272, ptr %232, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %288

273:                                              ; preds = %256
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %274 = load i16, ptr %232, align 4
  %275 = add i16 %274, 1
  store i16 %275, ptr %232, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %276 = call i32 @___ratelimit(ptr noundef nonnull @submit_process_bufs._rs.33, ptr noundef nonnull @__func__.submit_process_bufs) #12
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %305, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr %11, align 4
  %280 = getelementptr inbounds %struct.host1x_client, ptr %279, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  %282 = tail call ptr @llvm.thread.pointer() #12
  %283 = getelementptr inbounds %struct.task_struct, ptr %282, i32 0, i32 85
  %284 = load i32, ptr %257, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %281, ptr noundef nonnull @.str.34, ptr noundef %283, i32 noundef %284) #14
  br label %305

285:                                              ; preds = %265
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %286 = load i16, ptr %232, align 4
  %287 = add i16 %286, 1
  store i16 %287, ptr %232, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %288

288:                                              ; preds = %285, %269
  %289 = getelementptr %struct.drm_tegra_submit_buf, ptr %207, i32 %243, i32 2, i32 1
  %290 = load i32, ptr %289, align 8
  %291 = load i32, ptr %187, align 8
  %292 = icmp ult i32 %290, %291
  br i1 %292, label %307, label %293

293:                                              ; preds = %288
  %294 = call i32 @___ratelimit(ptr noundef nonnull @submit_write_reloc._rs, ptr noundef nonnull @__func__.submit_write_reloc) #12
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %304, label %296

296:                                              ; preds = %293
  %297 = load ptr, ptr %11, align 4
  %298 = getelementptr inbounds %struct.host1x_client, ptr %297, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  %300 = tail call ptr @llvm.thread.pointer() #12
  %301 = getelementptr inbounds %struct.task_struct, ptr %300, i32 0, i32 85
  %302 = load i32, ptr %289, align 8
  %303 = load i32, ptr %187, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %299, ptr noundef nonnull @.str.35, ptr noundef %301, i32 noundef %302, i32 noundef %303) #14
  br label %304

304:                                              ; preds = %296, %293
  call void @tegra_drm_mapping_put(ptr noundef nonnull %259) #12
  br label %305

305:                                              ; preds = %304, %278, %273, %250, %247
  %306 = icmp eq i32 %243, 0
  br i1 %306, label %336, label %330

307:                                              ; preds = %288
  %308 = getelementptr %struct.drm_tegra_submit_buf, ptr %207, i32 %243, i32 2
  %309 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %259, i32 0, i32 3
  %310 = load i32, ptr %309, align 4
  %311 = load i64, ptr %308, align 8
  %312 = trunc i64 %311 to i32
  %313 = add i32 %310, %312
  %314 = getelementptr %struct.drm_tegra_submit_buf, ptr %207, i32 %243, i32 2, i32 2
  %315 = load i32, ptr %314, align 4
  %316 = lshr i32 %313, %315
  %317 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %290, i32 %291) #12, !srcloc !25
  %318 = and i32 %317, %290
  store i32 %318, ptr %289, align 8
  %319 = load ptr, ptr %133, align 8
  %320 = getelementptr i32, ptr %319, i32 %318
  store i32 %316, ptr %320, align 4
  %321 = getelementptr %struct.tegra_drm_used_mapping, ptr %226, i32 %243
  store ptr %259, ptr %321, align 8
  %322 = load i32, ptr %244, align 4
  %323 = getelementptr %struct.tegra_drm_used_mapping, ptr %226, i32 %243, i32 1
  store i32 %322, ptr %323, align 4
  %324 = add nuw i32 %243, 1
  %325 = load i32, ptr %205, align 4
  %326 = icmp ult i32 %324, %325
  br i1 %326, label %242, label %327

327:                                              ; preds = %307, %228
  %328 = phi i32 [ 0, %228 ], [ %324, %307 ]
  store ptr %226, ptr %189, align 8
  %329 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %189, i32 0, i32 1
  store i32 %328, ptr %329, align 4
  br label %337

330:                                              ; preds = %330, %305
  %331 = phi i32 [ %332, %330 ], [ %243, %305 ]
  %332 = add i32 %331, -1
  %333 = getelementptr %struct.tegra_drm_used_mapping, ptr %226, i32 %332
  %334 = load ptr, ptr %333, align 8
  call void @tegra_drm_mapping_put(ptr noundef %334) #12
  %335 = icmp eq i32 %332, 0
  br i1 %335, label %336, label %330

336:                                              ; preds = %330, %305
  call void @kfree(ptr noundef nonnull %226) #12
  store ptr null, ptr %189, align 8
  br label %337

337:                                              ; preds = %336, %327, %236, %233
  %338 = phi i32 [ -22, %336 ], [ 0, %327 ], [ -12, %236 ], [ -12, %233 ]
  call void @kvfree(ptr noundef %207) #12
  br label %339

339:                                              ; preds = %337, %218
  %340 = phi i32 [ %219, %218 ], [ %338, %337 ]
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %609

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.tegra_drm_file, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %344 = load ptr, ptr %11, align 4
  %345 = getelementptr inbounds %struct.host1x_client, ptr %344, i32 0, i32 5
  %346 = load i32, ptr %345, align 4
  store i32 %346, ptr %4, align 4
  %347 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 5
  %348 = load i64, ptr %347, align 8
  %349 = trunc i64 %348 to i32
  %350 = inttoptr i32 %349 to ptr
  %351 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 2
  %352 = load i32, ptr %351, align 8
  %353 = call fastcc ptr @alloc_copy_user_array(ptr noundef %350, i32 noundef %352) #12
  %354 = icmp ugt ptr %353, inttoptr (i32 -4096 to ptr)
  br i1 %354, label %355, label %364

355:                                              ; preds = %342
  %356 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs, ptr noundef nonnull @__func__.submit_create_job) #12
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %530, label %358

358:                                              ; preds = %355
  %359 = load ptr, ptr %11, align 4
  %360 = getelementptr inbounds %struct.host1x_client, ptr %359, i32 0, i32 2
  %361 = load ptr, ptr %360, align 4
  %362 = tail call ptr @llvm.thread.pointer() #12
  %363 = getelementptr inbounds %struct.task_struct, ptr %362, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %361, ptr noundef nonnull @.str.36, ptr noundef %363) #14
  br label %530

364:                                              ; preds = %342
  %365 = getelementptr inbounds %struct.tegra_drm_context, ptr %11, i32 0, i32 1
  %366 = load ptr, ptr %365, align 4
  %367 = load i32, ptr %351, align 8
  %368 = call ptr @host1x_job_alloc(ptr noundef %366, i32 noundef %367, i32 noundef 0, i1 noundef zeroext true) #12
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.37, ptr noundef nonnull @__func__.submit_create_job) #12
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %528, label %373

373:                                              ; preds = %370
  %374 = load ptr, ptr %11, align 4
  %375 = getelementptr inbounds %struct.host1x_client, ptr %374, i32 0, i32 2
  %376 = load ptr, ptr %375, align 4
  %377 = tail call ptr @llvm.thread.pointer() #12
  %378 = getelementptr inbounds %struct.task_struct, ptr %377, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %376, ptr noundef nonnull @.str.38, ptr noundef %378) #14
  br label %528

379:                                              ; preds = %364
  %380 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 9, i32 1
  %381 = load i32, ptr %380, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %379
  %384 = call i32 @___ratelimit(ptr noundef nonnull @submit_get_syncpt._rs, ptr noundef nonnull @__func__.submit_get_syncpt) #12
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %527, label %520

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 9
  %388 = load i32, ptr %387, align 8
  %389 = call ptr @xa_load(ptr noundef %343, i32 noundef %388) #12
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = call i32 @___ratelimit(ptr noundef nonnull @submit_get_syncpt._rs.51, ptr noundef nonnull @__func__.submit_get_syncpt) #12
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %527, label %520

394:                                              ; preds = %386
  %395 = call ptr @host1x_syncpt_get(ptr noundef nonnull %389) #12
  %396 = getelementptr inbounds %struct.host1x_job, ptr %368, i32 0, i32 13
  store ptr %395, ptr %396, align 4
  %397 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 9, i32 2
  %398 = load i32, ptr %397, align 8
  %399 = getelementptr inbounds %struct.host1x_job, ptr %368, i32 0, i32 14
  store i32 %398, ptr %399, align 4
  %400 = load ptr, ptr %11, align 4
  %401 = getelementptr inbounds %struct.host1x_job, ptr %368, i32 0, i32 3
  store ptr %400, ptr %401, align 4
  %402 = load ptr, ptr %11, align 4
  %403 = getelementptr inbounds %struct.host1x_client, ptr %402, i32 0, i32 5
  %404 = load i32, ptr %403, align 4
  %405 = getelementptr inbounds %struct.host1x_job, ptr %368, i32 0, i32 26
  store i32 %404, ptr %405, align 4
  %406 = getelementptr inbounds %struct.host1x_job, ptr %368, i32 0, i32 27
  store i8 1, ptr %406, align 4
  %407 = load i32, ptr %351, align 8
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %517, label %409

409:                                              ; preds = %510, %394
  %410 = phi i32 [ %512, %510 ], [ 0, %394 ]
  %411 = phi i32 [ %511, %510 ], [ 0, %394 ]
  %412 = getelementptr %struct.drm_tegra_submit_cmd, ptr %353, i32 %410, i32 1
  %413 = load i32, ptr %412, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %409
  %416 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.39, ptr noundef nonnull @__func__.submit_create_job) #12
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %527, label %520

418:                                              ; preds = %409
  %419 = getelementptr %struct.drm_tegra_submit_cmd, ptr %353, i32 %410
  %420 = load i32, ptr %419, align 4
  switch i32 %420, label %507 [
    i32 0, label %421
    i32 1, label %467
    i32 2, label %484
  ]

421:                                              ; preds = %418
  %422 = getelementptr %struct.drm_tegra_submit_cmd, ptr %353, i32 %410, i32 2
  %423 = getelementptr inbounds %struct.drm_tegra_submit_cmd_gather_uptr, ptr %422, i32 0, i32 1
  %424 = load i32, ptr %423, align 4
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %434

426:                                              ; preds = %421
  %427 = getelementptr %struct.drm_tegra_submit_cmd_gather_uptr, ptr %422, i32 0, i32 1, i32 1
  %428 = load i32, ptr %427, align 4
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %426
  %431 = getelementptr %struct.drm_tegra_submit_cmd_gather_uptr, ptr %422, i32 0, i32 1, i32 2
  %432 = load i32, ptr %431, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %437, label %434

434:                                              ; preds = %430, %426, %421
  %435 = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %527, label %520

437:                                              ; preds = %430
  %438 = load i32, ptr %422, align 4
  %439 = icmp ugt i32 %438, 16383
  br i1 %439, label %440, label %443

440:                                              ; preds = %437
  %441 = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.54, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %527, label %520

443:                                              ; preds = %437
  %444 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %411, i32 %438) #12
  %445 = extractvalue { i32, i1 } %444, 1
  %446 = extractvalue { i32, i1 } %444, 0
  br i1 %445, label %447, label %450

447:                                              ; preds = %443
  %448 = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.56, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %527, label %520

450:                                              ; preds = %443
  %451 = load i32, ptr %187, align 8
  %452 = icmp ugt i32 %446, %451
  br i1 %452, label %453, label %456

453:                                              ; preds = %450
  %454 = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.58, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %527, label %520

456:                                              ; preds = %450
  %457 = load ptr, ptr %11, align 4
  %458 = load ptr, ptr %133, align 8
  %459 = call i32 @tegra_drm_fw_validate(ptr noundef %457, ptr noundef %458, i32 noundef %411, i32 noundef %438, ptr noundef nonnull %189, ptr noundef nonnull %4) #12
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %464, label %461

461:                                              ; preds = %456
  %462 = call i32 @___ratelimit(ptr noundef nonnull @submit_job_add_gather._rs.60, ptr noundef nonnull @__func__.submit_job_add_gather) #12
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %527, label %520

464:                                              ; preds = %456
  %465 = load i32, ptr %422, align 4
  %466 = shl i32 %411, 2
  call void @host1x_job_add_gather(ptr noundef nonnull %368, ptr noundef nonnull %114, i32 noundef %465, i32 noundef %466) #12
  br label %510

467:                                              ; preds = %418
  %468 = getelementptr %struct.drm_tegra_submit_cmd, ptr %353, i32 %410, i32 2
  %469 = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %468, i32 0, i32 2
  %470 = load i32, ptr %469, align 4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %476

472:                                              ; preds = %467
  %473 = getelementptr %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %468, i32 0, i32 2, i32 1
  %474 = load i32, ptr %473, align 4
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %472, %467
  %477 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.41, ptr noundef nonnull @__func__.submit_create_job) #12
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %527, label %520

479:                                              ; preds = %472
  %480 = load i32, ptr %468, align 4
  %481 = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %468, i32 0, i32 1
  %482 = load i32, ptr %481, align 4
  %483 = load i32, ptr %4, align 4
  call void @host1x_job_add_wait(ptr noundef nonnull %368, i32 noundef %480, i32 noundef %482, i1 noundef zeroext false, i32 noundef %483) #12
  br label %510

484:                                              ; preds = %418
  %485 = getelementptr %struct.drm_tegra_submit_cmd, ptr %353, i32 %410, i32 2
  %486 = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %485, i32 0, i32 2
  %487 = load i32, ptr %486, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %484
  %490 = getelementptr %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %485, i32 0, i32 2, i32 1
  %491 = load i32, ptr %490, align 4
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %496, label %493

493:                                              ; preds = %489, %484
  %494 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.43, ptr noundef nonnull @__func__.submit_create_job) #12
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %527, label %520

496:                                              ; preds = %489
  %497 = load i32, ptr %485, align 4
  %498 = load i32, ptr %387, align 8
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %503, label %500

500:                                              ; preds = %496
  %501 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.44, ptr noundef nonnull @__func__.submit_create_job) #12
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %527, label %520

503:                                              ; preds = %496
  %504 = getelementptr inbounds %struct.drm_tegra_submit_cmd_wait_syncpt, ptr %485, i32 0, i32 1
  %505 = load i32, ptr %504, align 4
  %506 = load i32, ptr %4, align 4
  call void @host1x_job_add_wait(ptr noundef nonnull %368, i32 noundef %497, i32 noundef %505, i1 noundef zeroext true, i32 noundef %506) #12
  br label %510

507:                                              ; preds = %418
  %508 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.46, ptr noundef nonnull @__func__.submit_create_job) #12
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %527, label %520

510:                                              ; preds = %503, %479, %464
  %511 = phi i32 [ %411, %503 ], [ %411, %479 ], [ %446, %464 ]
  %512 = add nuw i32 %410, 1
  %513 = load i32, ptr %351, align 8
  %514 = icmp ult i32 %512, %513
  br i1 %514, label %409, label %515

515:                                              ; preds = %510
  %516 = icmp eq i32 %511, 0
  br i1 %516, label %517, label %528

517:                                              ; preds = %515, %394
  %518 = call i32 @___ratelimit(ptr noundef nonnull @submit_create_job._rs.48, ptr noundef nonnull @__func__.submit_create_job) #12
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %527, label %520

520:                                              ; preds = %517, %507, %500, %493, %476, %461, %453, %447, %440, %434, %415, %391, %383
  %521 = phi ptr [ @.str.50, %383 ], [ @.str.52, %391 ], [ @.str.40, %415 ], [ @.str.53, %434 ], [ @.str.55, %440 ], [ @.str.57, %447 ], [ @.str.59, %453 ], [ @.str.61, %461 ], [ @.str.42, %476 ], [ @.str.42, %493 ], [ @.str.45, %500 ], [ @.str.47, %507 ], [ @.str.49, %517 ]
  %522 = load ptr, ptr %11, align 4
  %523 = getelementptr inbounds %struct.host1x_client, ptr %522, i32 0, i32 2
  %524 = load ptr, ptr %523, align 4
  %525 = tail call ptr @llvm.thread.pointer() #12
  %526 = getelementptr inbounds %struct.task_struct, ptr %525, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %524, ptr noundef nonnull %521, ptr noundef %526) #14
  br label %527

527:                                              ; preds = %520, %517, %507, %500, %493, %476, %461, %453, %447, %440, %434, %415, %391, %383
  call void @host1x_job_put(ptr noundef nonnull %368) #12
  br label %528

528:                                              ; preds = %527, %515, %373, %370
  %529 = phi ptr [ inttoptr (i32 -22 to ptr), %527 ], [ %368, %515 ], [ inttoptr (i32 -12 to ptr), %373 ], [ inttoptr (i32 -12 to ptr), %370 ]
  call void @kvfree(ptr noundef %353) #12
  br label %530

530:                                              ; preds = %528, %358, %355
  %531 = phi ptr [ %529, %528 ], [ %353, %358 ], [ %353, %355 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %532 = icmp ugt ptr %531, inttoptr (i32 -4096 to ptr)
  br i1 %532, label %533, label %535

533:                                              ; preds = %530
  %534 = ptrtoint ptr %531 to i32
  br label %609

535:                                              ; preds = %530
  %536 = load ptr, ptr %11, align 4
  %537 = getelementptr inbounds %struct.host1x_client, ptr %536, i32 0, i32 2
  %538 = load ptr, ptr %537, align 4
  %539 = call i32 @host1x_job_pin(ptr noundef %531, ptr noundef %538) #12
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %550, label %541

541:                                              ; preds = %535
  %542 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.9, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %606, label %544

544:                                              ; preds = %541
  %545 = load ptr, ptr %11, align 4
  %546 = getelementptr inbounds %struct.host1x_client, ptr %545, i32 0, i32 2
  %547 = load ptr, ptr %546, align 4
  %548 = tail call ptr @llvm.thread.pointer() #12
  %549 = getelementptr inbounds %struct.task_struct, ptr %548, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %547, ptr noundef nonnull @.str.10, ptr noundef %549, i32 noundef %539) #14
  br label %606

550:                                              ; preds = %535
  %551 = load ptr, ptr %11, align 4
  %552 = getelementptr inbounds %struct.host1x_client, ptr %551, i32 0, i32 2
  %553 = load ptr, ptr %552, align 4
  %554 = call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %553)
  %555 = icmp slt i32 %554, 0
  br i1 %555, label %556, label %565

556:                                              ; preds = %550
  %557 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.11, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %603, label %559

559:                                              ; preds = %556
  %560 = load ptr, ptr %11, align 4
  %561 = getelementptr inbounds %struct.host1x_client, ptr %560, i32 0, i32 2
  %562 = load ptr, ptr %561, align 4
  %563 = tail call ptr @llvm.thread.pointer() #12
  %564 = getelementptr inbounds %struct.task_struct, ptr %563, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %562, ptr noundef nonnull @.str.12, ptr noundef %564, i32 noundef %554) #14
  br label %603

565:                                              ; preds = %550
  %566 = getelementptr inbounds %struct.host1x_job, ptr %531, i32 0, i32 30
  store ptr %189, ptr %566, align 4
  %567 = getelementptr inbounds %struct.host1x_job, ptr %531, i32 0, i32 29
  store ptr @release_job, ptr %567, align 4
  %568 = getelementptr inbounds %struct.host1x_job, ptr %531, i32 0, i32 17
  store i32 10000, ptr %568, align 4
  %569 = call i32 @host1x_job_submit(ptr noundef %531) #12
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %580, label %571

571:                                              ; preds = %565
  %572 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.13, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %603, label %574

574:                                              ; preds = %571
  %575 = load ptr, ptr %11, align 4
  %576 = getelementptr inbounds %struct.host1x_client, ptr %575, i32 0, i32 2
  %577 = load ptr, ptr %576, align 4
  %578 = tail call ptr @llvm.thread.pointer() #12
  %579 = getelementptr inbounds %struct.task_struct, ptr %578, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %577, ptr noundef nonnull @.str.14, ptr noundef %579, i32 noundef %569) #14
  br label %603

580:                                              ; preds = %565
  %581 = getelementptr inbounds %struct.host1x_job, ptr %531, i32 0, i32 15
  %582 = load i32, ptr %581, align 4
  %583 = getelementptr inbounds %struct.drm_tegra_channel_submit, ptr %1, i32 0, i32 9, i32 3
  store i32 %582, ptr %583, align 4
  %584 = icmp eq ptr %84, null
  br i1 %584, label %606, label %585

585:                                              ; preds = %580
  %586 = getelementptr inbounds %struct.host1x_job, ptr %531, i32 0, i32 13
  %587 = load ptr, ptr %586, align 4
  %588 = load i32, ptr %581, align 4
  %589 = call ptr @host1x_fence_create(ptr noundef %587, i32 noundef %588) #12
  %590 = icmp ugt ptr %589, inttoptr (i32 -4096 to ptr)
  br i1 %590, label %591, label %601

591:                                              ; preds = %585
  %592 = ptrtoint ptr %589 to i32
  %593 = call i32 @___ratelimit(ptr noundef nonnull @tegra_drm_ioctl_channel_submit._rs.15, ptr noundef nonnull @__func__.tegra_drm_ioctl_channel_submit) #12
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %601, label %595

595:                                              ; preds = %591
  %596 = load ptr, ptr %11, align 4
  %597 = getelementptr inbounds %struct.host1x_client, ptr %596, i32 0, i32 2
  %598 = load ptr, ptr %597, align 4
  %599 = tail call ptr @llvm.thread.pointer() #12
  %600 = getelementptr inbounds %struct.task_struct, ptr %599, i32 0, i32 85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %598, ptr noundef nonnull @.str.16, ptr noundef %600, i32 noundef %592) #14
  br label %601

601:                                              ; preds = %595, %591, %585
  %602 = phi i32 [ %592, %595 ], [ %592, %591 ], [ 0, %585 ]
  call void @drm_syncobj_replace_fence(ptr noundef nonnull %84, ptr noundef %589) #12
  br label %606

603:                                              ; preds = %574, %571, %559, %556
  %604 = phi ptr [ %189, %559 ], [ %189, %556 ], [ null, %574 ], [ null, %571 ]
  %605 = phi i32 [ %554, %559 ], [ %554, %556 ], [ %569, %574 ], [ %569, %571 ]
  call void @host1x_job_unpin(ptr noundef %531) #12
  br label %606

606:                                              ; preds = %603, %601, %580, %544, %541
  %607 = phi ptr [ %189, %544 ], [ %189, %541 ], [ %604, %603 ], [ null, %601 ], [ null, %580 ]
  %608 = phi i32 [ %539, %544 ], [ %539, %541 ], [ %605, %603 ], [ %602, %601 ], [ 0, %580 ]
  call void @host1x_job_put(ptr noundef %531) #12
  br label %609

609:                                              ; preds = %606, %533, %339
  %610 = phi ptr [ %189, %339 ], [ %189, %533 ], [ %607, %606 ]
  %611 = phi i32 [ %340, %339 ], [ %534, %533 ], [ %608, %606 ]
  %612 = icmp eq ptr %610, null
  br i1 %612, label %632, label %613

613:                                              ; preds = %609
  %614 = load ptr, ptr %610, align 4
  %615 = icmp eq ptr %614, null
  br i1 %615, label %631, label %616

616:                                              ; preds = %613
  %617 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %610, i32 0, i32 1
  %618 = load i32, ptr %617, align 4
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %629, label %620

620:                                              ; preds = %620, %616
  %621 = phi ptr [ %628, %620 ], [ %614, %616 ]
  %622 = phi i32 [ %625, %620 ], [ 0, %616 ]
  %623 = getelementptr %struct.tegra_drm_used_mapping, ptr %621, i32 %622
  %624 = load ptr, ptr %623, align 4
  call void @tegra_drm_mapping_put(ptr noundef %624) #12
  %625 = add nuw i32 %622, 1
  %626 = load i32, ptr %617, align 4
  %627 = icmp ult i32 %625, %626
  %628 = load ptr, ptr %610, align 4
  br i1 %627, label %620, label %629

629:                                              ; preds = %620, %616
  %630 = phi ptr [ %614, %616 ], [ %628, %620 ]
  call void @kfree(ptr noundef %630) #12
  br label %631

631:                                              ; preds = %629, %613
  call void @kfree(ptr noundef nonnull %610) #12
  br label %632

632:                                              ; preds = %631, %609, %194, %191
  %633 = phi i32 [ %611, %631 ], [ -12, %194 ], [ -12, %191 ], [ %611, %609 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %129) #12, !srcloc !8
  %634 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %129, ptr %129, i32 1, ptr elementtype(i32) %129) #12, !srcloc !13
  %635 = extractvalue { i32, i32, i32 } %634, 0
  %636 = icmp eq i32 %635, 1
  br i1 %636, label %640, label %637

637:                                              ; preds = %632
  %638 = icmp sgt i32 %635, 0
  br i1 %638, label %646, label %639, !prof !11

639:                                              ; preds = %637
  call void @refcount_warn_saturate(ptr noundef %129, i32 noundef 3) #12
  br label %646

640:                                              ; preds = %632
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %641 = load ptr, ptr %130, align 4
  %642 = load i32, ptr %187, align 8
  %643 = shl i32 %642, 2
  %644 = load ptr, ptr %133, align 8
  %645 = load i32, ptr %131, align 4
  call void @dma_free_attrs(ptr noundef %641, i32 noundef %643, ptr noundef %644, i32 noundef %645, i32 noundef 0) #12
  call void @kfree(ptr noundef nonnull %114) #12
  br label %646

646:                                              ; preds = %640, %639, %637, %182, %144, %119, %116, %106, %103, %93, %90
  %647 = phi i32 [ %633, %637 ], [ %633, %639 ], [ %633, %640 ], [ -12, %116 ], [ -12, %119 ], [ -22, %103 ], [ -22, %106 ], [ -22, %90 ], [ -22, %93 ], [ -12, %144 ], [ -14, %182 ]
  %648 = icmp eq ptr %84, null
  br i1 %648, label %657, label %649

649:                                              ; preds = %646
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %84) #12, !srcloc !8
  %650 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %84, ptr nonnull %84, i32 1, ptr nonnull elementtype(i32) %84) #12, !srcloc !13
  %651 = extractvalue { i32, i32, i32 } %650, 0
  %652 = icmp eq i32 %651, 1
  br i1 %652, label %656, label %653

653:                                              ; preds = %649
  %654 = icmp sgt i32 %651, 0
  br i1 %654, label %657, label %655, !prof !11

655:                                              ; preds = %653
  call void @refcount_warn_saturate(ptr noundef nonnull %84, i32 noundef 3) #12
  br label %657

656:                                              ; preds = %649
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  call void @drm_syncobj_free(ptr noundef nonnull %84) #12, !callees !16
  br label %657

657:                                              ; preds = %656, %655, %653, %646, %76, %73, %63
  %658 = phi i32 [ %647, %646 ], [ %647, %653 ], [ %647, %655 ], [ %647, %656 ], [ %64, %63 ], [ -2, %73 ], [ -2, %76 ]
  call void @mutex_unlock(ptr noundef %8) #12
  br label %659

659:                                              ; preds = %657, %16, %13
  %660 = phi i32 [ %658, %657 ], [ -22, %16 ], [ -22, %13 ]
  ret i32 %660
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_syncobj_find_fence(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_syncobj_find(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_pin(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #12, !srcloc !27
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !28
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release_job(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.host1x_job, ptr %0, i32 0, i32 30
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_drm_submit_data, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %14, %9 ], [ 0, %1 ]
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr %struct.tegra_drm_used_mapping, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  tail call void @tegra_drm_mapping_put(ptr noundef %13) #12
  %14 = add nuw i32 %10, 1
  %15 = load i32, ptr %6, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %9, label %17

17:                                               ; preds = %9, %1
  %18 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %18) #12
  tail call void @kfree(ptr noundef %5) #12
  %19 = getelementptr inbounds %struct.host1x_client, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i64 @ktime_get_mono_fast_ns() #12
  %22 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 11, i32 22
  store volatile i64 %21, ptr %22, align 8
  %23 = load ptr, ptr %19, align 4
  %24 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_job_submit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_fence_create(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_replace_fence(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_unpin(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_drm_mapping_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_copy_user_array(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 24)
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  br i1 %4, label %28, label %6

6:                                                ; preds = %2
  %7 = icmp ugt i32 %5, 16384
  br i1 %7, label %28, label %8

8:                                                ; preds = %6
  %9 = tail call noalias ptr @kvmalloc_node(i32 noundef %5, i32 noundef 3264, i32 noundef -1) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %5, i32 -1090519040) #15, !srcloc !17
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22, !prof !11

15:                                               ; preds = %11
  %16 = tail call ptr @llvm.thread.pointer() #12
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %17) #16, !srcloc !18
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  %21 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %0, i32 noundef %5) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #12, !srcloc !19
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !20
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i32 [ %21, %15 ], [ %5, %11 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25, !prof !11

25:                                               ; preds = %22
  %26 = sub i32 %5, %23
  %27 = getelementptr i8, ptr %9, i32 %26
  tail call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %23, i1 false) #12
  tail call void @kvfree(ptr noundef nonnull %9) #12
  br label %28

28:                                               ; preds = %25, %22, %8, %6, %2
  %29 = phi ptr [ inttoptr (i32 -14 to ptr), %25 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -7 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %8 ], [ %9, %22 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_job_alloc(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_add_wait(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_drm_fw_validate(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_job_add_gather(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_syncobj_free(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }
attributes #17 = { nounwind allocsize(0) }

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
!8 = !{i64 731726, i64 2148221697, i64 2148221723, i64 2148221770, i64 2148221792, i64 2148221820, i64 2148221840}
!9 = !{i64 2148234570, i64 2148234602, i64 2148234631, i64 2148234665, i64 2148234696, i64 2148234719}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148334792}
!13 = !{i64 2148236927, i64 2148236959, i64 2148236988, i64 2148237022, i64 2148237053, i64 2148237076}
!14 = !{i64 2148977401}
!15 = !{!"auto-init"}
!16 = distinct !{ptr @dma_fence_release, ptr @drm_syncobj_free, null}
!17 = !{i64 2150015409, i64 2150015434}
!18 = !{i64 2511521}
!19 = !{i64 2511718}
!20 = !{i64 2149996997}
!21 = !{i64 2148900330}
!22 = !{i64 2148896154}
!23 = !{i64 2148896229, i64 2148896256, i64 2148896303, i64 2148896325, i64 2148896353, i64 2148896373}
!24 = !{i64 2148923333}
!25 = !{i64 358377, i64 358394, i64 2147842464}
!26 = !{i64 2148232619}
!27 = !{i64 718295, i64 718320, i64 718342, i64 718358, i64 718370, i64 718390, i64 718414, i64 718430, i64 718442}
!28 = !{i64 2148232745}
