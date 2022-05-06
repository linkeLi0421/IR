; ModuleID = '/llk/IR/fs/coredump.c_pt.bc'
source_filename = "../fs/coredump.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_emit\22\09\09\09\09\09"
module asm "__kstrtabns_dump_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_skip_to:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_skip_to\22\09\09\09\09\09"
module asm "__kstrtabns_dump_skip_to:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_skip\22\09\09\09\09\09"
module asm "__kstrtabns_dump_skip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dump_align:\09\09\09\09\09"
module asm "\09.asciz \09\22dump_align\22\09\09\09\09\09"
module asm "__kstrtabns_dump_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.90, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.10 }
%struct.llist_node = type { ptr }
%union.anon.10 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.83 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.18 }
%union.anon.18 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.19 }
%union.anon.19 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.90 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.core_name = type { ptr, i32, i32 }
%struct.coredump_params = type { ptr, ptr, ptr, i32, i32, i64, i64, i64 }
%struct.path = type { ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.anon.11 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.73 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.73 = type { %struct.callback_head }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.94, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.95, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.96, ptr, %struct.address_space, %struct.list_head, %union.anon.97, i32, i32, ptr, ptr }
%union.anon.94 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.95 = type { %struct.callback_head }
%union.anon.96 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.97 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.21, ptr }
%union.anon.21 = type { i64 }
%struct.lockref = type { %union.anon.23 }
%union.anon.23 = type { i64 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
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
%struct.list_lru = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.pipe_inode_info = type { %struct.mutex, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.16, %union.anon.82, %struct.atomic_t }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.82 = type { %struct.atomic_t }
%struct.core_vma_metadata = type { i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.12, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }

@do_coredump.core_dump_count = internal global %struct.atomic_t zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"\014format_corename failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\014Aborting core\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\014Process %d(%s) has RLIMIT_CORE set to 1\0A\00", align 1
@core_pipe_limit = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\014Pid %d(%s) over core_pipe_limit\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"\014Skipping core dump\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\014%s failed to allocate memory\0A\00", align 1
@__func__.do_coredump = private unnamed_addr constant [12 x i8] c"do_coredump\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\016Core dump to |%s pipe failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"\014Pid %d(%s) can only dump core to fully qualified path!\0A\00", align 1
@init_task = external dso_local global %struct.task_struct, align 64
@do_coredump._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.8 = private unnamed_addr constant [55 x i8] c"\016Core dump to %s aborted: cannot preserve file owner\0A\00", align 1
@do_coredump._rs.9 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.10 = private unnamed_addr constant [61 x i8] c"\016Core dump to %s aborted: cannot preserve file permissions\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"\016Core dump to |%s disabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab_dump_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_emit to i32), ptr @__kstrtab_dump_emit, ptr @__kstrtabns_dump_emit }, section "___ksymtab+dump_emit", align 4
@__kstrtab_dump_skip_to = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_skip_to = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_skip_to = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_skip_to to i32), ptr @__kstrtab_dump_skip_to, ptr @__kstrtabns_dump_skip_to }, section "___ksymtab+dump_skip_to", align 4
@__kstrtab_dump_skip = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_skip = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_skip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_skip to i32), ptr @__kstrtab_dump_skip, ptr @__kstrtabns_dump_skip }, section "___ksymtab+dump_skip", align 4
@__kstrtab_dump_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_dump_align = external dso_local constant [0 x i8], align 1
@__ksymtab_dump_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dump_align to i32), ptr @__kstrtab_dump_align, ptr @__kstrtabns_dump_align }, section "___ksymtab+dump_align", align 4
@suid_dumpable = external dso_local local_unnamed_addr global i32, align 4
@core_pattern = internal global [128 x i8] c"core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.13 = private unnamed_addr constant [159 x i8] c"\014Unsafe core_pattern used with fs.suid_dumpable=2.\0APipe handler or fully qualified core dump path required.\0ASet kernel.core_pattern before fs.suid_dumpable.\0A\00", align 1
@__initcall__kmod_coredump__366_949_init_fs_coredump_sysctls5 = internal global ptr @init_fs_coredump_sysctls, section ".initcall5.init", align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"fs/coredump.c\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@core_name_size = internal unnamed_addr global i32 128, align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@uts_sem = external dso_local global %struct.rw_semaphore, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@core_uses_pid = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"%s (path unknown)\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__dump_skip.zeroes = internal global [4096 x i8] zeroinitializer, align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@coredump_sysctls = internal global [4 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.27, ptr @core_uses_pid, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr @core_pattern, i32 128, i16 420, ptr null, ptr @proc_dostring_coredump, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr @core_pipe_limit, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.26 = private unnamed_addr constant [17 x i8] c"coredump_sysctls\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"core_uses_pid\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"core_pattern\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"core_pipe_limit\00", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_coredump__366_949_init_fs_coredump_sysctls5, ptr @__ksymtab_dump_align, ptr @__ksymtab_dump_emit, ptr @__ksymtab_dump_skip, ptr @__ksymtab_dump_skip_to], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_coredump(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.core_state, align 4
  %3 = alloca %struct.core_name, align 4
  %4 = alloca %struct.coredump_params, align 8
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !9
  %6 = tail call ptr @llvm.thread.pointer() #18
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 37
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %9 = getelementptr inbounds i8, ptr %4, i32 16
  store i64 0, ptr %9, align 8, !annotation !9
  store ptr %0, ptr %4, align 8
  %10 = getelementptr inbounds %struct.coredump_params, ptr %4, i32 0, i32 1
  %11 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8112
  store ptr %13, ptr %10, align 4
  %14 = getelementptr inbounds %struct.coredump_params, ptr %4, i32 0, i32 2
  store ptr null, ptr %14, align 8
  %15 = getelementptr inbounds %struct.coredump_params, ptr %4, i32 0, i32 3
  %16 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 93
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 50, i32 4
  %19 = load volatile i32, ptr %18, align 8
  store i32 %19, ptr %15, align 4
  %20 = getelementptr inbounds %struct.coredump_params, ptr %4, i32 0, i32 4
  %21 = getelementptr inbounds %struct.anon.11, ptr %8, i32 0, i32 43
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.coredump_params, ptr %4, i32 0, i32 5
  %24 = getelementptr inbounds %struct.coredump_params, ptr %4, i32 0, i32 7
  %25 = getelementptr inbounds %struct.anon.11, ptr %8, i32 0, i32 41
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %519, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.linux_binfmt, ptr %26, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = and i32 %22, 3
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %519, label %35

35:                                               ; preds = %28
  %36 = tail call ptr @prepare_creds() #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %519, label %38

38:                                               ; preds = %35
  %39 = icmp eq i32 %32, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.cred, ptr %36, i32 0, i32 7
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, ptr %0, align 4
  %44 = getelementptr inbounds %struct.core_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.core_state, ptr %2, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %45, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #18
  %46 = getelementptr inbounds %struct.core_state, ptr %2, i32 0, i32 1
  store ptr %6, ptr %46, align 4
  %47 = getelementptr inbounds %struct.core_state, ptr %2, i32 0, i32 1, i32 1
  store ptr null, ptr %47, align 4
  %48 = load ptr, ptr %16, align 16
  %49 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 94
  %50 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %50) #18
  %51 = getelementptr inbounds %struct.signal_struct, ptr %48, i32 0, i32 12
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.signal_struct, ptr %48, i32 0, i32 10
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %97

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.signal_struct, ptr %48, i32 0, i32 13
  store ptr %2, ptr %60, align 4
  %61 = load ptr, ptr %16, align 16
  %62 = getelementptr inbounds %struct.signal_struct, ptr %61, i32 0, i32 12
  store i32 4, ptr %62, align 8
  %63 = load ptr, ptr %16, align 16
  %64 = getelementptr inbounds %struct.signal_struct, ptr %63, i32 0, i32 8
  store i32 %43, ptr %64, align 8
  %65 = load ptr, ptr %16, align 16
  %66 = getelementptr inbounds %struct.signal_struct, ptr %65, i32 0, i32 11
  store i32 0, ptr %66, align 4
  %67 = load ptr, ptr %16, align 16
  %68 = getelementptr inbounds %struct.signal_struct, ptr %67, i32 0, i32 3
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %92, label %71

