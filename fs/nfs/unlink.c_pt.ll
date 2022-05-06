; ModuleID = '/llk/IR/fs/nfs/unlink.c_pt.bc'
source_filename = "../fs/nfs/unlink.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_task_setup = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.152, %struct.list_head, %struct.list_head, %union.anon.153 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.150 }
%union.anon.150 = type { i64 }
%union.anon.152 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.153 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs_removeargs = type { %struct.nfs4_sequence_args, ptr, %struct.qstr }
%struct.nfs4_sequence_args = type { ptr, i8 }
%struct.nfs_unlinkdata = type { %struct.nfs_removeargs, %struct.nfs_removeres, ptr, %struct.wait_queue_head, ptr, %struct.nfs_fattr, i32 }
%struct.nfs_removeres = type { %struct.nfs4_sequence_res, ptr, ptr, %struct.nfs4_change_info }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfs4_change_info = type { i32, i64, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.135, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.135 = type { %struct.anon.137 }
%struct.anon.137 = type { i64 }
%struct.nfs_fsid = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.146, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.147, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.148, ptr, %struct.address_space, %struct.list_head, %union.anon.149, i32, i32, ptr, ptr }
%union.anon.146 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.147 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.148 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.149 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.129 }
%union.anon.129 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.114, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.93 }
%struct.llist_node = type { ptr }
%union.anon.93 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.94 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.114 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.99 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.99 = type { %struct.callback_head }
%struct.nfs_renamedata = type { %struct.nfs_renameargs, %struct.nfs_renameres, ptr, ptr, ptr, %struct.nfs_fattr, ptr, ptr, %struct.nfs_fattr, ptr, i32, i8 }
%struct.nfs_renameargs = type { %struct.nfs4_sequence_args, ptr, ptr, ptr, ptr }
%struct.nfs_renameres = type { %struct.nfs4_sequence_res, ptr, %struct.nfs4_change_info, ptr, %struct.nfs4_change_info, ptr }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.anon = type { i32, i32 }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.131, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.131 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }

@nfs_rename_ops = internal constant %struct.rpc_call_ops { ptr @nfs_rename_prepare, ptr @nfs_async_rename_done, ptr null, ptr @nfs_async_rename_release }, align 4
@nfsiod_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@nfs_sillyrename.sillycounter = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c".nfs%0*llx%0*x\00", align 1
@nfs_unlink_ops = internal constant %struct.rpc_call_ops { ptr @nfs_unlink_prepare, ptr @nfs_async_unlink_done, ptr null, ptr @nfs_async_unlink_release }, align 4
@__tracepoint_nfs_sillyrename_unlink = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_nfs_sillyrename_rename = external dso_local global %struct.tracepoint, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nfs_async_unlink.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"&data->wq\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs_complete_unlink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rpc_message, align 4
  %4 = alloca %struct.rpc_task_setup, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %5) #7
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, -4097
  store i32 %7, ptr %0, align 8
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  store ptr null, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %10 = load i16, ptr %5, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %12 = getelementptr i8, ptr %1, i32 -156
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %97

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 -100
  tail call void @down_read(ptr noundef %21) #7
  %22 = load ptr, ptr %17, align 8
  %23 = getelementptr inbounds %struct.nfs_removeargs, ptr %9, i32 0, i32 2
  %24 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %9, i32 0, i32 3
  %25 = tail call ptr @d_alloc_parallel(ptr noundef %22, ptr noundef %23, ptr noundef %24) #7
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  tail call void @up_read(ptr noundef %21) #7
  br label %97

