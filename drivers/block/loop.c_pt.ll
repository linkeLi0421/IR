; ModuleID = '/llk/IR/drivers/block/loop.c_pt.bc'
source_filename = "../drivers/block/loop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.loop_device = type { i32, %struct.atomic_t, i64, i64, i32, [64 x i8], ptr, ptr, i32, %struct.spinlock, i32, %struct.spinlock, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.timer_list, i8, i8, ptr, %struct.blk_mq_tag_set, ptr, %struct.mutex, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.lockdep_map = type {}
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.40, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.41, %union.anon.42, %union.anon.43, %union.anon.48, ptr, ptr }
%union.anon.40 = type { %struct.list_head }
%union.anon.41 = type { %struct.hlist_node }
%union.anon.42 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.43 = type { %struct.anon.47 }
%struct.anon.47 = type { i32, %struct.list_head, ptr }
%union.anon.48 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.loop_cmd = type { %struct.list_head, i8, %struct.atomic_t, i32, %struct.kiocb, ptr, ptr, ptr }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.loop_worker = type { %struct.rb_node, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, ptr, i32 }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.69, %union.anon.70 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.39, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.39 = type {}
%struct.page = type { i32, %union.anon.1, %union.anon.76, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.79 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.81 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.loop_info64 = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, [64 x i8], [64 x i8], [32 x i8], [2 x i64] }
%struct.loop_info = type { i32, i16, i32, i16, i32, i32, i32, i32, [64 x i8], [32 x i8], [2 x i32], [4 x i8] }
%struct.loop_config = type { i32, i32, %struct.loop_info64, [8 x i64] }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }

@__param_str_max_loop = internal constant [14 x i8] c"loop.max_loop\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_loop = internal global i32 0, align 4
@__param_max_loop = internal constant %struct.kernel_param { ptr @__param_str_max_loop, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @max_loop } }, section "__param", align 4
@__UNIQUE_ID_max_looptype299 = internal constant [27 x i8] c"loop.parmtype=max_loop:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_loop300 = internal constant [50 x i8] c"loop.parm=max_loop:Maximum number of loop devices\00", section ".modinfo", align 1
@__param_str_max_part = internal constant [14 x i8] c"loop.max_part\00", align 1
@max_part = internal global i32 0, align 4
@__param_max_part = internal constant %struct.kernel_param { ptr @__param_str_max_part, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.77 { ptr @max_part } }, section "__param", align 4
@__UNIQUE_ID_max_parttype301 = internal constant [27 x i8] c"loop.parmtype=max_part:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_part302 = internal constant [64 x i8] c"loop.parm=max_part:Maximum number of partitions per loop device\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [29 x i8] c"loop.file=drivers/block/loop\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [17 x i8] c"loop.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias305 = internal constant [27 x i8] c"loop.alias=block-major-7-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [29 x i8] c"loop.alias=char-major-10-237\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [32 x i8] c"loop.alias=devname:loop-control\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@loop_misc = internal global %struct.miscdevice { i32 237, ptr @.str.1, ptr @loop_ctl_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 4
@loop_index_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@__initcall__kmod_loop__308_2280_loop_init6 = internal global ptr @loop_init, section ".initcall6.init", align 4
@__exitcall_loop_exit = internal global ptr @loop_exit, section ".exitcall.exit", align 4
@__setup_str_max_loop_setup = internal constant [10 x i8] c"max_loop=\00", section ".init.rodata", align 1
@__setup_max_loop_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_max_loop_setup, ptr @max_loop_setup, i32 0 }, section ".init.setup", align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"loop-control\00", align 1
@loop_ctl_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @loop_control_ioctl, ptr @loop_control_ioctl, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@loop_ctl_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @loop_ctl_mutex, i64 12), ptr getelementptr (i8, ptr @loop_ctl_mutex, i64 12) } }, align 4
@loop_mq_ops = internal constant %struct.blk_mq_ops { ptr @loop_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lo_complete_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@loop_add.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@part_shift = internal unnamed_addr global i32 0, align 4
@loop_add.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"&lo->lo_mutex\00", align 1
@lo_fops = internal constant %struct.block_device_operations { ptr null, ptr @lo_open, ptr @lo_release, ptr null, ptr @lo_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"loop%d\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"drivers/block/loop.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@do_req_filebacked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lo_write_bvec._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.lo_write_bvec = private unnamed_addr constant [14 x i8] c"lo_write_bvec\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\013loop: Write error at byte offset %llu, length %i.\0A\00", align 1
@loop_validate_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @loop_validate_mutex, i64 12), ptr getelementptr (i8, ptr @loop_validate_mutex, i64 12) } }, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"\014%s: partition scan of loop%d failed (rc=%d)\0A\00", align 1
@__func__.__loop_clr_fd = private unnamed_addr constant [14 x i8] c"__loop_clr_fd\00", align 1
@loop_attribute_group = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @loop_attrs, ptr null }, align 4
@loop_attrs = internal global [7 x ptr] [ptr @loop_attr_backing_file, ptr @loop_attr_offset, ptr @loop_attr_sizelimit, ptr @loop_attr_autoclear, ptr @loop_attr_partscan, ptr @loop_attr_dio, ptr null], align 4
@loop_attr_backing_file = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @loop_attr_do_show_backing_file, ptr null }, align 4
@loop_attr_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @loop_attr_do_show_offset, ptr null }, align 4
@loop_attr_sizelimit = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @loop_attr_do_show_sizelimit, ptr null }, align 4
@loop_attr_autoclear = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @loop_attr_do_show_autoclear, ptr null }, align 4
@loop_attr_partscan = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @loop_attr_do_show_partscan, ptr null }, align 4
@loop_attr_dio = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @loop_attr_do_show_dio, ptr null }, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"backing_file\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"sizelimit\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"autoclear\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"partscan\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"dio\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"\014support for the xor transformation has been removed.\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"\014support for cryptoloop has been removed.  Use dm-crypt instead.\0A\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"\014%s: partition scan of loop%d (%s) failed (rc=%d)\0A\00", align 1
@__func__.loop_reread_partitions = private unnamed_addr constant [23 x i8] c"loop_reread_partitions\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"\014%s: loop%d (%s) has still dirty pages (nrpages=%lu)\0A\00", align 1
@__func__.loop_set_status = private unnamed_addr constant [16 x i8] c"loop_set_status\00", align 1
@__func__.loop_set_block_size = private unnamed_addr constant [20 x i8] c"loop_set_block_size\00", align 1
@loop_control_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"\014deleting an unspecified loop device is not supported.\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\016loop: module loaded\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_alias305, ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_max_loop300, ptr @__UNIQUE_ID_max_looptype299, ptr @__UNIQUE_ID_max_part302, ptr @__UNIQUE_ID_max_parttype301, ptr @__exitcall_loop_exit, ptr @__initcall__kmod_loop__308_2280_loop_init6, ptr @__param_max_loop, ptr @__param_max_part, ptr @__setup_max_loop_setup, ptr @loop_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @loop_exit() #0 section ".exit.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  tail call void @unregister_blkdev(i32 noundef 7, ptr noundef nonnull @.str) #15
  tail call void @misc_deregister(ptr noundef nonnull @loop_misc) #15
  store i32 0, ptr %1, align 4
  %2 = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %1) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %4, %0
  %5 = phi ptr [ %14, %4 ], [ %2, %0 ]
  %6 = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  call void @del_gendisk(ptr noundef %7) #15
  %8 = load ptr, ptr %6, align 8
  call void @blk_cleanup_disk(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.loop_device, ptr %5, i32 0, i32 21
  call void @blk_mq_free_tag_set(ptr noundef %9) #15
  call void @mutex_lock(ptr noundef nonnull @loop_ctl_mutex) #15
  %10 = load i32, ptr %5, align 8
  %11 = call ptr @idr_remove(ptr noundef nonnull @loop_index_idr, i32 noundef %10) #15
  call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  call void @kfree(ptr noundef nonnull %5) #15
  %12 = load i32, ptr %1, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %1, align 4
  %14 = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %1) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4

16:                                               ; preds = %4, %0
  call void @idr_destroy(ptr noundef nonnull @loop_index_idr) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @loop_init() #0 section ".init.text" {
  store i32 0, ptr @part_shift, align 4
  %1 = load i32, ptr @max_part, align 4
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %1, i1 true) #15, !range !9
  %5 = sub nuw nsw i32 32, %4
  store i32 %5, ptr @part_shift, align 4
  %6 = shl nsw i32 -1, %5
  %7 = xor i32 %6, -1
  store i32 %7, ptr @max_part, align 4
  %8 = icmp ugt i32 %1, 255
  br i1 %8, label %33, label %9

9:                                                ; preds = %3, %0
  %10 = phi i32 [ %5, %3 ], [ 0, %0 ]
  %11 = load i32, ptr @max_loop, align 4
  %12 = sub nuw nsw i32 20, %10
  %13 = shl nuw nsw i32 1, %12
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %11, 0
  %17 = select i1 %16, i32 8, i32 %11
  %18 = tail call i32 @misc_register(ptr noundef nonnull @loop_misc) #15
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @__register_blkdev(i32 noundef 7, ptr noundef nonnull @.str, ptr noundef nonnull @loop_probe) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = icmp sgt i32 %17, 0
  br i1 %24, label %26, label %31

25:                                               ; preds = %20
  tail call void @misc_deregister(ptr noundef nonnull @loop_misc) #15
  br label %33

26:                                               ; preds = %26, %23
  %27 = phi i32 [ %29, %26 ], [ 0, %23 ]
  %28 = tail call fastcc i32 @loop_add(i32 noundef %27)
  %29 = add nuw nsw i32 %27, 1
  %30 = icmp eq i32 %29, %17
  br i1 %30, label %31, label %26

31:                                               ; preds = %26, %23
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #16
  br label %33

33:                                               ; preds = %31, %25, %15, %9, %3
  %34 = phi i32 [ 0, %31 ], [ %18, %15 ], [ -5, %25 ], [ -22, %3 ], [ -22, %9 ]
  ret i32 %34
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max_loop_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @simple_strtol(ptr noundef %0, ptr noundef null, i32 noundef 0) #15
  store i32 %2, ptr @max_loop, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_control_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = alloca i32, align 4
  switch i32 %1, label %72 [
    i32 19584, label %5
    i32 19585, label %7
    i32 19586, label %46
  ]

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @loop_add(i32 noundef %2)
  br label %72

7:                                                ; preds = %3
  %8 = icmp slt i32 %2, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = load i1, ptr @loop_control_remove.__already_done, align 1
  br i1 %10, label %72, label %11, !prof !10

11:                                               ; preds = %9
  store i1 true, ptr @loop_control_remove.__already_done, align 1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #16
  br label %72

13:                                               ; preds = %7
  %14 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @loop_ctl_mutex) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %13
  %17 = tail call ptr @idr_find(ptr noundef nonnull @loop_index_idr, i32 noundef %2) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.loop_device, ptr %17, i32 0, i32 24
  %21 = load i8, ptr %20, align 8, !range !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %16
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %72

24:                                               ; preds = %19
  store i8 0, ptr %20, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %25 = getelementptr inbounds %struct.loop_device, ptr %17, i32 0, i32 23
  %26 = tail call i32 @mutex_lock_killable(ptr noundef %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.loop_device, ptr %17, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.loop_device, ptr %17, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28
  tail call void @mutex_unlock(ptr noundef %25) #15
  br label %44

37:                                               ; preds = %32
  store i32 3, ptr %29, align 4
  tail call void @mutex_unlock(ptr noundef %25) #15
  %38 = getelementptr inbounds %struct.loop_device, ptr %17, i32 0, i32 22
  %39 = load ptr, ptr %38, align 8
  tail call void @del_gendisk(ptr noundef %39) #15
  %40 = load ptr, ptr %38, align 8
  tail call void @blk_cleanup_disk(ptr noundef %40) #15
  %41 = getelementptr inbounds %struct.loop_device, ptr %17, i32 0, i32 21
  tail call void @blk_mq_free_tag_set(ptr noundef %41) #15
  tail call void @mutex_lock(ptr noundef nonnull @loop_ctl_mutex) #15
  %42 = load i32, ptr %17, align 8
  %43 = tail call ptr @idr_remove(ptr noundef nonnull @loop_index_idr, i32 noundef %42) #15
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  tail call void @kfree(ptr noundef nonnull %17) #15
  br label %72

44:                                               ; preds = %36, %24
  %45 = phi i32 [ %26, %24 ], [ -16, %36 ]
  tail call void @mutex_lock(ptr noundef nonnull @loop_ctl_mutex) #15
  store i8 1, ptr %20, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %72

46:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %47 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @loop_ctl_mutex) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46
  store i32 0, ptr %4, align 4
  %50 = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %4) #15
  %51 = icmp eq ptr %50, null
  br i1 %51, label %66, label %52

52:                                               ; preds = %61, %49
  %53 = phi ptr [ %64, %61 ], [ %50, %49 ]
  %54 = getelementptr inbounds %struct.loop_device, ptr %53, i32 0, i32 24
  %55 = load i8, ptr %54, align 8, !range !11
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.loop_device, ptr %53, i32 0, i32 10
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57, %52
  %62 = load i32, ptr %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, ptr %4, align 4
  %64 = call ptr @idr_get_next(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %4) #15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %52

66:                                               ; preds = %61, %49
  call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %67 = call fastcc i32 @loop_add(i32 noundef -1) #15
  br label %70

68:                                               ; preds = %57
  call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %69 = load i32, ptr %4, align 4
  br label %70