71:                                               ; preds = %86, %59
  %72 = phi ptr [ %88, %86 ], [ %69, %59 ]
  %73 = phi i32 [ %87, %86 ], [ 0, %59 ]
  %74 = getelementptr i8, ptr %72, i32 -1388
  call void @task_clear_jobctl_pending(ptr noundef %74, i32 noundef 1703936) #18
  %75 = icmp eq ptr %74, %6
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = getelementptr i8, ptr %72, i32 -840
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = getelementptr i8, ptr %72, i32 268
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, 256
  store i32 %84, ptr %82, align 4
  call void @signal_wake_up_state(ptr noundef %74, i32 noundef 256) #18
  %85 = add i32 %73, 1
  br label %86

86:                                               ; preds = %81, %76, %71
  %87 = phi i32 [ %73, %76 ], [ %85, %81 ], [ %73, %71 ]
  %88 = load volatile ptr, ptr %72, align 4
  %89 = load ptr, ptr %16, align 16
  %90 = getelementptr inbounds %struct.signal_struct, ptr %89, i32 0, i32 3
  %91 = icmp eq ptr %88, %90
  br i1 %91, label %92, label %71

92:                                               ; preds = %86, %59
  %93 = phi i32 [ 0, %59 ], [ %87, %86 ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %6) #18
  %94 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %95, 512
  store i32 %96, ptr %94, align 4
  store volatile i32 %93, ptr %2, align 4
  br label %97

97:                                               ; preds = %92, %55, %42
  %98 = phi i32 [ -11, %42 ], [ -11, %55 ], [ %93, %92 ]
  %99 = load ptr, ptr %49, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %100 = load i16, ptr %99, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %99, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %102 = icmp sgt i32 %98, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 4
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %105, 1073741824
  store i32 %106, ptr %104, align 4
  call void @wait_for_completion(ptr noundef %44) #18
  %107 = load i32, ptr %104, align 4
  %108 = and i32 %107, -1073741825
  store i32 %108, ptr %104, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !15
  %109 = load volatile i32, ptr @system_freezing_cnt, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111, !prof !16

111:                                              ; preds = %103
  %112 = call zeroext i1 @freezing_slow_path(ptr noundef %6) #18
  br i1 %112, label %113, label %115, !prof !17

113:                                              ; preds = %111
  %114 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #18
  br label %115

115:                                              ; preds = %113, %111, %103
  %116 = load ptr, ptr %47, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %127, label %118

118:                                              ; preds = %118, %115
  %119 = phi ptr [ %123, %118 ], [ %116, %115 ]
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @wait_task_inactive(ptr noundef %120, i32 noundef 0) #18
  %122 = getelementptr inbounds %struct.core_thread, ptr %119, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %118

125:                                              ; preds = %118, %97
  %126 = icmp slt i32 %98, 0
  br i1 %126, label %514, label %127

127:                                              ; preds = %125, %115
  %128 = call ptr @override_creds(ptr noundef nonnull %36) #18
  %129 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %130 = load ptr, ptr %129, align 8
  %131 = load i8, ptr @core_pattern, align 1
  %132 = icmp eq i8 %131, 124
  %133 = getelementptr inbounds %struct.core_name, ptr %3, i32 0, i32 1
  store i32 0, ptr %133, align 4
  store ptr null, ptr %3, align 4
  %134 = load i32, ptr @core_name_size, align 4
  %135 = call noalias ptr @krealloc(ptr noundef null, i32 noundef %134, i32 noundef 3264) #19
  %136 = icmp eq ptr %135, null
  br i1 %136, label %279, label %137

137:                                              ; preds = %127
  %138 = load i32, ptr @core_name_size, align 4
  %139 = icmp slt i32 %138, %134
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 %134, ptr @core_name_size, align 4
  br label %141

141:                                              ; preds = %140, %137
  %142 = call i32 @ksize(ptr noundef nonnull %135) #18
  %143 = getelementptr inbounds %struct.core_name, ptr %3, i32 0, i32 2
  store i32 %142, ptr %143, align 4
  store ptr %135, ptr %3, align 4
  store i8 0, ptr %135, align 1
  br i1 %132, label %144, label %151

144:                                              ; preds = %141
  %145 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %146 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %145, i32 noundef 3264, i32 noundef 256) #20
  %147 = icmp eq ptr %146, null
  br i1 %147, label %279, label %148

148:                                              ; preds = %144
  store i32 0, ptr %146, align 8
  %149 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @core_pattern, i32 0, i32 1), align 1
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %279, label %151

151:                                              ; preds = %148, %141
  %152 = phi ptr [ %146, %148 ], [ null, %141 ]
  %153 = phi i32 [ 1, %148 ], [ 0, %141 ]
  %154 = phi ptr [ getelementptr inbounds ([128 x i8], ptr @core_pattern, i32 0, i32 1), %148 ], [ @core_pattern, %141 ]
  %155 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 85
  %156 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 92
  %157 = getelementptr inbounds %struct.cred, ptr %130, i32 0, i32 2
  %158 = getelementptr inbounds %struct.cred, ptr %130, i32 0, i32 1
  %159 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 52
  %160 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 53
  br label %161

161:                                              ; preds = %257, %151
  %162 = phi i32 [ %153, %151 ], [ %194, %257 ]
  %163 = phi ptr [ %154, %151 ], [ %258, %257 ]
  %164 = phi i32 [ 0, %151 ], [ %259, %257 ]
  %165 = load i8, ptr %163, align 1
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %262, label %167

167:                                              ; preds = %161
  %168 = load i32, ptr %133, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %132, label %170, label %193

170:                                              ; preds = %179, %167
  %171 = phi i8 [ %182, %179 ], [ %165, %167 ]
  %172 = phi i1 [ %180, %179 ], [ false, %167 ]
  %173 = phi ptr [ %181, %179 ], [ %163, %167 ]
  %174 = zext i8 %171 to i32
  %175 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %174
  %176 = load i8, ptr %175, align 1
  %177 = and i8 %176, 32
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %170
  %180 = select i1 %169, i1 true, i1 %172
  %181 = getelementptr i8, ptr %173, i32 1
  %182 = load i8, ptr %181, align 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %285, label %170

184:                                              ; preds = %170
  br i1 %172, label %185, label %193

185:                                              ; preds = %184
  %186 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, i32 noundef 0) #18
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %275

188:                                              ; preds = %185
  %189 = load i32, ptr %133, align 4
  %190 = add i32 %162, 1
  %191 = getelementptr i32, ptr %152, i32 %162
  store i32 %189, ptr %191, align 4
  %192 = load i8, ptr %173, align 1
  br label %193

193:                                              ; preds = %188, %184, %167
  %194 = phi i32 [ %190, %188 ], [ %162, %184 ], [ %162, %167 ]
  %195 = phi ptr [ %173, %188 ], [ %173, %184 ], [ %163, %167 ]
  %196 = phi i8 [ %192, %188 ], [ %171, %184 ], [ %165, %167 ]
  %197 = icmp eq i8 %196, 37
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = zext i8 %196 to i32
  %200 = getelementptr i8, ptr %195, i32 1
  %201 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, i32 noundef %199) #18
  br label %257

202:                                              ; preds = %193
  %203 = getelementptr i8, ptr %195, i32 1
  %204 = load i8, ptr %203, align 1
  switch i8 %204, label %253 [
    i8 0, label %262
    i8 37, label %205
    i8 112, label %207
    i8 80, label %210
    i8 105, label %213
    i8 73, label %216
    i8 117, label %219
    i8 103, label %222
    i8 100, label %225
    i8 115, label %229
    i8 116, label %233
    i8 104, label %236
    i8 101, label %242
    i8 102, label %244
    i8 69, label %246
    i8 99, label %248
  ]

205:                                              ; preds = %202
  %206 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.16, i32 noundef 37) #18
  br label %253

207:                                              ; preds = %202
  %208 = call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 1, ptr noundef null) #18
  %209 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef %208) #18
  br label %253

210:                                              ; preds = %202
  %211 = load i32, ptr %160, align 4
  %212 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef %211) #18
  br label %253

213:                                              ; preds = %202
  %214 = call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 0, ptr noundef null) #18
  %215 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef %214) #18
  br label %253

