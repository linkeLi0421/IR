; ModuleID = '/llk/IR/fs/lockd/svclock.c_pt.bc'
source_filename = "../fs/lockd/svclock.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.126 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.126 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.nlm_block = type { %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.nlm_lockowner = type { %struct.list_head, %struct.refcount_struct, ptr, ptr, i32 }
%struct.nlm_host = type { %struct.hlist_node, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, i32, i16, i8, %struct.wait_queue_head, %struct.rw_semaphore, i32, i32, i32, %struct.refcount_struct, %struct.mutex, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, [65 x i8], ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.file = type { %union.anon.5, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.120, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.78 }
%struct.llist_node = type { ptr }
%union.anon.78 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.79 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.120 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.cache_deferred_req = type { %struct.hlist_node, %struct.list_head, ptr, ptr, ptr }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.2, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.2 = type { %struct.rpc_wait }
%struct.rpc_wait = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }

@nlmsvc_testlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [19 x i8] c"fs/lockd/svclock.c\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@nlmsvc_lock_operations = dso_local constant %struct.lock_manager_operations { ptr @nlmsvc_get_owner, ptr @nlmsvc_put_owner, ptr @nlmsvc_notify_blocked, ptr @nlmsvc_grant_deferred, ptr null, ptr null, ptr null, ptr null }, align 4
@nlm_blocked_lock = internal global %struct.spinlock zeroinitializer, align 4
@nlm_blocked = internal global %struct.list_head { ptr @nlm_blocked, ptr @nlm_blocked }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\014lockd: notification for unknown block!\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\014lockd: grant for unknown block\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\014lockd: unexpected error %d in %s!\0A\00", align 1
@__func__.nlmsvc_grant_blocked = private unnamed_addr constant [21 x i8] c"nlmsvc_grant_blocked\00", align 1
@nlmsvc_grant_ops = internal constant %struct.rpc_call_ops { ptr null, ptr @nlmsvc_grant_callback, ptr null, ptr @nlmsvc_grant_release }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_traverse_blocks(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %51, label %8

8:                                                ; preds = %49, %3
  %9 = phi ptr [ %50, %49 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %9, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %2(ptr noundef %12, ptr noundef %0) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %9, i32 -8
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %47, label %19

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %9, i32 -12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #8, !srcloc !8
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #8, !srcloc !9
  %22 = extractvalue { i32, i32, i32 } %21, 0
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24, !prof !10

24:                                               ; preds = %19
  %25 = add i32 %22, 1
  %26 = or i32 %25, %22
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %30, label %28, !prof !11

28:                                               ; preds = %24, %19
  %29 = phi i32 [ 2, %19 ], [ 1, %24 ]
  tail call void @refcount_warn_saturate(ptr noundef %20, i32 noundef %29) #8
  br label %30

30:                                               ; preds = %28, %24
  tail call void @mutex_unlock(ptr noundef %4) #8
  %31 = getelementptr i8, ptr %9, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nlm_rqst, ptr %32, i32 0, i32 3, i32 1, i32 5
  %34 = tail call i32 @locks_delete_block(ptr noundef %33) #8
  %35 = load volatile ptr, ptr %16, align 4
  %36 = icmp eq ptr %35, %16
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %38 = getelementptr i8, ptr %9, i32 -4
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %40, ptr %39, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %42 = load i16, ptr @nlm_blocked_lock, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call fastcc void @nlmsvc_release_block(ptr noundef %20) #8
  br label %44

44:                                               ; preds = %37, %30
  tail call fastcc void @nlmsvc_release_block(ptr noundef %20)
  tail call void @mutex_lock(ptr noundef %4) #8
  %45 = load ptr, ptr %5, align 4
  %46 = icmp eq ptr %45, %5
  br i1 %46, label %51, label %49

47:                                               ; preds = %15, %8
  %48 = icmp eq ptr %10, %5
  br i1 %48, label %51, label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %10, %47 ], [ %45, %44 ]
  br label %8

51:                                               ; preds = %47, %44, %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nlmsvc_release_block(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nlm_file, ptr %5, i32 0, i32 7
  %7 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef nonnull %0, ptr noundef %6) #8
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %11, align 4
  %15 = getelementptr inbounds %struct.nlm_file, ptr %9, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %15) #8
  %16 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nlm_rqst, ptr %17, i32 0, i32 3, i32 1, i32 3, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nlm_rqst, ptr %17, i32 0, i32 7
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %8
  tail call void @kfree(ptr noundef %19) #8
  br label %23

23:                                               ; preds = %22, %8
  %24 = getelementptr inbounds %struct.nlm_rqst, ptr %17, i32 0, i32 3, i32 1, i32 5
  tail call void @locks_release_private(ptr noundef %24) #8
  %25 = load ptr, ptr %16, align 4
  tail call void @nlmsvc_release_call(ptr noundef %25) #8
  %26 = load ptr, ptr %4, align 4
  tail call void @nlm_release_file(ptr noundef %26) #8
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %27

27:                                               ; preds = %23, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_release_lockowner(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nlm_lock, ptr %0, i32 0, i32 5, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nlm_lockowner, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nlm_lockowner, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nlm_host, ptr %8, i32 0, i32 20
  %10 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %6, ptr noundef %9) #8
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.nlm_host, ptr %16, i32 0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %20 = load ptr, ptr %7, align 4
  tail call void @nlmsvc_release_host(ptr noundef %20) #8
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %21

21:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_locks_init_private(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.nlm_host, ptr %1, i32 0, i32 19
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nlm_lockowner, ptr %8, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nlm_lockowner, ptr %8, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #8, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #8, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #8
  br label %25

25:                                               ; preds = %23, %19
  %26 = icmp eq ptr %8, null
  br i1 %26, label %27, label %64

27:                                               ; preds = %25, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %28 = load i16, ptr %4, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3264, i32 noundef 24) #9
  tail call void @_raw_spin_lock(ptr noundef %4) #8
  br label %32

32:                                               ; preds = %36, %27
  %33 = phi ptr [ %5, %27 ], [ %34, %36 ]
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %5
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nlm_lockowner, ptr %34, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %2
  br i1 %39, label %40, label %32

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nlm_lockowner, ptr %34, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #8, !srcloc !8
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %41, ptr %41, i32 1, ptr elementtype(i32) %41) #8, !srcloc !9
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !10

