; ModuleID = '/llk/IR/fs/proc/inode.c_pt.bc'
source_filename = "../fs/proc/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_inode = type { ptr, i32, %union.proc_op, ptr, ptr, ptr, %struct.hlist_node, ptr, %struct.inode }
%union.proc_op = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.2 }
%union.anon.2 = type { i64 }
%union.anon.59 = type { %struct.list_head }
%union.anon.60 = type { %struct.hlist_node }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.65, ptr, %union.anon.66, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.65 = type { ptr }
%union.anon.66 = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pde_opener = type { %struct.list_head, ptr, i8, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.delayed_call = type { ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.49 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.12 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }

@.str = private unnamed_addr constant [17 x i8] c"proc_inode_cache\00", align 1
@proc_inode_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"pde_opener\00", align 1
@pde_opener_cache = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"proc_dir_entry\00", align 1
@proc_dir_entry_cache = external dso_local local_unnamed_addr global ptr, align 4
@proc_sops = dso_local local_unnamed_addr constant %struct.super_operations { ptr @proc_alloc_inode, ptr null, ptr @proc_free_inode, ptr null, ptr null, ptr @generic_delete_inode, ptr @proc_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr @proc_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_link_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @proc_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_iter_file_ops = internal constant %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr null, ptr @proc_reg_write, ptr @proc_reg_read_iter, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr null, ptr @proc_reg_mmap, i32 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr @generic_file_splice_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_reg_file_ops = internal constant %struct.file_operations { ptr null, ptr @proc_reg_llseek, ptr @proc_reg_read, ptr @proc_reg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_poll, ptr @proc_reg_unlocked_ioctl, ptr null, ptr @proc_reg_mmap, i32 0, ptr @proc_reg_open, ptr null, ptr @proc_reg_release, ptr null, ptr null, ptr null, ptr null, ptr @proc_reg_get_unmapped_area, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c",hidepid=%s\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c",subset=pid\00", align 1
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"noaccess\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"ptraceable\00", align 1
@hidepid2str.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"fs/proc/inode.c\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"bad hide_pid value: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @proc_init_kmemcache() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 432, i32 noundef 0, i32 noundef 1441792, ptr noundef nonnull @init_once) #7
  store ptr %1, ptr @proc_inode_cachep, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 20, i32 noundef 0, i32 noundef 262144, ptr noundef null) #7
  store ptr %2, ptr @pde_opener_cache, align 4
  %3 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 0, i32 noundef 262144, i32 noundef 108, i32 noundef 16, ptr noundef null) #7
  store ptr %3, ptr @proc_dir_entry_cache, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.proc_inode, ptr %0, i32 0, i32 8
  tail call void @inode_init_once(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_invalidate_siblings_dcache(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br label %63

6:                                                ; preds = %56, %2
  %7 = phi ptr [ %58, %56 ], [ %3, %2 ]
  %8 = phi ptr [ %57, %56 ], [ null, %2 ]
  tail call void @_raw_spin_lock(ptr noundef %1) #7
  %9 = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 4
  store volatile ptr %13, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  store volatile ptr %10, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12
  store volatile ptr null, ptr %9, align 4
  br label %18

18:                                               ; preds = %17, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %19 = load i16, ptr %1, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %1, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %21 = getelementptr i8, ptr %7, i32 16
  %22 = getelementptr i8, ptr %7, i32 44
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %8
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #7, !srcloc !15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 0, i32 1, ptr elementtype(i32) %26) #7, !srcloc !16
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  br label %31

31:                                               ; preds = %30, %18
  %32 = tail call ptr @igrab(ptr noundef %21) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  br i1 %24, label %36, label %33

33:                                               ; preds = %31
  %34 = icmp eq ptr %8, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @deactivate_super(ptr noundef nonnull %8) #7
  br label %36

36:                                               ; preds = %35, %33, %31
  %37 = phi ptr [ %8, %31 ], [ %23, %35 ], [ %23, %33 ]
  %38 = icmp eq ptr %32, null
  br i1 %38, label %39, label %40, !prof !18

39:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  br label %56

40:                                               ; preds = %36
  %41 = load i16, ptr %32, align 8
  %42 = and i16 %41, -4096
  %43 = icmp eq i16 %42, 16384
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = tail call ptr @d_find_alias(ptr noundef nonnull %32) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %51

47:                                               ; preds = %40
  %48 = tail call ptr @d_find_any_alias(ptr noundef nonnull %32) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  tail call void @d_invalidate(ptr noundef nonnull %48) #7
  tail call void @dput(ptr noundef nonnull %48) #7
  br label %55

51:                                               ; preds = %51, %44
  %52 = phi ptr [ %53, %51 ], [ %45, %44 ]
  tail call void @d_invalidate(ptr noundef nonnull %52) #7
  tail call void @dput(ptr noundef nonnull %52) #7
  %53 = tail call ptr @d_find_alias(ptr noundef nonnull %32) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %51

55:                                               ; preds = %51, %50, %47, %44
  tail call void @iput(ptr noundef nonnull %32) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !8
  br label %56

56:                                               ; preds = %55, %39, %25
  %57 = phi ptr [ %37, %39 ], [ %37, %55 ], [ %8, %25 ]
  %58 = load ptr, ptr %0, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %6

60:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !9
  %61 = icmp eq ptr %57, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  tail call void @deactivate_super(ptr noundef nonnull %57) #7
  br label %63

63:                                               ; preds = %62, %60, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_any_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_find_alias(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal noalias ptr @proc_alloc_inode(ptr nocapture noundef readnone %0) #2 {
  %2 = load ptr, ptr @proc_inode_cachep, align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3264) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.proc_inode, ptr %3, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, i8 0, i64 36, i1 false)
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_free_inode(ptr noundef %0) #2 {
  %2 = load ptr, ptr @proc_inode_cachep, align 4
  %3 = getelementptr i8, ptr %0, i32 -40
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_evict_inode(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -40
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %3) #7
  tail call void @clear_inode(ptr noundef %0) #7
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @proc_pid_evict_inode(ptr noundef %2) #7
  store ptr null, ptr %2, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr i8, ptr %0, i32 -28
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @pde_put(ptr noundef nonnull %9) #7
  store ptr null, ptr %8, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr i8, ptr %0, i32 -24
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store volatile ptr null, ptr %13, align 8
  tail call void @proc_sys_evict_inode(ptr noundef %0, ptr noundef nonnull %14) #7
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proc_fs_info, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %8, -1
  %12 = load i32, ptr @overflowgid, align 4
  %13 = select i1 %11, i32 %12, i32 %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %13) #7
  br label %14

