; ModuleID = '/llk/IR/ipc/shm.c_pt.bc'
source_filename = "../ipc/shm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_ops = type { ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.shmid_kernel = type { %struct.kern_ipc_perm, ptr, i32, i32, i64, i64, i64, ptr, ptr, ptr, ptr, %struct.list_head, ptr, [60 x i8] }
%struct.kern_ipc_perm = type { %struct.spinlock, i8, i32, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i16, i32, ptr, %struct.rhash_head, %struct.callback_head, %struct.refcount_struct, [4 x i8] }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.60, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.39 }
%union.anon.39 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.60 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ipc_params = type { i32, i32, %union.anon.97 }
%union.anon.97 = type { i32 }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.shmid_ds = type { %struct.ipc_perm, i32, i32, i32, i32, i16, i16, i16, i16, ptr, ptr }
%struct.ipc_perm = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.shminfo = type { i32, i32, i32, i32, i32 }
%struct.shmid64_ds = type { %struct.ipc64_perm, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipc64_perm = type { i32, i32, i32, i32, i32, i16, [2 x i8], i16, i16, i32, i32 }
%struct.shminfo64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.shm_info = type { i32, i32, i32, i32, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.45 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.45 = type { %struct.callback_head }
%struct.shm_file_data = type { i32, ptr, ptr, ptr }
%struct.anon.23 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.24, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@__initcall__kmod_shm__309_153_ipc_ns_init0 = internal global ptr @ipc_ns_init, section ".initcall0.init", align 4
@.str = private unnamed_addr constant [12 x i8] c"sysvipc/shm\00", align 1
@.str.1 = private unnamed_addr constant [138 x i8] c"       key      shmid perms       size  cpid  lpid nattch   uid   gid  cuid  cgid      atime      dtime      ctime        rss       swap\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ipc/shm.c\00", align 1
@shm_file_operations_huge = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_mmap, i32 0, ptr null, ptr null, ptr @shm_release, ptr @shm_fsync, ptr null, ptr null, ptr null, ptr @shm_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_fallocate, ptr null, ptr null, ptr null, ptr null }, align 4
@ksys_shmget.shm_ops = internal constant %struct.ipc_ops { ptr @newseg, ptr @security_shm_associate, ptr @shm_more_checks }, align 4
@shm_file_operations = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_mmap, i32 0, ptr null, ptr null, ptr @shm_release, ptr @shm_fsync, ptr null, ptr null, ptr null, ptr @shm_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @shm_fallocate, ptr null, ptr null, ptr null, ptr null }, align 4
@shm_vm_ops = internal constant %struct.vm_operations_struct { ptr @shm_open, ptr @shm_close, ptr @shm_may_split, ptr null, ptr null, ptr @shm_fault, ptr null, ptr null, ptr @shm_pagesize, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@init_ipc_ns = external dso_local global %struct.ipc_namespace, align 4
@shm_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SYSV%08x\00", align 1
@sysctl_overcommit_memory = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ipc_mni = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@shm_open.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"%10d %10d  %4o %10lu %5u %5u  %5lu %5u %5u %5u %5u %10llu %10llu %10llu %10lu %10lu\0A\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_shm__309_153_ipc_ns_init0], section "llvm.metadata"

@sys_shmget = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_shmget
@sys_shmctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_shmctl
@sys_old_shmctl = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_old_shmctl
@sys_shmat = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_shmat
@sys_shmdt = dso_local alias i32 (ptr), ptr @__se_sys_shmdt

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shm_init_ns(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 8
  store i32 -16777217, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 9
  store i32 -16777217, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 11
  store i32 4096, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 12
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 10
  store i32 0, ptr %6, align 4
  %7 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 2
  tail call void @ipc_init_ids(ptr noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_init_ids(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ipc_ns_init() #2 section ".init.text" {
  store i32 -16777217, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 8), align 4
  store i32 -16777217, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 9), align 4
  store i32 4096, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 11), align 4
  store i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 12), align 4
  store i32 0, ptr getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 10), align 4
  tail call void @ipc_init_ids(ptr noundef getelementptr inbounds (%struct.ipc_namespace, ptr @init_ipc_ns, i32 0, i32 0, i32 2)) #13
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @shm_init() local_unnamed_addr #2 section ".init.text" {
  tail call void @ipc_init_proc_interface(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef nonnull @sysvipc_shm_proc_show) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ipc_init_proc_interface(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sysvipc_shm_proc_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @ipc_seq_pid_ns(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -56
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.address_space, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %7, i32 -40
  %14 = load i32, ptr %13, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %15 = load i16, ptr %8, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %17 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 8
  %22 = load i16, ptr %21, align 32
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 3
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @pid_nr_ns(ptr noundef %27, ptr noundef %3) #13
  %29 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @pid_nr_ns(ptr noundef %30, ptr noundef %3) #13
  %32 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 16
  %36 = icmp eq i32 %35, -1
  %37 = load i32, ptr @overflowuid, align 4
  %38 = select i1 %36, i32 %37, i32 %35
  %39 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, -1
  %42 = load i32, ptr @overflowgid, align 4
  %43 = select i1 %41, i32 %42, i32 %40
  %44 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, -1
  %47 = select i1 %46, i32 %37, i32 %45
  %48 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, -1
  %51 = select i1 %50, i32 %42, i32 %49
  %52 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 4
  %53 = load i64, ptr %52, align 16
  %54 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 5
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 6
  %57 = load i64, ptr %56, align 32
  %58 = shl i32 %12, 12
  %59 = shl i32 %14, 12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %18, i32 noundef %20, i32 noundef %23, i32 noundef %25, i32 noundef %28, i32 noundef %31, i32 noundef %33, i32 noundef %38, i32 noundef %43, i32 noundef %47, i32 noundef %51, i64 noundef %53, i64 noundef %55, i64 noundef %57, i32 noundef %58, i32 noundef %59) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shm_destroy_orphaned(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 2
  %3 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 2, i32 2
  tail call void @down_write(ptr noundef %3) #13
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 2, i32 3
  %8 = tail call i32 @idr_for_each(ptr noundef %7, ptr noundef nonnull @shm_try_destroy_orphaned, ptr noundef %0) #13
  br label %9

9:                                                ; preds = %6, %1
  tail call void @up_write(ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_try_destroy_orphaned(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 11
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %7, label %23

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 12
  %13 = load ptr, ptr %12, align 64
  %14 = getelementptr inbounds %struct.ipc_namespace, ptr %13, i32 0, i32 12
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.kern_ipc_perm, ptr %1, i32 0, i32 8
  %19 = load i16, ptr %18, align 32
  %20 = and i16 %19, 512
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void @_raw_spin_lock(ptr noundef %1) #13
  tail call fastcc void @shm_destroy(ptr noundef %2, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %17, %7, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_shm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 88
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %62, label %6

6:                                                ; preds = %59, %1
  %7 = phi ptr [ %60, %59 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -120
  %9 = getelementptr i8, ptr %7, i32 8
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.ipc_namespace, ptr %10, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq ptr %10, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %21 = load i16, ptr %2, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %59

23:                                               ; preds = %6
  %24 = tail call zeroext i1 @ipc_rcu_getref(ptr noundef %8) #13
  br i1 %24, label %26, label %25, !prof !15

25:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 474, i32 noundef 9, ptr noundef null) #13
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %31 = load i16, ptr %2, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %33 = getelementptr [3 x %struct.ipc_ids], ptr %10, i32 0, i32 2, i32 2
  tail call void @down_write(ptr noundef %33) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void @_raw_spin_lock(ptr noundef %8) #13
  tail call void @ipc_rcu_putref(ptr noundef %8, ptr noundef nonnull @shm_rcu_free) #13
  %34 = getelementptr i8, ptr %7, i32 -116
  %35 = load i8, ptr %34, align 4, !range !16
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %26
  %38 = getelementptr i8, ptr %7, i32 -52
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load ptr, ptr %9, align 64
  %43 = getelementptr inbounds %struct.ipc_namespace, ptr %42, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %7, i32 -88
  %48 = load i16, ptr %47, align 32
  %49 = and i16 %48, 512
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46, %41
  tail call fastcc void @shm_destroy(ptr noundef nonnull %10, ptr noundef %8)
  br label %58

52:                                               ; preds = %46, %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %53 = load i16, ptr %8, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %58

55:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %56 = load i16, ptr %8, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %58

58:                                               ; preds = %55, %52, %51
  tail call void @up_write(ptr noundef %33) #13
  br label %59

59:                                               ; preds = %58, %16
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %60 = load volatile ptr, ptr %3, align 4
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %62, label %6

62:                                               ; preds = %59, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %63 = load i16, ptr %2, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipc_rcu_getref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rcu_putref(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shm_rcu_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -48
  tail call void @kfree(ptr noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @shm_destroy(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 64
  store ptr null, ptr %3, align 64
  %5 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 4095
  %8 = lshr i32 %7, 12
  %9 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %10, %8
  store i32 %11, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %12 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 11
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 107
  tail call void @_raw_spin_lock(ptr noundef %18) #13
  %19 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 11, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %23 = load i16, ptr %18, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %25

25:                                               ; preds = %15, %2
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %26 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 12
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr [3 x %struct.ipc_ids], ptr %27, i32 0, i32 2
  tail call void @ipc_rmid(ptr noundef %28, ptr noundef %1) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %29 = load i16, ptr %1, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %31 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 9
  %32 = load ptr, ptr %31, align 16
  %33 = tail call i32 @shmem_lock(ptr noundef %4, i32 noundef 0, ptr noundef %32) #13
  tail call void @fput(ptr noundef %4) #13
  %34 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  store ptr null, ptr %34, align 4
  tail call void @put_pid(ptr noundef nonnull %35) #13
  br label %38

38:                                               ; preds = %37, %25
  %39 = getelementptr inbounds %struct.shmid_kernel, ptr %1, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store ptr null, ptr %39, align 4
  tail call void @put_pid(ptr noundef nonnull %40) #13
  br label %43

43:                                               ; preds = %42, %38
  tail call void @ipc_rcu_putref(ptr noundef %1, ptr noundef nonnull @shm_rcu_free) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_file_shm_hugepages(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @shm_file_operations_huge
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_shmget(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ipc_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %5 = tail call ptr @llvm.thread.pointer() #13
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store i32 %0, ptr %4, align 4
  %10 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 2
  store i32 %1, ptr %11, align 4
  %12 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %13 = call i32 @ipcget(ptr noundef %9, ptr noundef %12, ptr noundef nonnull @ksys_shmget.shm_ops, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @newseg(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [13 x i8], align 1
  %4 = load i32, ptr %1, align 4
  %5 = getelementptr inbounds %struct.ipc_params, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ipc_params, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 4095
  %10 = lshr i32 %9, 12
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %3, i8 0, i32 13, i1 false), !annotation !18
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %106, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %8, %14
  br i1 %15, label %106, label %16

16:                                               ; preds = %12
  %17 = and i32 %9, -4096
  %18 = icmp ult i32 %17, %8
  br i1 %18, label %106, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %10
  %23 = icmp ult i32 %22, %21
  br i1 %23, label %106, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %22, %26
  br i1 %27, label %106, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 4197568, i32 noundef 192) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %106, label %32, !prof !19

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.kern_ipc_perm, ptr %30, i32 0, i32 3
  store i32 %4, ptr %33, align 4
  %34 = trunc i32 %6 to i16
  %35 = and i16 %34, 511
  %36 = getelementptr inbounds %struct.kern_ipc_perm, ptr %30, i32 0, i32 8
  store i16 %35, ptr %36, align 32
  %37 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 9
  store ptr null, ptr %37, align 16
  %38 = getelementptr inbounds %struct.kern_ipc_perm, ptr %30, i32 0, i32 10
  store ptr null, ptr %38, align 8
  %39 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, i32 noundef %4)
  %40 = and i32 %6, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %32
  %43 = and i32 %6, 4096
  %44 = icmp ne i32 %43, 0
  %45 = load i32, ptr @sysctl_overcommit_memory, align 4
  %46 = icmp ne i32 %45, 2
  %47 = select i1 %44, i1 %46, i1 false
  %48 = select i1 %47, i32 2097152, i32 0
  %49 = zext i32 %8 to i64
  %50 = call ptr @shmem_kernel_file_setup(ptr noundef nonnull %3, i64 noundef %49, i32 noundef %48) #13
  %51 = ptrtoint ptr %50 to i32
  %52 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %103, label %53

53:                                               ; preds = %42
  %54 = tail call ptr @llvm.thread.pointer() #13
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 93
  %56 = load ptr, ptr %55, align 16
  %57 = getelementptr %struct.signal_struct, ptr %56, i32 0, i32 22, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = call fastcc ptr @get_pid(ptr noundef %58)
  %60 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 7
  store ptr %58, ptr %60, align 8
  %61 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 8
  store ptr null, ptr %61, align 4
  %62 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 16 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  %63 = call i64 @ktime_get_real_seconds() #13
  %64 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 6
  store i64 %63, ptr %64, align 32
  %65 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 3
  store i32 %8, ptr %65, align 8
  %66 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 2
  store i32 0, ptr %66, align 4
  %67 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 1
  store ptr %50, ptr %67, align 64
  %68 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 10
  store ptr %54, ptr %68, align 4
  %69 = getelementptr [3 x %struct.ipc_ids], ptr %0, i32 0, i32 2
  %70 = getelementptr inbounds %struct.ipc_namespace, ptr %0, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  %72 = call i32 @ipc_addid(ptr noundef %69, ptr noundef nonnull %30, i32 noundef %71) #13
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %53
  %75 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 12
  store ptr %0, ptr %75, align 64
  %76 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 107
  call void @_raw_spin_lock(ptr noundef %76) #13
  %77 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 11
  %78 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 88
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store ptr %79, ptr %77, align 8
  %81 = getelementptr inbounds %struct.shmid_kernel, ptr %30, i32 0, i32 11, i32 1
  store ptr %78, ptr %81, align 4
  store volatile ptr %77, ptr %78, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %82 = load i16, ptr %76, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %76, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %84 = getelementptr inbounds %struct.kern_ipc_perm, ptr %30, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.file, ptr %50, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.inode, ptr %87, i32 0, i32 10
  store i32 %85, ptr %88, align 4
  %89 = load i32, ptr %20, align 4
  %90 = add i32 %89, %10
  store i32 %90, ptr %20, align 4
  %91 = load i32, ptr %84, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %92 = load i16, ptr %30, align 8
  %93 = add i16 %92, 1
  store i16 %93, ptr %30, align 8
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %106

94:                                               ; preds = %53
  %95 = load ptr, ptr %60, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  store ptr null, ptr %60, align 8
  call void @put_pid(ptr noundef nonnull %95) #13
  br label %98

98:                                               ; preds = %97, %94
  %99 = load ptr, ptr %61, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store ptr null, ptr %61, align 4
  call void @put_pid(ptr noundef nonnull %99) #13
  br label %102

102:                                              ; preds = %101, %98
  call void @fput(ptr noundef %50) #13
  call void @ipc_rcu_putref(ptr noundef nonnull %30, ptr noundef nonnull @shm_rcu_free) #13
  br label %106

103:                                              ; preds = %42, %32
  %104 = phi i32 [ %51, %42 ], [ -22, %32 ]
  %105 = getelementptr inbounds %struct.kern_ipc_perm, ptr %30, i32 0, i32 12
  call void @call_rcu(ptr noundef %105, ptr noundef nonnull @shm_rcu_free) #13
  br label %106

106:                                              ; preds = %103, %102, %74, %28, %24, %19, %16, %12, %2
  %107 = phi i32 [ %104, %103 ], [ %72, %102 ], [ %91, %74 ], [ -22, %12 ], [ -22, %2 ], [ -28, %16 ], [ -28, %24 ], [ -28, %19 ], [ -12, %28 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %3) #13
  ret i32 %107
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @security_shm_associate(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @shm_more_checks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.shmid_kernel, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ipc_params, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  %8 = select i1 %7, i32 -22, i32 0
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmget(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ipc_params, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %5 = tail call ptr @llvm.thread.pointer() #13
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 92
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store i32 %0, ptr %4, align 4
  %10 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ipc_params, ptr %4, i32 0, i32 2
  store i32 %1, ptr %11, align 4
  %12 = getelementptr [3 x %struct.ipc_ids], ptr %9, i32 0, i32 2
  %13 = call i32 @ipcget(ptr noundef %9, ptr noundef %12, ptr noundef nonnull @ksys_shmget.shm_ops, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmctl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %2 to ptr
  %5 = tail call fastcc i32 @ksys_shmctl(i32 noundef %0, i32 noundef %1, ptr noundef %4, i32 noundef 256) #13
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_old_shmctl(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = call i32 @ipc_parse_version(ptr noundef nonnull %4) #13
  %6 = load i32, ptr %4, align 4
  %7 = call fastcc i32 @ksys_shmctl(i32 noundef %0, i32 noundef %6, ptr noundef %2, i32 noundef %5)
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_parse_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ksys_shmctl(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.shmid_ds, align 4
  %6 = alloca %struct.shmid_ds, align 4
  %7 = alloca %struct.shminfo, align 4
  %8 = alloca %struct.shmid64_ds, align 4
  %9 = alloca %struct.shminfo64, align 4
  %10 = alloca %struct.shm_info, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %8, i8 0, i32 84, i1 false), !annotation !18
  %11 = or i32 %1, %0
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %439

13:                                               ; preds = %4
  %14 = tail call ptr @llvm.thread.pointer() #13
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 92
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nsproxy, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  switch i32 %1, label %439 [
    i32 3, label %19
    i32 14, label %79
    i32 13, label %150
    i32 15, label %150
    i32 2, label %150
    i32 1, label %276
    i32 0, label %316
    i32 11, label %353
    i32 12, label %353
  ]

19:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #13
  %20 = getelementptr inbounds %struct.ipc_namespace, ptr %18, i32 0, i32 11
  %21 = getelementptr inbounds i8, ptr %9, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load i32, ptr %20, align 4
  %23 = getelementptr inbounds %struct.shminfo64, ptr %9, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.shminfo64, ptr %9, i32 0, i32 2
  store i32 %22, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ipc_namespace, ptr %18, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %9, align 4
  %27 = getelementptr inbounds %struct.ipc_namespace, ptr %18, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.shminfo64, ptr %9, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.shminfo64, ptr %9, i32 0, i32 1
  store i32 1, ptr %30, align 4
  %31 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2
  %32 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2, i32 2
  tail call void @down_read(ptr noundef %32) #13
  %33 = load i32, ptr %31, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %19
  %36 = load i32, ptr @ipc_mni, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = add i32 %33, -1
  br label %43

40:                                               ; preds = %35
  %41 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2, i32 4
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %38, %19
  %44 = phi i32 [ %39, %38 ], [ %42, %40 ], [ -1, %19 ]
  tail call void @up_read(ptr noundef %32) #13
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #13
  switch i32 %3, label %77 [
    i32 256, label %46
    i32 0, label %56
  ]

46:                                               ; preds = %43
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 36, i32 -1090519040) #16, !srcloc !20
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %51) #17, !srcloc !21
  %53 = and i32 %52, -13
  %54 = or i32 %53, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #13, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %55 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %9, i32 noundef 36) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  br label %73

56:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #13
  %57 = tail call i32 @llvm.umin.i32(i32 %26, i32 2147483647) #13
  store i32 %57, ptr %7, align 4
  %58 = getelementptr inbounds %struct.shminfo, ptr %7, i32 0, i32 1
  store i32 1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.shminfo, ptr %7, i32 0, i32 2
  store i32 %22, ptr %59, align 4
  %60 = getelementptr inbounds %struct.shminfo, ptr %7, i32 0, i32 3
  store i32 %22, ptr %60, align 4
  %61 = getelementptr inbounds %struct.shminfo, ptr %7, i32 0, i32 4
  store i32 %28, ptr %61, align 4
  %62 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 20, i32 -1090519040) #16, !srcloc !20
  %63 = extractvalue { i32, i32 } %62, 0
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #17, !srcloc !21
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #13, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %70 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %7, i32 noundef 20) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  br label %71

71:                                               ; preds = %65, %56
  %72 = phi i32 [ %70, %65 ], [ 20, %56 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #13
  br label %73

73:                                               ; preds = %71, %50
  %74 = phi i32 [ %72, %71 ], [ %55, %50 ]
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 %45, i32 -14
  br label %77

77:                                               ; preds = %73, %46, %43
  %78 = phi i32 [ -14, %43 ], [ -14, %46 ], [ %76, %73 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #13
  br label %439

79:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %80 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2
  %81 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2, i32 2
  %82 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %82, i8 0, i64 20, i1 false)
  tail call void @down_read(ptr noundef %81) #13
  %83 = load i32, ptr %80, align 4
  store i32 %83, ptr %10, align 4
  %84 = getelementptr inbounds %struct.shm_info, ptr %10, i32 0, i32 2
  %85 = getelementptr inbounds %struct.shm_info, ptr %10, i32 0, i32 3
  store i32 0, ptr %84, align 4
  store i32 0, ptr %85, align 4
  %86 = load i32, ptr %80, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %118

88:                                               ; preds = %79
  %89 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2, i32 3
  br label %90

90:                                               ; preds = %114, %88
  %91 = phi i32 [ 0, %88 ], [ %116, %114 ]
  %92 = phi i32 [ 0, %88 ], [ %115, %114 ]
  %93 = tail call ptr @idr_find(ptr noundef %89, i32 noundef %91) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %114, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.shmid_kernel, ptr %93, i32 0, i32 1
  %97 = load ptr, ptr %96, align 64
  %98 = getelementptr inbounds %struct.file, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr i8, ptr %99, i32 -56
  tail call void @_raw_spin_lock_irq(ptr noundef %100) #13
  %101 = getelementptr inbounds %struct.inode, ptr %99, i32 0, i32 9
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.address_space, ptr %102, i32 0, i32 7
  %104 = load i32, ptr %103, align 4
  %105 = load i32, ptr %84, align 4
  %106 = add i32 %105, %104
  store i32 %106, ptr %84, align 4
  %107 = getelementptr i8, ptr %99, i32 -40
  %108 = load i32, ptr %107, align 8
  %109 = load i32, ptr %85, align 4
  %110 = add i32 %109, %108
  store i32 %110, ptr %85, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %111 = load i16, ptr %100, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %113 = add nsw i32 %92, 1
  br label %114

114:                                              ; preds = %95, %90
  %115 = phi i32 [ %113, %95 ], [ %92, %90 ]
  %116 = add i32 %91, 1
  %117 = icmp slt i32 %115, %86
  br i1 %117, label %90, label %118

118:                                              ; preds = %114, %79
  %119 = getelementptr inbounds %struct.ipc_namespace, ptr %18, i32 0, i32 10
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.shm_info, ptr %10, i32 0, i32 1
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.shm_info, ptr %10, i32 0, i32 4
  store i32 0, ptr %122, align 4
  %123 = getelementptr inbounds %struct.shm_info, ptr %10, i32 0, i32 5
  store i32 0, ptr %123, align 4
  %124 = load i32, ptr %80, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = load i32, ptr @ipc_mni, align 4
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = add i32 %124, -1
  br label %134

131:                                              ; preds = %126
  %132 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2, i32 4
  %133 = load i32, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %129, %118
  %135 = phi i32 [ %130, %129 ], [ %133, %131 ], [ -1, %118 ]
  tail call void @up_read(ptr noundef %81) #13
  %136 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 24, i32 -1090519040) #16, !srcloc !20
  %137 = extractvalue { i32, i32 } %136, 0
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = tail call i32 @llvm.smax.i32(i32 %135, i32 0) #13
  %141 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %142 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %141) #17, !srcloc !21
  %143 = and i32 %142, -13
  %144 = or i32 %143, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %144) #13, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %145 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %10, i32 noundef 24) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %142) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i32 %140, i32 -14
  br label %148

148:                                              ; preds = %139, %134
  %149 = phi i32 [ -14, %134 ], [ %147, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %439

150:                                              ; preds = %13, %13, %13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %8, i8 0, i32 84, i1 false) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %151 = icmp eq i32 %1, 15
  switch i32 %1, label %158 [
    i32 15, label %152
    i32 13, label %152
  ]

152:                                              ; preds = %150, %150
  %153 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2
  %154 = tail call ptr @ipc_obtain_object_idr(ptr noundef %153, i32 noundef %0) #13
  %155 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = ptrtoint ptr %154 to i32
  br label %222

158:                                              ; preds = %150
  %159 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2
  %160 = tail call ptr @ipc_obtain_object_check(ptr noundef %159, i32 noundef %0) #13
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = ptrtoint ptr %160 to i32
  br label %222

164:                                              ; preds = %158, %152
  %165 = phi ptr [ %154, %152 ], [ %160, %158 ]
  br i1 %151, label %169, label %166

166:                                              ; preds = %164
  %167 = tail call i32 @ipcperms(ptr noundef %18, ptr noundef %165, i16 noundef signext 292) #13
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %220

169:                                              ; preds = %166, %164
  tail call void @_raw_spin_lock(ptr noundef %165) #13
  %170 = getelementptr inbounds %struct.kern_ipc_perm, ptr %165, i32 0, i32 1
  %171 = load i8, ptr %170, align 4, !range !16
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %174 = load i16, ptr %165, align 4
  %175 = add i16 %174, 1
  store i16 %175, ptr %165, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %220

176:                                              ; preds = %169
  call void @kernel_to_ipc64_perm(ptr noundef %165, ptr noundef nonnull %8) #13
  %177 = getelementptr inbounds %struct.shmid_kernel, ptr %165, i32 0, i32 3
  %178 = load i32, ptr %177, align 8
  %179 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 1
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.shmid_kernel, ptr %165, i32 0, i32 4
  %181 = load i64, ptr %180, align 16
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 2
  store i32 %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.shmid_kernel, ptr %165, i32 0, i32 5
  %185 = load i64, ptr %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 4
  store i32 %186, ptr %187, align 4
  %188 = getelementptr inbounds %struct.shmid_kernel, ptr %165, i32 0, i32 6
  %189 = load i64, ptr %188, align 32
  %190 = trunc i64 %189 to i32
  %191 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 6
  store i32 %190, ptr %191, align 4
  %192 = lshr i64 %181, 32
  %193 = trunc i64 %192 to i32
  %194 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 3
  store i32 %193, ptr %194, align 4
  %195 = lshr i64 %185, 32
  %196 = trunc i64 %195 to i32
  %197 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 5
  store i32 %196, ptr %197, align 4
  %198 = lshr i64 %189, 32
  %199 = trunc i64 %198 to i32
  %200 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 7
  store i32 %199, ptr %200, align 4
  %201 = getelementptr inbounds %struct.shmid_kernel, ptr %165, i32 0, i32 7
  %202 = load ptr, ptr %201, align 8
  %203 = call i32 @pid_vnr(ptr noundef %202) #13
  %204 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 8
  store i32 %203, ptr %204, align 4
  %205 = getelementptr inbounds %struct.shmid_kernel, ptr %165, i32 0, i32 8
  %206 = load ptr, ptr %205, align 4
  %207 = call i32 @pid_vnr(ptr noundef %206) #13
  %208 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 9
  store i32 %207, ptr %208, align 4
  %209 = getelementptr inbounds %struct.shmid_kernel, ptr %165, i32 0, i32 2
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 10
  store i32 %210, ptr %211, align 4
  %212 = icmp eq i32 %1, 2
  br i1 %212, label %216, label %213

213:                                              ; preds = %176
  %214 = getelementptr inbounds %struct.kern_ipc_perm, ptr %165, i32 0, i32 2
  %215 = load i32, ptr %214, align 8
  br label %216

216:                                              ; preds = %213, %176
  %217 = phi i32 [ %215, %213 ], [ 0, %176 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %218 = load i16, ptr %165, align 4
  %219 = add i16 %218, 1
  store i16 %219, ptr %165, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %222

220:                                              ; preds = %173, %166
  %221 = phi i32 [ -13, %166 ], [ -43, %173 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %439

222:                                              ; preds = %216, %162, %156
  %223 = phi i32 [ %157, %156 ], [ %217, %216 ], [ %163, %162 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %439, label %225

225:                                              ; preds = %222
  switch i32 %3, label %439 [
    i32 256, label %226
    i32 0, label %236
  ]

226:                                              ; preds = %225
  %227 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 84, i32 -1090519040) #16, !srcloc !20
  %228 = extractvalue { i32, i32 } %227, 0
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %439

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %232 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %231) #17, !srcloc !21
  %233 = and i32 %232, -13
  %234 = or i32 %233, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %234) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %235 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %8, i32 noundef 84) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %232) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  br label %272

236:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %6, i8 0, i64 48, i1 false) #13
  call void @ipc64_perm_to_ipc_perm(ptr noundef nonnull %8, ptr noundef nonnull %6) #13
  %237 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr inbounds %struct.shmid_ds, ptr %6, i32 0, i32 1
  store i32 %238, ptr %239, align 4
  %240 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 2
  %241 = load i32, ptr %240, align 4
  %242 = getelementptr inbounds %struct.shmid_ds, ptr %6, i32 0, i32 2
  store i32 %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 4
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr inbounds %struct.shmid_ds, ptr %6, i32 0, i32 3
  store i32 %244, ptr %245, align 4
  %246 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr inbounds %struct.shmid_ds, ptr %6, i32 0, i32 4
  store i32 %247, ptr %248, align 4
  %249 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 8
  %250 = load i32, ptr %249, align 4
  %251 = trunc i32 %250 to i16
  %252 = getelementptr inbounds %struct.shmid_ds, ptr %6, i32 0, i32 5
  store i16 %251, ptr %252, align 4
  %253 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 9
  %254 = load i32, ptr %253, align 4
  %255 = trunc i32 %254 to i16
  %256 = getelementptr inbounds %struct.shmid_ds, ptr %6, i32 0, i32 6
  store i16 %255, ptr %256, align 2
  %257 = getelementptr inbounds %struct.shmid64_ds, ptr %8, i32 0, i32 10
  %258 = load i32, ptr %257, align 4
  %259 = trunc i32 %258 to i16
  %260 = getelementptr inbounds %struct.shmid_ds, ptr %6, i32 0, i32 7
  store i16 %259, ptr %260, align 4
  %261 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 48, i32 -1090519040) #16, !srcloc !20
  %262 = extractvalue { i32, i32 } %261, 0
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %236
  %265 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %266 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %265) #17, !srcloc !21
  %267 = and i32 %266, -13
  %268 = or i32 %267, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %268) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %269 = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 48) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %266) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  br label %270