70:                                               ; preds = %68, %66, %46
  %71 = phi i32 [ %69, %68 ], [ %67, %66 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %72

72:                                               ; preds = %70, %44, %37, %23, %13, %11, %9, %5, %3
  %73 = phi i32 [ %71, %70 ], [ %6, %5 ], [ -38, %3 ], [ %45, %44 ], [ 0, %37 ], [ -22, %11 ], [ -22, %9 ], [ %14, %13 ], [ -19, %23 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @loop_add(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 328) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 10
  store i32 0, ptr %6, align 4
  %7 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @loop_ctl_mutex) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %77

9:                                                ; preds = %5
  %10 = icmp sgt i32 %0, -1
  br i1 %10, label %11, label %15

11:                                               ; preds = %9
  %12 = add nuw i32 %0, 1
  %13 = tail call i32 @idr_alloc(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %3, i32 noundef %0, i32 noundef %12, i32 noundef 3264) #15
  %14 = icmp eq i32 %13, -28
  br i1 %14, label %75, label %17

15:                                               ; preds = %9
  %16 = tail call i32 @idr_alloc(ptr noundef nonnull @loop_index_idr, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef 3264) #15
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %15 ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %77, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21
  %22 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21, i32 2
  store ptr @loop_mq_ops, ptr %22, align 8
  %23 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21, i32 3
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21, i32 4
  store i32 128, ptr %24, align 8
  %25 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21, i32 7
  store i32 -1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21, i32 6
  store i32 80, ptr %26, align 8
  %27 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21, i32 9
  store i32 133, ptr %27, align 4
  %28 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 21, i32 10
  store ptr %3, ptr %28, align 8
  %29 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %21) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %20
  %32 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %21, ptr noundef nonnull %3, ptr noundef nonnull @loop_add.__key) #15
  %33 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 22
  store ptr %32, ptr %33, align 8
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = ptrtoint ptr %32 to i32
  br label %70

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 20
  store ptr %39, ptr %40, align 4
  tail call void @blk_queue_max_hw_sectors(ptr noundef %39, i32 noundef 2560) #15
  %41 = load ptr, ptr %40, align 4
  tail call void @blk_queue_flag_set(i32 noundef 3, ptr noundef %41) #15
  %42 = load i32, ptr @part_shift, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 4
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 1
  store volatile i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 23
  tail call void @__mutex_init(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef nonnull @loop_add.__key.2) #15
  store i32 %18, ptr %3, align 8
  %51 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 9
  store i32 0, ptr %51, align 8
  %52 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 11
  store i32 0, ptr %52, align 8
  store i32 7, ptr %32, align 8
  %53 = load i32, ptr @part_shift, align 4
  %54 = shl i32 %18, %53
  %55 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  %56 = shl nuw i32 1, %53
  %57 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 2
  store i32 %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 8
  store ptr @lo_fops, ptr %58, align 8
  %59 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 10
  store ptr %3, ptr %59, align 8
  %60 = load ptr, ptr %40, align 4
  store ptr %60, ptr %38, align 4
  %61 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 4
  store i16 1, ptr %61, align 4
  %62 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 5
  store i16 2, ptr %62, align 2
  %63 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 3
  %64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %63, ptr noundef nonnull @.str.4, i32 noundef %18)
  %65 = tail call i32 @device_add_disk(ptr noundef null, ptr noundef %32, ptr noundef null) #15
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  tail call void @mutex_lock(ptr noundef nonnull @loop_ctl_mutex) #15
  %68 = getelementptr inbounds %struct.loop_device, ptr %3, i32 0, i32 24
  store i8 1, ptr %68, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %79

69:                                               ; preds = %48
  tail call void @blk_cleanup_disk(ptr noundef %32) #15
  br label %70

70:                                               ; preds = %69, %35
  %71 = phi i32 [ %36, %35 ], [ %65, %69 ]
  tail call void @blk_mq_free_tag_set(ptr noundef %21) #15
  br label %72

72:                                               ; preds = %70, %20
  %73 = phi i32 [ %29, %20 ], [ %71, %70 ]
  tail call void @mutex_lock(ptr noundef nonnull @loop_ctl_mutex) #15
  %74 = tail call ptr @idr_remove(ptr noundef nonnull @loop_index_idr, i32 noundef %18) #15
  br label %75

75:                                               ; preds = %72, %11
  %76 = phi i32 [ %73, %72 ], [ -17, %11 ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_ctl_mutex) #15
  br label %77

77:                                               ; preds = %75, %17, %5
  %78 = phi i32 [ %7, %5 ], [ %18, %17 ], [ %76, %75 ]
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %79

79:                                               ; preds = %77, %67, %1
  %80 = phi i32 [ %18, %67 ], [ %78, %77 ], [ -12, %1 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @loop_queue_rq(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr %struct.request, ptr %3, i32 1
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @blk_mq_start_request(ptr noundef %3) #15
  %8 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %148

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.request, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %15 [
    i8 2, label %18
    i8 3, label %18
    i8 9, label %18
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 18
  %17 = load i8, ptr %16, align 8, !range !11
  br label %18

18:                                               ; preds = %15, %11, %11, %11
  %19 = phi i8 [ %17, %15 ], [ 0, %11 ], [ 0, %11 ], [ 0, %11 ]
  %20 = getelementptr %struct.request, ptr %3, i32 1, i32 2
  store i8 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.loop_cmd, ptr %4, i32 0, i32 6
  store ptr null, ptr %21, align 4
  %22 = getelementptr %struct.request, ptr %3, i32 1, i32 14
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %23) #15
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %134, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %44, label %30

30:                                               ; preds = %35, %26
  %31 = phi ptr [ %40, %35 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.loop_worker, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %24
  br i1 %34, label %122, label %35

35:                                               ; preds = %30
  %36 = icmp slt ptr %33, %24
  %37 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 2
  %38 = getelementptr inbounds %struct.rb_node, ptr %31, i32 0, i32 1
  %39 = select i1 %36, ptr %37, ptr %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30

42:                                               ; preds = %35
  %43 = ptrtoint ptr %31 to i32
  br label %44

44:                                               ; preds = %42, %26
  %45 = phi i32 [ %43, %42 ], [ 0, %26 ]
  %46 = phi ptr [ %39, %42 ], [ %27, %26 ]
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 10496, i32 noundef 56) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %84

50:                                               ; preds = %44
  store ptr null, ptr %21, align 4
  %51 = load ptr, ptr %22, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %83, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %51, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %51, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72, !prof !10

63:                                               ; preds = %58
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %65 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %66 = inttoptr i32 %65 to ptr
  %67 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %66) #9, !srcloc !14
  %68 = add i32 %67, %60
  %69 = inttoptr i32 %68 to ptr
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, -1
  store i32 %71, ptr %69, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #15, !srcloc !15
  br label %82

72:                                               ; preds = %58
  %73 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %51, i32 0, i32 2, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #15, !srcloc !17
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #15, !srcloc !18
  %76 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82, !prof !20

78:                                               ; preds = %72
  %79 = load ptr, ptr %73, align 4
  %80 = getelementptr inbounds %struct.percpu_ref_data, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %59) #15
  br label %82

82:                                               ; preds = %78, %72, %63
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %83

83:                                               ; preds = %82, %53, %50
  store ptr null, ptr %22, align 8
  br label %134

84:                                               ; preds = %44
  %85 = load ptr, ptr %21, align 4
  %86 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 5
  store ptr %85, ptr %86, align 8
  %87 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %85, i32 0, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %85, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %93, 3
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105, !prof !10

96:                                               ; preds = %91
  %97 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %98 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %99 = inttoptr i32 %98 to ptr
  %100 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %99) #9, !srcloc !14
  %101 = add i32 %100, %93
  %102 = inttoptr i32 %101 to ptr
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %103, 1
  store i32 %104, ptr %102, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %97) #15, !srcloc !15
  br label %109

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %85, i32 0, i32 2, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %107) #15, !srcloc !17
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %107, ptr %107, i32 1, ptr elementtype(i32) %107) #15, !srcloc !22
  br label %109

109:                                              ; preds = %105, %96
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %110

110:                                              ; preds = %109, %84
  %111 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 1
  store i32 -32, ptr %111, align 4
  %112 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 1, i32 1
  store volatile ptr %112, ptr %112, align 8
  %113 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 1, i32 1, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 1, i32 2
  store ptr @loop_workfn, ptr %114, align 8
  %115 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 2
  store volatile ptr %115, ptr %115, align 4
  %116 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 2, i32 1
  store ptr %115, ptr %116, align 8
  %117 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 3
  store volatile ptr %117, ptr %117, align 4
  %118 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 3, i32 1
  store ptr %117, ptr %118, align 8
  %119 = getelementptr inbounds %struct.loop_worker, ptr %48, i32 0, i32 4
  store ptr %7, ptr %119, align 4
  store i32 %45, ptr %48, align 8
  %120 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 1
  store ptr null, ptr %120, align 4
  %121 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 2
  store ptr null, ptr %121, align 8
  store ptr %48, ptr %46, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %48, ptr noundef %27) #15
  br label %122

122:                                              ; preds = %110, %30
  %123 = phi ptr [ %48, %110 ], [ %31, %30 ]
  %124 = getelementptr inbounds %struct.loop_worker, ptr %123, i32 0, i32 3
  %125 = load volatile ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, %124
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.loop_worker, ptr %123, i32 0, i32 3, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %129, ptr %130, align 4
  store volatile ptr %125, ptr %129, align 4
  store volatile ptr %124, ptr %124, align 4
  store ptr %124, ptr %128, align 4
  br label %131

131:                                              ; preds = %127, %122
  %132 = getelementptr inbounds %struct.loop_worker, ptr %123, i32 0, i32 1
  %133 = getelementptr inbounds %struct.loop_worker, ptr %123, i32 0, i32 2
  br label %137

134:                                              ; preds = %83, %18
  %135 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 13
  %136 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 14
  br label %137

137:                                              ; preds = %134, %131
  %138 = phi ptr [ %132, %131 ], [ %135, %134 ]
  %139 = phi ptr [ %133, %131 ], [ %136, %134 ]
  %140 = getelementptr inbounds %struct.list_head, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  store ptr %4, ptr %140, align 4
  store ptr %139, ptr %4, align 4
  %142 = getelementptr %struct.request, ptr %3, i32 1, i32 1
  store ptr %141, ptr %142, align 4
  store volatile ptr %4, ptr %141, align 4
  %143 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 12
  %144 = load ptr, ptr %143, align 4
  %145 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %144, ptr noundef %138) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %146 = load i16, ptr %23, align 4
  %147 = add i16 %146, 1
  store i16 %147, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  br label %148

148:                                              ; preds = %137, %2
  %149 = phi i8 [ 0, %137 ], [ 10, %2 ]
  ret i8 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lo_complete_rq(ptr noundef %0) #3 {
  %2 = getelementptr %struct.request, ptr %0, i32 1, i32 2
  %3 = load i8, ptr %2, align 8, !range !11
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr %struct.request, ptr %0, i32 1, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 %6, 0
  br i1 %4, label %18, label %8

8:                                                ; preds = %1
  br i1 %7, label %19, label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %33

18:                                               ; preds = %1
  br i1 %7, label %19, label %33

19:                                               ; preds = %18, %8
  %20 = tail call zeroext i8 @errno_to_blk_status(i32 noundef %6) #15
  br label %33

21:                                               ; preds = %13
  %22 = icmp eq i32 %6, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i1 @blk_update_request(ptr noundef %0, i8 noundef zeroext 0, i32 noundef %6) #15
  store i32 0, ptr %5, align 8
  tail call void @blk_mq_requeue_request(ptr noundef %0, i1 noundef zeroext true) #15
  br label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %31, %29 ], [ %27, %25 ]
  tail call void @zero_fill_bio(ptr noundef nonnull %30) #15
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %29

33:                                               ; preds = %29, %25, %19, %18, %13, %9
  %34 = phi i8 [ %20, %19 ], [ 0, %18 ], [ 10, %25 ], [ 0, %13 ], [ 0, %9 ], [ 10, %29 ]
  tail call void @blk_mq_end_request(ptr noundef %0, i8 noundef zeroext %34) #15
  br label %35

35:                                               ; preds = %33, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loop_workfn(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = getelementptr i8, ptr %0, i32 32
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @loop_process_work(ptr noundef %2, ptr noundef %3, ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @loop_process_work(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bio_vec, align 4
  %6 = alloca %struct.iov_iter, align 8
  %7 = alloca %struct.iov_iter, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bio_vec, align 4
  %10 = tail call ptr @llvm.thread.pointer() #15
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 1572864
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.loop_device, ptr %2, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %14) #15
  %15 = load volatile ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %392, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds i8, ptr %5, i32 4
  %19 = getelementptr inbounds i8, ptr %5, i32 8
  %20 = getelementptr inbounds i8, ptr %9, i32 4
  %21 = getelementptr inbounds i8, ptr %9, i32 8
  br label %22

22:                                               ; preds = %388, %17
  %23 = phi ptr [ %15, %17 ], [ %390, %388 ]
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %28 = load i16, ptr %14, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %30 = getelementptr i8, ptr %23, i32 -168
  %31 = getelementptr i8, ptr %23, i32 -156
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %30, align 8
  %36 = getelementptr inbounds %struct.request_queue, ptr %35, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  br i1 %34, label %43, label %38

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %384

43:                                               ; preds = %38, %22
  %44 = getelementptr inbounds %struct.loop_cmd, ptr %23, i32 0, i32 7
  %45 = getelementptr i8, ptr %23, i32 -128
  %46 = load i64, ptr %45, align 8
  %47 = shl i64 %46, 9
  %48 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = add i64 %47, %49
  %51 = trunc i32 %32 to i8
  switch i8 %51, label %336 [
    i8 2, label %52
    i8 9, label %60
    i8 3, label %82
    i8 1, label %101
    i8 0, label %252
  ]

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @vfs_fsync(ptr noundef %54, i32 noundef 0) #15
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 0, i32 -5
  %58 = icmp eq i32 %55, -22
  %59 = select i1 %58, i32 -22, i32 %57
  br label %339

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 20
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.request_queue, ptr %64, i32 0, i32 11
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %339, label %69

69:                                               ; preds = %60
  %70 = and i32 %32, 8388608
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 3, i32 17
  %73 = getelementptr inbounds %struct.file, ptr %62, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.file_operations, ptr %74, i32 0, i32 27
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %23, i32 -136
  %78 = load i32, ptr %77, align 8
  %79 = zext i32 %78 to i64
  %80 = call i32 %76(ptr noundef %62, i32 noundef %72, i64 noundef %50, i64 noundef %79) #15
  switch i32 %80, label %81 [
    i32 -22, label %339
    i32 0, label %339
    i32 -95, label %339
  ]

81:                                               ; preds = %69
  br label %339

82:                                               ; preds = %43
  %83 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 20
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.request_queue, ptr %86, i32 0, i32 11
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %88, 256
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %339, label %91

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.file, ptr %84, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.file_operations, ptr %93, i32 0, i32 27
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr i8, ptr %23, i32 -136
  %97 = load i32, ptr %96, align 8
  %98 = zext i32 %97 to i64
  %99 = call i32 %95(ptr noundef %84, i32 noundef 3, i64 noundef %50, i64 noundef %98) #15
  switch i32 %99, label %100 [
    i32 -22, label %339
    i32 0, label %339
    i32 -95, label %339
  ]

100:                                              ; preds = %91
  br label %339

101:                                              ; preds = %43
  %102 = getelementptr i8, ptr %23, i32 8
  %103 = load i8, ptr %102, align 8, !range !11
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call fastcc i32 @lo_rw_aio(ptr noundef %37, ptr noundef %23, i64 noundef %50, i1 noundef zeroext true) #15
  br label %339

107:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store i64 %50, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #15, !annotation !28
  %108 = getelementptr i8, ptr %23, i32 -120
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %250, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 6
  br label %113

113:                                              ; preds = %246, %111
  %114 = phi i32 [ 0, %111 ], [ %247, %246 ]
  %115 = phi ptr [ %109, %111 ], [ %248, %246 ]
  %116 = getelementptr inbounds %struct.bio, ptr %115, i32 0, i32 8, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %246, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.bio, ptr %115, i32 0, i32 8, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.bio, ptr %115, i32 0, i32 8, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.bio, ptr %115, i32 0, i32 16
  %125 = getelementptr inbounds %struct.bio, ptr %115, i32 0, i32 2
  br label %126

126:                                              ; preds = %241, %119
  %127 = phi i32 [ %121, %119 ], [ %243, %241 ]
  %128 = phi i32 [ %123, %119 ], [ %242, %241 ]
  %129 = phi i32 [ %117, %119 ], [ %244, %241 ]
  %130 = load ptr, ptr %124, align 4
  %131 = getelementptr %struct.bio_vec, ptr %130, i32 %128
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr %struct.bio_vec, ptr %130, i32 %128, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = add i32 %134, %127
  %136 = lshr i32 %135, 12
  %137 = getelementptr %struct.page, ptr %132, i32 %136
  %138 = getelementptr %struct.bio_vec, ptr %130, i32 %128, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = sub i32 %139, %127
  %141 = call i32 @llvm.umin.i32(i32 %129, i32 %140) #15
  %142 = and i32 %135, 4095
  %143 = sub nuw nsw i32 4096, %142
  %144 = call i32 @llvm.umin.i32(i32 %141, i32 %143) #15
  store ptr %137, ptr %9, align 4
  store i32 %144, ptr %20, align 4
  store i32 %142, ptr %21, align 4
  %145 = load ptr, ptr %112, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i32 24, i1 false) #15, !annotation !28
  call void @iov_iter_bvec(ptr noundef nonnull %7, i32 noundef 1, ptr noundef nonnull %9, i32 noundef 1, i32 noundef %144) #15
  %146 = getelementptr inbounds %struct.file, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8
  %148 = load i16, ptr %147, align 8
  %149 = and i16 %148, -4096
  %150 = icmp eq i16 %149, -32768
  br i1 %150, label %151, label %172

151:                                              ; preds = %126
  %152 = getelementptr inbounds %struct.inode, ptr %147, i32 0, i32 8
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr %struct.super_block, ptr %153, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !29
  %155 = load volatile i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %169, !prof !10

157:                                              ; preds = %151
  %158 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %159 = getelementptr %struct.super_block, ptr %153, i32 0, i32 26, i32 2, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = ptrtoint ptr %160 to i32
  %162 = call i32 @llvm.read_register.i32(metadata !0) #15
  %163 = inttoptr i32 %162 to ptr
  %164 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %163) #9, !srcloc !14
  %165 = add i32 %164, %161
  %166 = inttoptr i32 %165 to ptr
  %167 = load i32, ptr %166, align 4
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %158) #15, !srcloc !15
  br label %171