216:                                              ; preds = %202
  %217 = load i32, ptr %159, align 8
  %218 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef %217) #18
  br label %253

219:                                              ; preds = %202
  %220 = load i32, ptr %158, align 4
  %221 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef %220) #18
  br label %253

222:                                              ; preds = %202
  %223 = load i32, ptr %157, align 4
  %224 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.18, i32 noundef %223) #18
  br label %253

225:                                              ; preds = %202
  %226 = load i32, ptr %20, align 8
  %227 = and i32 %226, 3
  %228 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef %227) #18
  br label %253

229:                                              ; preds = %202
  %230 = load ptr, ptr %4, align 8
  %231 = load i32, ptr %230, align 4
  %232 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.17, i32 noundef %231) #18
  br label %253

233:                                              ; preds = %202
  %234 = call i64 @ktime_get_real_seconds() #18
  %235 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, i64 noundef %234) #18
  br label %253

236:                                              ; preds = %202
  call void @down_read(ptr noundef nonnull @uts_sem) #18
  %237 = load ptr, ptr %156, align 4
  %238 = getelementptr inbounds %struct.nsproxy, ptr %237, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.new_utsname, ptr %239, i32 0, i32 1
  %241 = call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.20, ptr noundef %240) #18
  call void @up_read(ptr noundef nonnull @uts_sem) #18
  br label %253

242:                                              ; preds = %202
  %243 = call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.20, ptr noundef %155) #18
  br label %253

244:                                              ; preds = %202
  %245 = call fastcc i32 @cn_print_exe_file(ptr noundef nonnull %3, i1 noundef zeroext true) #18
  br label %253

246:                                              ; preds = %202
  %247 = call fastcc i32 @cn_print_exe_file(ptr noundef nonnull %3, i1 noundef zeroext false) #18
  br label %253

248:                                              ; preds = %202
  %249 = load ptr, ptr %16, align 16
  %250 = getelementptr %struct.signal_struct, ptr %249, i32 0, i32 50, i32 4
  %251 = load volatile i32, ptr %250, align 8
  %252 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.21, i32 noundef %251) #18
  br label %253

253:                                              ; preds = %248, %246, %244, %242, %236, %233, %229, %225, %222, %219, %216, %213, %210, %207, %205, %202
  %254 = phi i32 [ %164, %202 ], [ %164, %248 ], [ %164, %246 ], [ %164, %244 ], [ %164, %242 ], [ %164, %236 ], [ %164, %233 ], [ %164, %229 ], [ %164, %225 ], [ %164, %222 ], [ %164, %219 ], [ %164, %216 ], [ %164, %213 ], [ %164, %210 ], [ 1, %207 ], [ %164, %205 ]
  %255 = phi i32 [ 0, %202 ], [ %252, %248 ], [ %247, %246 ], [ %245, %244 ], [ %243, %242 ], [ %241, %236 ], [ %235, %233 ], [ %232, %229 ], [ %228, %225 ], [ %224, %222 ], [ %221, %219 ], [ %218, %216 ], [ %215, %213 ], [ %212, %210 ], [ %209, %207 ], [ %206, %205 ]
  %256 = getelementptr i8, ptr %195, i32 2
  br label %257

257:                                              ; preds = %253, %198
  %258 = phi ptr [ %200, %198 ], [ %256, %253 ]
  %259 = phi i32 [ %164, %198 ], [ %254, %253 ]
  %260 = phi i32 [ %201, %198 ], [ %255, %253 ]
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %161, label %275

262:                                              ; preds = %202, %161
  %263 = phi i32 [ %162, %161 ], [ %194, %202 ]
  %264 = icmp eq i32 %164, 0
  %265 = xor i1 %132, true
  %266 = select i1 %265, i1 %264, i1 false
  %267 = load i32, ptr @core_uses_pid, align 4
  %268 = icmp ne i32 %267, 0
  %269 = select i1 %266, i1 %268, i1 false
  br i1 %269, label %270, label %274

270:                                              ; preds = %262
  %271 = call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 1, ptr noundef null) #18
  %272 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.22, i32 noundef %271) #18
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %270, %262
  br i1 %132, label %285, label %341

275:                                              ; preds = %270, %257, %185
  %276 = phi i32 [ %263, %270 ], [ %194, %257 ], [ %162, %185 ]
  %277 = phi i32 [ %272, %270 ], [ %260, %257 ], [ %186, %185 ]
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %275, %148, %144, %127
  %280 = phi ptr [ %152, %275 ], [ null, %127 ], [ null, %144 ], [ %146, %148 ]
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #21
  %282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #21
  call void @kfree(ptr noundef %280) #18
  %283 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %283) #18
  %284 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %284) #18
  br label %496

285:                                              ; preds = %275, %274, %179
  %286 = phi i32 [ %276, %275 ], [ %263, %274 ], [ %162, %179 ]
  %287 = load i32, ptr %15, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %295

289:                                              ; preds = %285
  %290 = call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 1, ptr noundef null) #18
  %291 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %290, ptr noundef %155) #21
  %292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #21
  call void @kfree(ptr noundef %152) #18
  %293 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %293) #18
  %294 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %294) #18
  br label %496

295:                                              ; preds = %285
  store i32 -1, ptr %15, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @do_coredump.core_dump_count) #18, !srcloc !19
  %296 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @do_coredump.core_dump_count, ptr nonnull @do_coredump.core_dump_count, i32 1, ptr nonnull elementtype(i32) @do_coredump.core_dump_count) #18, !srcloc !20
  %297 = extractvalue { i32, i32 } %296, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !21
  %298 = load i32, ptr @core_pipe_limit, align 4
  %299 = icmp ne i32 %298, 0
  %300 = icmp ult i32 %298, %297
  %301 = select i1 %299, i1 %300, i1 false
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 1, ptr noundef null) #18
  %304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %303, ptr noundef %155) #21
  %305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  br label %470

306:                                              ; preds = %295
  %307 = add i32 %286, 1
  %308 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %307, i32 4) #18
  %309 = extractvalue { i32, i1 } %308, 1
  br i1 %309, label %318, label %310, !prof !17

310:                                              ; preds = %306
  %311 = extractvalue { i32, i1 } %308, 0
  %312 = call noalias align 64 ptr @__kmalloc(i32 noundef %311, i32 noundef 3264) #22
  %313 = icmp eq ptr %312, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %310
  %315 = icmp sgt i32 %286, 0
  br i1 %315, label %316, label %328

316:                                              ; preds = %314
  %317 = load ptr, ptr %3, align 4
  br label %320

318:                                              ; preds = %310, %306
  %319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.do_coredump) #21
  br label %470

320:                                              ; preds = %320, %316
  %321 = phi i32 [ 0, %316 ], [ %326, %320 ]
  %322 = getelementptr i32, ptr %152, i32 %321
  %323 = load i32, ptr %322, align 4
  %324 = getelementptr i8, ptr %317, i32 %323
  %325 = getelementptr ptr, ptr %312, i32 %321
  store ptr %324, ptr %325, align 4
  %326 = add nuw nsw i32 %321, 1
  %327 = icmp eq i32 %326, %286
  br i1 %327, label %328, label %320

328:                                              ; preds = %320, %314
  %329 = phi i32 [ 0, %314 ], [ %286, %320 ]
  %330 = getelementptr ptr, ptr %312, i32 %329
  store ptr null, ptr %330, align 4
  %331 = load ptr, ptr %312, align 64
  %332 = call ptr @call_usermodehelper_setup(ptr noundef %331, ptr noundef nonnull %312, ptr noundef null, i32 noundef 3264, ptr noundef nonnull @umh_pipe_setup, ptr noundef null, ptr noundef nonnull %4) #18
  %333 = icmp eq ptr %332, null
  br i1 %333, label %337, label %334

334:                                              ; preds = %328
  %335 = call i32 @call_usermodehelper_exec(ptr noundef nonnull %332, i32 noundef 1) #18
  %336 = icmp eq i32 %335, 0
  call void @kfree(ptr noundef nonnull %312) #18
  br i1 %336, label %423, label %338

337:                                              ; preds = %328
  call void @kfree(ptr noundef nonnull %312) #18
  br label %338