270:                                              ; preds = %264, %236
  %271 = phi i32 [ %269, %264 ], [ 48, %236 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #13
  br label %272

272:                                              ; preds = %270, %230
  %273 = phi i32 [ %271, %270 ], [ %235, %230 ]
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i32 %223, i32 -14
  br label %439

276:                                              ; preds = %13
  switch i32 %3, label %439 [
    i32 256, label %277
    i32 0, label %292
  ]

277:                                              ; preds = %276
  %278 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 84, i32 -1090519040) #16, !srcloc !24
  %279 = extractvalue { i32, i32 } %278, 0
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %288, !prof !15

281:                                              ; preds = %277
  %282 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %283 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %282) #17, !srcloc !21
  %284 = and i32 %283, -13
  %285 = or i32 %284, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %285) #13, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %286 = call i32 @arm_copy_from_user(ptr noundef nonnull %8, ptr noundef %2, i32 noundef 84) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %283) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %316, label %288, !prof !15

288:                                              ; preds = %281, %277
  %289 = phi i32 [ %286, %281 ], [ 84, %277 ]
  %290 = sub i32 84, %289
  %291 = getelementptr i8, ptr %8, i32 %290
  call void @llvm.memset.p0.i32(ptr align 1 %291, i8 0, i32 %289, i1 false) #13
  br label %439