169:                                              ; preds = %151
  %170 = call zeroext i1 @__percpu_down_read(ptr noundef %154, i1 noundef zeroext false) #15
  br label %171

171:                                              ; preds = %169, %157
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !30
  br label %172

172:                                              ; preds = %171, %126
  %173 = call i32 @vfs_iter_write(ptr noundef %145, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 0) #15
  %174 = load ptr, ptr %146, align 8
  %175 = load i16, ptr %174, align 8
  %176 = and i16 %175, -4096
  %177 = icmp eq i16 %176, -32768
  br i1 %177, label %178, label %211

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.inode, ptr %174, i32 0, i32 8
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr %struct.super_block, ptr %180, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !31
  %182 = load volatile i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %196, !prof !10

184:                                              ; preds = %178
  %185 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %186 = getelementptr %struct.super_block, ptr %180, i32 0, i32 26, i32 2, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = ptrtoint ptr %187 to i32
  %189 = call i32 @llvm.read_register.i32(metadata !0) #15
  %190 = inttoptr i32 %189 to ptr
  %191 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %190) #9, !srcloc !14
  %192 = add i32 %191, %188
  %193 = inttoptr i32 %192 to ptr
  %194 = load i32, ptr %193, align 4
  %195 = add i32 %194, -1
  store i32 %195, ptr %193, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %185) #15, !srcloc !15
  br label %210

196:                                              ; preds = %178
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !32
  %197 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %198 = getelementptr %struct.super_block, ptr %180, i32 0, i32 26, i32 2, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = ptrtoint ptr %199 to i32
  %201 = call i32 @llvm.read_register.i32(metadata !0) #15
  %202 = inttoptr i32 %201 to ptr
  %203 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %202) #9, !srcloc !14
  %204 = add i32 %203, %200
  %205 = inttoptr i32 %204 to ptr
  %206 = load i32, ptr %205, align 4
  %207 = add i32 %206, -1
  store i32 %207, ptr %205, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %197) #15, !srcloc !15
  %208 = getelementptr %struct.super_block, ptr %180, i32 0, i32 26, i32 2, i32 0, i32 2
  %209 = call i32 @rcuwait_wake_up(ptr noundef %208) #15
  br label %210

210:                                              ; preds = %196, %184
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !33
  br label %211

211:                                              ; preds = %210, %172
  %212 = load i32, ptr %20, align 4
  %213 = icmp eq i32 %173, %212
  br i1 %213, label %224, label %214, !prof !10

214:                                              ; preds = %211
  %215 = call i32 @___ratelimit(ptr noundef nonnull @lo_write_bvec._rs, ptr noundef nonnull @__func__.lo_write_bvec) #15
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %214
  %218 = load i64, ptr %8, align 8
  %219 = load i32, ptr %20, align 4
  %220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %218, i32 noundef %219) #16
  br label %221

221:                                              ; preds = %217, %214
  %222 = icmp sgt i32 %173, -1
  %223 = select i1 %222, i32 -5, i32 %173
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %246

224:                                              ; preds = %211
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  %225 = call i32 @__cond_resched() #15
  %226 = load i32, ptr %20, align 4
  %227 = load i32, ptr %125, align 4
  %228 = and i32 %227, 255
  %229 = add nsw i32 %228, -3
  %230 = and i32 %229, -7
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %241, label %232

232:                                              ; preds = %224
  %233 = load ptr, ptr %124, align 4
  %234 = add i32 %226, %127
  %235 = getelementptr %struct.bio_vec, ptr %233, i32 %128, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %234, %236
  %238 = zext i1 %237 to i32
  %239 = add i32 %128, %238
  %240 = select i1 %237, i32 0, i32 %234
  br label %241

241:                                              ; preds = %232, %224
  %242 = phi i32 [ %128, %224 ], [ %239, %232 ]
  %243 = phi i32 [ %127, %224 ], [ %240, %232 ]
  %244 = sub i32 %129, %226
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %126

246:                                              ; preds = %241, %221, %113
  %247 = phi i32 [ %223, %221 ], [ %114, %113 ], [ 0, %241 ]
  %248 = load ptr, ptr %115, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %113

250:                                              ; preds = %246, %107
  %251 = phi i32 [ 0, %107 ], [ %247, %246 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %339

252:                                              ; preds = %43
  %253 = getelementptr i8, ptr %23, i32 8
  %254 = load i8, ptr %253, align 8, !range !11
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %252
  %257 = call fastcc i32 @lo_rw_aio(ptr noundef %37, ptr noundef %23, i64 noundef %50, i1 noundef zeroext false) #15
  br label %339

258:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store i64 %50, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #15, !annotation !28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i32 24, i1 false) #15, !annotation !28
  %259 = getelementptr i8, ptr %23, i32 -120
  %260 = load ptr, ptr %259, align 8
  %261 = icmp eq ptr %260, null
  br i1 %261, label %334, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.loop_device, ptr %37, i32 0, i32 6
  br label %264

264:                                              ; preds = %331, %262
  %265 = phi ptr [ %260, %262 ], [ %332, %331 ]
  %266 = getelementptr inbounds %struct.bio, ptr %265, i32 0, i32 8, i32 1
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %331, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.bio, ptr %265, i32 0, i32 8, i32 3
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr inbounds %struct.bio, ptr %265, i32 0, i32 8, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr inbounds %struct.bio, ptr %265, i32 0, i32 16
  %275 = getelementptr inbounds %struct.bio, ptr %265, i32 0, i32 2
  br label %276

276:                                              ; preds = %326, %269
  %277 = phi i32 [ %271, %269 ], [ %328, %326 ]
  %278 = phi i32 [ %273, %269 ], [ %327, %326 ]
  %279 = phi i32 [ %267, %269 ], [ %329, %326 ]
  %280 = load ptr, ptr %274, align 4
  %281 = getelementptr %struct.bio_vec, ptr %280, i32 %278
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr %struct.bio_vec, ptr %280, i32 %278, i32 2
  %284 = load i32, ptr %283, align 4
  %285 = add i32 %284, %277
  %286 = lshr i32 %285, 12
  %287 = getelementptr %struct.page, ptr %282, i32 %286
  %288 = getelementptr %struct.bio_vec, ptr %280, i32 %278, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = sub i32 %289, %277
  %291 = call i32 @llvm.umin.i32(i32 %279, i32 %290) #15
  %292 = and i32 %285, 4095
  %293 = sub nuw nsw i32 4096, %292
  %294 = call i32 @llvm.umin.i32(i32 %291, i32 %293) #15
  store ptr %287, ptr %5, align 4
  store i32 %294, ptr %18, align 4
  store i32 %292, ptr %19, align 4
  call void @iov_iter_bvec(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %294) #15
  %295 = load ptr, ptr %263, align 4
  %296 = call i32 @vfs_iter_read(ptr noundef %295, ptr noundef nonnull %6, ptr noundef nonnull %4, i32 noundef 0) #15
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %334, label %298

298:                                              ; preds = %276
  %299 = load ptr, ptr %5, align 4
  call void @flush_dcache_page(ptr noundef %299) #15
  %300 = load i32, ptr %18, align 4
  %301 = icmp eq i32 %296, %300
  br i1 %301, label %309, label %302

302:                                              ; preds = %298
  %303 = load ptr, ptr %259, align 8
  %304 = icmp eq ptr %303, null
  br i1 %304, label %331, label %305

305:                                              ; preds = %305, %302
  %306 = phi ptr [ %307, %305 ], [ %303, %302 ]
  call void @zero_fill_bio(ptr noundef nonnull %306) #15
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %331, label %305

309:                                              ; preds = %298
  %310 = call i32 @__cond_resched() #15
  %311 = load i32, ptr %18, align 4
  %312 = load i32, ptr %275, align 4
  %313 = and i32 %312, 255
  %314 = add nsw i32 %313, -3
  %315 = and i32 %314, -7
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %309
  %318 = load ptr, ptr %274, align 4
  %319 = add i32 %311, %277
  %320 = getelementptr %struct.bio_vec, ptr %318, i32 %278, i32 1
  %321 = load i32, ptr %320, align 4
  %322 = icmp eq i32 %319, %321
  %323 = zext i1 %322 to i32
  %324 = add i32 %278, %323
  %325 = select i1 %322, i32 0, i32 %319
  br label %326

326:                                              ; preds = %317, %309
  %327 = phi i32 [ %278, %309 ], [ %324, %317 ]
  %328 = phi i32 [ %277, %309 ], [ %325, %317 ]
  %329 = sub i32 %279, %311
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %276

331:                                              ; preds = %326, %305, %302, %264
  %332 = load ptr, ptr %265, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %264

334:                                              ; preds = %331, %276, %258
  %335 = phi i32 [ 0, %258 ], [ %296, %276 ], [ 0, %331 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %339

336:                                              ; preds = %43
  %337 = load i1, ptr @do_req_filebacked.__already_done, align 1
  br i1 %337, label %339, label %338, !prof !10

338:                                              ; preds = %336
  store i1 true, ptr @do_req_filebacked.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 502, i32 noundef 9, ptr noundef null) #15
  br label %339

339:                                              ; preds = %338, %336, %334, %256, %250, %105, %100, %91, %91, %91, %82, %81, %69, %69, %69, %60, %52
  %340 = phi i32 [ %257, %256 ], [ %335, %334 ], [ %106, %105 ], [ %251, %250 ], [ %59, %52 ], [ -5, %338 ], [ -5, %336 ], [ -5, %81 ], [ -95, %60 ], [ %80, %69 ], [ %80, %69 ], [ %80, %69 ], [ -5, %100 ], [ -95, %82 ], [ %99, %91 ], [ %99, %91 ], [ %99, %91 ]
  %341 = load ptr, ptr %44, align 8
  %342 = icmp eq ptr %341, null
  br i1 %342, label %373, label %343

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %341, i32 0, i32 7
  %345 = load i32, ptr %344, align 4
  %346 = and i32 %345, 1
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %373

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %341, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %350 = load volatile i32, ptr %349, align 4
  %351 = and i32 %350, 3
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %362, !prof !10

353:                                              ; preds = %348
  %354 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %355 = call i32 @llvm.read_register.i32(metadata !0) #15
  %356 = inttoptr i32 %355 to ptr
  %357 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %356) #9, !srcloc !14
  %358 = add i32 %357, %350
  %359 = inttoptr i32 %358 to ptr
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, -1
  store i32 %361, ptr %359, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %354) #15, !srcloc !15
  br label %372

362:                                              ; preds = %348
  %363 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %341, i32 0, i32 2, i32 1
  %364 = load ptr, ptr %363, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %364) #15, !srcloc !17
  %365 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %364, ptr %364, i32 1, ptr elementtype(i32) %364) #15, !srcloc !18
  %366 = extractvalue { i32, i32 } %365, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %372, !prof !20

368:                                              ; preds = %362
  %369 = load ptr, ptr %363, align 4
  %370 = getelementptr inbounds %struct.percpu_ref_data, ptr %369, i32 0, i32 1
  %371 = load ptr, ptr %370, align 4
  call void %371(ptr noundef %349) #15
  br label %372

372:                                              ; preds = %368, %362, %353
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %373

373:                                              ; preds = %372, %343, %339
  %374 = getelementptr inbounds %struct.loop_cmd, ptr %23, i32 0, i32 1
  %375 = load i8, ptr %374, align 8, !range !11
  %376 = icmp eq i8 %375, 0
  %377 = icmp ne i32 %340, 0
  %378 = select i1 %376, i1 true, i1 %377
  br i1 %378, label %379, label %388

379:                                              ; preds = %373
  %380 = icmp eq i32 %340, -95
  %381 = xor i1 %377, true
  %382 = or i1 %380, %381
  %383 = select i1 %380, i32 -95, i32 0
  br i1 %382, label %385, label %384

384:                                              ; preds = %379, %38
  br label %385

385:                                              ; preds = %384, %379
  %386 = phi i32 [ %383, %379 ], [ -5, %384 ]
  %387 = getelementptr inbounds %struct.loop_cmd, ptr %23, i32 0, i32 3
  store i32 %386, ptr %387, align 8
  call void @blk_mq_complete_request(ptr noundef %30) #15
  br label %388

388:                                              ; preds = %385, %373
  %389 = call i32 @__cond_resched() #15
  call void @_raw_spin_lock_irq(ptr noundef %14) #15
  %390 = load volatile ptr, ptr %1, align 4
  %391 = icmp eq ptr %390, %1
  br i1 %391, label %392, label %22

392:                                              ; preds = %388, %3
  %393 = icmp eq ptr %0, null
  br i1 %393, label %411, label %394

394:                                              ; preds = %392
  %395 = getelementptr inbounds %struct.loop_worker, ptr %0, i32 0, i32 1
  %396 = load volatile i32, ptr %395, align 4
  %397 = and i32 %396, 1
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %411