14:                                               ; preds = %10, %2
  %15 = getelementptr inbounds %struct.proc_fs_info, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %19 [
    i32 0, label %24
    i32 4, label %18
    i32 1, label %22
    i32 2, label %17
  ]

17:                                               ; preds = %14
  br label %22

18:                                               ; preds = %14
  br label %22

19:                                               ; preds = %14
  %20 = load i1, ptr @hidepid2str.__already_done, align 1
  br i1 %20, label %22, label %21, !prof !19

21:                                               ; preds = %19
  store i1 true, ptr @hidepid2str.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 177, i32 noundef 9, ptr noundef nonnull @.str.11, i32 noundef %16) #7
  br label %22

22:                                               ; preds = %21, %19, %18, %17, %14
  %23 = phi ptr [ @.str.9, %18 ], [ @.str.8, %17 ], [ @.str.12, %21 ], [ @.str.12, %19 ], [ @.str.7, %14 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %23) #7
  br label %24

24:                                               ; preds = %22, %14
  %25 = getelementptr inbounds %struct.proc_fs_info, ptr %6, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  br label %29

29:                                               ; preds = %28, %24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_entry_rundown(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %3 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1
  store i64 0, ptr %2, align 8
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.completion, ptr %2, i32 0, i32 1, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 4
  store ptr %2, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #7, !srcloc !15
  %6 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 -2147483648, ptr elementtype(i32) %0) #7, !srcloc !21
  %7 = extractvalue { i32, i32 } %6, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !22
  %8 = icmp eq i32 %7, -2147483648
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  call void @wait_for_completion(ptr noundef nonnull %2) #7
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 2
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %19, label %15