292:                                              ; preds = %276
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %5, i8 0, i32 48, i1 false) #13, !annotation !18
  %293 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 48, i32 -1090519040) #16, !srcloc !24
  %294 = extractvalue { i32, i32 } %293, 0
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %315, !prof !15

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %298 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %297) #17, !srcloc !21
  %299 = and i32 %298, -13
  %300 = or i32 %299, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %300) #13, !srcloc !22
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %301 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 48) #13
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %298) #13, !srcloc !22
  call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !23
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %315, !prof !15

303:                                              ; preds = %296
  %304 = getelementptr inbounds %struct.ipc_perm, ptr %5, i32 0, i32 1
  %305 = load i16, ptr %304, align 4
  %306 = zext i16 %305 to i32
  %307 = getelementptr inbounds %struct.ipc64_perm, ptr %8, i32 0, i32 1
  store i32 %306, ptr %307, align 4
  %308 = getelementptr inbounds %struct.ipc_perm, ptr %5, i32 0, i32 2
  %309 = load i16, ptr %308, align 2
  %310 = zext i16 %309 to i32
  %311 = getelementptr inbounds %struct.ipc64_perm, ptr %8, i32 0, i32 2
  store i32 %310, ptr %311, align 4
  %312 = getelementptr inbounds %struct.ipc_perm, ptr %5, i32 0, i32 5
  %313 = load i16, ptr %312, align 4
  %314 = getelementptr inbounds %struct.ipc64_perm, ptr %8, i32 0, i32 5
  store i16 %313, ptr %314, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  br label %316