28:                                               ; preds = %16
  %29 = load i32, ptr %25, align 8
  %30 = and i32 %29, 268435456
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %33) #7
  %34 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %91, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %25, align 8
  %39 = and i32 %38, 4096
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  store ptr %9, ptr %42, align 4
  %44 = or i32 %38, 4096
  store i32 %44, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %45 = load i16, ptr %33, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  tail call void @dput(ptr noundef %25) #7
  tail call void @up_read(ptr noundef %21) #7
  tail call void @kfree(ptr noundef %43) #7
  br label %109

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %9, i32 0, i32 2
  store ptr %25, ptr %48, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %49 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 1
  store i32 0, ptr %3, align 4
  store ptr %9, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 2
  %51 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %9, i32 0, i32 1
  store ptr %51, ptr %50, align 4
  %52 = getelementptr inbounds %struct.rpc_message, ptr %3, i32 0, i32 3
  %53 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %9, i32 0, i32 4
  %54 = load ptr, ptr %53, align 8
  store ptr %54, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  %55 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 1
  %56 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false) #7
  store ptr %3, ptr %56, align 4
  %57 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 5
  store ptr @nfs_unlink_ops, ptr %57, align 4
  %58 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 6
  store ptr %9, ptr %58, align 4
  %59 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 7
  %60 = load ptr, ptr @nfsiod_workqueue, align 4
  store ptr %60, ptr %59, align 4
  %61 = getelementptr inbounds %struct.rpc_task_setup, ptr %4, i32 0, i32 8
  store i16 -32767, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 5
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.inode, ptr %65, i32 0, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = call zeroext i1 @nfs_sb_active(ptr noundef %67) #7
  %69 = getelementptr i8, ptr %65, i32 -288
  %70 = getelementptr inbounds %struct.nfs_removeargs, ptr %9, i32 0, i32 1
  store ptr %69, ptr %70, align 8
  %71 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %9, i32 0, i32 1, i32 2
  %72 = load ptr, ptr %71, align 4
  call void @nfs_fattr_init(ptr noundef %72) #7
  %73 = load ptr, ptr %66, align 4
  %74 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 27
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nfs_client, ptr %76, i32 0, i32 12
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %78, i32 0, i32 17
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %48, align 8
  call void %80(ptr noundef nonnull %3, ptr noundef %81, ptr noundef %1) #7
  %82 = load ptr, ptr %66, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 27
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nfs_server, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  store ptr %86, ptr %55, align 4
  %87 = call ptr @rpc_run_task(ptr noundef nonnull %4) #7
  %88 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %90, label %89

89:                                               ; preds = %47
  call void @rpc_put_task_async(ptr noundef %87) #7
  br label %90

90:                                               ; preds = %89, %47
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %109

91:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %92 = load i16, ptr %33, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  tail call void @dput(ptr noundef %25) #7
  tail call void @up_read(ptr noundef %21) #7
  tail call void @kfree(ptr noundef null) #7
  br label %97

94:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %95 = load i16, ptr %33, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  tail call void @dput(ptr noundef %25) #7
  tail call void @up_read(ptr noundef %21) #7
  tail call void @kfree(ptr noundef null) #7
  br label %97

97:                                               ; preds = %94, %91, %27, %2
  %98 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %9, i32 0, i32 4
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %99) #7, !srcloc !14
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %99, ptr nonnull %99, i32 1, ptr nonnull elementtype(i32) %99) #7, !srcloc !15
  %103 = extractvalue { i32, i32 } %102, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  tail call void @__put_cred(ptr noundef nonnull %99) #7
  br label %106

106:                                              ; preds = %105, %101, %97
  %107 = getelementptr inbounds %struct.nfs_removeargs, ptr %9, i32 0, i32 2, i32 1
  %108 = load ptr, ptr %107, align 8
  tail call void @kfree(ptr noundef %108) #7
  tail call void @kfree(ptr noundef %9) #7
  br label %109

109:                                              ; preds = %106, %90, %41
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs_async_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.rpc_message, align 4
  %7 = alloca %struct.rpc_task_setup, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #7
  %8 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_server, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %8, align 4
  %15 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 3
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 4
  store ptr %6, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 5
  store ptr @nfs_rename_ops, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 7
  %19 = load ptr, ptr @nfsiod_workqueue, align 4
  store ptr %19, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 8
  store i16 -32767, ptr %20, align 4
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %22 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 560) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %77, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.rpc_task_setup, ptr %7, i32 0, i32 6
  store ptr %22, ptr %25, align 4
  %26 = tail call ptr @llvm.thread.pointer() #7
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 83
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.cred, ptr %28, i32 0, i32 24
  store i32 0, ptr %31, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %28) #7, !srcloc !14
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, ptr nonnull elementtype(i32) %28) #7, !srcloc !17
  br label %33

