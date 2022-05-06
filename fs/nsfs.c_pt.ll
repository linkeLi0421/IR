; ModuleID = '/llk/IR/fs/nsfs.c_pt.bc'
source_filename = "../fs/nsfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_open_related_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22open_related_ns\22\09\09\09\09\09"
module asm "__kstrtabns_open_related_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { i64 }
%union.anon.66 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.61 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.2 }
%struct.llist_node = type { ptr }
%union.anon.2 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.35 }
%union.anon.35 = type { %struct.anon.36 }
%struct.anon.36 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.12, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }

@ns_dentry_operations = dso_local constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr null, ptr @ns_prune_dentry, ptr null, ptr @ns_dname, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@__kstrtab_open_related_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_open_related_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_open_related_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @open_related_ns to i32), ptr @__kstrtab_open_related_ns, ptr @__kstrtabns_open_related_ns }, section "___ksymtab_gpl+open_related_ns", align 4
@.str = private unnamed_addr constant [8 x i8] c"%s:[%u]\00", align 1
@ns_file_operations = internal constant %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ns_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nsfs_mnt = internal unnamed_addr global ptr null, align 4
@nsfs = internal global %struct.file_system_type { ptr @.str.3, i32 0, ptr @nsfs_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"can't set nsfs up\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s:[%lu]\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"nsfs\00", align 1
@nsfs_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nsfs_evict, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr @nsfs_show_path, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_open_related_ns], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #0

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ns_prune_dentry(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  store volatile i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ns_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr (ptr, ptr, i32, ptr, ...) @dynamic_dname(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @.str.2, ptr noundef %8, i32 noundef %10) #11
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ns_get_path_cb(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = tail call ptr %1(ptr noundef %2) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @__ns_get_path(ptr noundef %0, ptr noundef nonnull %5)
  %9 = icmp eq i32 %8, -11
  br i1 %9, label %4, label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %8, %7 ], [ -2, %4 ]
  ret i32 %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ns_get_path(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.timespec64, align 8
  %4 = load ptr, ptr @nsfs_mnt, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !8
  %5 = load volatile i32, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = inttoptr i32 %5 to ptr
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  %10 = tail call i32 @lockref_get_not_dead(ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %13 = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.proc_ns_operations, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void %16(ptr noundef %1) #11
  br label %17

17:                                               ; preds = %56, %12
  %18 = phi ptr [ %8, %12 ], [ %44, %56 ]
  %19 = call ptr @mntget(ptr noundef %4) #11
  store ptr %19, ptr %0, align 4
  %20 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  br label %60

21:                                               ; preds = %7, %2
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !9
  %22 = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @new_inode_pseudo(ptr noundef %23) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.proc_ns_operations, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %1) #11
  br label %60

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 10
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 15
  %36 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 14
  %37 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %24) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %36, ptr noundef align 8 dereferenceable(16) %37, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef align 8 dereferenceable(16) %37, i32 16, i1 false)
  %38 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 8
  store i32 %40, ptr %38, align 4
  store i16 -32476, ptr %24, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 39
  store ptr @ns_file_operations, ptr %41, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 47
  store ptr %1, ptr %42, align 4
  %43 = load ptr, ptr %22, align 4
  %44 = call ptr @d_alloc_anon(ptr noundef %43) #11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  call void @iput(ptr noundef nonnull %24) #11
  br label %60

47:                                               ; preds = %31
  call void @d_instantiate(ptr noundef nonnull %44, ptr noundef nonnull %24) #11
  %48 = getelementptr inbounds %struct.ns_common, ptr %1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 11
  store ptr %49, ptr %50, align 4
  %51 = ptrtoint ptr %44 to i32
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #11, !srcloc !11
  br label %52

52:                                               ; preds = %52, %47
  %53 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 0, i32 %51, ptr elementtype(i32) %1) #11, !srcloc !12
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %52

56:                                               ; preds = %52
  %57 = extractvalue { i32, i32 } %53, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %17, label %59

59:                                               ; preds = %56
  call void @d_delete(ptr noundef nonnull %44) #11
  call void @dput(ptr noundef nonnull %44) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !15
  br label %60