315:                                              ; preds = %296, %292
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #13
  br label %439

316:                                              ; preds = %303, %281, %13
  %317 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2
  %318 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2, i32 2
  call void @down_write(ptr noundef %318) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %319 = call ptr @ipcctl_obtain_check(ptr noundef %18, ptr noundef %317, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %8, i32 noundef 0) #13
  %320 = icmp ugt ptr %319, inttoptr (i32 -4096 to ptr)
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = ptrtoint ptr %319 to i32
  br label %349

323:                                              ; preds = %316
  switch i32 %1, label %349 [
    i32 0, label %324
    i32 1, label %340
  ]

324:                                              ; preds = %323
  call void @_raw_spin_lock(ptr noundef %319) #13
  %325 = getelementptr inbounds %struct.shmid_kernel, ptr %319, i32 0, i32 12
  %326 = load ptr, ptr %325, align 64
  %327 = icmp eq ptr %326, %18
  br i1 %327, label %329, label %328, !prof !15

328:                                              ; preds = %324
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 127, i32 noundef 9, ptr noundef null) #13
  br label %329

329:                                              ; preds = %328, %324
  %330 = getelementptr inbounds %struct.shmid_kernel, ptr %319, i32 0, i32 2
  %331 = load i32, ptr %330, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %339, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.kern_ipc_perm, ptr %319, i32 0, i32 8
  %335 = load i16, ptr %334, align 32
  %336 = or i16 %335, 512
  store i16 %336, ptr %334, align 32
  call void @ipc_set_key_private(ptr noundef %317, ptr noundef %319) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %337 = load i16, ptr %319, align 4
  %338 = add i16 %337, 1
  store i16 %338, ptr %319, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %351