399:                                              ; preds = %394
  %400 = load volatile i32, ptr @jiffies, align 64
  %401 = getelementptr inbounds %struct.loop_worker, ptr %0, i32 0, i32 6
  store i32 %400, ptr %401, align 4
  %402 = getelementptr inbounds %struct.loop_worker, ptr %0, i32 0, i32 3
  %403 = getelementptr inbounds %struct.loop_device, ptr %2, i32 0, i32 15
  %404 = getelementptr inbounds %struct.loop_device, ptr %2, i32 0, i32 15, i32 1
  %405 = load ptr, ptr %404, align 4
  store ptr %402, ptr %404, align 4
  store ptr %403, ptr %402, align 4
  %406 = getelementptr inbounds %struct.loop_worker, ptr %0, i32 0, i32 3, i32 1
  store ptr %405, ptr %406, align 4
  store volatile ptr %402, ptr %405, align 4
  %407 = getelementptr inbounds %struct.loop_device, ptr %2, i32 0, i32 17
  %408 = load volatile i32, ptr @jiffies, align 64
  %409 = add i32 %408, 6000
  %410 = call i32 @timer_reduce(ptr noundef %407, i32 noundef %409) #15
  br label %411

411:                                              ; preds = %399, %394, %392
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %412 = load i16, ptr %14, align 4
  %413 = add i16 %412, 1
  store i16 %413, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !26
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  store i32 %12, ptr %11, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_complete_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lo_rw_aio(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 {
  %5 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !28
  %6 = getelementptr i8, ptr %1, i32 -168
  %7 = getelementptr i8, ptr %1, i32 -120
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %8, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %52, %4
  %13 = phi i32 [ %53, %52 ], [ 0, %4 ]
  %14 = phi ptr [ %54, %52 ], [ %8, %4 ]
  %15 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 8, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 8, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 8, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 16
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -3
  %29 = and i32 %28, -7
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %47, %18
  %32 = phi i32 [ %13, %18 ], [ %40, %47 ]
  %33 = phi i32 [ %20, %18 ], [ %49, %47 ]
  %34 = phi i32 [ %22, %18 ], [ %48, %47 ]
  %35 = phi i32 [ %16, %18 ], [ %50, %47 ]
  %36 = getelementptr %struct.bio_vec, ptr %24, i32 %34, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %37, %33
  %39 = tail call i32 @llvm.umin.i32(i32 %35, i32 %38)
  %40 = add i32 %32, 1
  br i1 %30, label %47, label %41

41:                                               ; preds = %31
  %42 = add i32 %39, %33
  %43 = icmp eq i32 %42, %37
  %44 = zext i1 %43 to i32
  %45 = add i32 %34, %44
  %46 = select i1 %43, i32 0, i32 %42
  br label %47

47:                                               ; preds = %41, %31
  %48 = phi i32 [ %34, %31 ], [ %45, %41 ]
  %49 = phi i32 [ %33, %31 ], [ %46, %41 ]
  %50 = sub i32 %35, %39
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %31

52:                                               ; preds = %47, %12
  %53 = phi i32 [ %13, %12 ], [ %40, %47 ]
  %54 = load ptr, ptr %14, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %12

56:                                               ; preds = %52, %4
  %57 = phi i32 [ 0, %4 ], [ %53, %52 ]
  %58 = getelementptr i8, ptr %1, i32 -116
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %8, %59
  br i1 %60, label %128, label %61

61:                                               ; preds = %56
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %57, i32 12) #15
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %63, label %172, label %64, !prof !20

64:                                               ; preds = %61
  %65 = extractvalue { i32, i1 } %62, 0
  %66 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %65, i32 noundef 3072) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %172, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %7, align 8
  %70 = getelementptr inbounds %struct.loop_cmd, ptr %1, i32 0, i32 5
  store ptr %66, ptr %70, align 8
  %71 = icmp eq ptr %69, null
  br i1 %71, label %136, label %72

72:                                               ; preds = %122, %68
  %73 = phi ptr [ %123, %122 ], [ %66, %68 ]
  %74 = phi ptr [ %124, %122 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 8, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %122, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 8, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 8, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 16
  %84 = getelementptr inbounds %struct.bio, ptr %74, i32 0, i32 2
  br label %85

85:                                               ; preds = %117, %78
  %86 = phi ptr [ %73, %78 ], [ %102, %117 ]
  %87 = phi i32 [ %80, %78 ], [ %119, %117 ]
  %88 = phi i32 [ %82, %78 ], [ %118, %117 ]
  %89 = phi i32 [ %76, %78 ], [ %120, %117 ]
  %90 = load ptr, ptr %83, align 4
  %91 = getelementptr %struct.bio_vec, ptr %90, i32 %88
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr %struct.bio_vec, ptr %90, i32 %88, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = sub i32 %94, %87
  %96 = tail call i32 @llvm.umin.i32(i32 %89, i32 %95)
  %97 = getelementptr %struct.bio_vec, ptr %90, i32 %88, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %87
  store ptr %92, ptr %86, align 4
  %100 = getelementptr inbounds i8, ptr %86, i32 4
  store i32 %96, ptr %100, align 4
  %101 = getelementptr inbounds i8, ptr %86, i32 8
  store i32 %99, ptr %101, align 4
  %102 = getelementptr %struct.bio_vec, ptr %86, i32 1
  %103 = load i32, ptr %84, align 4
  %104 = and i32 %103, 255
  %105 = add nsw i32 %104, -3
  %106 = and i32 %105, -7
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %85
  %109 = load ptr, ptr %83, align 4
  %110 = add i32 %96, %87
  %111 = getelementptr %struct.bio_vec, ptr %109, i32 %88, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %110, %112
  %114 = zext i1 %113 to i32
  %115 = add i32 %88, %114
  %116 = select i1 %113, i32 0, i32 %110
  br label %117

117:                                              ; preds = %108, %85
  %118 = phi i32 [ %88, %85 ], [ %115, %108 ]
  %119 = phi i32 [ %87, %85 ], [ %116, %108 ]
  %120 = sub i32 %89, %96
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %85

122:                                              ; preds = %117, %72
  %123 = phi ptr [ %73, %72 ], [ %102, %117 ]
  %124 = load ptr, ptr %74, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %72

126:                                              ; preds = %122
  %127 = load ptr, ptr %70, align 8
  br label %136

128:                                              ; preds = %56
  %129 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 8, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 16
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.bio, ptr %8, i32 0, i32 8, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr %struct.bio_vec, ptr %132, i32 %134
  br label %136

136:                                              ; preds = %128, %126, %68
  %137 = phi i32 [ %130, %128 ], [ 0, %126 ], [ 0, %68 ]
  %138 = phi ptr [ %135, %128 ], [ %127, %126 ], [ %66, %68 ]
  %139 = getelementptr %struct.loop_cmd, ptr %1, i32 0, i32 2
  store volatile i32 2, ptr %139, align 4
  %140 = zext i1 %3 to i32
  %141 = getelementptr i8, ptr %1, i32 -136
  %142 = load i32, ptr %141, align 8
  call void @iov_iter_bvec(ptr noundef nonnull %5, i32 noundef %140, ptr noundef %138, i32 noundef %57, i32 noundef %142) #15
  %143 = getelementptr inbounds %struct.iov_iter, ptr %5, i32 0, i32 3
  store i32 %137, ptr %143, align 4
  %144 = getelementptr inbounds %struct.loop_cmd, ptr %1, i32 0, i32 4
  %145 = getelementptr inbounds %struct.loop_cmd, ptr %1, i32 0, i32 4, i32 1
  store i64 %2, ptr %145, align 8
  store ptr %10, ptr %144, align 8
  %146 = getelementptr inbounds %struct.loop_cmd, ptr %1, i32 0, i32 4, i32 2
  store ptr @lo_rw_aio_complete, ptr %146, align 8
  %147 = getelementptr inbounds %struct.loop_cmd, ptr %1, i32 0, i32 4, i32 4
  store i32 131072, ptr %147, align 8
  %148 = getelementptr inbounds %struct.loop_cmd, ptr %1, i32 0, i32 4, i32 6
  store i16 0, ptr %148, align 2
  %149 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 3
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.file_operations, ptr %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.file_operations, ptr %150, i32 0, i32 5
  %153 = select i1 %3, ptr %152, ptr %151
  %154 = load ptr, ptr %153, align 4
  %155 = call i32 %154(ptr noundef %144, ptr noundef nonnull %5) #15
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #15, !srcloc !17
  %156 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #15, !srcloc !18
  %157 = extractvalue { i32, i32 } %156, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %136
  %160 = getelementptr inbounds %struct.loop_cmd, ptr %1, i32 0, i32 5
  %161 = load ptr, ptr %160, align 8
  call void @kfree(ptr noundef %161) #15
  store ptr null, ptr %160, align 8
  call void @blk_mq_complete_request(ptr noundef %6) #15
  br label %162

162:                                              ; preds = %159, %136
  %163 = icmp eq i32 %155, -529
  br i1 %163, label %172, label %164

164:                                              ; preds = %162
  %165 = getelementptr %struct.loop_cmd, ptr %1, i32 0, i32 3
  store i32 %155, ptr %165, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #15, !srcloc !17
  %166 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #15, !srcloc !18
  %167 = extractvalue { i32, i32 } %166, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = getelementptr %struct.loop_cmd, ptr %1, i32 0, i32 5
  %171 = load ptr, ptr %170, align 8
  call void @kfree(ptr noundef %171) #15
  store ptr null, ptr %170, align 8
  call void @blk_mq_complete_request(ptr noundef %6) #15
  br label %172

172:                                              ; preds = %169, %164, %162, %64, %61
  %173 = phi i32 [ -5, %64 ], [ 0, %162 ], [ 0, %164 ], [ 0, %169 ], [ -5, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret i32 %173
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lo_rw_aio_complete(ptr noundef %0, i32 noundef %1) #3 {
  %3 = getelementptr i8, ptr %0, i32 -8
  store i32 %1, ptr %3, align 8
  %4 = getelementptr i8, ptr %0, i32 -12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !17
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !18
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 -192
  %10 = getelementptr i8, ptr %0, i32 40
  %11 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %11) #15
  store ptr null, ptr %10, align 8
  tail call void @blk_mq_complete_request(ptr noundef %9) #15
  br label %12

12:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_iter_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_update_request(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_requeue_request(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_end_request(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lo_open(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.loop_device, ptr %6, i32 0, i32 23
  %8 = tail call i32 @mutex_lock_killable(ptr noundef %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.loop_device, ptr %6, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.loop_device, ptr %6, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #15, !srcloc !17
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #15, !srcloc !22
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i32 [ 0, %14 ], [ -6, %10 ]
  tail call void @mutex_unlock(ptr noundef %7) #15
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ %18, %17 ], [ %8, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lo_release(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.loop_device, ptr %4, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.loop_device, ptr %4, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #15, !srcloc !17
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #15, !srcloc !18
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.loop_device, ptr %4, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.loop_device, ptr %4, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %14, label %20, label %18

18:                                               ; preds = %10
  br i1 %17, label %19, label %25

19:                                               ; preds = %18
  store i32 2, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %5) #15
  tail call fastcc void @__loop_clr_fd(ptr noundef %4, i1 noundef zeroext true)
  br label %26

20:                                               ; preds = %10
  br i1 %17, label %21, label %25

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.loop_device, ptr %4, i32 0, i32 20
  %23 = load ptr, ptr %22, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %23) #15
  %24 = load ptr, ptr %22, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %24) #15
  br label %25

25:                                               ; preds = %21, %20, %18, %2
  tail call void @mutex_unlock(ptr noundef %5) #15
  br label %26

26:                                               ; preds = %25, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lo_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = alloca %struct.loop_info64, align 8
  %6 = alloca %struct.loop_info64, align 8
  %7 = alloca %struct.loop_info, align 4
  %8 = alloca %struct.loop_info64, align 8
  %9 = alloca %struct.loop_info, align 4
  %10 = alloca %struct.loop_info64, align 8
  %11 = alloca %struct.loop_config, align 8
  %12 = alloca %struct.loop_config, align 8
  %13 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 17
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8
  %17 = inttoptr i32 %3 to ptr
  switch i32 %2, label %389 [
    i32 19456, label %18
    i32 19466, label %20
    i32 19462, label %40
    i32 19457, label %222
    i32 19458, label %240
    i32 19459, label %288
    i32 19460, label %339
    i32 19461, label %364
    i32 19463, label %384
    i32 19464, label %384
    i32 19465, label %384
  ]

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %11) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %11, i8 0, i64 304, i1 false)
  store i32 %3, ptr %11, align 8
  %19 = call i32 @loop_configure(ptr noundef %16, i32 noundef %1, ptr noundef %0, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %11) #15
  br label %509

20:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %12) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(304) %12, i8 0, i32 304, i1 false), !annotation !28
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 304, i32 -1090519040) #19, !srcloc !34
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32, !prof !10

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #15
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %26) #9, !srcloc !35
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #15, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %30 = call i32 @arm_copy_from_user(ptr noundef nonnull %12, ptr noundef %17, i32 noundef 304) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #15, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !10

32:                                               ; preds = %24, %20
  %33 = phi i32 [ %30, %24 ], [ 304, %20 ]
  %34 = sub i32 304, %33
  %35 = getelementptr i8, ptr %12, i32 %34
  call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %33, i1 false) #15
  br label %38

36:                                               ; preds = %24
  %37 = call i32 @loop_configure(ptr noundef %16, i32 noundef %1, ptr noundef %0, ptr noundef nonnull %12)
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ -14, %32 ]
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %12) #15
  br label %509

40:                                               ; preds = %4
  %41 = tail call ptr @fget(i32 noundef %3) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %509, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 17
  %45 = load ptr, ptr %44, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = load i16, ptr %46, align 8
  %50 = and i16 %49, -4096
  %51 = icmp eq i16 %50, 24576
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.inode, ptr %46, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -1048576
  %56 = icmp eq i32 %55, 7340032
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @loop_validate_mutex) #15
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %220

60:                                               ; preds = %57, %52, %48, %43
  %61 = phi i1 [ true, %57 ], [ false, %52 ], [ false, %48 ], [ false, %43 ]
  %62 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 23
  %63 = tail call i32 @mutex_lock_killable(ptr noundef %62) #15
  %64 = icmp ne i32 %63, 0
  %65 = and i1 %61, %64
  br i1 %65, label %218, label %66

66:                                               ; preds = %60
  %67 = icmp eq i32 %63, 0
  br i1 %67, label %68, label %220

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 10
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %216

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 4
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %216, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %44, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %112, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 5
  br label %83

83:                                               ; preds = %105, %81
  %84 = phi ptr [ %79, %81 ], [ %110, %105 ]
  %85 = load i16, ptr %84, align 8
  %86 = and i16 %85, -4096
  %87 = icmp eq i16 %86, 24576
  br i1 %87, label %88, label %112

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.inode, ptr %84, i32 0, i32 12
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, -1048576
  %92 = icmp eq i32 %91, 7340032
  br i1 %92, label %93, label %112

93:                                               ; preds = %88
  %94 = load i32, ptr %82, align 4
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %216, label %96

96:                                               ; preds = %93
  %97 = tail call ptr @I_BDEV(ptr noundef nonnull %84) #15
  %98 = getelementptr inbounds %struct.block_device, ptr %97, i32 0, i32 17
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr inbounds %struct.gendisk, ptr %99, i32 0, i32 10
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.loop_device, ptr %101, i32 0, i32 10
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %216

105:                                              ; preds = %96
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !38
  %106 = getelementptr inbounds %struct.loop_device, ptr %101, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.file, ptr %107, i32 0, i32 17
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %83