45:                                               ; preds = %40
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %51, label %49, !prof !11

49:                                               ; preds = %45, %40
  %50 = phi i32 [ 2, %40 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef %41, i32 noundef %50) #8
  br label %51

51:                                               ; preds = %49, %45, %32
  %52 = phi ptr [ %34, %45 ], [ %34, %49 ], [ null, %32 ]
  %53 = icmp eq ptr %52, null
  %54 = icmp ne ptr %31, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.nlm_lockowner, ptr %31, i32 0, i32 1
  store volatile i32 1, ptr %57, align 8
  %58 = getelementptr inbounds %struct.nlm_lockowner, ptr %31, i32 0, i32 4
  store i32 %2, ptr %58, align 4
  %59 = tail call ptr @nlm_get_host(ptr noundef %1) #8
  %60 = getelementptr inbounds %struct.nlm_lockowner, ptr %31, i32 0, i32 2
  store ptr %59, ptr %60, align 4
  %61 = load ptr, ptr %5, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %31, ptr %62, align 4
  store ptr %61, ptr %31, align 8
  %63 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %5, ptr %63, align 4
  store volatile ptr %31, ptr %5, align 4
  br label %64

64:                                               ; preds = %56, %51, %25
  %65 = phi ptr [ %31, %56 ], [ %52, %51 ], [ %8, %25 ]
  %66 = phi ptr [ null, %56 ], [ %31, %51 ], [ null, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %67 = load i16, ptr %4, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call void @kfree(ptr noundef %66) #8
  %69 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  store ptr %65, ptr %69, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_lock(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr %struct.nlm_file, ptr %1, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file_operations, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %21) #8
  %22 = tail call fastcc ptr @nlmsvc_lookup_block(ptr noundef %1, ptr noundef %3)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %92

24:                                               ; preds = %14
  %25 = tail call ptr @nlm_alloc_call(ptr noundef %2) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %210, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 60) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %65, label %31

31:                                               ; preds = %27
  store volatile i32 1, ptr %29, align 8
  %32 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 1
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 1, i32 1
  store ptr %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 2
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 2, i32 1
  store ptr %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1
  %37 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1, i32 5
  %38 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5
  tail call void @locks_copy_lock(ptr noundef %37, ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1, i32 2
  %40 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(130) %39, ptr noundef align 8 dereferenceable(130) %40, i32 130, i1 false) #8
  %41 = tail call ptr @llvm.thread.pointer() #8
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 92
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nsproxy, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.new_utsname, ptr %45, i32 0, i32 1
  store ptr %46, ptr %36, align 8
  %47 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 7
  %51 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1, i32 3, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nlm_lockowner, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1, i32 4
  store i32 %55, ptr %56, align 4
  %57 = load i32, ptr %47, align 4
  %58 = icmp ugt i32 %57, 74
  br i1 %58, label %59, label %66

59:                                               ; preds = %31
  %60 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 3264) #10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  store ptr %60, ptr %51, align 4
  %63 = load i32, ptr %47, align 4
  br label %66

64:                                               ; preds = %59
  tail call void @kfree(ptr noundef nonnull %29) #8
  br label %65

65:                                               ; preds = %64, %27
  tail call void @nlmsvc_release_call(ptr noundef nonnull %25) #8
  br label %210

66:                                               ; preds = %62, %31
  %67 = phi i32 [ %63, %62 ], [ %57, %31 ]
  %68 = phi ptr [ %60, %62 ], [ %50, %31 ]
  %69 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 3, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %70, i32 %67, i1 false) #8
  %71 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3
  %72 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1, i32 5, i32 6
  %73 = load i32, ptr %72, align 8
  %74 = or i32 %73, 128
  store i32 %74, ptr %72, align 8
  %75 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 3, i32 1, i32 5, i32 18
  store ptr @nlmsvc_lock_operations, ptr %75, align 8
  tail call void @nlmclnt_next_cookie(ptr noundef %71) #8
  %76 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 4
  store ptr %77, ptr %78, align 8
  %79 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 5
  store ptr %2, ptr %79, align 4
  %80 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 9
  store ptr %1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  %84 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %34, ptr %86, align 4
  store ptr %85, ptr %34, align 4
  store ptr %84, ptr %35, align 8
  store volatile ptr %34, ptr %84, align 4
  %87 = getelementptr inbounds %struct.nlm_block, ptr %29, i32 0, i32 3
  store ptr %25, ptr %87, align 4
  %88 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 1
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.nlm_rqst, ptr %25, i32 0, i32 5
  store ptr %29, ptr %89, align 8
  %90 = load ptr, ptr %87, align 4
  %91 = getelementptr inbounds %struct.nlm_rqst, ptr %90, i32 0, i32 3, i32 1
  br label %96

92:                                               ; preds = %14
  %93 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5, i32 6
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, -129
  store i32 %95, ptr %93, align 8
  br label %96

96:                                               ; preds = %92, %66
  %97 = phi ptr [ %91, %66 ], [ %3, %92 ]
  %98 = phi ptr [ %29, %66 ], [ %22, %92 ]
  %99 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 12
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %140, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 8
  %105 = load i8, ptr %104, align 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nlm_rqst, ptr %109, i32 0, i32 3, i32 1, i32 5
  %111 = tail call i32 @locks_delete_block(ptr noundef %110) #8
  %112 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 1
  %113 = load volatile ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %210, label %115

115:                                              ; preds = %107
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %116 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 1, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %112, align 4
  %119 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  store ptr %117, ptr %119, align 4
  store volatile ptr %118, ptr %117, align 4
  store volatile ptr %112, ptr %112, align 4
  store ptr %112, ptr %116, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %120 = load i16, ptr @nlm_blocked_lock, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %98) #8
  br label %210

122:                                              ; preds = %103
  %123 = and i32 %100, 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %210, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nlm_rqst, ptr %127, i32 0, i32 3, i32 1, i32 5
  %129 = tail call i32 @locks_delete_block(ptr noundef %128) #8
  %130 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 1
  %131 = load volatile ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, %130
  br i1 %132, label %210, label %133