33:                                               ; preds = %30, %24
  %34 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 2
  store ptr %28, ptr %34, align 8
  %35 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 1
  store ptr %22, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 1
  %37 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rpc_message, ptr %6, i32 0, i32 3
  store ptr %28, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 3
  store ptr %0, ptr %39, align 4
  call void @ihold(ptr noundef %0) #7
  %40 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 6
  store ptr %1, ptr %40, align 8
  call void @ihold(ptr noundef %1) #7
  %41 = icmp eq ptr %2, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  call void @lockref_get(ptr noundef %43) #7
  br label %44

44:                                               ; preds = %42, %33
  %45 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 4
  store ptr %2, ptr %45, align 8
  %46 = icmp eq ptr %3, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  call void @lockref_get(ptr noundef %48) #7
  br label %49

49:                                               ; preds = %47, %44
  %50 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 7
  store ptr %3, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 5
  call void @nfs_fattr_init(ptr noundef %51) #7
  %52 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 8
  call void @nfs_fattr_init(ptr noundef %52) #7
  %53 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 9
  store ptr %4, ptr %53, align 8
  %54 = getelementptr i8, ptr %0, i32 -288
  %55 = getelementptr inbounds %struct.nfs_renameargs, ptr %22, i32 0, i32 1
  store ptr %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %57 = getelementptr inbounds %struct.nfs_renameargs, ptr %22, i32 0, i32 3
  store ptr %56, ptr %57, align 8
  %58 = getelementptr i8, ptr %1, i32 -288
  %59 = getelementptr inbounds %struct.nfs_renameargs, ptr %22, i32 0, i32 2
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4
  %61 = getelementptr inbounds %struct.nfs_renameargs, ptr %22, i32 0, i32 4
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 1, i32 3
  store ptr %51, ptr %62, align 8
  %63 = getelementptr inbounds %struct.nfs_renamedata, ptr %22, i32 0, i32 1, i32 5
  store ptr %52, ptr %63, align 8
  %64 = load ptr, ptr %9, align 4
  %65 = call zeroext i1 @nfs_sb_active(ptr noundef %64) #7
  %66 = load ptr, ptr %39, align 4
  %67 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.super_block, ptr %68, i32 0, i32 27
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nfs_client, ptr %71, i32 0, i32 12
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %73, i32 0, i32 20
  %75 = load ptr, ptr %74, align 4
  call void %75(ptr noundef nonnull %6, ptr noundef %2, ptr noundef %3) #7
  %76 = call ptr @rpc_run_task(ptr noundef nonnull %7) #7
  br label %77

77:                                               ; preds = %49, %5
  %78 = phi ptr [ %76, %49 ], [ inttoptr (i32 -12 to ptr), %5 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  ret ptr %78
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_fattr_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_sb_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_run_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_sillyrename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [29 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(29) %3, i8 0, i32 29, i1 false), !annotation !18
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 27
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !19
  %11 = getelementptr inbounds %struct.nfs_server, ptr %9, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr %struct.nfs_iostats, ptr %12, i32 0, i32 1, i32 21
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #6, !srcloc !20
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #7, !srcloc !21
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, 4096
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %117

25:                                               ; preds = %2
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr i8, ptr %26, i32 -296
  %28 = load i64, ptr %27, align 8
  %29 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  br label %30

30:                                               ; preds = %38, %25
  %31 = phi ptr [ null, %25 ], [ %36, %38 ]
  call void @dput(ptr noundef %31) #7
  %32 = load i32, ptr @nfs_sillyrename.sillycounter, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr @nfs_sillyrename.sillycounter, align 4
  %34 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %3, i32 noundef 29, ptr noundef nonnull @.str, i32 noundef 16, i64 noundef %28, i32 noundef 8, i32 noundef %33) #7
  %35 = load ptr, ptr %29, align 8
  %36 = call ptr @lookup_one_len(ptr noundef nonnull %3, ptr noundef %35, i32 noundef %34) #7
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %117, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %30