112:                                              ; preds = %105, %88, %83, %77
  %113 = load i16, ptr %79, align 8
  %114 = and i16 %113, -4096
  switch i16 %114, label %216 [
    i16 -32768, label %115
    i16 24576, label %115
  ]

115:                                              ; preds = %112, %112
  %116 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 6
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 2
  %119 = load i64, ptr %118, align 8
  %120 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 3
  %121 = load i64, ptr %120, align 8
  %122 = load ptr, ptr %44, align 8
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.inode, ptr %123, i32 0, i32 22
  %125 = getelementptr inbounds %struct.inode, ptr %123, i32 0, i32 13
  br label %126

126:                                              ; preds = %134, %115
  %127 = load volatile i32, ptr %124, align 4
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %130, %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !40
  %131 = load volatile i32, ptr %124, align 4
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %130

134:                                              ; preds = %130, %126
  %135 = phi i32 [ %127, %126 ], [ %131, %130 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  %136 = load i64, ptr %125, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !42
  %137 = load volatile i32, ptr %124, align 4
  %138 = icmp eq i32 %137, %135
  br i1 %138, label %139, label %126

139:                                              ; preds = %134
  %140 = tail call i64 @llvm.smax.i64(i64 %119, i64 0) #15
  %141 = sub i64 %136, %140
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = icmp sgt i64 %121, 0
  %145 = icmp sgt i64 %141, %121
  %146 = select i1 %144, i1 %145, i1 false
  %147 = select i1 %146, i64 %121, i64 %141
  %148 = lshr i64 %147, 9
  br label %149

149:                                              ; preds = %143, %139
  %150 = phi i64 [ %148, %143 ], [ 0, %139 ]
  %151 = load i64, ptr %118, align 8
  %152 = load i64, ptr %120, align 8
  %153 = getelementptr inbounds %struct.file, ptr %117, i32 0, i32 17
  %154 = load ptr, ptr %153, align 8
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.inode, ptr %155, i32 0, i32 22
  %157 = getelementptr inbounds %struct.inode, ptr %155, i32 0, i32 13
  br label %158

158:                                              ; preds = %166, %149
  %159 = load volatile i32, ptr %156, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %162, %158
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !40
  %163 = load volatile i32, ptr %156, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %162

166:                                              ; preds = %162, %158
  %167 = phi i32 [ %159, %158 ], [ %163, %162 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  %168 = load i64, ptr %157, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !42
  %169 = load volatile i32, ptr %156, align 4
  %170 = icmp eq i32 %169, %167
  br i1 %170, label %171, label %158

171:                                              ; preds = %166
  %172 = tail call i64 @llvm.smax.i64(i64 %151, i64 0) #15
  %173 = sub i64 %168, %172
  %174 = icmp slt i64 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = icmp sgt i64 %152, 0
  %177 = icmp sgt i64 %173, %152
  %178 = select i1 %176, i1 %177, i1 false
  %179 = select i1 %178, i64 %152, i64 %173
  %180 = lshr i64 %179, 9
  br label %181

181:                                              ; preds = %175, %171
  %182 = phi i64 [ %180, %175 ], [ 0, %171 ]
  %183 = icmp eq i64 %150, %182
  br i1 %183, label %184, label %216

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 22
  %186 = load ptr, ptr %185, align 8
  %187 = tail call zeroext i1 @disk_force_media_change(ptr noundef %186, i32 noundef 1) #15
  %188 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 20
  %189 = load ptr, ptr %188, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %189) #15
  %190 = load ptr, ptr %153, align 8
  %191 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 8
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr inbounds %struct.address_space, ptr %190, i32 0, i32 3
  store i32 %192, ptr %193, align 4
  store ptr %41, ptr %116, align 4
  %194 = load ptr, ptr %44, align 8
  %195 = getelementptr inbounds %struct.address_space, ptr %194, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  store i32 %196, ptr %191, align 4
  %197 = load ptr, ptr %44, align 8
  %198 = and i32 %196, -193
  %199 = getelementptr inbounds %struct.address_space, ptr %197, i32 0, i32 3
  store i32 %198, ptr %199, align 4
  %200 = load ptr, ptr %116, align 4
  %201 = getelementptr inbounds %struct.file, ptr %200, i32 0, i32 7
  %202 = load i32, ptr %201, align 4
  %203 = and i32 %202, 65536
  %204 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 18
  %205 = load i8, ptr %204, align 8, !range !11
  %206 = zext i8 %205 to i32
  %207 = or i32 %203, %206
  %208 = icmp ne i32 %207, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %16, i1 noundef zeroext %208) #15
  %209 = load ptr, ptr %188, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %209) #15
  %210 = load i32, ptr %73, align 8
  %211 = and i32 %210, 8
  %212 = icmp eq i32 %211, 0
  tail call void @mutex_unlock(ptr noundef %62) #15
  br i1 %61, label %214, label %213

213:                                              ; preds = %184
  tail call void @mutex_lock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %214

214:                                              ; preds = %213, %184
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  tail call void @fput(ptr noundef %117) #15
  br i1 %212, label %509, label %215

215:                                              ; preds = %214
  tail call fastcc void @loop_reread_partitions(ptr noundef %16) #15
  br label %509

216:                                              ; preds = %181, %112, %96, %93, %72, %68
  %217 = phi i32 [ -6, %68 ], [ -22, %181 ], [ -22, %72 ], [ -22, %112 ], [ -22, %96 ], [ -9, %93 ]
  tail call void @mutex_unlock(ptr noundef %62) #15
  br i1 %61, label %218, label %220

218:                                              ; preds = %216, %60
  %219 = phi i32 [ %63, %60 ], [ %217, %216 ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %220

220:                                              ; preds = %218, %216, %66, %57
  %221 = phi i32 [ %63, %66 ], [ %217, %216 ], [ %58, %57 ], [ %219, %218 ]
  tail call void @fput(ptr noundef nonnull %41) #15
  br label %509

222:                                              ; preds = %4
  %223 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 23
  %224 = tail call i32 @mutex_lock_killable(ptr noundef %223) #15
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %509

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 10
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  tail call void @mutex_unlock(ptr noundef %223) #15
  br label %509

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 1
  %233 = load volatile i32, ptr %232, align 4
  %234 = icmp sgt i32 %233, 1
  br i1 %234, label %235, label %239

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 4
  %237 = load i32, ptr %236, align 8
  %238 = or i32 %237, 4
  store i32 %238, ptr %236, align 8
  tail call void @mutex_unlock(ptr noundef %223) #15
  br label %509

239:                                              ; preds = %231
  store i32 2, ptr %227, align 4
  tail call void @mutex_unlock(ptr noundef %223) #15
  tail call fastcc void @__loop_clr_fd(ptr noundef %16, i1 noundef zeroext false) #15
  br label %509

240:                                              ; preds = %4
  %241 = and i32 %1, 2
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %244, label %245, label %509

245:                                              ; preds = %243, %240
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %9) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %9, i8 0, i32 140, i1 false) #15, !annotation !28
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %10) #15
  %246 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 140, i32 -1090519040) #19, !srcloc !34
  %247 = extractvalue { i32, i32 } %246, 0
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %257, !prof !10

249:                                              ; preds = %245
  %250 = tail call ptr @llvm.thread.pointer() #15
  %251 = getelementptr inbounds %struct.thread_info, ptr %250, i32 0, i32 3
  %252 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %251) #9, !srcloc !35
  %253 = and i32 %252, -13
  %254 = or i32 %253, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %254) #15, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %255 = call i32 @arm_copy_from_user(ptr noundef nonnull %9, ptr noundef %17, i32 noundef 140) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %252) #15, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %261, label %257, !prof !10

257:                                              ; preds = %249, %245
  %258 = phi i32 [ %255, %249 ], [ 140, %245 ]
  %259 = sub i32 140, %258
  %260 = getelementptr i8, ptr %9, i32 %259
  call void @llvm.memset.p0.i32(ptr align 1 %260, i8 0, i32 %258, i1 false) #15
  br label %286

261:                                              ; preds = %249
  %262 = getelementptr inbounds i8, ptr %10, i32 40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(232) %262, i8 0, i32 192, i1 false) #15
  %263 = load i32, ptr %9, align 4
  store i32 %263, ptr %262, align 8
  %264 = getelementptr inbounds %struct.loop_info, ptr %9, i32 0, i32 1
  %265 = load i16, ptr %264, align 4
  %266 = zext i16 %265 to i64
  store i64 %266, ptr %10, align 8
  %267 = getelementptr inbounds %struct.loop_info, ptr %9, i32 0, i32 2
  %268 = load i32, ptr %267, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.loop_info64, ptr %10, i32 0, i32 1
  store i64 %269, ptr %270, align 8
  %271 = getelementptr inbounds %struct.loop_info, ptr %9, i32 0, i32 3
  %272 = load i16, ptr %271, align 4
  %273 = zext i16 %272 to i64
  %274 = getelementptr inbounds %struct.loop_info64, ptr %10, i32 0, i32 2
  store i64 %273, ptr %274, align 8
  %275 = getelementptr inbounds %struct.loop_info, ptr %9, i32 0, i32 4
  %276 = load i32, ptr %275, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.loop_info64, ptr %10, i32 0, i32 3
  store i64 %277, ptr %278, align 8
  %279 = getelementptr inbounds %struct.loop_info64, ptr %10, i32 0, i32 4
  store i64 0, ptr %279, align 8
  %280 = getelementptr inbounds %struct.loop_info, ptr %9, i32 0, i32 7
  %281 = load i32, ptr %280, align 4
  %282 = getelementptr inbounds %struct.loop_info64, ptr %10, i32 0, i32 8
  store i32 %281, ptr %282, align 4
  %283 = getelementptr inbounds %struct.loop_info64, ptr %10, i32 0, i32 9
  %284 = getelementptr inbounds %struct.loop_info, ptr %9, i32 0, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %283, ptr noundef align 4 dereferenceable(64) %284, i32 64, i1 false) #15
  %285 = call fastcc i32 @loop_set_status(ptr noundef %16, ptr noundef nonnull %10) #15
  br label %286

286:                                              ; preds = %261, %257
  %287 = phi i32 [ %285, %261 ], [ -14, %257 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %9) #15
  br label %509

288:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %8) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(232) %8, i8 0, i32 232, i1 false) #15, !annotation !28
  %289 = icmp eq i32 %3, 0
  br i1 %289, label %337, label %290

290:                                              ; preds = %288
  %291 = call fastcc i32 @loop_get_status(ptr noundef %16, ptr noundef nonnull %8) #15
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %337

293:                                              ; preds = %290
  %294 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(140) %294, i8 0, i32 136, i1 false) #15
  %295 = getelementptr inbounds %struct.loop_info64, ptr %8, i32 0, i32 5
  %296 = load i32, ptr %295, align 8
  store i32 %296, ptr %7, align 4
  %297 = load i64, ptr %8, align 8
  %298 = trunc i64 %297 to i16
  store i16 %298, ptr %294, align 4
  %299 = getelementptr inbounds %struct.loop_info64, ptr %8, i32 0, i32 1
  %300 = load i64, ptr %299, align 8
  %301 = trunc i64 %300 to i32
  %302 = getelementptr inbounds %struct.loop_info, ptr %7, i32 0, i32 2
  store i32 %301, ptr %302, align 4
  %303 = getelementptr inbounds %struct.loop_info64, ptr %8, i32 0, i32 2
  %304 = load i64, ptr %303, align 8
  %305 = trunc i64 %304 to i16
  %306 = getelementptr inbounds %struct.loop_info, ptr %7, i32 0, i32 3
  store i16 %305, ptr %306, align 4
  %307 = getelementptr inbounds %struct.loop_info64, ptr %8, i32 0, i32 3
  %308 = load i64, ptr %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = getelementptr inbounds %struct.loop_info, ptr %7, i32 0, i32 4
  store i32 %309, ptr %310, align 4
  %311 = getelementptr inbounds %struct.loop_info64, ptr %8, i32 0, i32 8
  %312 = load i32, ptr %311, align 4
  %313 = getelementptr inbounds %struct.loop_info, ptr %7, i32 0, i32 7
  store i32 %312, ptr %313, align 4
  %314 = getelementptr inbounds %struct.loop_info, ptr %7, i32 0, i32 8
  %315 = getelementptr inbounds %struct.loop_info64, ptr %8, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %314, ptr noundef align 8 dereferenceable(64) %315, i32 64, i1 false) #15
  %316 = icmp ult i64 %297, 65536
  %317 = icmp ult i64 %304, 65536
  %318 = select i1 %316, i1 %317, i1 false
  %319 = icmp ult i64 %300, 4294967296
  %320 = select i1 %318, i1 %319, i1 false
  %321 = sext i32 %309 to i64
  %322 = icmp eq i64 %308, %321
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %324, label %337

324:                                              ; preds = %293
  %325 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %17, i32 140, i32 -1090519040) #19, !srcloc !43
  %326 = extractvalue { i32, i32 } %325, 0
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %337

328:                                              ; preds = %324
  %329 = tail call ptr @llvm.thread.pointer() #15
  %330 = getelementptr inbounds %struct.thread_info, ptr %329, i32 0, i32 3
  %331 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %330) #9, !srcloc !35
  %332 = and i32 %331, -13
  %333 = or i32 %332, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %333) #15, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %334 = call i32 @arm_copy_to_user(ptr noundef nonnull %17, ptr noundef nonnull %7, i32 noundef 140) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %331) #15, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %335 = icmp eq i32 %334, 0
  %336 = select i1 %335, i32 0, i32 -14
  br label %337

337:                                              ; preds = %328, %324, %293, %290, %288
  %338 = phi i32 [ -22, %288 ], [ -75, %293 ], [ %291, %290 ], [ -14, %324 ], [ %336, %328 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %7) #15
  br label %509

339:                                              ; preds = %4
  %340 = and i32 %1, 2
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %343, label %344, label %509

344:                                              ; preds = %342, %339
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(232) %6, i8 0, i32 232, i1 false) #15, !annotation !28
  %345 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 232, i32 -1090519040) #19, !srcloc !34
  %346 = extractvalue { i32, i32 } %345, 0
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %356, !prof !10

348:                                              ; preds = %344
  %349 = tail call ptr @llvm.thread.pointer() #15
  %350 = getelementptr inbounds %struct.thread_info, ptr %349, i32 0, i32 3
  %351 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %350) #9, !srcloc !35
  %352 = and i32 %351, -13
  %353 = or i32 %352, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %353) #15, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %354 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %17, i32 noundef 232) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %351) #15, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %360, label %356, !prof !10

356:                                              ; preds = %348, %344
  %357 = phi i32 [ %354, %348 ], [ 232, %344 ]
  %358 = sub i32 232, %357
  %359 = getelementptr i8, ptr %6, i32 %358
  call void @llvm.memset.p0.i32(ptr align 1 %359, i8 0, i32 %357, i1 false) #15
  br label %362

360:                                              ; preds = %348
  %361 = call fastcc i32 @loop_set_status(ptr noundef %16, ptr noundef nonnull %6) #15
  br label %362

362:                                              ; preds = %360, %356
  %363 = phi i32 [ %361, %360 ], [ -14, %356 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %6) #15
  br label %509