133:                                              ; preds = %125
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %134 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 1, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = load ptr, ptr %130, align 4
  %137 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %135, ptr %137, align 4
  store volatile ptr %136, ptr %135, align 4
  store volatile ptr %130, ptr %130, align 4
  store ptr %130, ptr %134, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %138 = load i16, ptr @nlm_blocked_lock, align 4
  %139 = add i16 %138, 1
  store i16 %139, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %98) #8
  br label %210

140:                                              ; preds = %96
  %141 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8
  %143 = icmp eq ptr %142, null
  %144 = getelementptr inbounds %struct.svc_xprt, ptr %142, i32 0, i32 19
  %145 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %146 = select i1 %143, ptr %145, ptr %144
  %147 = load ptr, ptr %146, align 4
  %148 = tail call zeroext i1 @locks_in_grace(ptr noundef %147) #8
  %149 = xor i1 %148, true
  %150 = icmp ne i32 %6, 0
  %151 = or i1 %150, %149
  br i1 %151, label %152, label %210

152:                                              ; preds = %140
  br i1 %150, label %153, label %160

153:                                              ; preds = %152
  %154 = load ptr, ptr %141, align 8
  %155 = icmp eq ptr %154, null
  %156 = getelementptr inbounds %struct.svc_xprt, ptr %154, i32 0, i32 19
  %157 = select i1 %155, ptr %145, ptr %156
  %158 = load ptr, ptr %157, align 4
  %159 = tail call zeroext i1 @locks_in_grace(ptr noundef %158) #8
  br i1 %159, label %160, label %210

160:                                              ; preds = %153, %152
  %161 = icmp ne i32 %4, 0
  %162 = and i1 %161, %20
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.nlm_lock, ptr %97, i32 0, i32 5, i32 6
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, -129
  store i32 %166, ptr %164, align 8
  br label %167

167:                                              ; preds = %163, %160
  %168 = getelementptr inbounds %struct.nlm_lock, ptr %97, i32 0, i32 5
  %169 = tail call i32 @lock_to_openmode(ptr noundef %168) #8
  %170 = getelementptr %struct.nlm_file, ptr %1, i32 0, i32 2, i32 %169
  %171 = load ptr, ptr %170, align 4
  %172 = tail call i32 @vfs_lock_file(ptr noundef %171, i32 noundef 6, ptr noundef %168, ptr noundef null) #8
  %173 = getelementptr inbounds %struct.nlm_lock, ptr %97, i32 0, i32 5, i32 6
  %174 = load i32, ptr %173, align 8
  %175 = and i32 %174, -129
  store i32 %175, ptr %173, align 8
  switch i32 %172, label %185 [
    i32 0, label %210
    i32 -11, label %176
    i32 1, label %181
    i32 -35, label %184
  ]

176:                                              ; preds = %167
  br i1 %162, label %186, label %177

177:                                              ; preds = %176
  %178 = icmp eq i32 %4, 0
  %179 = or i1 %178, %20
  %180 = select i1 %179, i32 16777216, i32 50331648
  br label %210

181:                                              ; preds = %167
  br i1 %162, label %186, label %182

182:                                              ; preds = %181
  %183 = tail call fastcc i32 @nlmsvc_defer_lock_rqst(ptr noundef %0, ptr noundef nonnull %98)
  br label %210

184:                                              ; preds = %167
  br label %210

185:                                              ; preds = %167
  br label %210

186:                                              ; preds = %181, %176
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %187 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 1
  %188 = load volatile ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, %187
  br i1 %189, label %190, label %200

190:                                              ; preds = %186
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %98) #8, !srcloc !8
  %191 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %98, ptr nonnull %98, i32 1, ptr nonnull elementtype(i32) %98) #8, !srcloc !9
  %192 = extractvalue { i32, i32, i32 } %191, 0
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %198, label %194, !prof !10

194:                                              ; preds = %190
  %195 = add i32 %192, 1
  %196 = or i32 %195, %192
  %197 = icmp sgt i32 %196, -1
  br i1 %197, label %204, label %198, !prof !11

198:                                              ; preds = %194, %190
  %199 = phi i32 [ 2, %190 ], [ 1, %194 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %98, i32 noundef %199) #8
  br label %204

200:                                              ; preds = %186
  %201 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 1, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.list_head, ptr %188, i32 0, i32 1
  store ptr %202, ptr %203, align 4
  store volatile ptr %188, ptr %202, align 4
  store volatile ptr %187, ptr %187, align 4
  store ptr %187, ptr %201, align 4
  br label %204

204:                                              ; preds = %200, %198, %194
  %205 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nlm_blocked, i32 0, i32 1), align 4
  store ptr %187, ptr getelementptr inbounds (%struct.list_head, ptr @nlm_blocked, i32 0, i32 1), align 4
  store ptr @nlm_blocked, ptr %187, align 4
  %206 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 1, i32 1
  store ptr %205, ptr %206, align 4
  store volatile ptr %187, ptr %205, align 4
  %207 = getelementptr inbounds %struct.nlm_block, ptr %98, i32 0, i32 6
  store i32 -1, ptr %207, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %208 = load i16, ptr @nlm_blocked_lock, align 4
  %209 = add i16 %208, 1
  store i16 %209, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br label %210