15:                                               ; preds = %15, %10
  %16 = phi ptr [ %17, %15 ], [ %13, %10 ]
  call fastcc void @close_pdeo(ptr noundef %0, ptr noundef %16)
  call void @_raw_spin_lock(ptr noundef %11) #7
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, %12
  br i1 %18, label %19, label %15

19:                                               ; preds = %15, %10
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %20 = load i16, ptr %11, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @close_pdeo(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.completion, align 8
  %4 = getelementptr inbounds %struct.pde_opener, ptr %1, i32 0, i32 2
  %5 = load i8, ptr %4, align 4, !range !23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1
  store i64 0, ptr %3, align 8
  store ptr %8, ptr %8, align 8
  %9 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pde_opener, ptr %1, i32 0, i32 3
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %12 = load i16, ptr %11, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  call void @wait_for_completion(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %39

14:                                               ; preds = %2
  store i8 1, ptr %4, align 4
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %18 = getelementptr inbounds %struct.pde_opener, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.proc_ops, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 %23(ptr noundef %25, ptr noundef %19) #7
  tail call void @_raw_spin_lock(ptr noundef %15) #7
  %27 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %1, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %31 = getelementptr inbounds %struct.pde_opener, ptr %1, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %33 = load i16, ptr %15, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %35 = icmp eq ptr %32, null
  br i1 %35, label %37, label %36, !prof !19

36:                                               ; preds = %14
  tail call void @complete(ptr noundef nonnull %32) #7
  br label %37

37:                                               ; preds = %36, %14
  %38 = load ptr, ptr @pde_opener_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef %1) #7
  br label %39

39:                                               ; preds = %37, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_get_link(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr i8, ptr %1, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %16, %3
  %8 = phi i32 [ %6, %3 ], [ %17, %16 ]
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %23, label %10, !prof !18

10:                                               ; preds = %7
  %11 = add nuw i32 %8, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #7, !srcloc !15
  br label %12

12:                                               ; preds = %12, %10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %8, i32 %11, ptr elementtype(i32) %5) #7, !srcloc !25
  %14 = extractvalue { i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %12

16:                                               ; preds = %12
  %17 = extractvalue { i32, i32 } %13, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %19, label %7, !prof !19

19:                                               ; preds = %16
  store ptr @proc_put_link, ptr %2, align 4
  %20 = getelementptr inbounds %struct.delayed_call, ptr %2, i32 0, i32 1
  store ptr %5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %7
  %24 = phi ptr [ %22, %19 ], [ inttoptr (i32 -22 to ptr), %7 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_get_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.timespec64, align 8
  %4 = tail call ptr @new_inode(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @pde_put(ptr noundef %1) #7
  br label %75

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 15
  %15 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 14
  %16 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %15, ptr noundef align 8 dereferenceable(16) %16, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %14, ptr noundef align 8 dereferenceable(16) %16, i32 16, i1 false)
  %17 = getelementptr i8, ptr %4, i32 -28
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 21
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, -4096
  %21 = icmp eq i16 %20, 16384
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  call void @make_empty_dir_inode(ptr noundef nonnull %4) #7
  br label %75

27:                                               ; preds = %7
  %28 = icmp eq i16 %19, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %27, %22
  store i16 %19, ptr %4, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 14
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 3
  %34 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 15
  %35 = load i32, ptr %34, align 8
  store i32 %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %29, %27
  %37 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 16
  %38 = load i64, ptr %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  store i64 %38, ptr %41, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 13
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  call void @set_nlink(ptr noundef nonnull %4, i32 noundef %44) #7
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i16, ptr %4, align 8
  %49 = and i16 %48, -4096
  switch i16 %49, label %74 [
    i16 -32768, label %50
    i16 16384, label %62
    i16 -24576, label %69
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 5
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  store ptr %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.proc_ops, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  %59 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 39
  br i1 %58, label %61, label %60

60:                                               ; preds = %50
  store ptr @proc_iter_file_ops, ptr %59, align 8
  br label %75

61:                                               ; preds = %50
  store ptr @proc_reg_file_ops, ptr %59, align 8
  br label %75

62:                                               ; preds = %47
  %63 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 5
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  store ptr %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 39
  store ptr %67, ptr %68, align 8
  br label %75

69:                                               ; preds = %47
  %70 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 5
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  store ptr %71, ptr %72, align 8
  %73 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 39
  store ptr null, ptr %73, align 8
  br label %75

74:                                               ; preds = %47
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/proc/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 693, 0\0A.popsection", ""() #7, !srcloc !27
  unreachable

75:                                               ; preds = %69, %62, %61, %60, %26, %6
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pde_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_init_once(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_pid_evict_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_sys_evict_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_put_link(ptr noundef %0) #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #7, !srcloc !15
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #7, !srcloc !29
  %3 = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %4 = icmp eq i32 %3, -2147483648
  br i1 %4, label %5, label %8, !prof !18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @complete(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @proc_reg_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 22
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.proc_ops, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i64 %16(ptr noundef %0, i64 noundef %1, i32 noundef %2) #7
  br label %44

18:                                               ; preds = %3
  %19 = load volatile i32, ptr %7, align 4
  br label %20

20:                                               ; preds = %29, %18
  %21 = phi i32 [ %19, %18 ], [ %30, %29 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %44, label %23, !prof !18

23:                                               ; preds = %20
  %24 = add nuw i32 %21, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !15
  br label %25

25:                                               ; preds = %25, %23
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %21, i32 %24, ptr elementtype(i32) %7) #7, !srcloc !25
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %31 = icmp eq i32 %30, %21
  br i1 %31, label %32, label %20, !prof !19

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.proc_ops, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i64 %36(ptr noundef %0, i64 noundef %1, i32 noundef %2) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !15
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !29
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %40 = icmp eq i32 %39, -2147483648
  br i1 %40, label %41, label %44, !prof !18

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void @complete(ptr noundef %43) #7
  br label %44

44:                                               ; preds = %41, %32, %20, %12
  %45 = phi i64 [ %17, %12 ], [ %37, %32 ], [ %37, %41 ], [ -22, %20 ]
  ret i64 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -28
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 22
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.proc_ops, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %51

21:                                               ; preds = %4
  %22 = load volatile i32, ptr %8, align 4
  br label %23

23:                                               ; preds = %32, %21
  %24 = phi i32 [ %22, %21 ], [ %33, %32 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %51, label %26, !prof !18

26:                                               ; preds = %23
  %27 = add nuw i32 %24, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !15
  br label %28

28:                                               ; preds = %28, %26
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %24, i32 %27, ptr elementtype(i32) %8) #7, !srcloc !25
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28
  %33 = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %34 = icmp eq i32 %33, %24
  br i1 %34, label %35, label %23, !prof !19

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.proc_ops, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call i32 %39(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %42, %41 ], [ -5, %35 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !15
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #7, !srcloc !29
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %47 = icmp eq i32 %46, -2147483648
  br i1 %47, label %48, label %51, !prof !18

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  tail call void @complete(ptr noundef %50) #7
  br label %51

51:                                               ; preds = %48, %43, %23, %19, %13
  %52 = phi i32 [ %20, %19 ], [ -5, %13 ], [ %44, %43 ], [ %44, %48 ], [ -5, %23 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_read_iter(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 22
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.proc_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1) #7
  br label %44

18:                                               ; preds = %2
  %19 = load volatile i32, ptr %7, align 4
  br label %20

20:                                               ; preds = %29, %18
  %21 = phi i32 [ %19, %18 ], [ %30, %29 ]
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %44, label %23, !prof !18

23:                                               ; preds = %20
  %24 = add nuw i32 %21, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !15
  br label %25

25:                                               ; preds = %25, %23
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %21, i32 %24, ptr elementtype(i32) %7) #7, !srcloc !25
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %31 = icmp eq i32 %30, %21
  br i1 %31, label %32, label %20, !prof !19

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.proc_ops, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef %1) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !15
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !29
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %40 = icmp eq i32 %39, -2147483648
  br i1 %40, label %41, label %44, !prof !18

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  tail call void @complete(ptr noundef %43) #7
  br label %44

44:                                               ; preds = %41, %32, %20, %12
  %45 = phi i32 [ %17, %12 ], [ %37, %32 ], [ %37, %41 ], [ -5, %20 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -28
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 22
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.proc_ops, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #7
  br label %49

19:                                               ; preds = %2
  %20 = load volatile i32, ptr %6, align 4
  br label %21

21:                                               ; preds = %30, %19
  %22 = phi i32 [ %20, %19 ], [ %31, %30 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %49, label %24, !prof !18

24:                                               ; preds = %21
  %25 = add nuw i32 %22, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !15
  br label %26

26:                                               ; preds = %26, %24
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %22, i32 %25, ptr elementtype(i32) %6) #7, !srcloc !25
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %32 = icmp eq i32 %31, %22
  br i1 %32, label %33, label %21, !prof !19

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.proc_ops, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call i32 %37(ptr noundef %0, ptr noundef %1) #7
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi i32 [ %40, %39 ], [ 325, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !15
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #7, !srcloc !29
  %44 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %45 = icmp eq i32 %44, -2147483648
  br i1 %45, label %46, label %49, !prof !18

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call void @complete(ptr noundef %48) #7
  br label %49

49:                                               ; preds = %46, %41, %21, %17, %11
  %50 = phi i32 [ %18, %17 ], [ 325, %11 ], [ %42, %41 ], [ %42, %46 ], [ 325, %21 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_unlocked_ioctl(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 22
  %9 = load i8, ptr %8, align 2
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.proc_ops, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %12
  %19 = tail call i32 %16(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  br label %50

20:                                               ; preds = %3
  %21 = load volatile i32, ptr %7, align 4
  br label %22

22:                                               ; preds = %31, %20
  %23 = phi i32 [ %21, %20 ], [ %32, %31 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %50, label %25, !prof !18

25:                                               ; preds = %22
  %26 = add nuw i32 %23, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !15
  br label %27

27:                                               ; preds = %27, %25
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 %23, i32 %26, ptr elementtype(i32) %7) #7, !srcloc !25
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %27

31:                                               ; preds = %27
  %32 = extractvalue { i32, i32 } %28, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %33 = icmp eq i32 %32, %23
  br i1 %33, label %34, label %22, !prof !19

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.proc_ops, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = tail call i32 %38(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi i32 [ %41, %40 ], [ -25, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #7, !srcloc !15
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #7, !srcloc !29
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %46 = icmp eq i32 %45, -2147483648
  br i1 %46, label %47, label %50, !prof !18

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void @complete(ptr noundef %49) #7
  br label %50

50:                                               ; preds = %47, %42, %22, %18, %12
  %51 = phi i32 [ %19, %18 ], [ -25, %12 ], [ %43, %42 ], [ %43, %47 ], [ -25, %22 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_mmap(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -28
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 22
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.proc_ops, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef %1) #7
  br label %49

19:                                               ; preds = %2
  %20 = load volatile i32, ptr %6, align 4
  br label %21

21:                                               ; preds = %30, %19
  %22 = phi i32 [ %20, %19 ], [ %31, %30 ]
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %49, label %24, !prof !18

24:                                               ; preds = %21
  %25 = add nuw i32 %22, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !15
  br label %26

26:                                               ; preds = %26, %24
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %22, i32 %25, ptr elementtype(i32) %6) #7, !srcloc !25
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %32 = icmp eq i32 %31, %22
  br i1 %32, label %33, label %21, !prof !19

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.proc_ops, ptr %35, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call i32 %37(ptr noundef %0, ptr noundef %1) #7
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi i32 [ %40, %39 ], [ -5, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #7, !srcloc !15
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #7, !srcloc !29
  %44 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %45 = icmp eq i32 %44, -2147483648
  br i1 %45, label %46, label %49, !prof !18

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.proc_dir_entry, ptr %6, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call void @complete(ptr noundef %48) #7
  br label %49

49:                                               ; preds = %46, %41, %21, %17, %11
  %50 = phi i32 [ %18, %17 ], [ -5, %11 ], [ %42, %41 ], [ %42, %46 ], [ -5, %21 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_open(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 22
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.proc_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %76, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #7
  br label %76

17:                                               ; preds = %2
  %18 = load volatile i32, ptr %4, align 4
  br label %19

19:                                               ; preds = %28, %17
  %20 = phi i32 [ %18, %17 ], [ %29, %28 ]
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %76, label %22, !prof !18

22:                                               ; preds = %19
  %23 = add nuw i32 %20, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !15
  br label %24

24:                                               ; preds = %24, %22
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %20, i32 %23, ptr elementtype(i32) %4) #7, !srcloc !25
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24
  %29 = extractvalue { i32, i32 } %25, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %30 = icmp eq i32 %29, %20
  br i1 %30, label %31, label %19, !prof !19

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.proc_ops, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr @pde_opener_cache, align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %38, i32 noundef 3264) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %68, label %45

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.proc_ops, ptr %33, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %68, label %50

45:                                               ; preds = %37
  %46 = load ptr, ptr %32, align 4
  %47 = getelementptr inbounds %struct.proc_ops, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %52

50:                                               ; preds = %41
  %51 = tail call i32 %43(ptr noundef %0, ptr noundef %1) #7
  br label %68

52:                                               ; preds = %45
  %53 = tail call i32 %48(ptr noundef %0, ptr noundef %1) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52, %45
  %56 = getelementptr inbounds %struct.pde_opener, ptr %39, i32 0, i32 1
  store ptr %1, ptr %56, align 8
  %57 = getelementptr inbounds %struct.pde_opener, ptr %39, i32 0, i32 2
  store i8 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.pde_opener, ptr %39, i32 0, i32 3
  store ptr null, ptr %58, align 8
  %59 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %59) #7
  %60 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %39, ptr %62, align 4
  store ptr %61, ptr %39, align 8
  %63 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %60, ptr %63, align 4
  store volatile ptr %39, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %64 = load i16, ptr %59, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %68

66:                                               ; preds = %52
  %67 = load ptr, ptr @pde_opener_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %67, ptr noundef nonnull %39) #7
  br label %68

68:                                               ; preds = %66, %55, %50, %41, %37
  %69 = phi i32 [ 0, %55 ], [ %53, %66 ], [ %51, %50 ], [ -12, %37 ], [ 0, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #7, !srcloc !15
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #7, !srcloc !29
  %71 = extractvalue { i32, i32 } %70, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %72 = icmp eq i32 %71, -2147483648
  br i1 %72, label %73, label %76, !prof !18

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 4
  %75 = load ptr, ptr %74, align 4
  tail call void @complete(ptr noundef %75) #7
  br label %76

76:                                               ; preds = %73, %68, %19, %15, %9
  %77 = phi i32 [ %16, %15 ], [ 0, %9 ], [ %69, %68 ], [ %69, %73 ], [ -2, %19 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_release(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 22
  %6 = load i8, ptr %5, align 2
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.proc_ops, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %0, ptr noundef %1) #7
  br label %32

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 2
  br label %20

20:                                               ; preds = %24, %17
  %21 = phi ptr [ %19, %17 ], [ %22, %24 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %19
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pde_opener, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %20

28:                                               ; preds = %24
  tail call fastcc void @close_pdeo(ptr noundef %4, ptr noundef %22)
  br label %32

29:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %30 = load i16, ptr %18, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %32

32:                                               ; preds = %29, %28, %15, %9
  %33 = phi i32 [ 0, %28 ], [ 0, %29 ], [ %16, %15 ], [ 0, %9 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_get_unmapped_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -28
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 22
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.proc_ops, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = tail call ptr @llvm.thread.pointer() #7
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 37
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.anon.12, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %20, %14
  %28 = phi ptr [ %25, %20 ], [ %18, %14 ]
  %29 = tail call i32 %28(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #7
  br label %68

30:                                               ; preds = %5
  %31 = load volatile i32, ptr %9, align 4
  br label %32

32:                                               ; preds = %41, %30
  %33 = phi i32 [ %31, %30 ], [ %42, %41 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %68, label %35, !prof !18

35:                                               ; preds = %32
  %36 = add nuw i32 %33, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !15
  br label %37

37:                                               ; preds = %37, %35
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 %33, i32 %36, ptr elementtype(i32) %9) #7, !srcloc !25
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37
  %42 = extractvalue { i32, i32 } %38, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %43 = icmp eq i32 %42, %33
  br i1 %43, label %44, label %32, !prof !19

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.proc_ops, ptr %46, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = tail call ptr @llvm.thread.pointer() #7
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 37
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.anon.12, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50, %44
  %58 = phi ptr [ %55, %50 ], [ %48, %44 ]
  %59 = tail call i32 %58(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #7
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi i32 [ %59, %57 ], [ %1, %50 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #7, !srcloc !15
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #7, !srcloc !29
  %63 = extractvalue { i32, i32 } %62, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %64 = icmp eq i32 %63, -2147483648
  br i1 %64, label %65, label %68, !prof !18

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  tail call void @complete(ptr noundef %67) #7
  br label %68

68:                                               ; preds = %65, %60, %32, %27, %20
  %69 = phi i32 [ %29, %27 ], [ %1, %20 ], [ %61, %60 ], [ %61, %65 ], [ -5, %32 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reg_read(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -28
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 22
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.proc_ops, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %13
  %20 = tail call i32 %17(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %51

21:                                               ; preds = %4
  %22 = load volatile i32, ptr %8, align 4
  br label %23

23:                                               ; preds = %32, %21
  %24 = phi i32 [ %22, %21 ], [ %33, %32 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %51, label %26, !prof !18

26:                                               ; preds = %23
  %27 = add nuw i32 %24, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !15
  br label %28

28:                                               ; preds = %28, %26
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 %24, i32 %27, ptr elementtype(i32) %8) #7, !srcloc !25
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28
  %33 = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  %34 = icmp eq i32 %33, %24
  br i1 %34, label %35, label %23, !prof !19

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.proc_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call i32 %39(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #7
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi i32 [ %42, %41 ], [ -5, %35 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #7, !srcloc !15
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #7, !srcloc !29
  %46 = extractvalue { i32, i32 } %45, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  %47 = icmp eq i32 %46, -2147483648
  br i1 %47, label %48, label %51, !prof !18

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  tail call void @complete(ptr noundef %50) #7
  br label %51

51:                                               ; preds = %48, %43, %23, %19, %13
  %52 = phi i32 [ %20, %19 ], [ -5, %13 ], [ %44, %43 ], [ %44, %48 ], [ -5, %23 ]
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

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
!8 = !{i64 2149196686}
!9 = !{i64 2149196903}
!10 = !{i64 2149043982}
!11 = !{i64 2149039806}
!12 = !{i64 2149039881, i64 2149039908, i64 2149039955, i64 2149039977, i64 2149040005, i64 2149040025}
!13 = !{i64 2149066985}
!14 = !{i64 2147917707}
!15 = !{i64 416814, i64 2147906785, i64 2147906811, i64 2147906858, i64 2147906880, i64 2147906908, i64 2147906928}
!16 = !{i64 403383, i64 403408, i64 403430, i64 403446, i64 403458, i64 403478, i64 403502, i64 403518, i64 403530}
!17 = !{i64 2147917833}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148016022}
!21 = !{i64 2147918884, i64 2147918916, i64 2147918945, i64 2147918979, i64 2147919010, i64 2147919033}
!22 = !{i64 2148016225}
!23 = !{i8 0, i8 2}
!24 = !{i64 2148031602}
!25 = !{i64 402877, i64 402901, i64 402922, i64 402939, i64 402956}
!26 = !{i64 2148031802}
!27 = !{i64 2152352117, i64 2152352597, i64 2152352154, i64 2152352210, i64 2152352244, i64 2152352268, i64 2152352309, i64 2152352330, i64 2152352358, i64 2152352392}
!28 = !{i64 2148018855}
!29 = !{i64 2147921241, i64 2147921273, i64 2147921302, i64 2147921336, i64 2147921367, i64 2147921390}
!30 = !{i64 2148019058}