364:                                              ; preds = %4
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(232) %5, i8 0, i32 232, i1 false) #15, !annotation !28
  %365 = icmp eq i32 %3, 0
  br i1 %365, label %382, label %366

366:                                              ; preds = %364
  %367 = call fastcc i32 @loop_get_status(ptr noundef %16, ptr noundef nonnull %5) #15
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %366
  %370 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %17, i32 232, i32 -1090519040) #19, !srcloc !43
  %371 = extractvalue { i32, i32 } %370, 0
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %382

373:                                              ; preds = %369
  %374 = tail call ptr @llvm.thread.pointer() #15
  %375 = getelementptr inbounds %struct.thread_info, ptr %374, i32 0, i32 3
  %376 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %375) #9, !srcloc !35
  %377 = and i32 %376, -13
  %378 = or i32 %377, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %378) #15, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %379 = call i32 @arm_copy_to_user(ptr noundef nonnull %17, ptr noundef nonnull %5, i32 noundef 232) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %376) #15, !srcloc !36
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !37
  %380 = icmp eq i32 %379, 0
  %381 = select i1 %380, i32 0, i32 -14
  br label %382

382:                                              ; preds = %373, %369, %366, %364
  %383 = phi i32 [ -22, %364 ], [ %367, %366 ], [ -14, %369 ], [ %381, %373 ]
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %5) #15
  br label %509

384:                                              ; preds = %4, %4, %4
  %385 = and i32 %1, 2
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %384
  %388 = tail call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %388, label %389, label %509

389:                                              ; preds = %387, %384, %4
  %390 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 23
  %391 = tail call i32 @mutex_lock_killable(ptr noundef %390) #15
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %509

393:                                              ; preds = %389
  switch i32 %2, label %507 [
    i32 19463, label %394
    i32 19464, label %444
    i32 19465, label %456
  ]

394:                                              ; preds = %393
  %395 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 10
  %396 = load i32, ptr %395, align 4
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %507, !prof !10

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 6
  %400 = load ptr, ptr %399, align 4
  %401 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 2
  %402 = load i64, ptr %401, align 8
  %403 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 3
  %404 = load i64, ptr %403, align 8
  %405 = getelementptr inbounds %struct.file, ptr %400, i32 0, i32 17
  %406 = load ptr, ptr %405, align 8
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr inbounds %struct.inode, ptr %407, i32 0, i32 22
  %409 = getelementptr inbounds %struct.inode, ptr %407, i32 0, i32 13
  br label %410

410:                                              ; preds = %418, %398
  %411 = load volatile i32, ptr %408, align 4
  %412 = and i32 %411, 1
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %414, %410
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !40
  %415 = load volatile i32, ptr %408, align 4
  %416 = and i32 %415, 1
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %414

418:                                              ; preds = %414, %410
  %419 = phi i32 [ %411, %410 ], [ %415, %414 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  %420 = load i64, ptr %409, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !42
  %421 = load volatile i32, ptr %408, align 4
  %422 = icmp eq i32 %421, %419
  br i1 %422, label %423, label %410

423:                                              ; preds = %418
  %424 = tail call i64 @llvm.smax.i64(i64 %402, i64 0) #15
  %425 = sub i64 %420, %424
  %426 = icmp slt i64 %425, 0
  br i1 %426, label %433, label %427

427:                                              ; preds = %423
  %428 = icmp sgt i64 %404, 0
  %429 = icmp sgt i64 %425, %404
  %430 = select i1 %428, i1 %429, i1 false
  %431 = select i1 %430, i64 %404, i64 %425
  %432 = lshr i64 %431, 9
  br label %433

433:                                              ; preds = %427, %423
  %434 = phi i64 [ %432, %427 ], [ 0, %423 ]
  %435 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 22
  %436 = load ptr, ptr %435, align 8
  %437 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %436, i64 noundef %434) #15
  br i1 %437, label %507, label %438

438:                                              ; preds = %433
  %439 = load ptr, ptr %435, align 8
  %440 = getelementptr inbounds %struct.gendisk, ptr %439, i32 0, i32 7
  %441 = load ptr, ptr %440, align 4
  %442 = getelementptr inbounds %struct.block_device, ptr %441, i32 0, i32 10
  %443 = tail call i32 @kobject_uevent(ptr noundef %442, i32 noundef 2) #15
  br label %507

444:                                              ; preds = %393
  %445 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 10
  %446 = load i32, ptr %445, align 4
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %454

448:                                              ; preds = %444
  %449 = icmp ne i32 %3, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %16, i1 noundef zeroext %449) #15
  %450 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 18
  %451 = load i8, ptr %450, align 8, !range !11
  %452 = zext i1 %449 to i8
  %453 = icmp eq i8 %451, %452
  br i1 %453, label %507, label %454

454:                                              ; preds = %448, %444
  %455 = phi i32 [ -6, %444 ], [ -22, %448 ]
  br label %507

456:                                              ; preds = %393
  %457 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 10
  %458 = load i32, ptr %457, align 4
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %507

460:                                              ; preds = %456
  %461 = add i32 %3, -512
  %462 = icmp ult i32 %461, 3585
  %463 = tail call i32 @llvm.ctpop.i32(i32 %3) #15, !range !9
  %464 = icmp ult i32 %463, 2
  %465 = and i1 %462, %464
  br i1 %465, label %466, label %507

466:                                              ; preds = %460
  %467 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 20
  %468 = load ptr, ptr %467, align 4
  %469 = getelementptr inbounds %struct.request_queue, ptr %468, i32 0, i32 32, i32 9
  %470 = load i32, ptr %469, align 4
  %471 = icmp eq i32 %470, %3
  br i1 %471, label %507, label %472

472:                                              ; preds = %466
  %473 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 7
  %474 = load ptr, ptr %473, align 8
  %475 = tail call i32 @sync_blockdev(ptr noundef %474) #15
  %476 = load ptr, ptr %473, align 8
  tail call void @invalidate_bdev(ptr noundef %476) #15
  %477 = load ptr, ptr %467, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %477) #15
  %478 = load ptr, ptr %473, align 8
  %479 = getelementptr inbounds %struct.block_device, ptr %478, i32 0, i32 7
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr inbounds %struct.inode, ptr %480, i32 0, i32 9
  %482 = load ptr, ptr %481, align 8
  %483 = getelementptr inbounds %struct.address_space, ptr %482, i32 0, i32 7
  %484 = load i32, ptr %483, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %490, label %486

486:                                              ; preds = %472
  %487 = load i32, ptr %16, align 8
  %488 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 5
  %489 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.loop_set_block_size, i32 noundef %487, ptr noundef %488, i32 noundef %484) #16
  br label %504

490:                                              ; preds = %472
  %491 = load ptr, ptr %467, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %491, i32 noundef %3) #15
  %492 = load ptr, ptr %467, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %492, i32 noundef %3) #15
  %493 = load ptr, ptr %467, align 4
  tail call void @blk_queue_io_min(ptr noundef %493, i32 noundef %3) #15
  %494 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 6
  %495 = load ptr, ptr %494, align 4
  %496 = getelementptr inbounds %struct.file, ptr %495, i32 0, i32 7
  %497 = load i32, ptr %496, align 4
  %498 = and i32 %497, 65536
  %499 = getelementptr inbounds %struct.loop_device, ptr %16, i32 0, i32 18
  %500 = load i8, ptr %499, align 8, !range !11
  %501 = zext i8 %500 to i32
  %502 = or i32 %498, %501
  %503 = icmp ne i32 %502, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %16, i1 noundef zeroext %503) #15
  br label %504

504:                                              ; preds = %490, %486
  %505 = phi i32 [ -11, %486 ], [ 0, %490 ]
  %506 = load ptr, ptr %467, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %506) #15
  br label %507

507:                                              ; preds = %504, %466, %460, %456, %454, %448, %438, %433, %394, %393
  %508 = phi i32 [ -22, %393 ], [ -6, %394 ], [ 0, %433 ], [ 0, %438 ], [ %455, %454 ], [ 0, %448 ], [ %505, %504 ], [ -6, %456 ], [ 0, %466 ], [ -22, %460 ]
  tail call void @mutex_unlock(ptr noundef %390) #15
  br label %509

509:                                              ; preds = %507, %389, %387, %382, %362, %342, %337, %286, %243, %239, %235, %230, %222, %220, %215, %214, %40, %38, %18
  %510 = phi i32 [ %383, %382 ], [ %338, %337 ], [ %39, %38 ], [ %19, %18 ], [ -1, %387 ], [ %363, %362 ], [ -1, %342 ], [ %287, %286 ], [ -1, %243 ], [ %221, %220 ], [ -9, %40 ], [ 0, %215 ], [ 0, %214 ], [ -6, %230 ], [ 0, %235 ], [ 0, %239 ], [ %224, %222 ], [ %508, %507 ], [ %391, %389 ]
  ret i32 %510
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__loop_clr_fd(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @loop_validate_mutex) #15
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  %5 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 23
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/block/loop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1115, 0\0A.popsection", ""() #15, !srcloc !44
  unreachable

10:                                               ; preds = %2
  tail call void @mutex_unlock(ptr noundef %5) #15
  %11 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.request_queue, ptr %12, i32 0, i32 11
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  tail call void @blk_queue_write_cache(ptr noundef %12, i1 noundef zeroext false, i1 noundef zeroext false) #15
  %18 = load ptr, ptr %11, align 4
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi ptr [ %18, %17 ], [ %12, %10 ]
  tail call void @blk_mq_freeze_queue(ptr noundef %20) #15
  %21 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 12
  %22 = load ptr, ptr %21, align 4
  tail call void @destroy_workqueue(ptr noundef %22) #15
  %23 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 11
  tail call void @_raw_spin_lock_irq(ptr noundef %23) #15
  %24 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %69, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 16
  br label %29

29:                                               ; preds = %67, %27
  %30 = phi ptr [ %25, %27 ], [ %32, %67 ]
  %31 = getelementptr i8, ptr %30, i32 -36
  %32 = load ptr, ptr %30, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %32, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  tail call void @rb_erase(ptr noundef %31, ptr noundef %28) #15
  %36 = getelementptr i8, ptr %30, i32 12
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56, !prof !10

47:                                               ; preds = %42
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %50 = inttoptr i32 %49 to ptr
  %51 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %50) #9, !srcloc !14
  %52 = add i32 %51, %44
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #15, !srcloc !15
  br label %66

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %37, i32 0, i32 2, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #15, !srcloc !17
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #15, !srcloc !18
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66, !prof !20

62:                                               ; preds = %56
  %63 = load ptr, ptr %57, align 4
  %64 = getelementptr inbounds %struct.percpu_ref_data, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef %43) #15
  br label %66

66:                                               ; preds = %62, %56, %47
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %67

67:                                               ; preds = %66, %29
  tail call void @kfree(ptr noundef %31) #15
  %68 = icmp eq ptr %32, %24
  br i1 %68, label %69, label %29

69:                                               ; preds = %67, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %70 = load i16, ptr %23, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %72 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 17
  %73 = tail call i32 @del_timer_sync(ptr noundef %72) #15
  %74 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %74) #15
  %75 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  store ptr null, ptr %75, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %77 = load i16, ptr %74, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %79 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 7
  store ptr null, ptr %79, align 8
  %80 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 2
  %81 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %81, i8 0, i32 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %80, i8 0, i64 16, i1 false)
  %82 = load ptr, ptr %11, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %82, i32 noundef 512) #15
  %83 = load ptr, ptr %11, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %83, i32 noundef 512) #15
  %84 = load ptr, ptr %11, align 4
  tail call void @blk_queue_io_min(ptr noundef %84, i32 noundef 512) #15
  %85 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 22
  %86 = load ptr, ptr %85, align 8
  tail call void @invalidate_disk(ptr noundef %86) #15
  %87 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 19
  %88 = load i8, ptr %87, align 1, !range !11
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %69
  %91 = load ptr, ptr %85, align 8
  %92 = getelementptr inbounds %struct.gendisk, ptr %91, i32 0, i32 7
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.block_device, ptr %93, i32 0, i32 10
  tail call void @sysfs_remove_group(ptr noundef %94, ptr noundef nonnull @loop_attribute_group) #15
  br label %95

95:                                               ; preds = %90, %69
  %96 = load ptr, ptr %85, align 8
  %97 = getelementptr inbounds %struct.gendisk, ptr %96, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 10
  %100 = tail call i32 @kobject_uevent(ptr noundef %99, i32 noundef 2) #15
  %101 = getelementptr inbounds %struct.file, ptr %76, i32 0, i32 17
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.address_space, ptr %102, i32 0, i32 3
  store i32 %4, ptr %103, align 4
  tail call void @module_put(ptr noundef null) #15
  %104 = load ptr, ptr %11, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %104) #15
  %105 = load ptr, ptr %85, align 8
  %106 = tail call zeroext i1 @disk_force_media_change(ptr noundef %105, i32 noundef 1) #15
  %107 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %95
  %112 = load ptr, ptr %85, align 8
  br i1 %1, label %113, label %115

113:                                              ; preds = %111
  %114 = tail call i32 @bdev_disk_changed(ptr noundef %112, i1 noundef zeroext false) #15
  br label %121

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.gendisk, ptr %112, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %116) #15
  %117 = load ptr, ptr %85, align 8
  %118 = tail call i32 @bdev_disk_changed(ptr noundef %117, i1 noundef zeroext false) #15
  %119 = load ptr, ptr %85, align 8
  %120 = getelementptr inbounds %struct.gendisk, ptr %119, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %120) #15
  br label %121

121:                                              ; preds = %115, %113
  %122 = phi i32 [ %114, %113 ], [ %118, %115 ]
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr %0, align 8
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.__loop_clr_fd, i32 noundef %125, i32 noundef %122) #16
  br label %127

127:                                              ; preds = %124, %121, %95
  store i32 0, ptr %107, align 8
  %128 = load i32, ptr @part_shift, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load ptr, ptr %85, align 8
  %132 = getelementptr inbounds %struct.gendisk, ptr %131, i32 0, i32 11
  %133 = load i32, ptr %132, align 4
  %134 = or i32 %133, 4
  store i32 %134, ptr %132, align 4
  br label %135