42:                                               ; preds = %38
  call void @ihold(ptr noundef %5) #7
  %43 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 4
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %45 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 320) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %115, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 4, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = call noalias ptr @kstrdup(ptr noundef %49, i32 noundef 3264) #7
  %51 = getelementptr inbounds %struct.nfs_removeargs, ptr %45, i32 0, i32 2, i32 1
  store ptr %50, ptr %51, align 8
  %52 = icmp eq ptr %50, null
  br i1 %52, label %86, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.nfs_removeargs, ptr %45, i32 0, i32 2
  %55 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.anon, ptr %54, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = tail call ptr @llvm.thread.pointer() #7
  %59 = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 83
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.cred, ptr %60, i32 0, i32 24
  store i32 0, ptr %63, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %60) #7, !srcloc !14
  %64 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %60, ptr nonnull %60, i32 1, ptr nonnull elementtype(i32) %60) #7, !srcloc !17
  br label %65

65:                                               ; preds = %62, %53
  %66 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %45, i32 0, i32 4
  store ptr %60, ptr %66, align 8
  %67 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %45, i32 0, i32 5
  %68 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %45, i32 0, i32 1, i32 2
  store ptr %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %45, i32 0, i32 3
  call void @__init_waitqueue_head(ptr noundef %69, ptr noundef nonnull @.str.2, ptr noundef nonnull @nfs_async_unlink.__key) #7
  %70 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %70) #7
  %71 = load i32, ptr %1, align 8
  %72 = and i32 %71, 4096
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %65
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %75 = load i16, ptr %70, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %70, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %77 = load ptr, ptr %66, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %77) #7, !srcloc !14
  %80 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %77, ptr nonnull %77, i32 1, ptr nonnull elementtype(i32) %77) #7, !srcloc !15
  %81 = extractvalue { i32, i32 } %80, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  call void @__put_cred(ptr noundef nonnull %77) #7
  br label %84

84:                                               ; preds = %83, %79, %74
  %85 = load ptr, ptr %51, align 8
  call void @kfree(ptr noundef %85) #7
  br label %86

86:                                               ; preds = %84, %47
  %87 = phi i32 [ -16, %84 ], [ -12, %47 ]
  call void @kfree(ptr noundef nonnull %45) #7
  br label %115

88:                                               ; preds = %65
  %89 = or i32 %71, 4096
  store i32 %89, ptr %1, align 8
  %90 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %91 = load ptr, ptr %90, align 4
  store ptr %45, ptr %90, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %92 = load i16, ptr %70, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %70, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  call void @kfree(ptr noundef %91) #7
  %94 = call ptr @nfs_async_rename(ptr noundef %0, ptr noundef %0, ptr noundef %1, ptr noundef %36, ptr noundef nonnull @nfs_complete_sillyrename)
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  call fastcc void @nfs_cancel_async_unlink(ptr noundef %1)
  br label %115

97:                                               ; preds = %88
  %98 = call i32 @__rpc_wait_for_completion_task(ptr noundef %94, ptr noundef null) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.rpc_task, ptr %94, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32 [ %102, %100 ], [ %98, %97 ]
  switch i32 %104, label %114 [
    i32 0, label %105
    i32 -512, label %113
  ]