60:                                               ; preds = %59, %46, %26, %17
  %61 = phi i32 [ 0, %17 ], [ -11, %59 ], [ -12, %46 ], [ -12, %26 ]
  ret i32 %61
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ns_get_path(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.proc_ns_operations, ptr %2, i32 0, i32 3
  br label %5

5:                                                ; preds = %9, %3
  %6 = load ptr, ptr %4, align 4
  %7 = tail call ptr %6(ptr noundef %1) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @__ns_get_path(ptr noundef %0, ptr noundef nonnull %7) #11
  %11 = icmp eq i32 %10, -11
  br i1 %11, label %5, label %12

12:                                               ; preds = %9, %5
  %13 = phi i32 [ %10, %9 ], [ -2, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @open_related_ns(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 0, ptr %3, align 8
  %4 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %11, %2
  %7 = tail call ptr %1(ptr noundef %0) #11
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  tail call void @put_unused_fd(i32 noundef %4) #11
  %10 = ptrtoint ptr %7 to i32
  br label %23

11:                                               ; preds = %6
  %12 = call fastcc i32 @__ns_get_path(ptr noundef nonnull %3, ptr noundef %7)
  switch i32 %12, label %13 [
    i32 -11, label %6
    i32 0, label %14
  ]

13:                                               ; preds = %11
  tail call void @put_unused_fd(i32 noundef %4) #11
  br label %23

14:                                               ; preds = %11
  %15 = tail call ptr @llvm.thread.pointer() #11
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 83
  %17 = load ptr, ptr %16, align 8
  %18 = call ptr @dentry_open(ptr noundef nonnull %3, i32 noundef 0, ptr noundef %17) #11
  call void @path_put(ptr noundef nonnull %3) #11
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  call void @put_unused_fd(i32 noundef %4) #11
  %21 = ptrtoint ptr %18 to i32
  br label %23

22:                                               ; preds = %14
  call void @fd_install(i32 noundef %4, ptr noundef %18) #11
  br label %23

23:                                               ; preds = %22, %20, %13, %9, %2
  %24 = phi i32 [ %12, %13 ], [ %4, %2 ], [ %21, %20 ], [ %4, %22 ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dentry_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ns_get_name(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.proc_ns_operations, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %2) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.proc_ns_operations, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 4
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %11, %9 ]
  %17 = getelementptr inbounds %struct.ns_common, ptr %7, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %18)
  %20 = getelementptr inbounds %struct.proc_ns_operations, ptr %3, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef nonnull %7) #11
  br label %22

22:                                               ; preds = %15, %4
  %23 = phi i32 [ %19, %15 ], [ -2, %4 ]
  ret i32 %23
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @proc_ns_file(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @ns_file_operations
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_ns_fget(i32 noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @fget(i32 noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @ns_file_operations
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fput(ptr noundef nonnull %2) #11
  br label %9

9:                                                ; preds = %8, %4, %1
  %10 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %2, %4 ], [ inttoptr (i32 -9 to ptr), %1 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ns_match(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.ns_common, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr @nsfs_mnt, align 4
  %9 = getelementptr inbounds %struct.vfsmount, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %1
  br label %14

14:                                               ; preds = %7, %3
  %15 = phi i1 [ false, %3 ], [ %13, %7 ]
  ret i1 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @nsfs_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @kern_mount(ptr noundef nonnull @nsfs) #11
  store ptr %1, ptr @nsfs_mnt, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1) #12
  unreachable

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.vfsmount, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 2147483647
  store i32 %9, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dynamic_dname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode_pseudo(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_anon(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  switch i32 %1, label %44 [
    i32 46849, label %8
    i32 46850, label %12
    i32 46851, label %20
    i32 46852, label %25
  ]

8:                                                ; preds = %3
  %9 = tail call i32 @get_unused_fd_flags(i32 noundef 524288) #11
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %8
  tail call void @put_unused_fd(i32 noundef %9) #11
  br label %44

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ns_common, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.proc_ns_operations, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @open_related_ns(ptr noundef %7, ptr noundef nonnull %16)
  br label %44

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.ns_common, ptr %7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.proc_ns_operations, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  br label %44

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.ns_common, ptr %7, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.proc_ns_operations, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 268435456
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = inttoptr i32 %2 to ptr
  %33 = getelementptr i8, ptr %7, i32 -8
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, -1
  %36 = load i32, ptr @overflowuid, align 4
  %37 = select i1 %35, i32 %36, i32 %34
  %38 = tail call ptr @llvm.thread.pointer() #11
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %40 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %39) #13, !srcloc !16
  %41 = and i32 %40, -13
  %42 = or i32 %41, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #11, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !18
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %32, i32 %37, i32 -1090519041) #11, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #11, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #11, !srcloc !18
  br label %44

44:                                               ; preds = %31, %25, %20, %18, %12, %11, %8, %3
  %45 = phi i32 [ %43, %31 ], [ %24, %20 ], [ %19, %18 ], [ -22, %12 ], [ -22, %25 ], [ -25, %3 ], [ %9, %8 ], [ -1, %11 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsfs_init_fs_context(ptr noundef %0) #2 {
  %2 = tail call ptr @init_pseudo(ptr noundef %0, i32 noundef 1853056627) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  store ptr @nsfs_ops, ptr %2, align 4
  %5 = getelementptr inbounds %struct.pseudo_fs_context, ptr %2, i32 0, i32 2
  store ptr @ns_dentry_operations, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ -12, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nsfs_evict(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %3 = load ptr, ptr %2, align 4
  tail call void @clear_inode(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.ns_common, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.proc_ns_operations, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nsfs_show_path(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %7, i32 noundef %9) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold noreturn nounwind }
attributes #13 = { nounwind readonly }

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
!8 = !{i64 2149232335}
!9 = !{i64 2149232552}
!10 = !{i64 2148132390}
!11 = !{i64 516781, i64 2148006752, i64 2148006778, i64 2148006825, i64 2148006847, i64 2148006875, i64 2148006895}
!12 = !{i64 502844, i64 502868, i64 502889, i64 502906, i64 502923}
!13 = !{i64 2148132590}
!14 = !{i64 2152205866}
!15 = !{i64 2152205708}
!16 = !{i64 3611931}
!17 = !{i64 3612128}
!18 = !{i64 2151097407}
!19 = !{i64 2152215724, i64 2152216004, i64 2152216338, i64 2152216672}