135:                                              ; preds = %130, %127
  tail call void @mutex_lock(ptr noundef %5) #15
  store i32 0, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #15
  tail call void @fput(ptr noundef %76) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_write_cache(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_physical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_io_min(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_disk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @disk_force_media_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bdev_disk_changed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_backing_file(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #3 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @file_path(ptr noundef nonnull %10, ptr noundef %2, i32 noundef 4095) #15
  br label %14

14:                                               ; preds = %12, %3
  %15 = phi ptr [ %13, %12 ], [ null, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %16 = load i16, ptr %8, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  %18 = icmp eq ptr %15, null
  %19 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = ptrtoint ptr %15 to i32
  br label %28

23:                                               ; preds = %14
  %24 = tail call i32 @strlen(ptr noundef nonnull %15) #15
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %2, ptr nonnull align 1 %15, i32 %24, i1 false) #15
  %25 = add i32 %24, 1
  %26 = getelementptr i8, ptr %2, i32 %24
  store i8 10, ptr %26, align 1
  %27 = getelementptr i8, ptr %2, i32 %25
  store i8 0, ptr %27, align 1
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %25, %23 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_offset(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i64 noundef %9) #15
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_sizelimit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i64 noundef %9) #15
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_autoclear(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @.str.15, ptr @.str.14
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull %12) #15
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_partscan(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @.str.15, ptr @.str.14
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull %12) #15
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_attr_do_show_dio(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr i8, ptr %0, i32 496
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.loop_device, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, ptr @.str.15, ptr @.str.14
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.13, ptr noundef nonnull %12) #15
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loop_configure(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #3 {
  %5 = load i32, ptr %3, align 8
  %6 = tail call ptr @fget(i32 noundef %5) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %245, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 17
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load i16, ptr %11, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, 24576
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -1048576
  %21 = icmp eq i32 %20, 7340032
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %17, %13, %8
  %24 = phi i32 [ 0, %13 ], [ 0, %8 ], [ %22, %17 ]
  %25 = icmp ne i32 %24, 0
  tail call void @__module_get(ptr noundef null) #15
  %26 = and i32 %1, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = tail call i32 @bd_prepare_to_claim(ptr noundef %2, ptr noundef nonnull @loop_configure) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %243

31:                                               ; preds = %28, %23
  br i1 %25, label %32, label %35

32:                                               ; preds = %31
  %33 = tail call i32 @mutex_lock_killable(ptr noundef nonnull @loop_validate_mutex) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %240

35:                                               ; preds = %32, %31
  %36 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 23
  %37 = tail call i32 @mutex_lock_killable(ptr noundef %36) #15
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %25, %38
  br i1 %39, label %238, label %40

40:                                               ; preds = %35
  %41 = icmp eq i32 %37, 0
  br i1 %41, label %42, label %240

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %236

46:                                               ; preds = %42
  %47 = load ptr, ptr %9, align 8
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %81, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 5
  br label %52

52:                                               ; preds = %74, %50
  %53 = phi ptr [ %48, %50 ], [ %79, %74 ]
  %54 = load i16, ptr %53, align 8
  %55 = and i16 %54, -4096
  %56 = icmp eq i16 %55, 24576
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 12
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -1048576
  %61 = icmp eq i32 %60, 7340032
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i32, ptr %51, align 4
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %236, label %65

65:                                               ; preds = %62
  %66 = tail call ptr @I_BDEV(ptr noundef nonnull %53) #15
  %67 = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 17
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.gendisk, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.loop_device, ptr %70, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %236

74:                                               ; preds = %65
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !38
  %75 = getelementptr inbounds %struct.loop_device, ptr %70, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.file, ptr %76, i32 0, i32 17
  %78 = load ptr, ptr %77, align 8
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %52

81:                                               ; preds = %74, %57, %52, %46
  %82 = load i16, ptr %48, align 8
  %83 = and i16 %82, -4096
  switch i16 %83, label %236 [
    i16 -32768, label %84
    i16 24576, label %84
  ]

84:                                               ; preds = %81, %81
  %85 = load ptr, ptr %9, align 8
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.loop_config, ptr %3, i32 0, i32 2
  %88 = getelementptr inbounds %struct.loop_config, ptr %3, i32 0, i32 2, i32 8
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -30
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %236

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.loop_config, ptr %3, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = add i32 %94, -512
  %98 = icmp ult i32 %97, 3585
  %99 = tail call i32 @llvm.ctpop.i32(i32 %94) #15, !range !9
  %100 = icmp ult i32 %99, 2
  %101 = and i1 %98, %100
  br i1 %101, label %102, label %236

102:                                              ; preds = %96, %92
  %103 = tail call fastcc i32 @loop_set_status_from_info(ptr noundef %0, ptr noundef %87)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %236

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 8
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %1, 2
  %109 = and i32 %108, %107
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.file_operations, ptr %113, i32 0, i32 5
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %111, %105
  %118 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  %119 = load i32, ptr %118, align 8
  %120 = or i32 %119, 1
  store i32 %120, ptr %118, align 8
  br label %121

121:                                              ; preds = %117, %111
  %122 = load i32, ptr %0, align 8
  %123 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 6, i32 noundef 0, i32 noundef %122) #15
  %124 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 12
  store ptr %123, ptr %124, align 4
  %125 = icmp eq ptr %123, null
  br i1 %125, label %236, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 22
  %128 = load ptr, ptr %127, align 8
  %129 = tail call zeroext i1 @disk_force_media_change(ptr noundef %128, i32 noundef 1) #15
  %130 = load ptr, ptr %127, align 8
  %131 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  tail call void @set_disk_ro(ptr noundef %130, i1 noundef zeroext %134) #15
  %135 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 13
  store i32 -32, ptr %135, align 8
  %136 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 13, i32 1
  store volatile ptr %136, ptr %136, align 4
  %137 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 13, i32 1, i32 1
  store ptr %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 13, i32 2
  store ptr @loop_rootcg_workfn, ptr %138, align 4
  %139 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 14
  store volatile ptr %139, ptr %139, align 4
  %140 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 14, i32 1
  store ptr %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 15
  store volatile ptr %141, ptr %141, align 4
  %142 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 15, i32 1
  store ptr %141, ptr %142, align 4
  %143 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 16
  store ptr null, ptr %143, align 8
  %144 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 17
  tail call void @init_timer_key(ptr noundef %144, ptr noundef nonnull @loop_free_idle_workers, i32 noundef 524288, ptr noundef null, ptr noundef null) #15
  %145 = load i32, ptr %131, align 8
  %146 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 18
  %147 = trunc i32 %145 to i8
  %148 = lshr i8 %147, 4
  %149 = and i8 %148, 1
  store i8 %149, ptr %146, align 8
  %150 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 7
  store ptr %2, ptr %150, align 8
  %151 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  store ptr %6, ptr %151, align 4
  %152 = getelementptr inbounds %struct.address_space, ptr %85, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 8
  store i32 %153, ptr %154, align 4
  %155 = and i32 %153, -193
  store i32 %155, ptr %152, align 4
  %156 = load i32, ptr %131, align 8
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %126
  %160 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.file_operations, ptr %161, i32 0, i32 17
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %167 = load ptr, ptr %166, align 4
  tail call void @blk_queue_write_cache(ptr noundef %167, i1 noundef zeroext true, i1 noundef zeroext false) #15
  br label %168

168:                                              ; preds = %165, %159, %126
  %169 = load i32, ptr %93, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %168
  %172 = load ptr, ptr %151, align 4
  %173 = getelementptr inbounds %struct.file, ptr %172, i32 0, i32 7
  %174 = load i32, ptr %173, align 4
  %175 = and i32 %174, 65536
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.inode, ptr %86, i32 0, i32 8
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.super_block, ptr %179, i32 0, i32 20
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %192, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.block_device, ptr %181, i32 0, i32 18
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.request_queue, ptr %185, i32 0, i32 32, i32 9
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, i32 512, i32 %189
  br label %192

192:                                              ; preds = %187, %183, %177, %171, %168
  %193 = phi i32 [ %169, %168 ], [ 512, %177 ], [ 512, %171 ], [ 512, %183 ], [ %191, %187 ]
  %194 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %195 = load ptr, ptr %194, align 4
  %196 = and i32 %193, 65535
  tail call void @blk_queue_logical_block_size(ptr noundef %195, i32 noundef %196) #15
  %197 = load ptr, ptr %194, align 4
  tail call void @blk_queue_physical_block_size(ptr noundef %197, i32 noundef %196) #15
  %198 = load ptr, ptr %194, align 4
  tail call void @blk_queue_io_min(ptr noundef %198, i32 noundef %196) #15
  tail call fastcc void @loop_config_discard(ptr noundef %0)
  tail call fastcc void @loop_update_rotational(ptr noundef %0)
  %199 = load ptr, ptr %151, align 4
  %200 = getelementptr inbounds %struct.file, ptr %199, i32 0, i32 7
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 65536
  %203 = load i8, ptr %146, align 8, !range !11
  %204 = zext i8 %203 to i32
  %205 = or i32 %202, %204
  %206 = icmp ne i32 %205, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %0, i1 noundef zeroext %206) #15
  %207 = load ptr, ptr %127, align 8
  %208 = getelementptr inbounds %struct.gendisk, ptr %207, i32 0, i32 7
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.block_device, ptr %209, i32 0, i32 10
  %211 = tail call i32 @sysfs_create_group(ptr noundef %210, ptr noundef nonnull @loop_attribute_group) #15
  %212 = icmp eq i32 %211, 0
  %213 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 19
  %214 = zext i1 %212 to i8
  store i8 %214, ptr %213, align 1
  %215 = tail call fastcc i64 @get_loop_size(ptr noundef %0, ptr noundef nonnull %6), !range !45
  tail call fastcc void @loop_set_size(ptr noundef %0, i64 noundef %215)
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !46
  tail call void @arm_heavy_mb() #15
  store i32 1, ptr %43, align 4
  %216 = load i32, ptr @part_shift, align 4
  %217 = icmp eq i32 %216, 0
  %218 = load i32, ptr %131, align 8
  br i1 %217, label %221, label %219

219:                                              ; preds = %192
  %220 = or i32 %218, 8
  store i32 %220, ptr %131, align 8
  br label %221

221:                                              ; preds = %219, %192
  %222 = phi i32 [ %220, %219 ], [ %218, %192 ]
  %223 = and i32 %222, 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %127, align 8
  %227 = getelementptr inbounds %struct.gendisk, ptr %226, i32 0, i32 11
  %228 = load i32, ptr %227, align 4
  %229 = and i32 %228, -5
  store i32 %229, ptr %227, align 4
  tail call void @mutex_unlock(ptr noundef %36) #15
  br i1 %25, label %230, label %231

230:                                              ; preds = %225
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %231

231:                                              ; preds = %230, %225
  tail call fastcc void @loop_reread_partitions(ptr noundef %0)
  br label %234

232:                                              ; preds = %221
  tail call void @mutex_unlock(ptr noundef %36) #15
  br i1 %25, label %233, label %234

233:                                              ; preds = %232
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %234

234:                                              ; preds = %233, %232, %231
  br i1 %27, label %235, label %245

235:                                              ; preds = %234
  tail call void @bd_abort_claiming(ptr noundef %2, ptr noundef nonnull @loop_configure) #15
  br label %245

236:                                              ; preds = %121, %102, %96, %84, %81, %65, %62, %42
  %237 = phi i32 [ -16, %42 ], [ %103, %102 ], [ -22, %84 ], [ -12, %121 ], [ -22, %81 ], [ -22, %96 ], [ -9, %62 ], [ -22, %65 ]
  tail call void @mutex_unlock(ptr noundef %36) #15
  br i1 %25, label %238, label %240

238:                                              ; preds = %236, %35
  %239 = phi i32 [ %37, %35 ], [ %237, %236 ]
  tail call void @mutex_unlock(ptr noundef nonnull @loop_validate_mutex) #15
  br label %240

240:                                              ; preds = %238, %236, %40, %32
  %241 = phi i32 [ %37, %40 ], [ %237, %236 ], [ %33, %32 ], [ %239, %238 ]
  br i1 %27, label %242, label %243

242:                                              ; preds = %240
  tail call void @bd_abort_claiming(ptr noundef %2, ptr noundef nonnull @loop_configure) #15
  br label %243

243:                                              ; preds = %242, %240, %28
  %244 = phi i32 [ %241, %240 ], [ %241, %242 ], [ %29, %28 ]
  tail call void @fput(ptr noundef nonnull %6) #15
  tail call void @module_put(ptr noundef null) #15
  br label %245

245:                                              ; preds = %243, %235, %234, %4
  %246 = phi i32 [ %244, %243 ], [ -9, %4 ], [ 0, %235 ], [ 0, %234 ]
  ret i32 %246
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bd_prepare_to_claim(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @loop_set_status_from_info(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = icmp ugt i32 %4, 32
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %26 [
    i32 0, label %13
    i32 1, label %9
    i32 18, label %11
  ]

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #16
  br label %26

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %26

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 2
  store i64 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 3
  store i64 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 5
  %21 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %20, ptr noundef align 8 dereferenceable(64) %21, i32 64, i1 false)
  %22 = getelementptr %struct.loop_device, ptr %0, i32 0, i32 5, i32 63
  store i8 0, ptr %22, align 1
  %23 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  store i32 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %13, %11, %9, %6, %2
  %27 = phi i32 [ -22, %11 ], [ -22, %9 ], [ 0, %13 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_disk_ro(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loop_rootcg_workfn(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -120
  %3 = getelementptr i8, ptr %0, i32 16
  tail call fastcc void @loop_process_work(ptr noundef null, ptr noundef %3, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loop_free_idle_workers(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -44
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #15
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %55, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  br label %8

8:                                                ; preds = %53, %6
  %9 = phi ptr [ %4, %6 ], [ %11, %53 ]
  %10 = getelementptr i8, ptr %9, i32 -36
  %11 = load ptr, ptr %9, align 4
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr i8, ptr %9, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, -6000
  %16 = sub i32 %15, %14
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %55, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %11, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @rb_erase(ptr noundef %10, ptr noundef %7) #15
  %22 = getelementptr i8, ptr %9, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %23, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %23, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !12
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42, !prof !10

33:                                               ; preds = %28
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !13
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #15
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #9, !srcloc !14
  %38 = add i32 %37, %30
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, -1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #15, !srcloc !15
  br label %52

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %23, i32 0, i32 2, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #15, !srcloc !17
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #15, !srcloc !18
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52, !prof !20

48:                                               ; preds = %42
  %49 = load ptr, ptr %43, align 4
  %50 = getelementptr inbounds %struct.percpu_ref_data, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %29) #15
  br label %52

52:                                               ; preds = %48, %42, %33
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !21
  br label %53

53:                                               ; preds = %52, %18
  tail call void @kfree(ptr noundef %10) #15
  %54 = icmp eq ptr %11, %3
  br i1 %54, label %55, label %8

55:                                               ; preds = %53, %8, %1
  %56 = load volatile ptr, ptr %3, align 4
  %57 = icmp eq ptr %56, %3
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = add i32 %59, 6000
  %61 = tail call i32 @timer_reduce(ptr noundef %0, i32 noundef %60) #15
  br label %62

62:                                               ; preds = %58, %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %63 = load i16, ptr %2, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !25
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !26
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @loop_config_discard(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = alloca %struct.kstatfs, align 8
  %3 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %7, align 8
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, 24576
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = tail call ptr @I_BDEV(ptr noundef %7) #15
  %15 = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 32, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 32, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 32, i32 8
  %24 = load i32, ptr %23, align 4
  br label %37

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.file_operations, ptr %27, i32 0, i32 27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i32 88, i1 false), !annotation !28
  %32 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 1
  %33 = call i32 @vfs_statfs(ptr noundef %32, ptr noundef nonnull %2) #15
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.kstatfs, ptr %2, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %2) #15
  br i1 %34, label %40, label %44

37:                                               ; preds = %22, %13
  %38 = phi i32 [ %24, %22 ], [ %20, %13 ]
  %39 = icmp eq i32 %18, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37, %31
  %41 = phi i32 [ %18, %37 ], [ 8388607, %31 ]
  %42 = phi i32 [ %38, %37 ], [ %36, %31 ]
  %43 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 18
  store i32 %42, ptr %43, align 4
  call void @blk_queue_max_discard_sectors(ptr noundef %9, i32 noundef %41) #15
  call void @blk_queue_max_write_zeroes_sectors(ptr noundef %9, i32 noundef %41) #15
  call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %9) #15
  br label %46

44:                                               ; preds = %37, %31, %25
  %45 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 18
  store i32 0, ptr %45, align 4
  call void @blk_queue_max_discard_sectors(ptr noundef %9, i32 noundef 0) #15
  call void @blk_queue_max_write_zeroes_sectors(ptr noundef %9, i32 noundef 0) #15
  call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %9) #15
  br label %46

46:                                               ; preds = %44, %40
  %47 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 19
  store i32 0, ptr %47, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @loop_update_rotational(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.request_queue, ptr %16, i32 0, i32 11
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 64
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %1
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %12) #15
  br label %23

22:                                               ; preds = %14
  tail call void @blk_queue_flag_clear(i32 noundef 6, ptr noundef %12) #15
  br label %23

23:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @get_loop_size(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 3
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 22
  %11 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  br label %12

12:                                               ; preds = %20, %2
  %13 = load volatile i32, ptr %10, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !40
  %17 = load volatile i32, ptr %10, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %13, %12 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  %22 = load i64, ptr %11, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !42
  %23 = load volatile i32, ptr %10, align 4
  %24 = icmp eq i32 %23, %21
  br i1 %24, label %25, label %12

25:                                               ; preds = %20
  %26 = tail call i64 @llvm.smax.i64(i64 %4, i64 0) #15
  %27 = sub i64 %22, %26
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = icmp sgt i64 %6, 0
  %31 = icmp sgt i64 %27, %6
  %32 = select i1 %30, i1 %31, i1 false
  %33 = select i1 %32, i64 %6, i64 %27
  %34 = lshr i64 %33, 9
  br label %35

35:                                               ; preds = %29, %25
  %36 = phi i64 [ %34, %29 ], [ 0, %25 ]
  ret i64 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @loop_set_size(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 22
  %4 = load ptr, ptr %3, align 8
  %5 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %4, i64 noundef %1) #15
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 10
  %11 = tail call i32 @kobject_uevent(ptr noundef %10, i32 noundef 2) #15
  br label %12

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @loop_reread_partitions(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = load ptr, ptr %2, align 8
  %6 = tail call i32 @bdev_disk_changed(ptr noundef %5, i1 noundef zeroext false) #15
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds %struct.gendisk, ptr %7, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %8) #15
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %0, align 8
  %12 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 5
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.loop_reread_partitions, i32 noundef %11, ptr noundef %12, i32 noundef %6) #16
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bd_abort_claiming(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @I_BDEV(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_statfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_write_zeroes_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__loop_update_dio(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 18
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 32, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %19, 65535
  %22 = select i1 %20, i32 512, i32 %21
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i32 [ 512, %13 ], [ %22, %17 ]
  %25 = add nsw i32 %24, -1
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi i32 [ %24, %23 ], [ 0, %2 ]
  %28 = phi i32 [ %25, %23 ], [ 0, %2 ]
  br i1 %1, label %29, label %54

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 32, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 512, i32 %35
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ 512, %29 ], [ %37, %33 ]
  %40 = icmp ult i32 %39, %27
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = zext i32 %28 to i64
  %45 = and i64 %43, %44
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.address_space_operations, ptr %49, i32 0, i32 12
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41, %38
  br label %54

54:                                               ; preds = %53, %47, %26
  %55 = phi i1 [ false, %53 ], [ true, %47 ], [ false, %26 ]
  %56 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 18
  %57 = load i8, ptr %56, align 8, !range !11
  %58 = zext i1 %55 to i8
  %59 = icmp eq i8 %57, %58
  br i1 %59, label %85, label %60

60:                                               ; preds = %54
  %61 = tail call i32 @vfs_fsync(ptr noundef %4, i32 noundef 0) #15
  %62 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %67 = load ptr, ptr %66, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %67) #15
  br label %68

68:                                               ; preds = %65, %60
  store i8 %58, ptr %56, align 8
  %69 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %70 = load ptr, ptr %69, align 4
  br i1 %55, label %71, label %75

71:                                               ; preds = %68
  tail call void @blk_queue_flag_clear(i32 noundef 3, ptr noundef %70) #15
  %72 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  %73 = load i32, ptr %72, align 8
  %74 = or i32 %73, 16
  store i32 %74, ptr %72, align 8
  br label %79

75:                                               ; preds = %68
  tail call void @blk_queue_flag_set(i32 noundef 3, ptr noundef %70) #15
  %76 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, -17
  store i32 %78, ptr %76, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, ptr %62, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %84 = load ptr, ptr %83, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %84) #15
  br label %85

85:                                               ; preds = %82, %79, %54
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @loop_set_status(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 23
  %4 = tail call i32 @mutex_lock_killable(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %147

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %129

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %24 = load ptr, ptr %23, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %24) #15
  br label %44

25:                                               ; preds = %16, %10
  %26 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @sync_blockdev(ptr noundef %27) #15
  %29 = load ptr, ptr %26, align 8
  tail call void @invalidate_bdev(ptr noundef %29) #15
  %30 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 20
  %31 = load ptr, ptr %30, align 4
  tail call void @blk_mq_freeze_queue(ptr noundef %31) #15
  %32 = load ptr, ptr %26, align 8
  %33 = getelementptr inbounds %struct.block_device, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 9
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.address_space, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %25
  %41 = load i32, ptr %0, align 8
  %42 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 5
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.loop_set_status, i32 noundef %41, ptr noundef %42, i32 noundef %38) #16
  br label %114

44:                                               ; preds = %25, %22
  %45 = phi ptr [ %30, %25 ], [ %23, %22 ]
  %46 = phi i1 [ true, %25 ], [ false, %22 ]
  %47 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 7
  %50 = load i32, ptr %49, align 8
  %51 = icmp ugt i32 %50, 32
  br i1 %51, label %114, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  switch i32 %54, label %114 [
    i32 0, label %59
    i32 1, label %55
    i32 18, label %57
  ]

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #16
  br label %114

57:                                               ; preds = %52
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #16
  br label %114

59:                                               ; preds = %52
  %60 = load i64, ptr %13, align 8
  store i64 %60, ptr %11, align 8
  %61 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 4
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 3
  store i64 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 5
  %65 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %64, ptr noundef align 8 dereferenceable(64) %65, i32 64, i1 false) #15
  %66 = getelementptr %struct.loop_device, ptr %0, i32 0, i32 5, i32 63
  store i8 0, ptr %66, align 1
  %67 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 12
  %70 = and i32 %48, -5
  %71 = or i32 %70, %69
  store i32 %71, ptr %47, align 8
  br i1 %46, label %72, label %118

72:                                               ; preds = %59
  %73 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.file, ptr %74, i32 0, i32 17
  %76 = load ptr, ptr %75, align 8
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 22
  %79 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 13
  br label %80

80:                                               ; preds = %88, %72
  %81 = load volatile i32, ptr %78, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %84, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !40
  %85 = load volatile i32, ptr %78, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %84

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %81, %80 ], [ %85, %84 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !41
  %90 = load i64, ptr %79, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !42
  %91 = load volatile i32, ptr %78, align 4
  %92 = icmp eq i32 %91, %89
  br i1 %92, label %93, label %80

93:                                               ; preds = %88
  %94 = tail call i64 @llvm.smax.i64(i64 %60, i64 0) #15
  %95 = sub i64 %90, %94
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = icmp sgt i64 %62, 0
  %99 = icmp sgt i64 %95, %62
  %100 = select i1 %98, i1 %99, i1 false
  %101 = select i1 %100, i64 %62, i64 %95
  %102 = lshr i64 %101, 9
  br label %103

103:                                              ; preds = %97, %93
  %104 = phi i64 [ %102, %97 ], [ 0, %93 ]
  %105 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 22
  %106 = load ptr, ptr %105, align 8
  %107 = tail call zeroext i1 @set_capacity_and_notify(ptr noundef %106, i64 noundef %104) #15
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr %105, align 8
  %110 = getelementptr inbounds %struct.gendisk, ptr %109, i32 0, i32 7
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.block_device, ptr %111, i32 0, i32 10
  %113 = tail call i32 @kobject_uevent(ptr noundef %112, i32 noundef 2) #15
  br label %118

114:                                              ; preds = %57, %55, %52, %44, %40
  %115 = phi ptr [ %30, %40 ], [ %45, %57 ], [ %45, %55 ], [ %45, %44 ], [ %45, %52 ]
  %116 = phi i32 [ -11, %40 ], [ -22, %57 ], [ -22, %55 ], [ -22, %44 ], [ -22, %52 ]
  %117 = load ptr, ptr %115, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %117) #15
  br label %129

118:                                              ; preds = %108, %103, %59
  tail call fastcc void @loop_config_discard(ptr noundef %0)
  %119 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 18
  %120 = load i8, ptr %119, align 8, !range !11
  %121 = icmp ne i8 %120, 0
  tail call fastcc void @__loop_update_dio(ptr noundef %0, i1 noundef zeroext %121)
  %122 = load ptr, ptr %45, align 4
  tail call void @blk_mq_unfreeze_queue(ptr noundef %122) #15
  %123 = load i32, ptr %47, align 8
  %124 = and i32 %123, 8
  %125 = icmp ne i32 %124, 0
  %126 = and i32 %48, 8
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %131, label %129

129:                                              ; preds = %118, %114, %6
  %130 = phi i32 [ %116, %114 ], [ -6, %6 ], [ 0, %118 ]
  tail call void @mutex_unlock(ptr noundef %3) #15
  br label %147

131:                                              ; preds = %118
  %132 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 22
  %133 = load ptr, ptr %132, align 8
  %134 = getelementptr inbounds %struct.gendisk, ptr %133, i32 0, i32 11
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, -5
  store i32 %136, ptr %134, align 4
  tail call void @mutex_unlock(ptr noundef %3) #15
  %137 = load ptr, ptr %132, align 8
  %138 = getelementptr inbounds %struct.gendisk, ptr %137, i32 0, i32 13
  tail call void @mutex_lock(ptr noundef %138) #15
  %139 = load ptr, ptr %132, align 8
  %140 = tail call i32 @bdev_disk_changed(ptr noundef %139, i1 noundef zeroext false) #15
  %141 = load ptr, ptr %132, align 8
  %142 = getelementptr inbounds %struct.gendisk, ptr %141, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %142) #15
  %143 = icmp eq i32 %140, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %131
  %145 = load i32, ptr %0, align 8
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.loop_reread_partitions, i32 noundef %145, ptr noundef %64, i32 noundef %140) #16
  br label %147