105:                                              ; preds = %103
  %106 = getelementptr i8, ptr %0, i32 -112
  %107 = load i32, ptr %106, align 8
  call void @nfs_set_verifier(ptr noundef %1, i32 noundef %107) #7
  %108 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %108) #7
  %109 = call i32 @nfs_inc_attr_generation_counter() #7
  %110 = getelementptr i8, ptr %5, i32 -136
  store i32 %109, ptr %110, align 8
  call void @nfs_set_cache_invalid(ptr noundef %5, i32 noundef 832) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %111 = load i16, ptr %108, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %108, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  call void @d_move(ptr noundef %1, ptr noundef %36) #7
  br label %114

113:                                              ; preds = %103
  call void @d_drop(ptr noundef %1) #7
  call void @d_drop(ptr noundef %36) #7
  br label %114

114:                                              ; preds = %113, %105, %103
  call void @rpc_put_task(ptr noundef %94) #7
  br label %115

115:                                              ; preds = %114, %96, %86, %42
  %116 = phi i32 [ -16, %96 ], [ %104, %114 ], [ %87, %86 ], [ -12, %42 ]
  call void @iput(ptr noundef %5) #7
  call void @dput(ptr noundef %36) #7
  br label %117

117:                                              ; preds = %115, %30, %2
  %118 = phi i32 [ -16, %2 ], [ %116, %115 ], [ -16, %30 ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %3) #7
  ret i32 %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_complete_sillyrename(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs_renamedata, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  tail call fastcc void @nfs_cancel_async_unlink(ptr noundef %8)
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_cancel_async_unlink(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %2) #7
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 4096
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %3, -4097
  store i32 %9, ptr %0, align 8
  store ptr null, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %10 = load i16, ptr %2, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %12 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %8, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #7, !srcloc !14
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #7, !srcloc !15
  %17 = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @__put_cred(ptr noundef nonnull %13) #7
  br label %20

20:                                               ; preds = %19, %15, %6
  %21 = getelementptr inbounds %struct.nfs_removeargs, ptr %8, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 8
  tail call void @kfree(ptr noundef %22) #7
  tail call void @kfree(ptr noundef %8) #7
  br label %26

23:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %24 = load i16, ptr %2, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %26

26:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_verifier(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_inc_attr_generation_counter() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_set_cache_invalid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_task_async(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_unlink_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nfs_client, ptr %13, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %15, i32 0, i32 18
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_unlink_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_unlink, i32 0, i32 1), align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = tail call ptr @llvm.thread.pointer() #7
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 5
  %18 = getelementptr i32, ptr @__cpu_online_mask, i32 %17
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %16, 31
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !22
  %25 = tail call i32 @__traceiter_nfs_sillyrename_unlink(ptr noundef null, ptr noundef %1, i32 noundef %10) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !23
  br label %26

26:                                               ; preds = %24, %13, %2
  %27 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 27
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nfs_client, ptr %31, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %33, i32 0, i32 19
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %8) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #7
  br label %40

40:                                               ; preds = %38, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_unlink_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -100
  tail call void @up_read(ptr noundef %10) #7
  %11 = load i32, ptr %3, align 8
  %12 = and i32 %11, 268435456
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14, !prof !24

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %15) #7
  tail call void @__d_lookup_done(ptr noundef %3) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %18

18:                                               ; preds = %14, %1
  %19 = getelementptr inbounds %struct.nfs_unlinkdata, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #7, !srcloc !14
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #7, !srcloc !15
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @__put_cred(ptr noundef nonnull %20) #7
  br label %27