338:                                              ; preds = %337, %334
  %339 = load ptr, ptr %3, align 4
  %340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %339) #21
  br label %454

341:                                              ; preds = %274
  %342 = load i32, ptr %15, align 4
  %343 = getelementptr inbounds %struct.linux_binfmt, ptr %26, i32 0, i32 5
  %344 = load i32, ptr %343, align 4
  %345 = icmp ult i32 %342, %344
  br i1 %345, label %487, label %346

346:                                              ; preds = %341
  %347 = load ptr, ptr %3, align 4
  br i1 %39, label %348, label %357

348:                                              ; preds = %346
  %349 = load i8, ptr %347, align 1
  %350 = icmp eq i8 %349, 47
  br i1 %350, label %362, label %351

351:                                              ; preds = %348
  %352 = call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 1, ptr noundef null) #18
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %352, ptr noundef %155) #21
  %354 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  call void @kfree(ptr noundef %152) #18
  %355 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %355) #18
  %356 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %356) #18
  br label %496

357:                                              ; preds = %346
  %358 = call ptr @getname_kernel(ptr noundef %347) #18
  %359 = call i32 @do_unlinkat(i32 noundef -100, ptr noundef %358) #18
  %360 = load ptr, ptr %3, align 4
  %361 = call ptr @filp_open(ptr noundef %360, i32 noundef 164034, i16 noundef zeroext 384) #18
  store ptr %361, ptr %14, align 8
  br label %368

362:                                              ; preds = %348
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store i64 0, ptr %5, align 8, !annotation !9
  call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107)) #18
  %363 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 89), align 64
  call fastcc void @get_fs_root(ptr noundef %363, ptr noundef nonnull %5)
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %364 = load i16, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107), align 16
  %365 = add i16 %364, 1
  store i16 %365, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107), align 16
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  %366 = load ptr, ptr %3, align 4
  %367 = call ptr @file_open_root(ptr noundef nonnull %5, ptr noundef %366, i32 noundef 164034, i16 noundef zeroext 384) #18
  store ptr %367, ptr %14, align 8
  call void @path_put(ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %368

368:                                              ; preds = %362, %357
  %369 = phi ptr [ %361, %357 ], [ %367, %362 ]
  %370 = icmp ugt ptr %369, inttoptr (i32 -4096 to ptr)
  br i1 %370, label %490, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.file, ptr %369, i32 0, i32 2
  %373 = load ptr, ptr %372, align 8
  %374 = getelementptr inbounds %struct.inode, ptr %373, i32 0, i32 11
  %375 = load i32, ptr %374, align 8
  %376 = icmp ugt i32 %375, 1
  br i1 %376, label %454, label %377

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.file, ptr %369, i32 0, i32 1, i32 1
  %379 = load ptr, ptr %378, align 4
  %380 = getelementptr inbounds %struct.dentry, ptr %379, i32 0, i32 2, i32 1
  %381 = load ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, null
  br i1 %382, label %454, label %383

383:                                              ; preds = %377
  %384 = load i16, ptr %373, align 8
  %385 = and i16 %384, -4096
  %386 = icmp eq i16 %385, -32768
  br i1 %386, label %387, label %454

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.file, ptr %369, i32 0, i32 1
  %389 = load ptr, ptr %388, align 8
  %390 = getelementptr inbounds %struct.vfsmount, ptr %389, i32 0, i32 3
  %391 = load volatile ptr, ptr %390, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !23
  %392 = getelementptr inbounds %struct.inode, ptr %373, i32 0, i32 2
  %393 = load i32, ptr %392, align 4
  %394 = load ptr, ptr %129, align 8
  %395 = getelementptr inbounds %struct.cred, ptr %394, i32 0, i32 7
  %396 = load i32, ptr %395, align 4
  %397 = icmp eq i32 %393, %396
  br i1 %397, label %404, label %398

398:                                              ; preds = %387
  %399 = call i32 @___ratelimit(ptr noundef nonnull @do_coredump._rs, ptr noundef nonnull @__func__.do_coredump) #18
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %454, label %401

401:                                              ; preds = %398
  %402 = load ptr, ptr %3, align 4
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %402) #21
  br label %454

404:                                              ; preds = %387
  %405 = load i16, ptr %373, align 8
  %406 = and i16 %405, 447
  %407 = icmp eq i16 %406, 384
  br i1 %407, label %414, label %408

408:                                              ; preds = %404
  %409 = call i32 @___ratelimit(ptr noundef nonnull @do_coredump._rs.9, ptr noundef nonnull @__func__.do_coredump) #18
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %454, label %411

411:                                              ; preds = %408
  %412 = load ptr, ptr %3, align 4
  %413 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %412) #21
  br label %454

414:                                              ; preds = %404
  %415 = getelementptr inbounds %struct.file, ptr %369, i32 0, i32 8
  %416 = load i32, ptr %415, align 8
  %417 = and i32 %416, 262144
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %459, label %419

419:                                              ; preds = %414
  %420 = load ptr, ptr %378, align 4
  %421 = call i32 @do_truncate(ptr noundef %391, ptr noundef %420, i64 noundef 0, i32 noundef 0, ptr noundef %369) #18
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %454

423:                                              ; preds = %419, %334
  %424 = phi i1 [ false, %419 ], [ true, %334 ]
  %425 = call i32 @unshare_files() #18
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %454

427:                                              ; preds = %423
  %428 = call fastcc zeroext i1 @dump_interrupted()
  br i1 %428, label %447, label %429

429:                                              ; preds = %427
  %430 = load ptr, ptr %14, align 8
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load ptr, ptr %3, align 4
  %434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %433) #21
  br label %454

435:                                              ; preds = %429
  call fastcc void @file_start_write(ptr noundef nonnull %430)
  %436 = load ptr, ptr %29, align 4
  %437 = call i32 %436(ptr noundef nonnull %4) #18
  %438 = icmp ne i32 %437, 0
  %439 = zext i1 %438 to i8
  %440 = load i64, ptr %24, align 8
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %435
  %443 = add i64 %440, -1
  store i64 %443, ptr %24, align 8
  %444 = call i32 @dump_emit(ptr noundef nonnull %4, ptr noundef nonnull @.str.12, i32 noundef 1)
  br label %445

445:                                              ; preds = %442, %435
  %446 = load ptr, ptr %14, align 8
  call fastcc void @file_end_write(ptr noundef %446)
  br label %447

447:                                              ; preds = %445, %427
  %448 = phi i8 [ 0, %427 ], [ %439, %445 ]
  %449 = load i32, ptr @core_pipe_limit, align 4
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %424, i1 %450, i1 false
  br i1 %451, label %452, label %454

452:                                              ; preds = %447
  %453 = load ptr, ptr %14, align 8
  call fastcc void @wait_for_dump_helpers(ptr noundef %453)
  br label %454

454:                                              ; preds = %452, %447, %432, %423, %419, %411, %408, %401, %398, %383, %377, %371, %338
  %455 = phi i1 [ false, %419 ], [ false, %408 ], [ false, %411 ], [ false, %398 ], [ false, %401 ], [ false, %383 ], [ false, %377 ], [ false, %371 ], [ %424, %432 ], [ %424, %447 ], [ true, %452 ], [ %424, %423 ], [ true, %338 ]
  %456 = phi i8 [ 0, %419 ], [ 0, %408 ], [ 0, %411 ], [ 0, %398 ], [ 0, %401 ], [ 0, %383 ], [ 0, %377 ], [ 0, %371 ], [ 0, %432 ], [ %448, %447 ], [ %448, %452 ], [ 0, %423 ], [ 0, %338 ]
  %457 = load ptr, ptr %14, align 8
  %458 = icmp eq ptr %457, null
  br i1 %458, label %468, label %465

459:                                              ; preds = %414
  %460 = icmp eq ptr %369, null
  br i1 %460, label %493, label %461

461:                                              ; preds = %459
  %462 = call i32 @filp_close(ptr noundef nonnull %369, ptr noundef null) #18
  call void @kfree(ptr noundef %152) #18
  %463 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %463) #18
  %464 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %464) #18
  br label %496

465:                                              ; preds = %454
  %466 = call i32 @filp_close(ptr noundef nonnull %457, ptr noundef null) #18
  %467 = icmp ne i8 %456, 0
  br i1 %455, label %470, label %473