147:                                              ; preds = %144, %131, %129, %2
  %148 = phi i32 [ %4, %2 ], [ %130, %129 ], [ 0, %131 ], [ 0, %144 ]
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_blockdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @invalidate_bdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @loop_get_status(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 {
  %3 = alloca %struct.path, align 8
  %4 = alloca %struct.kstat, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i32 144, i1 false), !annotation !28
  %5 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 23
  %6 = tail call i32 @mutex_lock_killable(ptr noundef %5) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %59

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef %5) #15
  br label %59

13:                                               ; preds = %8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(232) %1, i8 0, i32 232, i1 false)
  %14 = load i32, ptr %0, align 8
  %15 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 5
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 3
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 4
  store i64 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 8
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 9
  %26 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(64) %25, ptr noundef align 4 dereferenceable(64) %26, i32 64, i1 false)
  %27 = getelementptr inbounds %struct.loop_device, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.file, ptr %28, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %3, align 8
  call void @path_get(ptr noundef nonnull %3) #15
  call void @mutex_unlock(ptr noundef %5) #15
  %31 = call i32 @vfs_getattr(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 256, i32 noundef 0) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %13
  %34 = getelementptr inbounds %struct.kstat, ptr %4, i32 0, i32 7
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 255
  %37 = lshr i32 %35, 12
  %38 = and i32 %37, 1048320
  %39 = or i32 %38, %36
  %40 = shl i32 %35, 12
  %41 = and i32 %40, -1048576
  %42 = or i32 %39, %41
  %43 = zext i32 %42 to i64
  store i64 %43, ptr %1, align 8
  %44 = getelementptr inbounds %struct.kstat, ptr %4, i32 0, i32 6
  %45 = load i64, ptr %44, align 8
  %46 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 1
  store i64 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.kstat, ptr %4, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 255
  %50 = lshr i32 %48, 12
  %51 = and i32 %50, 1048320
  %52 = or i32 %51, %49
  %53 = shl i32 %48, 12
  %54 = and i32 %53, -1048576
  %55 = or i32 %52, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.loop_info64, ptr %1, i32 0, i32 2
  store i64 %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %33, %13
  call void @path_put(ptr noundef nonnull %3) #15
  br label %59

59:                                               ; preds = %58, %12, %2
  %60 = phi i32 [ -6, %12 ], [ %31, %58 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_getattr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loop_probe(i32 noundef %0) #3 {
  %2 = and i32 %0, 1048575
  %3 = load i32, ptr @part_shift, align 4
  %4 = lshr i32 %2, %3
  %5 = load i32, ptr @max_loop, align 4
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i32 %4, %5
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @loop_add(i32 noundef %4)
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i8 0, i8 2}
!12 = !{i64 2149101782}
!13 = !{i64 504580, i64 504641}
!14 = !{i64 523280}
!15 = !{i64 507597}
!16 = !{i64 2148200967}
!17 = !{i64 598902, i64 2148088873, i64 2148088899, i64 2148088946, i64 2148088968, i64 2148088996, i64 2148089016}
!18 = !{i64 2148103329, i64 2148103361, i64 2148103390, i64 2148103424, i64 2148103455, i64 2148103478}
!19 = !{i64 2148201170}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2149101999}
!22 = !{i64 2148100288, i64 2148100314, i64 2148100343, i64 2148100377, i64 2148100408, i64 2148100431}
!23 = !{i64 2148983427}
!24 = !{i64 2148979251}
!25 = !{i64 2148979326, i64 2148979353, i64 2148979400, i64 2148979422, i64 2148979450, i64 2148979470}
!26 = !{i64 504825}
!27 = !{i64 2149007571}
!28 = !{!"auto-init"}
!29 = !{i64 2151415435}
!30 = !{i64 2151423052}
!31 = !{i64 2151431517}
!32 = !{i64 2151439828}
!33 = !{i64 2151448046}
!34 = !{i64 2151286765, i64 2151286790}
!35 = !{i64 3782877}
!36 = !{i64 3783074}
!37 = !{i64 2151268353}
!38 = !{i64 2153998902}
!39 = !{i64 2151565780}
!40 = !{i64 2151565622}
!41 = !{i64 2151565924}
!42 = !{i64 2149439003}
!43 = !{i64 2151287343, i64 2151287368}
!44 = !{i64 2154016264, i64 2154016750, i64 2154016301, i64 2154016357, i64 2154016391, i64 2154016415, i64 2154016456, i64 2154016477, i64 2154016505, i64 2154016539}
!45 = !{i64 0, i64 18014398509481984}
!46 = !{i64 2154015854}