339:                                              ; preds = %329
  call fastcc void @shm_destroy(ptr noundef %18, ptr noundef %319) #13
  br label %351

340:                                              ; preds = %323
  call void @_raw_spin_lock(ptr noundef %319) #13
  %341 = call i32 @ipc_update_perm(ptr noundef nonnull %8, ptr noundef %319) #13
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = call i64 @ktime_get_real_seconds() #13
  %345 = getelementptr inbounds %struct.shmid_kernel, ptr %319, i32 0, i32 6
  store i64 %344, ptr %345, align 32
  br label %346

346:                                              ; preds = %343, %340
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %347 = load i16, ptr %319, align 4
  %348 = add i16 %347, 1
  store i16 %348, ptr %319, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %349

349:                                              ; preds = %346, %323, %321
  %350 = phi i32 [ %322, %321 ], [ %341, %346 ], [ -22, %323 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %351

351:                                              ; preds = %349, %339, %333
  %352 = phi i32 [ %350, %349 ], [ 0, %333 ], [ 0, %339 ]
  call void @up_write(ptr noundef %318) #13
  br label %439

353:                                              ; preds = %13, %13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %354 = getelementptr [3 x %struct.ipc_ids], ptr %18, i32 0, i32 2
  %355 = tail call ptr @ipc_obtain_object_check(ptr noundef %354, i32 noundef %0) #13
  %356 = icmp ugt ptr %355, inttoptr (i32 -4096 to ptr)
  br i1 %356, label %357, label %359

357:                                              ; preds = %353
  %358 = ptrtoint ptr %355 to i32
  br label %437

359:                                              ; preds = %353
  tail call void @_raw_spin_lock(ptr noundef %355) #13
  %360 = getelementptr inbounds %struct.kern_ipc_perm, ptr %355, i32 0, i32 1
  %361 = load i8, ptr %360, align 4, !range !16
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %363, label %433

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.ipc_namespace, ptr %18, i32 0, i32 21
  %365 = load ptr, ptr %364, align 4
  %366 = tail call zeroext i1 @ns_capable(ptr noundef %365, i32 noundef 14) #13
  br i1 %366, label %393, label %367

367:                                              ; preds = %363
  %368 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 83
  %369 = load ptr, ptr %368, align 8
  %370 = getelementptr inbounds %struct.cred, ptr %369, i32 0, i32 5
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr inbounds %struct.kern_ipc_perm, ptr %355, i32 0, i32 4
  %373 = load i32, ptr %372, align 16
  %374 = icmp eq i32 %371, %373
  br i1 %374, label %379, label %375

375:                                              ; preds = %367
  %376 = getelementptr inbounds %struct.kern_ipc_perm, ptr %355, i32 0, i32 6
  %377 = load i32, ptr %376, align 8
  %378 = icmp eq i32 %371, %377
  br i1 %378, label %379, label %433

379:                                              ; preds = %375, %367
  %380 = icmp eq i32 %1, 11
  br i1 %380, label %384, label %381

381:                                              ; preds = %379
  %382 = getelementptr inbounds %struct.shmid_kernel, ptr %355, i32 0, i32 1
  %383 = load ptr, ptr %382, align 64
  br label %415

384:                                              ; preds = %379
  %385 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 93
  %386 = load ptr, ptr %385, align 16
  %387 = getelementptr %struct.signal_struct, ptr %386, i32 0, i32 50, i32 8
  %388 = load volatile i32, ptr %387, align 8
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %433, label %390

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.shmid_kernel, ptr %355, i32 0, i32 1
  %392 = load ptr, ptr %391, align 64
  br label %400

393:                                              ; preds = %363
  %394 = getelementptr inbounds %struct.shmid_kernel, ptr %355, i32 0, i32 1
  %395 = load ptr, ptr %394, align 64
  %396 = icmp eq i32 %1, 11
  br i1 %396, label %397, label %415

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 83
  %399 = load ptr, ptr %398, align 8
  br label %400

400:                                              ; preds = %397, %390
  %401 = phi ptr [ %369, %390 ], [ %399, %397 ]
  %402 = phi ptr [ %392, %390 ], [ %395, %397 ]
  %403 = getelementptr inbounds %struct.cred, ptr %401, i32 0, i32 22
  %404 = load ptr, ptr %403, align 4
  %405 = tail call i32 @shmem_lock(ptr noundef %402, i32 noundef 1, ptr noundef %404) #13
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %433

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct.kern_ipc_perm, ptr %355, i32 0, i32 8
  %409 = load i16, ptr %408, align 32
  %410 = and i16 %409, 1024
  %411 = icmp eq i16 %410, 0
  br i1 %411, label %412, label %433

412:                                              ; preds = %407
  %413 = or i16 %409, 1024
  store i16 %413, ptr %408, align 32
  %414 = getelementptr inbounds %struct.shmid_kernel, ptr %355, i32 0, i32 9
  store ptr %404, ptr %414, align 16
  br label %433

415:                                              ; preds = %393, %381
  %416 = phi ptr [ %383, %381 ], [ %395, %393 ]
  %417 = getelementptr inbounds %struct.kern_ipc_perm, ptr %355, i32 0, i32 8
  %418 = load i16, ptr %417, align 32
  %419 = and i16 %418, 1024
  %420 = icmp eq i16 %419, 0
  br i1 %420, label %433, label %421

421:                                              ; preds = %415
  %422 = getelementptr inbounds %struct.shmid_kernel, ptr %355, i32 0, i32 9
  %423 = load ptr, ptr %422, align 16
  %424 = tail call i32 @shmem_lock(ptr noundef %416, i32 noundef 0, ptr noundef %423) #13
  %425 = load i16, ptr %417, align 32
  %426 = and i16 %425, -1025
  store i16 %426, ptr %417, align 32
  store ptr null, ptr %422, align 16
  %427 = getelementptr inbounds %struct.file, ptr %416, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %427) #13, !srcloc !25
  %428 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %427, ptr %427, i32 1, ptr elementtype(i32) %427) #13, !srcloc !26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %429 = load i16, ptr %355, align 4
  %430 = add i16 %429, 1
  store i16 %430, ptr %355, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %431 = getelementptr inbounds %struct.file, ptr %416, i32 0, i32 17
  %432 = load ptr, ptr %431, align 8
  tail call void @shmem_unlock_mapping(ptr noundef %432) #13
  tail call void @fput(ptr noundef %416) #13
  br label %439