468:                                              ; preds = %454
  %469 = icmp ne i8 %456, 0
  br i1 %455, label %470, label %473

470:                                              ; preds = %468, %465, %318, %302
  %471 = phi i1 [ %467, %465 ], [ %469, %468 ], [ false, %302 ], [ false, %318 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @do_coredump.core_dump_count) #18, !srcloc !19
  %472 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @do_coredump.core_dump_count, ptr nonnull @do_coredump.core_dump_count, i32 1, ptr nonnull elementtype(i32) @do_coredump.core_dump_count) #18, !srcloc !24
  br label %473

473:                                              ; preds = %470, %468, %465
  %474 = phi i1 [ %471, %470 ], [ %469, %468 ], [ %467, %465 ]
  call void @kfree(ptr noundef %152) #18
  %475 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %475) #18
  %476 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %476) #18
  br i1 %474, label %477, label %496

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 98, i32 1
  %479 = load i32, ptr %478, align 4
  %480 = and i32 %479, 256
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %482, label %496

482:                                              ; preds = %477
  %483 = load ptr, ptr %16, align 16
  %484 = getelementptr inbounds %struct.signal_struct, ptr %483, i32 0, i32 8
  %485 = load i32, ptr %484, align 8
  %486 = or i32 %485, 128
  store i32 %486, ptr %484, align 8
  br label %496

487:                                              ; preds = %341
  call void @kfree(ptr noundef %152) #18
  %488 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %488) #18
  %489 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %489) #18
  br label %496

490:                                              ; preds = %368
  call void @kfree(ptr noundef %152) #18
  %491 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %491) #18
  %492 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %492) #18
  br label %496

493:                                              ; preds = %459
  call void @kfree(ptr noundef %152) #18
  %494 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %494) #18
  %495 = load ptr, ptr %49, align 4
  call void @_raw_spin_lock_irq(ptr noundef %495) #18
  br label %496

496:                                              ; preds = %493, %490, %487, %482, %477, %473, %461, %351, %289, %279
  %497 = load ptr, ptr %16, align 16
  %498 = getelementptr inbounds %struct.signal_struct, ptr %497, i32 0, i32 13
  %499 = load ptr, ptr %498, align 4
  %500 = getelementptr inbounds %struct.core_state, ptr %499, i32 0, i32 1, i32 1
  %501 = load ptr, ptr %500, align 4
  store ptr null, ptr %498, align 4
  %502 = load ptr, ptr %49, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %503 = load i16, ptr %502, align 4
  %504 = add i16 %503, 1
  store i16 %504, ptr %502, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !14
  %505 = icmp eq ptr %501, null
  br i1 %505, label %513, label %506

506:                                              ; preds = %506, %496
  %507 = phi ptr [ %509, %506 ], [ %501, %496 ]
  %508 = getelementptr inbounds %struct.core_thread, ptr %507, i32 0, i32 1
  %509 = load ptr, ptr %508, align 4
  %510 = load ptr, ptr %507, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  store ptr null, ptr %507, align 4
  %511 = call i32 @wake_up_process(ptr noundef %510) #18
  %512 = icmp eq ptr %509, null
  br i1 %512, label %513, label %506

513:                                              ; preds = %506, %496
  call void @revert_creds(ptr noundef %128) #18
  br label %514

514:                                              ; preds = %513, %125
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %36) #18, !srcloc !19
  %515 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #18, !srcloc !27
  %516 = extractvalue { i32, i32 } %515, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %518, label %519

518:                                              ; preds = %514
  call void @__put_cred(ptr noundef nonnull %36) #18
  br label %519