27:                                               ; preds = %26, %22, %18
  %28 = getelementptr inbounds %struct.nfs_removeargs, ptr %0, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 8
  tail call void @kfree(ptr noundef %29) #7
  tail call void @kfree(ptr noundef %0) #7
  tail call void @dput(ptr noundef %3) #7
  tail call void @nfs_sb_deactive(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_restart_call_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_sillyrename_unlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_sb_deactive(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_rename_prepare(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_renamedata, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nfs_client, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_rename_done(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nfs_renamedata, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs_renamedata, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nfs_renamedata, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nfs_renamedata, ptr %1, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_sillyrename_rename, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = tail call ptr @llvm.thread.pointer() #7
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !25
  %27 = tail call i32 @__traceiter_nfs_sillyrename_rename(ptr noundef null, ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %10, i32 noundef %12) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !26
  br label %28

28:                                               ; preds = %26, %15, %2
  %29 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nfs_client, ptr %33, i32 0, i32 12
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %35, i32 0, i32 22
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, ptr noundef %4, ptr noundef %6) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = tail call i32 @rpc_restart_call_prepare(ptr noundef %0) #7
  br label %47

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.nfs_renamedata, ptr %1, i32 0, i32 9
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void %44(ptr noundef %0, ptr noundef %1) #7
  br label %47

47:                                               ; preds = %46, %42, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs_async_rename_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nfs_renamedata, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_renamedata, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %12) #7
  %13 = getelementptr i8, ptr %9, i32 -152
  %14 = load i32, ptr %13, align 8
  %15 = or i32 %14, 824
  store i32 %15, ptr %13, align 8
  %16 = load i16, ptr %9, align 8
  %17 = and i16 %16, -4096
  %18 = icmp eq i16 %17, 16384
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = or i32 %14, 826
  store i32 %20, ptr %13, align 8
  br label %21

21:                                               ; preds = %19, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %22 = load i16, ptr %12, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %struct.nfs_renamedata, ptr %0, i32 0, i32 11
  %26 = load i8, ptr %25, align 8, !range !27
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %30) #7
  %31 = load ptr, ptr %2, align 4
  tail call void @nfs_force_lookup_revalidate(ptr noundef %31) #7
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  %36 = getelementptr inbounds %struct.nfs_renamedata, ptr %0, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = load ptr, ptr %2, align 4
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %41) #7
  %42 = load ptr, ptr %36, align 8
  tail call void @nfs_force_lookup_revalidate(ptr noundef %42) #7
  %43 = load ptr, ptr %36, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !9
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !12
  br label %47

47:                                               ; preds = %40, %28, %24
  %48 = load ptr, ptr %6, align 8
  tail call void @dput(ptr noundef %48) #7
  %49 = getelementptr inbounds %struct.nfs_renamedata, ptr %0, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  tail call void @dput(ptr noundef %50) #7
  %51 = load ptr, ptr %2, align 4
  tail call void @iput(ptr noundef %51) #7
  %52 = getelementptr inbounds %struct.nfs_renamedata, ptr %0, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  tail call void @iput(ptr noundef %53) #7
  tail call void @nfs_sb_deactive(ptr noundef %5) #7
  %54 = getelementptr inbounds %struct.nfs_renamedata, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %55) #7, !srcloc !14
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %55, ptr nonnull %55, i32 1, ptr nonnull elementtype(i32) %55) #7, !srcloc !15
  %59 = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void @__put_cred(ptr noundef nonnull %55) #7
  br label %62

62:                                               ; preds = %61, %57, %47
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_sillyrename_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_force_lookup_revalidate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rpc_wait_for_completion_task(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!9 = !{i64 2148936666}
!10 = !{i64 2148932490}
!11 = !{i64 2148932565, i64 2148932592, i64 2148932639, i64 2148932661, i64 2148932689, i64 2148932709}
!12 = !{i64 2148959669}
!13 = !{i64 2148370127}
!14 = !{i64 768062, i64 2148258033, i64 2148258059, i64 2148258106, i64 2148258128, i64 2148258156, i64 2148258176}
!15 = !{i64 2148272489, i64 2148272521, i64 2148272550, i64 2148272584, i64 2148272615, i64 2148272638}
!16 = !{i64 2148370330}
!17 = !{i64 2148269448, i64 2148269474, i64 2148269503, i64 2148269537, i64 2148269568, i64 2148269591}
!18 = !{!"auto-init"}
!19 = !{i64 673740, i64 673801}
!20 = !{i64 692440}
!21 = !{i64 676757}
!22 = !{i64 2157404280}
!23 = !{i64 2157404458}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2157382683}
!26 = !{i64 2157382945}
!27 = !{i8 0, i8 2}