433:                                              ; preds = %415, %412, %407, %400, %384, %375, %359
  %434 = phi i32 [ 0, %415 ], [ -43, %359 ], [ 0, %412 ], [ 0, %407 ], [ %405, %400 ], [ -1, %375 ], [ -1, %384 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %435 = load i16, ptr %355, align 4
  %436 = add i16 %435, 1
  store i16 %436, ptr %355, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %437

437:                                              ; preds = %433, %357
  %438 = phi i32 [ %358, %357 ], [ %434, %433 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %439

439:                                              ; preds = %437, %421, %351, %315, %288, %276, %272, %226, %225, %222, %220, %148, %77, %13, %4
  %440 = phi i32 [ %352, %351 ], [ %149, %148 ], [ %78, %77 ], [ -22, %4 ], [ %223, %222 ], [ -14, %315 ], [ -22, %13 ], [ %221, %220 ], [ %438, %437 ], [ 0, %421 ], [ -14, %225 ], [ -14, %226 ], [ -14, %276 ], [ -14, %288 ], [ %275, %272 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %8) #13
  ret i32 %440
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_shmctl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 %1, ptr %4, align 4
  %6 = call i32 @ipc_parse_version(ptr noundef nonnull %4) #13
  %7 = load i32, ptr %4, align 4
  %8 = call fastcc i32 @ksys_shmctl(i32 noundef %0, i32 noundef %7, ptr noundef %5, i32 noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_shmat(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %180, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %1, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %9
  %12 = add i32 %4, -1
  %13 = and i32 %12, %7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = and i32 %2, 8192
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %180, label %18

18:                                               ; preds = %15
  %19 = sub i32 0, %4
  %20 = and i32 %19, %7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = and i32 %2, 16384
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %180

25:                                               ; preds = %9
  %26 = and i32 %2, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %180

28:                                               ; preds = %25, %22, %18, %11
  %29 = phi i32 [ 0, %25 ], [ %20, %18 ], [ 0, %22 ], [ %7, %11 ]
  %30 = phi i32 [ 1, %25 ], [ 17, %18 ], [ 17, %22 ], [ 17, %11 ]
  %31 = and i32 %2, 4096
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 3, i32 1
  %34 = lshr exact i32 %31, 11
  %35 = xor i32 %34, 2
  %36 = and i32 %2, 32768
  %37 = lshr exact i32 %36, 13
  %38 = or i32 %33, %37
  %39 = tail call ptr @llvm.thread.pointer() #13
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 92
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nsproxy, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %44 = getelementptr [3 x %struct.ipc_ids], ptr %43, i32 0, i32 2
  %45 = tail call ptr @ipc_obtain_object_check(ptr noundef %44, i32 noundef %0) #13
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = ptrtoint ptr %45 to i32
  br label %178

49:                                               ; preds = %28
  %50 = icmp eq i32 %36, 0
  %51 = select i1 %32, i32 438, i32 292
  %52 = or i32 %51, 73
  %53 = select i1 %50, i32 %51, i32 %52
  %54 = trunc i32 %53 to i16
  %55 = tail call i32 @ipcperms(ptr noundef %43, ptr noundef %45, i16 noundef signext %54) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %178

57:                                               ; preds = %49
  tail call void @_raw_spin_lock(ptr noundef %45) #13
  %58 = getelementptr inbounds %struct.kern_ipc_perm, ptr %45, i32 0, i32 1
  %59 = load i8, ptr %58, align 4, !range !16
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %62 = load i16, ptr %45, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %178

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.shmid_kernel, ptr %45, i32 0, i32 1
  %66 = load ptr, ptr %65, align 64
  %67 = getelementptr inbounds %struct.file, ptr %66, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #13, !srcloc !25
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #13, !srcloc !26
  %69 = getelementptr inbounds %struct.shmid_kernel, ptr %45, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = getelementptr inbounds %struct.file, ptr %66, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 22
  %75 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 13
  br label %76

76:                                               ; preds = %84, %64
  %77 = load volatile i32, ptr %74, align 4
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %80, %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !28
  %81 = load volatile i32, ptr %74, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %80

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %77, %76 ], [ %81, %80 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %86 = load i64, ptr %75, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  %87 = load volatile i32, ptr %74, align 4
  %88 = icmp eq i32 %87, %85
  br i1 %88, label %89, label %76

89:                                               ; preds = %84
  %90 = trunc i64 %86 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %91 = load i16, ptr %45, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  %93 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %94 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %93, i32 noundef 3520, i32 noundef 16) #15
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  tail call void @fput(ptr noundef %66) #13
  br label %142

97:                                               ; preds = %89
  %98 = tail call ptr @alloc_file_clone(ptr noundef %66, i32 noundef %35, ptr noundef nonnull @shm_file_operations) #13
  %99 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = ptrtoint ptr %98 to i32
  tail call void @kfree(ptr noundef nonnull %94) #13
  tail call void @fput(ptr noundef %66) #13
  br label %142

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.kern_ipc_perm, ptr %45, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  store i32 %104, ptr %94, align 8
  %105 = getelementptr inbounds %struct.shm_file_data, ptr %94, i32 0, i32 1
  store ptr %43, ptr %105, align 4
  %106 = getelementptr inbounds %struct.shm_file_data, ptr %94, i32 0, i32 2
  store ptr %66, ptr %106, align 8
  %107 = getelementptr inbounds %struct.shm_file_data, ptr %94, i32 0, i32 3
  store ptr null, ptr %107, align 4
  %108 = getelementptr inbounds %struct.file, ptr %98, i32 0, i32 15
  store ptr %94, ptr %108, align 8
  %109 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 37
  %110 = load ptr, ptr %109, align 4
  %111 = tail call fastcc i32 @mmap_write_lock_killable(ptr noundef %110)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %102
  %114 = icmp ne i32 %29, 0
  %115 = and i32 %2, 16384
  %116 = icmp eq i32 %115, 0
  %117 = and i1 %116, %114
  br i1 %117, label %118, label %128

118:                                              ; preds = %113
  %119 = add i32 %29, %90
  %120 = icmp ult i32 %119, %29
  br i1 %120, label %132, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %109, align 4
  %123 = tail call ptr @find_vma(ptr noundef %122, i32 noundef %29) #13
  %124 = icmp eq ptr %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load i32, ptr %123, align 4
  %127 = icmp ult i32 %126, %119
  br i1 %127, label %132, label %128

128:                                              ; preds = %125, %121, %113
  %129 = call i32 @do_mmap(ptr noundef %98, i32 noundef %29, i32 noundef %90, i32 noundef %38, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %6, ptr noundef null) #13
  store i32 %129, ptr %3, align 4
  %130 = icmp ugt i32 %129, -4096
  br i1 %130, label %131, label %132, !prof !19

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %131, %128, %125, %118
  %133 = phi i32 [ %129, %131 ], [ %129, %128 ], [ %29, %118 ], [ %29, %125 ]
  %134 = phi i32 [ %129, %131 ], [ 0, %128 ], [ -22, %118 ], [ -22, %125 ]
  %135 = load ptr, ptr %109, align 4
  call fastcc void @mmap_write_unlock(ptr noundef %135)
  %136 = load i32, ptr %6, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %132
  %139 = call i32 @__mm_populate(i32 noundef %133, i32 noundef %136, i32 noundef 1) #13
  br label %140

140:                                              ; preds = %138, %132, %102
  %141 = phi i32 [ %134, %138 ], [ %134, %132 ], [ -4, %102 ]
  call void @fput(ptr noundef %98) #13
  br label %142

142:                                              ; preds = %140, %100, %96
  %143 = phi i32 [ %101, %100 ], [ %141, %140 ], [ -12, %96 ]
  %144 = getelementptr [3 x %struct.ipc_ids], ptr %43, i32 0, i32 2, i32 2
  call void @down_write(ptr noundef %144) #13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %145 = call ptr @ipc_obtain_object_idr(ptr noundef %44, i32 noundef %0) #13
  %146 = icmp ugt ptr %145, inttoptr (i32 -4096 to ptr)
  br i1 %146, label %154, label %147

147:                                              ; preds = %142
  call void @_raw_spin_lock(ptr noundef %145) #13
  %148 = getelementptr inbounds %struct.kern_ipc_perm, ptr %145, i32 0, i32 1
  %149 = load i8, ptr %148, align 4, !range !16
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %147
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %152 = load i16, ptr %145, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %145, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %154

154:                                              ; preds = %151, %142
  %155 = phi ptr [ %145, %142 ], [ inttoptr (i32 -43 to ptr), %151 ]
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %156

156:                                              ; preds = %154, %147
  %157 = phi ptr [ %155, %154 ], [ %145, %147 ]
  %158 = getelementptr inbounds %struct.shmid_kernel, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 4
  %160 = add i32 %159, -1
  store i32 %160, ptr %158, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.shmid_kernel, ptr %157, i32 0, i32 12
  %164 = load ptr, ptr %163, align 64
  %165 = getelementptr inbounds %struct.ipc_namespace, ptr %164, i32 0, i32 12
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.kern_ipc_perm, ptr %157, i32 0, i32 8
  %170 = load i16, ptr %169, align 32
  %171 = and i16 %170, 512
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168, %162
  call fastcc void @shm_destroy(ptr noundef %43, ptr noundef %157)
  br label %177

174:                                              ; preds = %168, %156
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %175 = load i16, ptr %157, align 4
  %176 = add i16 %175, 1
  store i16 %176, ptr %157, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %177

177:                                              ; preds = %174, %173
  call void @up_write(ptr noundef %144) #13
  br label %180

178:                                              ; preds = %61, %49, %47
  %179 = phi i32 [ %48, %47 ], [ -13, %49 ], [ -43, %61 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %180

180:                                              ; preds = %178, %177, %25, %22, %15, %5
  %181 = phi i32 [ %143, %177 ], [ -22, %5 ], [ %179, %178 ], [ -22, %22 ], [ -22, %15 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %181
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipcperms(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_clone(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mmap_write_lock_killable(ptr noundef %0) unnamed_addr #8 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #13
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.anon.23, ptr %0, i32 0, i32 15
  %7 = tail call i32 @down_write_killable(ptr noundef %6) #13
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = icmp eq i32 %7, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %11) #13
  br label %12

12:                                               ; preds = %10, %5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mmap_write_unlock(ptr noundef %0) unnamed_addr #8 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext true) #13
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.anon.23, ptr %0, i32 0, i32 15
  tail call void @up_write(ptr noundef %6) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmat(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !18
  %6 = call i32 @do_shmat(i32 noundef %0, ptr noundef %5, i32 noundef %2, ptr noundef nonnull %4, i32 noundef 16384) #13
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %4, align 4
  %9 = select i1 %7, i32 %8, i32 %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_shmdt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, 4095
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %104

8:                                                ; preds = %1
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %4, i1 noundef zeroext true) #13
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.anon.23, ptr %4, i32 0, i32 15
  %14 = tail call i32 @down_write_killable(ptr noundef %13) #13
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = icmp eq i32 %14, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %4, i1 noundef zeroext true, i1 noundef zeroext %18) #13
  br label %19

19:                                               ; preds = %17, %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %19
  %22 = tail call ptr @find_vma(ptr noundef %4, i32 noundef %5) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %98, label %24

24:                                               ; preds = %58, %21
  %25 = phi ptr [ %27, %58 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @shm_vm_ops
  br i1 %30, label %31, label %58

31:                                               ; preds = %24
  %32 = load i32, ptr %25, align 4
  %33 = sub i32 %32, %5
  %34 = lshr i32 %33, 12
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 14
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 22
  %44 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 13
  br label %45

45:                                               ; preds = %53, %38
  %46 = load volatile i32, ptr %43, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %49, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !28
  %50 = load volatile i32, ptr %43, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %49

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %46, %45 ], [ %50, %49 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %55 = load i64, ptr %44, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  %56 = load volatile i32, ptr %43, align 4
  %57 = icmp eq i32 %56, %54
  br i1 %57, label %60, label %45

58:                                               ; preds = %31, %24
  %59 = icmp eq ptr %27, null
  br i1 %59, label %98, label %24

60:                                               ; preds = %53
  %61 = load i32, ptr %25, align 4
  %62 = getelementptr inbounds %struct.vm_area_struct, ptr %25, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %63, %61
  %65 = tail call i32 @do_munmap(ptr noundef %4, i32 noundef %61, i32 noundef %64, ptr noundef null) #13
  %66 = add i64 %55, 4095
  %67 = and i64 %66, -4096
  %68 = icmp eq ptr %27, null
  br i1 %68, label %98, label %69

69:                                               ; preds = %96, %60
  %70 = phi ptr [ %78, %96 ], [ %27, %60 ]
  %71 = getelementptr inbounds %struct.vm_area_struct, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = sub i32 %72, %5
  %74 = zext i32 %73 to i64
  %75 = icmp slt i64 %67, %74
  br i1 %75, label %98, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.vm_area_struct, ptr %70, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.vm_area_struct, ptr %70, i32 0, i32 12
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, @shm_vm_ops
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i32, ptr %70, align 4
  %84 = sub i32 %83, %5
  %85 = lshr i32 %84, 12
  %86 = getelementptr inbounds %struct.vm_area_struct, ptr %70, i32 0, i32 13
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.vm_area_struct, ptr %70, i32 0, i32 14
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %40
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = sub i32 %72, %83
  %95 = tail call i32 @do_munmap(ptr noundef %4, i32 noundef %83, i32 noundef %94, ptr noundef null) #13
  br label %96

96:                                               ; preds = %93, %89, %82, %76
  %97 = icmp eq ptr %78, null
  br i1 %97, label %98, label %69

98:                                               ; preds = %96, %69, %60, %58, %21
  %99 = phi i32 [ 0, %60 ], [ -22, %21 ], [ 0, %96 ], [ 0, %69 ], [ -22, %58 ]
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  tail call void @__mmap_lock_do_trace_released(ptr noundef %4, i1 noundef zeroext true) #13
  br label %103

103:                                              ; preds = %102, %98
  tail call void @up_write(ptr noundef %13) #13
  br label %104

104:                                              ; preds = %103, %19, %1
  %105 = phi i32 [ %99, %103 ], [ -22, %1 ], [ -4, %19 ]
  ret i32 %105
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_munmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_shmdt(i32 noundef %0) #0 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call i32 @ksys_shmdt(ptr noundef %2) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_lock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_rmid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_pid(ptr noundef returned %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !25
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !31
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !19

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !15

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %12) #13
  br label %13

13:                                               ; preds = %11, %7, %1
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc i32 @__shm_open(ptr noundef %1)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.shm_file_data, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %9, ptr noundef %1) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  tail call void @shm_close(ptr noundef %1)
  br label %26

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.shm_file_data, ptr %4, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vm_operations_struct, ptr %19, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !19

24:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 597, i32 noundef 9, ptr noundef null) #13
  br label %25

25:                                               ; preds = %24, %17
  store ptr @shm_vm_ops, ptr %18, align 4
  br label %26

26:                                               ; preds = %25, %16, %2
  %27 = phi i32 [ %14, %16 ], [ 0, %25 ], [ %5, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_release(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.shm_file_data, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @fput(ptr noundef %6) #13
  store ptr null, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_fsync(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.shm_file_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 17
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call i32 %12(ptr noundef %8, i64 noundef %1, i64 noundef %2, i32 noundef %3) #13
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i32 [ %15, %14 ], [ -22, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_get_unmapped_area(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.shm_file_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.file_operations, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %9, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_fallocate(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.shm_file_data, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.file_operations, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call i32 %12(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #13
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi i32 [ %15, %14 ], [ -95, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__shm_open(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.shm_file_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %9 = getelementptr [3 x %struct.ipc_ids], ptr %7, i32 0, i32 2
  %10 = tail call ptr @ipc_obtain_object_idr(ptr noundef %9, i32 noundef %8) #13
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef %10) #13
  %13 = getelementptr inbounds %struct.kern_ipc_perm, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 4, !range !16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %17 = load i16, ptr %10, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi ptr [ %10, %1 ], [ inttoptr (i32 -43 to ptr), %16 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi ptr [ %20, %19 ], [ %10, %12 ]
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = ptrtoint ptr %22 to i32
  br label %65

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.shmid_kernel, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 64
  %29 = getelementptr inbounds %struct.shm_file_data, ptr %5, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %33 = load i16, ptr %22, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %65

35:                                               ; preds = %26
  %36 = tail call i64 @ktime_get_real_seconds() #13
  %37 = getelementptr inbounds %struct.shmid_kernel, ptr %22, i32 0, i32 4
  store i64 %36, ptr %37, align 16
  %38 = getelementptr inbounds %struct.shmid_kernel, ptr %22, i32 0, i32 8
  %39 = tail call ptr @llvm.thread.pointer() #13
  %40 = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 93
  %41 = load ptr, ptr %40, align 16
  %42 = getelementptr %struct.signal_struct, ptr %41, i32 0, i32 22, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %38, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %59, label %46

46:                                               ; preds = %35
  %47 = icmp eq ptr %43, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %43) #13, !srcloc !25
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #13, !srcloc !31
  %50 = extractvalue { i32, i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52, !prof !19

52:                                               ; preds = %48
  %53 = add i32 %50, 1
  %54 = or i32 %53, %50
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %58, label %56, !prof !15

56:                                               ; preds = %52, %48
  %57 = phi i32 [ 2, %48 ], [ 1, %52 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef %57) #13
  br label %58

58:                                               ; preds = %56, %52, %46
  store ptr %43, ptr %38, align 4
  tail call void @put_pid(ptr noundef %44) #13
  br label %59

59:                                               ; preds = %58, %35
  %60 = getelementptr inbounds %struct.shmid_kernel, ptr %22, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %63 = load i16, ptr %22, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %65

65:                                               ; preds = %59, %32, %24
  %66 = phi i32 [ %25, %24 ], [ -22, %32 ], [ 0, %59 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shm_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.shm_file_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr [3 x %struct.ipc_ids], ptr %7, i32 0, i32 2, i32 2
  tail call void @down_write(ptr noundef %8) #13
  %9 = load i32, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %10 = getelementptr [3 x %struct.ipc_ids], ptr %7, i32 0, i32 2
  %11 = tail call ptr @ipc_obtain_object_idr(ptr noundef %10, i32 noundef %9) #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef %11) #13
  %14 = getelementptr inbounds %struct.kern_ipc_perm, ptr %11, i32 0, i32 1
  %15 = load i8, ptr %14, align 4, !range !16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %18 = load i16, ptr %11, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi ptr [ %11, %1 ], [ inttoptr (i32 -43 to ptr), %17 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi ptr [ %21, %20 ], [ %11, %13 ]
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %25 = load i1, ptr @shm_close.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !19

28:                                               ; preds = %22
  store i1 true, ptr @shm_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 377, i32 noundef 9, ptr noundef null) #13
  br label %29

29:                                               ; preds = %28, %22
  br i1 %24, label %74, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.shmid_kernel, ptr %23, i32 0, i32 8
  %32 = tail call ptr @llvm.thread.pointer() #13
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 93
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr %struct.signal_struct, ptr %34, i32 0, i32 22, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %31, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %52, label %39

39:                                               ; preds = %30
  %40 = icmp eq ptr %36, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %36) #13, !srcloc !25
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %36, ptr nonnull %36, i32 1, ptr nonnull elementtype(i32) %36) #13, !srcloc !31
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !19

45:                                               ; preds = %41
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %51, label %49, !prof !15

49:                                               ; preds = %45, %41
  %50 = phi i32 [ 2, %41 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %36, i32 noundef %50) #13
  br label %51

51:                                               ; preds = %49, %45, %39
  store ptr %36, ptr %31, align 4
  tail call void @put_pid(ptr noundef %37) #13
  br label %52

52:                                               ; preds = %51, %30
  %53 = tail call i64 @ktime_get_real_seconds() #13
  %54 = getelementptr inbounds %struct.shmid_kernel, ptr %23, i32 0, i32 5
  store i64 %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.shmid_kernel, ptr %23, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.shmid_kernel, ptr %23, i32 0, i32 12
  %61 = load ptr, ptr %60, align 64
  %62 = getelementptr inbounds %struct.ipc_namespace, ptr %61, i32 0, i32 12
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.kern_ipc_perm, ptr %23, i32 0, i32 8
  %67 = load i16, ptr %66, align 32
  %68 = and i16 %67, 512
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %59
  tail call fastcc void @shm_destroy(ptr noundef %7, ptr noundef %23)
  br label %74

71:                                               ; preds = %65, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !8
  %72 = load i16, ptr %23, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %74

74:                                               ; preds = %71, %70, %29
  tail call void @up_write(ptr noundef %8) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmem_kernel_file_setup(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_addid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_to_ipc64_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_idr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc64_perm_to_ipc_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipcctl_obtain_check(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipc_update_perm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipc_set_key_private(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @shmem_unlock_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_obtain_object_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @shm_open(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @__shm_open(ptr noundef %0)
  %3 = icmp ne i32 %2, 0
  %4 = load i1, ptr @shm_open.__already_done, align 1
  %5 = xor i1 %4, true
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %8, !prof !19

7:                                                ; preds = %1
  store i1 true, ptr @shm_open.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 310, i32 noundef 9, ptr noundef null) #13
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_may_split(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.shm_file_data, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_operations_struct, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 %10(ptr noundef %0, i32 noundef %1) #13
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ 0, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_fault(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.shm_file_data, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_operations_struct, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0) #13
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @shm_pagesize(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.shm_file_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vm_operations_struct, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 %9(ptr noundef %0) #13
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ 4096, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipc_seq_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2148968154}
!9 = !{i64 2148963978}
!10 = !{i64 2148964053, i64 2148964080, i64 2148964127, i64 2148964149, i64 2148964177, i64 2148964197}
!11 = !{i64 705473}
!12 = !{i64 2148992298}
!13 = !{i64 2149366926}
!14 = !{i64 2148991157}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i8 0, i8 2}
!17 = !{i64 2149367143}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2151587462, i64 2151587487}
!21 = !{i64 4082996}
!22 = !{i64 4083193}
!23 = !{i64 2151568472}
!24 = !{i64 2151586884, i64 2151586909}
!25 = !{i64 799550, i64 2148289521, i64 2148289547, i64 2148289594, i64 2148289616, i64 2148289644, i64 2148289664}
!26 = !{i64 2148300936, i64 2148300962, i64 2148300991, i64 2148301025, i64 2148301056, i64 2148301079}
!27 = !{i64 2151901805}
!28 = !{i64 2151901647}
!29 = !{i64 2151901949}
!30 = !{i64 2149210959}
!31 = !{i64 2148302394, i64 2148302426, i64 2148302455, i64 2148302489, i64 2148302520, i64 2148302543}