210:                                              ; preds = %204, %185, %184, %182, %177, %167, %153, %140, %133, %125, %122, %115, %107, %65, %24
  %211 = phi ptr [ %98, %185 ], [ %98, %184 ], [ %98, %204 ], [ %98, %182 ], [ %98, %177 ], [ %98, %122 ], [ %98, %140 ], [ %98, %153 ], [ %98, %167 ], [ %98, %107 ], [ %98, %115 ], [ %98, %125 ], [ %98, %133 ], [ null, %65 ], [ null, %24 ]
  %212 = phi i32 [ 33554432, %185 ], [ 83886080, %184 ], [ 50331648, %204 ], [ %183, %182 ], [ %180, %177 ], [ 812974080, %122 ], [ 67108864, %140 ], [ 67108864, %153 ], [ %172, %167 ], [ 0, %107 ], [ 0, %115 ], [ 16777216, %125 ], [ 16777216, %133 ], [ 33554432, %65 ], [ 33554432, %24 ]
  tail call void @mutex_unlock(ptr noundef %21) #8
  tail call fastcc void @nlmsvc_release_block(ptr noundef %211)
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nlmsvc_lookup_block(ptr noundef readnone %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @nlm_blocked, align 4
  %4 = icmp eq ptr %3, @nlm_blocked
  br i1 %4, label %69, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 11
  %7 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 8
  %8 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 5
  %9 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 12
  %10 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 13
  %11 = getelementptr inbounds %struct.nlm_lock, ptr %1, i32 0, i32 5, i32 7
  br label %12

12:                                               ; preds = %66, %5
  %13 = phi ptr [ %3, %5 ], [ %67, %66 ]
  %14 = getelementptr i8, ptr %13, i32 40
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %66

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %13, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nlm_rqst, ptr %19, i32 0, i32 3, i32 1, i32 5, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.file, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %23, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.nlm_rqst, ptr %19, i32 0, i32 3, i32 1, i32 5, i32 8
  %30 = load i32, ptr %29, align 8
  %31 = load i32, ptr %7, align 8
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nlm_rqst, ptr %19, i32 0, i32 3, i32 1, i32 5, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %8, align 4
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nlm_rqst, ptr %19, i32 0, i32 3, i32 1, i32 5, i32 12
  %40 = load i64, ptr %39, align 8
  %41 = load i64, ptr %9, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nlm_rqst, ptr %19, i32 0, i32 3, i32 1, i32 5, i32 13
  %45 = load i64, ptr %44, align 8
  %46 = load i64, ptr %10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.nlm_rqst, ptr %19, i32 0, i32 3, i32 1, i32 5, i32 7
  %50 = load i8, ptr %49, align 4
  %51 = load i8, ptr %11, align 4
  %52 = icmp eq i8 %50, %51
  %53 = icmp eq i8 %51, 2
  %54 = or i1 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = getelementptr i8, ptr %13, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #8, !srcloc !8
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #8, !srcloc !9
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60, !prof !10

60:                                               ; preds = %55
  %61 = add i32 %58, 1
  %62 = or i32 %61, %58
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %69, label %64, !prof !11

64:                                               ; preds = %60, %55
  %65 = phi i32 [ 2, %55 ], [ 1, %60 ]
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef %65) #8
  br label %69

66:                                               ; preds = %48, %43, %38, %33, %28, %17, %12
  %67 = load ptr, ptr %13, align 4
  %68 = icmp eq ptr %67, @nlm_blocked
  br i1 %68, label %69, label %12