519:                                              ; preds = %518, %514, %35, %28, %1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @prepare_creds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @override_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @umh_pipe_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.subprocess_info, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @create_pipe_files(ptr noundef nonnull %3, i32 noundef 0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds [2 x ptr], ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.coredump_params, ptr %5, i32 0, i32 2
  store ptr %10, ptr %11, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = call i32 @replace_fd(i32 noundef 0, ptr noundef %12, i32 noundef 0) #18
  %14 = load ptr, ptr %3, align 8
  call void @fput(ptr noundef %14) #18
  %15 = tail call ptr @llvm.thread.pointer() #18
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 93
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 50, i32 4
  store i32 1, ptr %18, align 8
  %19 = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 50, i32 4, i32 1
  store i32 1, ptr %19, align 4
  br label %20

20:                                               ; preds = %8, %2
  %21 = phi i32 [ %13, %8 ], [ %6, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_unlinkat(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @getname_kernel(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_fs_root(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #18
  %4 = getelementptr inbounds %struct.fs_struct, ptr %0, i32 0, i32 5
  %5 = load i64, ptr %4, align 4
  store i64 %5, ptr %1, align 4
  tail call void @path_get(ptr noundef %1) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !10
  %6 = load i16, ptr %3, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_truncate(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_files() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dump_interrupted() unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #18
  %2 = load volatile i32, ptr %1, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 98, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %0
  %11 = load volatile i32, ptr @system_freezing_cnt, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !16

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @freezing_slow_path(ptr noundef %1) #18
  br label %15

15:                                               ; preds = %13, %10, %5
  %16 = phi i1 [ true, %5 ], [ %14, %13 ], [ false, %10 ]
  ret i1 %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @file_start_write(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -32768
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !29
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !16

13:                                               ; preds = %7
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !30
  %15 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #17, !srcloc !31
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #18, !srcloc !32
  br label %27

25:                                               ; preds = %7
  %26 = tail call zeroext i1 @__percpu_down_read(ptr noundef %10, i1 noundef zeroext false) #18
  br label %27

27:                                               ; preds = %25, %13
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dump_emit(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 7
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %142, label %10

10:                                               ; preds = %3
  %11 = trunc i64 %8 to i32
  %12 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.file_operations, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, @no_llseek
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %10
  %22 = icmp ugt i32 %11, 4096
  %23 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 5
  br i1 %22, label %26, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %23, align 8
  br label %103

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 3
  %28 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 6
  %29 = load i64, ptr %23, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %30 = getelementptr inbounds %struct.file, ptr %13, i32 0, i32 10
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %6, align 8
  %32 = add i64 %29, 4096
  %33 = load i32, ptr %27, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp sgt i64 %32, %34
  br i1 %35, label %86, label %36

36:                                               ; preds = %26
  %37 = tail call ptr @llvm.thread.pointer() #18
  %38 = getelementptr inbounds %struct.task_struct, ptr %37, i32 0, i32 98, i32 1
  br label %67

39:                                               ; preds = %10
  %40 = tail call ptr @llvm.thread.pointer() #18
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 98, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 256
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %182

49:                                               ; preds = %44, %39
  %50 = load volatile i32, ptr @system_freezing_cnt, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52, !prof !16

52:                                               ; preds = %49
  %53 = tail call zeroext i1 @freezing_slow_path(ptr noundef %40) #18
  br i1 %53, label %182, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr inbounds %struct.file_operations, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi ptr [ %57, %54 ], [ %17, %49 ]
  %60 = and i64 %8, 4294967295
  %61 = tail call i64 %59(ptr noundef %13, i64 noundef %60, i32 noundef 1) #18
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %182, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 6
  %65 = load i64, ptr %64, align 8
  %66 = add i64 %65, %60
  store i64 %66, ptr %64, align 8
  br label %141

67:                                               ; preds = %96, %36
  %68 = phi ptr [ %30, %36 ], [ %97, %96 ]
  %69 = phi i32 [ %11, %36 ], [ %93, %96 ]
  %70 = phi ptr [ %13, %36 ], [ %95, %96 ]
  %71 = load volatile i32, ptr %37, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load i32, ptr %38, align 4
  %76 = and i32 %75, 256
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74, %67
  %79 = load volatile i32, ptr @system_freezing_cnt, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81, !prof !16

81:                                               ; preds = %78
  %82 = call zeroext i1 @freezing_slow_path(ptr noundef %37) #18
  br i1 %82, label %86, label %83

83:                                               ; preds = %81, %78
  %84 = call i32 @__kernel_write(ptr noundef %70, ptr noundef nonnull @__dump_skip.zeroes, i32 noundef 4096, ptr noundef nonnull %6) #18
  %85 = icmp eq i32 %84, 4096
  br i1 %85, label %87, label %86

86:                                               ; preds = %96, %83, %81, %74, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %182

87:                                               ; preds = %83
  %88 = load i64, ptr %6, align 8
  store i64 %88, ptr %68, align 8
  %89 = load i64, ptr %23, align 8
  %90 = add i64 %89, 4096
  store i64 %90, ptr %23, align 8
  %91 = load i64, ptr %28, align 8
  %92 = add i64 %91, 4096
  store i64 %92, ptr %28, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %93 = add i32 %69, -4096
  %94 = icmp ugt i32 %93, 4096
  %95 = load ptr, ptr %12, align 8
  br i1 %94, label %96, label %103

96:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %97 = getelementptr inbounds %struct.file, ptr %95, i32 0, i32 10
  %98 = load i64, ptr %97, align 8
  store i64 %98, ptr %6, align 8
  %99 = add i64 %89, 8192
  %100 = load i32, ptr %27, align 4
  %101 = zext i32 %100 to i64
  %102 = icmp sgt i64 %99, %101
  br i1 %102, label %86, label %67

103:                                              ; preds = %87, %24
  %104 = phi i64 [ %25, %24 ], [ %90, %87 ]
  %105 = phi ptr [ %13, %24 ], [ %95, %87 ]
  %106 = phi i32 [ %11, %24 ], [ %93, %87 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %107 = getelementptr inbounds %struct.file, ptr %105, i32 0, i32 10
  %108 = load i64, ptr %107, align 8
  store i64 %108, ptr %5, align 8
  %109 = zext i32 %106 to i64
  %110 = add i64 %104, %109
  %111 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = zext i32 %112 to i64
  %114 = icmp sgt i64 %110, %113
  br i1 %114, label %133, label %115

115:                                              ; preds = %103
  %116 = tail call ptr @llvm.thread.pointer() #18
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 98, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 256
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120, %115
  %126 = load volatile i32, ptr @system_freezing_cnt, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128, !prof !16

128:                                              ; preds = %125
  %129 = call zeroext i1 @freezing_slow_path(ptr noundef %116) #18
  br i1 %129, label %133, label %130

130:                                              ; preds = %128, %125
  %131 = call i32 @__kernel_write(ptr noundef %105, ptr noundef nonnull @__dump_skip.zeroes, i32 noundef %106, ptr noundef nonnull %5) #18
  %132 = icmp eq i32 %131, %106
  br i1 %132, label %134, label %133

133:                                              ; preds = %130, %128, %120, %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %182

134:                                              ; preds = %130
  %135 = load i64, ptr %5, align 8
  store i64 %135, ptr %107, align 8
  %136 = load i64, ptr %23, align 8
  %137 = add i64 %136, %109
  store i64 %137, ptr %23, align 8
  %138 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 6
  %139 = load i64, ptr %138, align 8
  %140 = add i64 %139, %109
  store i64 %140, ptr %138, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %141

141:                                              ; preds = %134, %63
  store i64 0, ptr %7, align 8
  br label %142

142:                                              ; preds = %141, %3
  %143 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %145 = getelementptr inbounds %struct.file, ptr %144, i32 0, i32 10
  %146 = load i64, ptr %145, align 8
  store i64 %146, ptr %4, align 8
  %147 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 5
  %148 = load i64, ptr %147, align 8
  %149 = sext i32 %2 to i64
  %150 = add i64 %148, %149
  %151 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = zext i32 %152 to i64
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %180, label %155

155:                                              ; preds = %142
  %156 = tail call ptr @llvm.thread.pointer() #18
  %157 = load volatile i32, ptr %156, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.task_struct, ptr %156, i32 0, i32 98, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 256
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %160, %155
  %166 = load volatile i32, ptr @system_freezing_cnt, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168, !prof !16

168:                                              ; preds = %165
  %169 = call zeroext i1 @freezing_slow_path(ptr noundef %156) #18
  br i1 %169, label %180, label %170

170:                                              ; preds = %168, %165
  %171 = call i32 @__kernel_write(ptr noundef %144, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #18
  %172 = icmp eq i32 %171, %2
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i64, ptr %4, align 8
  store i64 %174, ptr %145, align 8
  %175 = load i64, ptr %147, align 8
  %176 = add i64 %175, %149
  store i64 %176, ptr %147, align 8
  %177 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 6
  %178 = load i64, ptr %177, align 8
  %179 = add i64 %178, %149
  store i64 %179, ptr %177, align 8
  br label %180

180:                                              ; preds = %173, %170, %168, %160, %142
  %181 = phi i32 [ 1, %173 ], [ 0, %142 ], [ 0, %168 ], [ 0, %170 ], [ 0, %160 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %182

182:                                              ; preds = %180, %133, %86, %58, %52, %44
  %183 = phi i32 [ %181, %180 ], [ 0, %133 ], [ 0, %58 ], [ 0, %52 ], [ 0, %86 ], [ 0, %44 ]
  ret i32 %183
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @file_end_write(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, -4096
  %6 = icmp eq i16 %5, -32768
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !34
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !16

13:                                               ; preds = %7
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !30
  %15 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #17, !srcloc !31
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #18, !srcloc !32
  br label %39

25:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !35
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !30
  %27 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #17, !srcloc !31
  %33 = add i32 %32, %29
  %34 = inttoptr i32 %33 to ptr
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #18, !srcloc !32
  %37 = getelementptr %struct.super_block, ptr %9, i32 0, i32 26, i32 2, i32 0, i32 2
  %38 = tail call i32 @rcuwait_wake_up(ptr noundef %37) #18
  br label %39

39:                                               ; preds = %25, %13
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !36
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wait_for_dump_helpers(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @pipe_lock(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 1
  tail call void @__wake_up_sync(ptr noundef %11, i32 noundef 1) #18
  %12 = getelementptr inbounds %struct.pipe_inode_info, ptr %4, i32 0, i32 15
  tail call void @kill_fasync(ptr noundef %12, i32 noundef 29, i32 noundef 1) #18
  tail call void @pipe_unlock(ptr noundef %4) #18
  %13 = load i32, ptr %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #18
  %16 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 1) #18
  %17 = load i32, ptr %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %26, label %19

19:                                               ; preds = %22, %15
  %20 = phi i32 [ %23, %22 ], [ %16, %15 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  call void @schedule() #18
  %23 = call i32 @prepare_to_wait_event(ptr noundef %11, ptr noundef nonnull %2, i32 noundef 1) #18
  %24 = load i32, ptr %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %19

26:                                               ; preds = %22, %15
  call void @finish_wait(ptr noundef %11, ptr noundef nonnull %2) #18
  br label %27

27:                                               ; preds = %26, %19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #18
  br label %28

28:                                               ; preds = %27, %1
  call void @pipe_lock(ptr noundef %4) #18
  %29 = load i32, ptr %5, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %5, align 4
  %31 = load i32, ptr %8, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %8, align 4
  call void @pipe_unlock(ptr noundef %4) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filp_close(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @revert_creds(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dump_skip_to(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 6
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %3, %5
  %7 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 7
  store i64 %6, ptr %7, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @dump_skip(ptr nocapture noundef %0, i32 noundef %1) #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 7
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %5, %3
  store i64 %6, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dump_user_range(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, %1
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %41

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 7
  br label %8

8:                                                ; preds = %38, %6
  %9 = phi i32 [ %1, %6 ], [ %39, %38 ]
  %10 = tail call ptr @get_dump_page(i32 noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr @pgprot_kernel, align 4
  %14 = or i32 %13, 512
  %15 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %10, i32 noundef %14) #18
  %16 = tail call i32 @dump_emit(ptr noundef %0, ptr noundef %15, i32 noundef 4096)
  %17 = icmp eq i32 %16, 0
  tail call void @kunmap_local_indexed(ptr noundef %15) #18
  %18 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !16

22:                                               ; preds = %12
  %23 = add i32 %19, -1
  br label %26

24:                                               ; preds = %12
  %25 = ptrtoint ptr %10 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.page, ptr %28, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #18, !srcloc !19
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #18, !srcloc !27
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  tail call void @__put_page(ptr noundef %28) #18
  br label %34

34:                                               ; preds = %33, %26
  br i1 %17, label %41, label %38

35:                                               ; preds = %8
  %36 = load i64, ptr %7, align 8
  %37 = add i64 %36, 4096
  store i64 %37, ptr %7, align 8
  br label %38

38:                                               ; preds = %35, %34
  %39 = add i32 %9, 4096
  %40 = icmp ult i32 %39, %4
  br i1 %40, label %8, label %41

41:                                               ; preds = %38, %34, %3
  %42 = phi i32 [ 1, %3 ], [ 0, %34 ], [ 1, %38 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dump_page(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @dump_align(ptr nocapture noundef %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 7
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %4
  %8 = add i32 %1, -1
  %9 = trunc i64 %7 to i32
  %10 = and i32 %8, %9
  %11 = tail call i32 @llvm.ctpop.i32(i32 %1), !range !37
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = sub i32 %1, %10
  %17 = zext i32 %16 to i64
  %18 = add i64 %6, %17
  store i64 %18, ptr %5, align 8
  br label %19

19:                                               ; preds = %15, %13, %2
  %20 = phi i32 [ 0, %2 ], [ 1, %15 ], [ 1, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @validate_coredump_safety() local_unnamed_addr #0 {
  %1 = load i32, ptr @suid_dumpable, align 4
  %2 = freeze i32 %1
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i8, ptr @core_pattern, align 1
  switch i8 %5, label %6 [
    i8 124, label %8
    i8 47, label %8
  ]

6:                                                ; preds = %4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #21
  br label %8

8:                                                ; preds = %6, %4, %4, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_coredump_sysctls() #8 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.25, ptr noundef nonnull @coredump_sysctls, ptr noundef nonnull @.str.26) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dump_vma_snapshot(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #18
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %7, i1 noundef zeroext true) #18
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.anon.11, ptr %7, i32 0, i32 15
  %13 = tail call i32 @down_write_killable(ptr noundef %12) #18
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = icmp eq i32 %13, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %7, i1 noundef zeroext true, i1 noundef zeroext %17) #18
  br label %18

18:                                               ; preds = %16, %11
  %19 = icmp eq i32 %13, 0
  br i1 %19, label %20, label %161

20:                                               ; preds = %18
  %21 = tail call ptr @get_gate_vma(ptr noundef %7) #18
  %22 = getelementptr inbounds %struct.anon.11, ptr %7, i32 0, i32 13
  %23 = load i32, ptr %22, align 8
  %24 = icmp ne ptr %21, null
  %25 = zext i1 %24 to i32
  %26 = add i32 %23, %25
  store i32 %26, ptr %1, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 16) #18
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %29, label %30, !prof !17

29:                                               ; preds = %20
  store ptr null, ptr %2, align 4
  br label %34

30:                                               ; preds = %20
  %31 = extractvalue { i32, i1 } %27, 0
  %32 = tail call noalias ptr @kvmalloc_node(i32 noundef %31, i32 noundef 3264, i32 noundef -1) #22
  store ptr %32, ptr %2, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %29
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void @__mmap_lock_do_trace_released(ptr noundef %7, i1 noundef zeroext true) #18
  br label %38

38:                                               ; preds = %37, %34
  tail call void @up_write(ptr noundef %12) #18
  br label %161

39:                                               ; preds = %30
  %40 = load ptr, ptr %6, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr %21, ptr %41
  %44 = icmp eq ptr %43, null
  br i1 %44, label %149, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.coredump_params, ptr %0, i32 0, i32 4
  br label %47

47:                                               ; preds = %147, %45
  %48 = phi ptr [ %32, %45 ], [ %148, %147 ]
  %49 = phi ptr [ %43, %45 ], [ %144, %147 ]
  %50 = phi i32 [ 0, %45 ], [ %138, %147 ]
  %51 = phi i32 [ 0, %45 ], [ %145, %147 ]
  %52 = getelementptr %struct.core_vma_metadata, ptr %48, i32 %51
  %53 = load i32, ptr %49, align 4
  store i32 %53, ptr %52, align 4
  %54 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.core_vma_metadata, ptr %48, i32 %51, i32 1
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.core_vma_metadata, ptr %48, i32 %51, i32 2
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %46, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = tail call ptr @get_gate_vma(ptr noundef %62) #18
  %64 = icmp eq ptr %63, %49
  br i1 %64, label %131, label %65

65:                                               ; preds = %47
  %66 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 12
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.vm_operations_struct, ptr %67, i32 0, i32 12
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = tail call ptr %71(ptr noundef nonnull %49) #18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %131

76:                                               ; preds = %73, %69, %65
  %77 = tail call ptr @arch_vma_name(ptr noundef nonnull %49) #18
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %131

79:                                               ; preds = %76
  %80 = load i32, ptr %57, align 4
  %81 = and i32 %80, 67125248
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %79
  %84 = and i32 %80, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 14
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.file, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 11
  %92 = load i32, ptr %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = and i32 %60, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %135, label %131

97:                                               ; preds = %86
  %98 = and i32 %60, 32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %135, label %131

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 11
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  %104 = and i32 %60, 4
  %105 = icmp eq i32 %104, 0
  %106 = or i1 %105, %103
  br i1 %106, label %107, label %131

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %135, label %111

111:                                              ; preds = %107
  %112 = and i32 %60, 16
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = and i32 %60, 64
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %130, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 13
  %119 = load i32, ptr %118, align 4
  %120 = icmp ne i32 %119, 0
  %121 = and i32 %80, 1
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.file, ptr %109, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = load volatile i16, ptr %126, align 8
  %128 = and i16 %127, 73
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %124, %117, %114
  br label %135

131:                                              ; preds = %111, %100, %97, %94, %76, %73, %47
  %132 = load i32, ptr %54, align 4
  %133 = load i32, ptr %49, align 4
  %134 = sub i32 %132, %133
  br label %135

135:                                              ; preds = %131, %130, %124, %107, %97, %94, %79
  %136 = phi i32 [ %134, %131 ], [ 0, %130 ], [ 0, %79 ], [ 0, %97 ], [ 0, %94 ], [ 0, %107 ], [ 4096, %124 ]
  %137 = getelementptr %struct.core_vma_metadata, ptr %48, i32 %51, i32 3
  store i32 %136, ptr %137, align 4
  %138 = add i32 %136, %50
  %139 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  %142 = icmp eq ptr %49, %21
  %143 = select i1 %142, ptr null, ptr %21
  %144 = select i1 %141, ptr %143, ptr %140
  %145 = add i32 %51, 1
  %146 = icmp eq ptr %144, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %135
  %148 = load ptr, ptr %2, align 4
  br label %47

149:                                              ; preds = %135, %39
  %150 = phi i32 [ 0, %39 ], [ %145, %135 ]
  %151 = phi i32 [ 0, %39 ], [ %138, %135 ]
  %152 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  tail call void @__mmap_lock_do_trace_released(ptr noundef %7, i1 noundef zeroext true) #18
  br label %155

155:                                              ; preds = %154, %149
  tail call void @up_write(ptr noundef %12) #18
  %156 = load i32, ptr %1, align 4
  %157 = icmp eq i32 %150, %156
  br i1 %157, label %160, label %158, !prof !16

158:                                              ; preds = %155
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1125, i32 noundef 9, ptr noundef null) #18
  %159 = load ptr, ptr %2, align 4
  tail call void @kvfree(ptr noundef %159) #18
  br label %161

160:                                              ; preds = %155
  store i32 %151, ptr %3, align 4
  br label %161

161:                                              ; preds = %160, %158, %38, %18
  %162 = phi i32 [ -14, %158 ], [ 0, %160 ], [ -12, %38 ], [ -4, %18 ]
  ret i32 %162
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_clear_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cn_printf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call fastcc i32 @cn_vprintf(ptr noundef %0, ptr noundef %1, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cn_esc_printf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #0 {
  %3 = alloca %struct.__va_list, align 4
  %4 = getelementptr inbounds %struct.core_name, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %3)
  %6 = load i32, ptr %3, align 4
  %7 = insertvalue [1 x i32] poison, i32 %6, 0
  %8 = call fastcc i32 @cn_vprintf(ptr noundef %0, ptr noundef %1, [1 x i32] %7)
  call void @llvm.va_end(ptr nonnull %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = sub i32 %11, %5
  switch i32 %12, label %32 [
    i32 1, label %13
    i32 2, label %18
  ]

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr i8, ptr %14, i32 %5
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 46
  br i1 %17, label %28, label %32

18:                                               ; preds = %10
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 %5
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 46
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = add i32 %5, 1
  %25 = getelementptr i8, ptr %19, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 46
  br i1 %27, label %28, label %32

28:                                               ; preds = %23, %13
  %29 = phi ptr [ %19, %23 ], [ %14, %13 ]
  %30 = getelementptr i8, ptr %29, i32 %5
  store i8 33, ptr %30, align 1
  %31 = load i32, ptr %4, align 4
  br label %32

32:                                               ; preds = %28, %23, %18, %13, %10
  %33 = phi i32 [ %11, %10 ], [ %11, %13 ], [ %31, %28 ], [ %11, %23 ], [ %11, %18 ]
  %34 = icmp eq i32 %33, %5
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (ptr, ptr, ...) @cn_printf(ptr noundef %0, ptr noundef nonnull @.str.23)
  br label %37

37:                                               ; preds = %35, %32, %2
  %38 = phi i32 [ %36, %35 ], [ 0, %32 ], [ %8, %2 ]
  %39 = load i32, ptr %4, align 4
  %40 = icmp slt i32 %5, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %50, %37
  %42 = phi i32 [ %51, %50 ], [ %39, %37 ]
  %43 = phi i32 [ %52, %50 ], [ %5, %37 ]
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr i8, ptr %44, i32 %43
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 47
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  store i8 33, ptr %45, align 1
  %49 = load i32, ptr %4, align 4
  br label %50

50:                                               ; preds = %48, %41
  %51 = phi i32 [ %42, %41 ], [ %49, %48 ]
  %52 = add nsw i32 %43, 1
  %53 = icmp slt i32 %52, %51
  br i1 %53, label %41, label %54

54:                                               ; preds = %50, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cn_print_exe_file(ptr nocapture noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #18
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @get_mm_exe_file(ptr noundef %5) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %10 = tail call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %9)
  br label %33

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4096) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @file_path(ptr noundef nonnull %6, ptr noundef nonnull %13, i32 noundef 4096) #18
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %29

20:                                               ; preds = %15
  br i1 %1, label %21, label %26

21:                                               ; preds = %20
  %22 = tail call ptr @strrchr(ptr noundef %16, i32 noundef 47)
  %23 = icmp eq ptr %22, null
  %24 = getelementptr i8, ptr %22, i32 1
  %25 = select i1 %23, ptr %16, ptr %24
  br label %26

26:                                               ; preds = %21, %20
  %27 = phi ptr [ %16, %20 ], [ %25, %21 ]
  %28 = tail call i32 (ptr, ptr, ...) @cn_esc_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %27)
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi i32 [ %19, %18 ], [ %28, %26 ]
  tail call void @kfree(ptr noundef nonnull %13) #18
  br label %31

31:                                               ; preds = %29, %11
  %32 = phi i32 [ %30, %29 ], [ -12, %11 ]
  tail call void @fput(ptr noundef nonnull %6) #18
  br label %33

33:                                               ; preds = %31, %8
  %34 = phi i32 [ %32, %31 ], [ %10, %8 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cn_vprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, [1 x i32] %2) unnamed_addr #0 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.__va_list, align 4
  %6 = extractvalue [1 x i32] %2, 0
  store i32 %6, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.core_name, ptr %0, i32 0, i32 2
  %8 = getelementptr inbounds %struct.core_name, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %7, align 4
  %10 = load i32, ptr %8, align 4
  %11 = sub i32 %9, %10
  call void @llvm.va_copy(ptr nonnull %5, ptr nonnull %4)
  %12 = load ptr, ptr %0, align 4
  %13 = load i32, ptr %8, align 4
  %14 = getelementptr i8, ptr %12, i32 %13
  %15 = load i32, ptr %5, align 4
  %16 = insertvalue [1 x i32] poison, i32 %15, 0
  %17 = call i32 @vsnprintf(ptr noundef %14, i32 noundef %11, ptr noundef %1, [1 x i32] %16)
  call void @llvm.va_end(ptr nonnull %5)
  %18 = icmp slt i32 %17, %11
  br i1 %18, label %19, label %23

19:                                               ; preds = %37, %3
  %20 = phi i32 [ %17, %3 ], [ %46, %37 ]
  %21 = load i32, ptr %8, align 4
  %22 = add i32 %21, %20
  store i32 %22, ptr %8, align 4
  br label %48

23:                                               ; preds = %37, %3
  %24 = phi i32 [ %46, %37 ], [ %17, %3 ]
  %25 = phi i32 [ %40, %37 ], [ %11, %3 ]
  %26 = load i32, ptr %7, align 4
  %27 = sub i32 1, %25
  %28 = add i32 %27, %24
  %29 = add i32 %28, %26
  %30 = load ptr, ptr %0, align 4
  %31 = call noalias ptr @krealloc(ptr noundef %30, i32 noundef %29, i32 noundef 3264) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %23
  %34 = load i32, ptr @core_name_size, align 4
  %35 = icmp slt i32 %34, %29
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 %29, ptr @core_name_size, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = call i32 @ksize(ptr noundef nonnull %31) #18
  store i32 %38, ptr %7, align 4
  store ptr %31, ptr %0, align 4
  %39 = load i32, ptr %8, align 4
  %40 = sub i32 %38, %39
  call void @llvm.va_copy(ptr nonnull %5, ptr nonnull %4)
  %41 = load ptr, ptr %0, align 4
  %42 = load i32, ptr %8, align 4
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = load i32, ptr %5, align 4
  %45 = insertvalue [1 x i32] poison, i32 %44, 0
  %46 = call i32 @vsnprintf(ptr noundef %43, i32 noundef %40, ptr noundef %1, [1 x i32] %45)
  call void @llvm.va_end(ptr nonnull %5)
  %47 = icmp slt i32 %46, %40
  br i1 %47, label %19, label %23

48:                                               ; preds = %23, %19
  %49 = phi i32 [ 0, %19 ], [ -12, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mm_exe_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_pipe_files(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @replace_fd(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_sync(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pipe_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernel_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_dostring_coredump(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @proc_dostring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @suid_dumpable, align 4
  %9 = freeze i32 %8
  %10 = icmp eq i32 %9, 2
  %11 = and i1 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = load i8, ptr @core_pattern, align 1
  switch i8 %13, label %14 [
    i8 124, label %16
    i8 47, label %16
  ]

14:                                               ; preds = %12
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #21
  br label %16

16:                                               ; preds = %14, %12, %12, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arch_vma_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind readonly }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }

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
!9 = !{!"auto-init"}
!10 = !{i64 2148950646}
!11 = !{i64 2148946470}
!12 = !{i64 2148946545, i64 2148946572, i64 2148946619, i64 2148946641, i64 2148946669, i64 2148946689}
!13 = !{i64 687965}
!14 = !{i64 2148974790}
!15 = !{i64 2151526325}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2148381274}
!19 = !{i64 782042, i64 2148272013, i64 2148272039, i64 2148272086, i64 2148272108, i64 2148272136, i64 2148272156}
!20 = !{i64 2148284112, i64 2148284144, i64 2148284173, i64 2148284207, i64 2148284238, i64 2148284261}
!21 = !{i64 2148381477}
!22 = !{i64 2148973649}
!23 = !{i64 2151375189}
!24 = !{i64 2148285785, i64 2148285811, i64 2148285840, i64 2148285874, i64 2148285905, i64 2148285928}
!25 = !{i64 2155286535}
!26 = !{i64 2148384107}
!27 = !{i64 2148286469, i64 2148286501, i64 2148286530, i64 2148286564, i64 2148286595, i64 2148286618}
!28 = !{i64 2148384310}
!29 = !{i64 2151312129}
!30 = !{i64 687720, i64 687781}
!31 = !{i64 706420}
!32 = !{i64 690737}
!33 = !{i64 2151319746}
!34 = !{i64 2151328211}
!35 = !{i64 2151336522}
!36 = !{i64 2151344740}
!37 = !{i32 0, i32 33}