69:                                               ; preds = %66, %64, %60, %2
  %70 = phi ptr [ %56, %60 ], [ %56, %64 ], [ null, %2 ], [ null, %66 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @locks_in_grace(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_to_openmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_lock_file(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlmsvc_defer_lock_rqst(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nlm_block, ptr %1, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr %3, align 4
  tail call fastcc void @nlmsvc_insert_block(ptr noundef %1, i32 noundef 700)
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 42
  %7 = getelementptr inbounds %struct.nlm_block, ptr %1, i32 0, i32 10
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %6, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = tail call ptr %8(ptr noundef %6) #8
  %12 = getelementptr inbounds %struct.nlm_block, ptr %1, i32 0, i32 11
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  %14 = select i1 %13, i32 33554432, i32 812974080
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ 33554432, %2 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nlmsvc_insert_block(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %3 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !9
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !10

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %20, label %14, !prof !11

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %15) #8
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %4, ptr %18, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %14, %10
  %21 = icmp eq i32 %1, -1
  br i1 %21, label %38, label %22

22:                                               ; preds = %20
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = add i32 %23, %1
  %25 = icmp eq i32 %24, -1
  %26 = select i1 %25, i32 0, i32 %24
  br label %27

27:                                               ; preds = %31, %22
  %28 = phi ptr [ @nlm_blocked, %22 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @nlm_blocked
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %29, i32 28
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %26, %33
  %35 = icmp slt i32 %34, 0
  %36 = icmp eq i32 %33, -1
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %27

38:                                               ; preds = %31, %27, %20
  %39 = phi ptr [ @nlm_blocked, %20 ], [ %29, %31 ], [ @nlm_blocked, %27 ]
  %40 = phi i32 [ -1, %20 ], [ %26, %31 ], [ %26, %27 ]
  %41 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %3, ptr %41, align 4
  store ptr %39, ptr %3, align 4
  %43 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 1, i32 1
  store ptr %42, ptr %43, align 4
  store volatile ptr %3, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nlm_block, ptr %0, i32 0, i32 6
  store i32 %40, ptr %44, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %45 = load i16, ptr @nlm_blocked_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_testlock(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readnone %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 19
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @locks_in_grace(ptr noundef %13) #8
  br i1 %14, label %59, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5
  %17 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @lock_to_openmode(ptr noundef %16) #8
  %20 = getelementptr %struct.nlm_file, ptr %1, i32 0, i32 2, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @vfs_test_lock(ptr noundef %21, ptr noundef %16) #8
  switch i32 %22, label %59 [
    i32 0, label %26
    i32 1, label %23
  ]

23:                                               ; preds = %15
  %24 = load i1, ptr @nlmsvc_testlock.__already_done, align 1
  br i1 %24, label %59, label %25, !prof !11

25:                                               ; preds = %23
  store i1 true, ptr @nlmsvc_testlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 615, i32 noundef 9, ptr noundef null) #8
  br label %59

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5, i32 7
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 2
  br i1 %29, label %59, label %30

30:                                               ; preds = %26
  store ptr @.str.1, ptr %4, align 8
  %31 = getelementptr inbounds %struct.nlm_lock, ptr %4, i32 0, i32 1
  store i32 8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nlm_lock, ptr %4, i32 0, i32 3
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5, i32 8
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nlm_lock, ptr %4, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = load i8, ptr %27, align 4
  %37 = getelementptr inbounds %struct.nlm_lock, ptr %4, i32 0, i32 5, i32 7
  store i8 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5, i32 12
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nlm_lock, ptr %4, i32 0, i32 5, i32 12
  store i64 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.nlm_lock, ptr %3, i32 0, i32 5, i32 13
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds %struct.nlm_lock, ptr %4, i32 0, i32 5, i32 13
  store i64 %42, ptr %43, align 8
  tail call void @locks_release_private(ptr noundef %16) #8
  store ptr null, ptr %17, align 4
  %44 = getelementptr inbounds %struct.nlm_lockowner, ptr %18, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nlm_lockowner, ptr %18, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nlm_host, ptr %46, i32 0, i32 20
  %48 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %44, ptr noundef %47) #8
  br i1 %48, label %49, label %59

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %18, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  %54 = load ptr, ptr %45, align 4
  %55 = getelementptr inbounds %struct.nlm_host, ptr %54, i32 0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %56 = load i16, ptr %55, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %55, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %58 = load ptr, ptr %45, align 4
  tail call void @nlmsvc_release_host(ptr noundef %58) #8
  tail call void @kfree(ptr noundef %18) #8
  br label %59

59:                                               ; preds = %49, %30, %26, %25, %23, %15, %6
  %60 = phi i32 [ 67108864, %6 ], [ 33554432, %23 ], [ 33554432, %25 ], [ 33554432, %15 ], [ 0, %26 ], [ 16777216, %30 ], [ 16777216, %49 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_test_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_release_private(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_unlock(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @nlmsvc_cancel_blocked(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = getelementptr inbounds %struct.nlm_lock, ptr %2, i32 0, i32 5
  %6 = getelementptr inbounds %struct.nlm_lock, ptr %2, i32 0, i32 5, i32 7
  store i8 2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @vfs_lock_file(ptr noundef nonnull %8, i32 noundef 6, ptr noundef %5, ptr noundef null) #8
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %14 = getelementptr %struct.nlm_file, ptr %1, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @vfs_lock_file(ptr noundef nonnull %15, i32 noundef 6, ptr noundef %5, ptr noundef null) #8
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ %13, %12 ]
  %21 = lshr i32 %20, 6
  %22 = and i32 %21, 33554432
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_cancel_blocked(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i1 @locks_in_grace(ptr noundef %0) #8
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nlm_file, ptr %1, i32 0, i32 7
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = tail call fastcc ptr @nlmsvc_lookup_block(ptr noundef %1, ptr noundef %2)
  tail call void @mutex_unlock(ptr noundef %6) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nlm_lock, ptr %2, i32 0, i32 5
  %11 = tail call i32 @lock_to_openmode(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.nlm_block, ptr %7, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.nlm_file, ptr %13, i32 0, i32 2, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nlm_block, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nlm_rqst, ptr %17, i32 0, i32 3, i32 1, i32 5
  %19 = tail call i32 @vfs_cancel_lock(ptr noundef %15, ptr noundef %18) #8
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.nlm_rqst, ptr %20, i32 0, i32 3, i32 1, i32 5
  %22 = tail call i32 @locks_delete_block(ptr noundef %21) #8
  %23 = getelementptr inbounds %struct.nlm_block, ptr %7, i32 0, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %33, label %26

26:                                               ; preds = %9
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %27 = getelementptr inbounds %struct.nlm_block, ptr %7, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %23, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %31 = load i16, ptr @nlm_blocked_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %7) #8
  br label %33

33:                                               ; preds = %26, %9
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %7)
  %34 = icmp eq i32 %22, 0
  %35 = select i1 %34, i32 0, i32 16777216
  br label %36

36:                                               ; preds = %33, %5, %3
  %37 = phi i32 [ 67108864, %3 ], [ %35, %33 ], [ 0, %5 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_cancel_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nlmsvc_get_owner(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nlm_lockowner, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !9
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
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #8
  br label %12

12:                                               ; preds = %10, %6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmsvc_put_owner(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nlm_lockowner, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nlm_lockowner, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nlm_host, ptr %4, i32 0, i32 20
  %6 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %2, ptr noundef %5) #8
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.nlm_host, ptr %12, i32 0, i32 20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %16 = load ptr, ptr %3, align 4
  tail call void @nlmsvc_release_host(ptr noundef %16) #8
  tail call void @kfree(ptr noundef %0) #8
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmsvc_notify_blocked(ptr nocapture noundef readonly %0) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %2 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 11
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 13
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  br label %8

8:                                                ; preds = %51, %1
  %9 = phi ptr [ @nlm_blocked, %1 ], [ %10, %51 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @nlm_blocked
  br i1 %11, label %96, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 5, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.file, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 5, i32 8
  %25 = load i32, ptr %24, align 8
  %26 = load i32, ptr %3, align 8
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 5, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 5, i32 12
  %35 = load i64, ptr %34, align 8
  %36 = load i64, ptr %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 5, i32 13
  %40 = load i64, ptr %39, align 8
  %41 = load i64, ptr %6, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.nlm_rqst, ptr %14, i32 0, i32 3, i32 1, i32 5, i32 7
  %45 = load i8, ptr %44, align 4
  %46 = load i8, ptr %7, align 4
  %47 = icmp eq i8 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = icmp eq i8 %46, 2
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %48, %38, %33, %28, %23, %12
  %52 = phi i32 [ 0, %38 ], [ 0, %33 ], [ 0, %28 ], [ 0, %23 ], [ 0, %12 ], [ %50, %48 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %8, label %54

54:                                               ; preds = %51, %43
  %55 = getelementptr i8, ptr %10, i32 -4
  %56 = load volatile ptr, ptr %10, align 4
  %57 = icmp eq ptr %56, %10
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #8, !srcloc !8
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #8, !srcloc !9
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62, !prof !10

62:                                               ; preds = %58
  %63 = add i32 %60, 1
  %64 = or i32 %63, %60
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %72, label %66, !prof !11

66:                                               ; preds = %62, %58
  %67 = phi i32 [ 2, %58 ], [ 1, %62 ]
  tail call void @refcount_warn_saturate(ptr noundef %55, i32 noundef %67) #8
  br label %72

68:                                               ; preds = %54
  %69 = getelementptr i8, ptr %10, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %70, ptr %71, align 4
  store volatile ptr %56, ptr %70, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %69, align 4
  br label %72

72:                                               ; preds = %68, %66, %62
  %73 = load volatile i32, ptr @jiffies, align 64
  %74 = icmp eq i32 %73, -1
  %75 = select i1 %74, i32 0, i32 %73
  br label %76

76:                                               ; preds = %80, %72
  %77 = phi ptr [ @nlm_blocked, %72 ], [ %78, %80 ]
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, @nlm_blocked
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %78, i32 28
  %82 = load i32, ptr %81, align 4
  %83 = sub i32 %75, %82
  %84 = icmp slt i32 %83, 0
  %85 = icmp eq i32 %82, -1
  %86 = or i1 %85, %84
  br i1 %86, label %87, label %76

87:                                               ; preds = %80, %76
  %88 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  store ptr %10, ptr %88, align 4
  store ptr %78, ptr %10, align 4
  %90 = getelementptr i8, ptr %10, i32 4
  store ptr %89, ptr %90, align 4
  store volatile ptr %10, ptr %89, align 4
  %91 = getelementptr i8, ptr %10, i32 28
  store i32 %75, ptr %91, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %92 = load i16, ptr @nlm_blocked_lock, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %94 = getelementptr i8, ptr %10, i32 20
  %95 = load ptr, ptr %94, align 4
  tail call void @svc_wake_up(ptr noundef %95) #8
  br label %100

96:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %97 = load i16, ptr @nlm_blocked_lock, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %100

100:                                              ; preds = %96, %87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlmsvc_grant_deferred(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %3 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 11
  %4 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 12
  %7 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 13
  %8 = getelementptr inbounds %struct.file_lock, ptr %0, i32 0, i32 7
  br label %9

9:                                                ; preds = %52, %2
  %10 = phi ptr [ @nlm_blocked, %2 ], [ %11, %52 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @nlm_blocked
  br i1 %12, label %114, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %11, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nlm_rqst, ptr %15, i32 0, i32 3, i32 1, i32 5, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.file, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.nlm_rqst, ptr %15, i32 0, i32 3, i32 1, i32 5, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = load i32, ptr %4, align 8
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nlm_rqst, ptr %15, i32 0, i32 3, i32 1, i32 5, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %5, align 4
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.nlm_rqst, ptr %15, i32 0, i32 3, i32 1, i32 5, i32 12
  %36 = load i64, ptr %35, align 8
  %37 = load i64, ptr %6, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.nlm_rqst, ptr %15, i32 0, i32 3, i32 1, i32 5, i32 13
  %41 = load i64, ptr %40, align 8
  %42 = load i64, ptr %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.nlm_rqst, ptr %15, i32 0, i32 3, i32 1, i32 5, i32 7
  %46 = load i8, ptr %45, align 4
  %47 = load i8, ptr %8, align 4
  %48 = icmp eq i8 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = icmp eq i8 %47, 2
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %49, %39, %34, %29, %24, %13
  %53 = phi i32 [ 0, %39 ], [ 0, %34 ], [ 0, %29 ], [ 0, %24 ], [ 0, %13 ], [ %51, %49 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %9, label %55

55:                                               ; preds = %52, %44
  %56 = getelementptr i8, ptr %11, i32 -4
  %57 = getelementptr i8, ptr %11, i32 52
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %55
  %62 = and i32 %58, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %114

64:                                               ; preds = %61
  %65 = or i32 %58, 2
  store i32 %65, ptr %57, align 4
  %66 = icmp eq i32 %1, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = getelementptr i8, ptr %11, i32 36
  store i8 1, ptr %68, align 4
  br label %75

69:                                               ; preds = %64
  %70 = or i32 %58, 6
  store i32 %70, ptr %57, align 4
  br label %75

71:                                               ; preds = %55
  %72 = icmp eq i32 %1, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = getelementptr i8, ptr %11, i32 36
  store i8 1, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %71, %69, %67
  %76 = load volatile ptr, ptr %11, align 4
  %77 = icmp eq ptr %76, %11
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #8, !srcloc !8
  %79 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #8, !srcloc !9
  %80 = extractvalue { i32, i32, i32 } %79, 0
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82, !prof !10

82:                                               ; preds = %78
  %83 = add i32 %80, 1
  %84 = or i32 %83, %80
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %92, label %86, !prof !11

86:                                               ; preds = %82, %78
  %87 = phi i32 [ 2, %78 ], [ 1, %82 ]
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef %87) #8
  br label %92

88:                                               ; preds = %75
  %89 = getelementptr i8, ptr %11, i32 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %76, ptr %90, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %86, %82
  %93 = load volatile i32, ptr @jiffies, align 64
  %94 = icmp eq i32 %93, -1
  %95 = select i1 %94, i32 0, i32 %93
  br label %96

96:                                               ; preds = %100, %92
  %97 = phi ptr [ @nlm_blocked, %92 ], [ %98, %100 ]
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, @nlm_blocked
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %98, i32 28
  %102 = load i32, ptr %101, align 4
  %103 = sub i32 %95, %102
  %104 = icmp slt i32 %103, 0
  %105 = icmp eq i32 %102, -1
  %106 = or i1 %105, %104
  br i1 %106, label %107, label %96

107:                                              ; preds = %100, %96
  %108 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  store ptr %11, ptr %108, align 4
  store ptr %98, ptr %11, align 4
  %110 = getelementptr i8, ptr %11, i32 4
  store ptr %109, ptr %110, align 4
  store volatile ptr %11, ptr %109, align 4
  %111 = getelementptr i8, ptr %11, i32 28
  store i32 %95, ptr %111, align 4
  %112 = getelementptr i8, ptr %11, i32 20
  %113 = load ptr, ptr %112, align 4
  tail call void @svc_wake_up(ptr noundef %113) #8
  br label %114

114:                                              ; preds = %107, %61, %9
  %115 = phi i32 [ 0, %107 ], [ -37, %61 ], [ -2, %9 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %116 = load i16, ptr @nlm_blocked_lock, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  br i1 %12, label %118, label %120

118:                                              ; preds = %114
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %120

120:                                              ; preds = %118, %114
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nlmsvc_grant_reply(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nlm_cookie, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %20, %2
  %5 = phi ptr [ @nlm_blocked, %2 ], [ %6, %20 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @nlm_blocked
  br i1 %7, label %54, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %3, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.nlm_rqst, ptr %10, i32 0, i32 3
  %17 = tail call i32 @bcmp(ptr %16, ptr %0, i32 %12) #8
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ 0, %8 ], [ %19, %15 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %4, label %23

23:                                               ; preds = %20
  %24 = getelementptr i8, ptr %6, i32 16
  %25 = getelementptr i8, ptr %6, i32 -4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #8, !srcloc !8
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #8, !srcloc !9
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !10

29:                                               ; preds = %23
  %30 = add i32 %27, 1
  %31 = or i32 %30, %27
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %35, label %33, !prof !11

33:                                               ; preds = %29, %23
  %34 = phi i32 [ 2, %23 ], [ 1, %29 ]
  tail call void @refcount_warn_saturate(ptr noundef %25, i32 noundef %34) #8
  br label %35

35:                                               ; preds = %33, %29
  %36 = icmp eq ptr %25, null
  br i1 %36, label %54, label %37

37:                                               ; preds = %35
  %38 = icmp eq i32 %1, 67108864
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call fastcc void @nlmsvc_insert_block(ptr noundef nonnull %25, i32 noundef 1000)
  br label %53

40:                                               ; preds = %37
  %41 = load ptr, ptr %24, align 4
  %42 = getelementptr inbounds %struct.nlm_rqst, ptr %41, i32 0, i32 3, i32 1, i32 5
  %43 = tail call i32 @locks_delete_block(ptr noundef %42) #8
  %44 = load volatile ptr, ptr %6, align 4
  %45 = icmp eq ptr %44, %6
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %47 = getelementptr i8, ptr %6, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %47, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %51 = load i16, ptr @nlm_blocked_lock, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %25) #8
  br label %53

53:                                               ; preds = %46, %40, %39
  tail call fastcc void @nlmsvc_release_block(ptr noundef nonnull %25)
  br label %54

54:                                               ; preds = %53, %35, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nlmsvc_retry_blocked() local_unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %1 = load volatile ptr, ptr @nlm_blocked, align 4
  %2 = icmp eq ptr %1, @nlm_blocked
  br i1 %2, label %140, label %3

3:                                                ; preds = %137, %0
  %4 = tail call zeroext i1 @kthread_should_stop() #8
  br i1 %4, label %140, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @nlm_blocked, align 4
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = getelementptr i8, ptr %6, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %140, label %11

11:                                               ; preds = %5
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 %12, %9
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load volatile i32, ptr @jiffies, align 64
  %17 = sub i32 %9, %16
  br label %140

18:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %19 = load i16, ptr @nlm_blocked_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %21 = getelementptr i8, ptr %6, i32 52
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %18
  %26 = and i32 %22, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = or i32 %22, 4
  store i32 %29, ptr %21, align 4
  br label %30

30:                                               ; preds = %28, %25
  tail call fastcc void @nlmsvc_insert_block(ptr noundef %7, i32 noundef 700) #8
  %31 = getelementptr i8, ptr %6, i32 48
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %137, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cache_deferred_req, ptr %32, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef nonnull %32, i32 noundef 0) #8
  store ptr null, ptr %31, align 4
  br label %137

37:                                               ; preds = %18
  %38 = getelementptr i8, ptr %6, i32 40
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %6, i32 16
  %41 = load ptr, ptr %40, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !8
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !9
  %43 = extractvalue { i32, i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !10

45:                                               ; preds = %37
  %46 = add i32 %43, 1
  %47 = or i32 %46, %43
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %51, label %49, !prof !11

49:                                               ; preds = %45, %37
  %50 = phi i32 [ 2, %37 ], [ 1, %45 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %50) #8
  br label %51

51:                                               ; preds = %49, %45
  %52 = load ptr, ptr %40, align 4
  %53 = getelementptr inbounds %struct.nlm_rqst, ptr %52, i32 0, i32 3, i32 1, i32 5
  %54 = tail call i32 @locks_delete_block(ptr noundef %53) #8
  %55 = load volatile ptr, ptr %6, align 4
  %56 = icmp eq ptr %55, %6
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %58 = getelementptr i8, ptr %6, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %62 = load i16, ptr @nlm_blocked_lock, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call fastcc void @nlmsvc_release_block(ptr noundef %7) #8
  br label %64

64:                                               ; preds = %57, %51
  %65 = getelementptr i8, ptr %6, i32 36
  %66 = load i8, ptr %65, align 4
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr i8, ptr %6, i32 24
  %70 = load ptr, ptr %69, align 4
  tail call void @nlm_rebind_host(ptr noundef %70) #8
  br label %111

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.nlm_rqst, ptr %41, i32 0, i32 3, i32 1, i32 5
  %73 = getelementptr inbounds %struct.nlm_rqst, ptr %41, i32 0, i32 3, i32 1, i32 5, i32 6
  %74 = load i32, ptr %73, align 8
  %75 = or i32 %74, 128
  store i32 %75, ptr %73, align 8
  %76 = getelementptr inbounds %struct.nlm_rqst, ptr %41, i32 0, i32 3, i32 1, i32 5, i32 12
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nlm_rqst, ptr %41, i32 0, i32 3, i32 1, i32 5, i32 13
  %79 = load i64, ptr %78, align 8
  %80 = tail call i32 @lock_to_openmode(ptr noundef %72) #8
  %81 = getelementptr %struct.nlm_file, ptr %39, i32 0, i32 2, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = tail call i32 @vfs_lock_file(ptr noundef %82, i32 noundef 6, ptr noundef %72, ptr noundef null) #8
  %84 = load i32, ptr %73, align 8
  %85 = and i32 %84, -129
  store i32 %85, ptr %73, align 8
  store i64 %77, ptr %76, align 8
  store i64 %79, ptr %78, align 8
  switch i32 %83, label %108 [
    i32 0, label %111
    i32 1, label %86
  ]

86:                                               ; preds = %71
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %87 = load volatile ptr, ptr %6, align 4
  %88 = icmp eq ptr %87, %6
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !8
  %90 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !9
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93, !prof !10

93:                                               ; preds = %89
  %94 = add i32 %91, 1
  %95 = or i32 %94, %91
  %96 = icmp sgt i32 %95, -1
  br i1 %96, label %103, label %97, !prof !11

97:                                               ; preds = %93, %89
  %98 = phi i32 [ 2, %89 ], [ 1, %93 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %98) #8
  br label %103

99:                                               ; preds = %86
  %100 = getelementptr i8, ptr %6, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  store ptr %101, ptr %102, align 4
  store volatile ptr %87, ptr %101, align 4
  store volatile ptr %6, ptr %6, align 4
  br label %103

103:                                              ; preds = %99, %97, %93
  %104 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nlm_blocked, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @nlm_blocked, i32 0, i32 1), align 4
  store ptr @nlm_blocked, ptr %6, align 4
  %105 = getelementptr i8, ptr %6, i32 4
  store ptr %104, ptr %105, align 4
  store volatile ptr %6, ptr %104, align 4
  store i32 -1, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %106 = load i16, ptr @nlm_blocked_lock, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  tail call fastcc void @nlmsvc_release_block(ptr noundef %7) #8
  br label %137

108:                                              ; preds = %71
  %109 = sub i32 0, %83
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %109, ptr noundef nonnull @__func__.nlmsvc_grant_blocked) #11
  tail call fastcc void @nlmsvc_insert_block(ptr noundef %7, i32 noundef 1000) #8
  tail call fastcc void @nlmsvc_release_block(ptr noundef %7) #8
  br label %137

111:                                              ; preds = %71, %68
  store i8 1, ptr %65, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %112 = load volatile ptr, ptr %6, align 4
  %113 = icmp eq ptr %112, %6
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !8
  %115 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !9
  %116 = extractvalue { i32, i32, i32 } %115, 0
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118, !prof !10

118:                                              ; preds = %114
  %119 = add i32 %116, 1
  %120 = or i32 %119, %116
  %121 = icmp sgt i32 %120, -1
  br i1 %121, label %128, label %122, !prof !11

122:                                              ; preds = %118, %114
  %123 = phi i32 [ 2, %114 ], [ 1, %118 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %123) #8
  br label %128

124:                                              ; preds = %111
  %125 = getelementptr i8, ptr %6, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  store ptr %126, ptr %127, align 4
  store volatile ptr %112, ptr %126, align 4
  store volatile ptr %6, ptr %6, align 4
  br label %128

128:                                              ; preds = %124, %122, %118
  %129 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nlm_blocked, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @nlm_blocked, i32 0, i32 1), align 4
  store ptr @nlm_blocked, ptr %6, align 4
  %130 = getelementptr i8, ptr %6, i32 4
  store ptr %129, ptr %130, align 4
  store volatile ptr %6, ptr %129, align 4
  store i32 -1, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %131 = load i16, ptr @nlm_blocked_lock, align 4
  %132 = add i16 %131, 1
  store i16 %132, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  %133 = load ptr, ptr %40, align 4
  %134 = tail call i32 @nlm_async_call(ptr noundef %133, i32 noundef 10, ptr noundef nonnull @nlmsvc_grant_ops) #8
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  tail call fastcc void @nlmsvc_insert_block(ptr noundef %7, i32 noundef 1000) #8
  br label %137

137:                                              ; preds = %136, %128, %108, %103, %34, %30
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %138 = load volatile ptr, ptr @nlm_blocked, align 4
  %139 = icmp eq ptr %138, @nlm_blocked
  br i1 %139, label %140, label %3

140:                                              ; preds = %137, %15, %5, %3, %0
  %141 = phi i32 [ %17, %15 ], [ 2147483647, %0 ], [ 2147483647, %137 ], [ 2147483647, %5 ], [ 2147483647, %3 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %142 = load i16, ptr @nlm_blocked_lock, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @locks_delete_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_release_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_get_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_alloc_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmclnt_next_cookie(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_copy_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @svc_wake_up(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_rebind_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlm_async_call(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmsvc_grant_callback(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nlm_rqst, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @nlm_blocked_lock) #8
  %5 = getelementptr inbounds %struct.nlm_block, ptr %4, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %52, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rpc_task, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 1000, i32 6000
  %13 = load volatile ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %29, label %23, !prof !11

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %24) #8
  br label %29

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.nlm_block, ptr %4, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  store volatile ptr %13, ptr %27, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %23, %19
  %30 = load volatile i32, ptr @jiffies, align 64
  %31 = add i32 %30, %12
  %32 = icmp eq i32 %31, -1
  %33 = select i1 %32, i32 0, i32 %31
  br label %34

34:                                               ; preds = %38, %29
  %35 = phi ptr [ @nlm_blocked, %29 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, @nlm_blocked
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 28
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %33, %40
  %42 = icmp slt i32 %41, 0
  %43 = icmp eq i32 %40, -1
  %44 = or i1 %43, %42
  br i1 %44, label %45, label %34

45:                                               ; preds = %38, %34
  %46 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  store ptr %5, ptr %46, align 4
  store ptr %36, ptr %5, align 4
  %48 = getelementptr inbounds %struct.nlm_block, ptr %4, i32 0, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %5, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nlm_block, ptr %4, i32 0, i32 6
  store i32 %33, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nlm_block, ptr %4, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  tail call void @svc_wake_up(ptr noundef %51) #8
  br label %52

52:                                               ; preds = %45, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %53 = load i16, ptr @nlm_blocked_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @nlm_blocked_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlmsvc_grant_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nlm_rqst, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @nlmsvc_release_block(ptr noundef %3)
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

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
!8 = !{i64 781652, i64 2148271623, i64 2148271649, i64 2148271696, i64 2148271718, i64 2148271746, i64 2148271766}
!9 = !{i64 2148284496, i64 2148284528, i64 2148284557, i64 2148284591, i64 2148284622, i64 2148284645}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148950256}
!13 = !{i64 2148946080}
!14 = !{i64 2148946155, i64 2148946182, i64 2148946229, i64 2148946251, i64 2148946279, i64 2148946299}
!15 = !{i64 2148973259}
