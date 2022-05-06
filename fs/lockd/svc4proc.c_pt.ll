; ModuleID = '/llk/IR/fs/lockd/svc4proc.c_pt.bc'
source_filename = "../fs/lockd/svc4proc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.lock_manager_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_call_ops = type { ptr, ptr, ptr, ptr }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.111 }
%union.anon.111 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nlm_args = type { %struct.nlm_cookie, %struct.nlm_lock, i32, i32, i32, i32, i32, i32 }
%struct.nlm_cookie = type { [32 x i8], i32 }
%struct.nlm_lock = type { ptr, i32, %struct.nfs_fh, %struct.xdr_netobj, i32, %struct.file_lock }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.xdr_netobj = type { i32, ptr }
%struct.file_lock = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, i32, i32, %struct.wait_queue_head, ptr, i64, i64, ptr, i32, i32, ptr, ptr, %union.anon.110 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.110 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, ptr, %struct.list_head }
%struct.nlm_res = type { %struct.nlm_cookie, i32, %struct.nlm_lock }
%struct.nlm_rqst = type { %struct.refcount_struct, i32, ptr, %struct.nlm_args, %struct.nlm_res, ptr, i32, [74 x i8], ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nlm_file = type { %struct.hlist_node, %struct.nfs_fh, [2 x ptr], ptr, %struct.list_head, i32, i32, %struct.mutex }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.104, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.104 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TEST\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LOCK\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"UNLOCK\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"GRANTED\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TEST_MSG\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LOCK_MSG\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"CANCEL_MSG\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"UNLOCK_MSG\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"GRANTED_MSG\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"TEST_RES\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"LOCK_RES\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"CANCEL_RES\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"UNLOCK_RES\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"GRANTED_RES\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"SM_NOTIFY\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"UNUSED\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SHARE\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"UNSHARE\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"NM_LOCK\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"FREE_ALL\00", align 1
@nlmsvc_procedures4 = dso_local local_unnamed_addr constant [24 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nlm4svc_proc_null, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 1, ptr @.str }, %struct.svc_procedure { ptr @nlm4svc_proc_test, ptr @nlm4svc_decode_testargs, ptr @nlm4svc_encode_testres, ptr null, i32 344, i32 320, i32 0, i32 273, ptr @.str.1 }, %struct.svc_procedure { ptr @nlm4svc_proc_lock, ptr @nlm4svc_decode_lockargs, ptr @nlm4svc_encode_res, ptr null, i32 344, i32 320, i32 0, i32 10, ptr @.str.2 }, %struct.svc_procedure { ptr @nlm4svc_proc_cancel, ptr @nlm4svc_decode_cancargs, ptr @nlm4svc_encode_res, ptr null, i32 344, i32 320, i32 0, i32 10, ptr @.str.3 }, %struct.svc_procedure { ptr @nlm4svc_proc_unlock, ptr @nlm4svc_decode_unlockargs, ptr @nlm4svc_encode_res, ptr null, i32 344, i32 320, i32 0, i32 10, ptr @.str.4 }, %struct.svc_procedure { ptr @nlm4svc_proc_granted, ptr @nlm4svc_decode_testargs, ptr @nlm4svc_encode_res, ptr null, i32 344, i32 320, i32 0, i32 10, ptr @.str.5 }, %struct.svc_procedure { ptr @nlm4svc_proc_test_msg, ptr @nlm4svc_decode_testargs, ptr @nlm4svc_encode_void, ptr null, i32 344, i32 4, i32 0, i32 1, ptr @.str.6 }, %struct.svc_procedure { ptr @nlm4svc_proc_lock_msg, ptr @nlm4svc_decode_lockargs, ptr @nlm4svc_encode_void, ptr null, i32 344, i32 4, i32 0, i32 1, ptr @.str.7 }, %struct.svc_procedure { ptr @nlm4svc_proc_cancel_msg, ptr @nlm4svc_decode_cancargs, ptr @nlm4svc_encode_void, ptr null, i32 344, i32 4, i32 0, i32 1, ptr @.str.8 }, %struct.svc_procedure { ptr @nlm4svc_proc_unlock_msg, ptr @nlm4svc_decode_unlockargs, ptr @nlm4svc_encode_void, ptr null, i32 344, i32 4, i32 0, i32 1, ptr @.str.9 }, %struct.svc_procedure { ptr @nlm4svc_proc_granted_msg, ptr @nlm4svc_decode_testargs, ptr @nlm4svc_encode_void, ptr null, i32 344, i32 4, i32 0, i32 1, ptr @.str.10 }, %struct.svc_procedure { ptr @nlm4svc_proc_null, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 320, i32 4, i32 0, i32 1, ptr @.str.11 }, %struct.svc_procedure { ptr @nlm4svc_proc_null, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 320, i32 4, i32 0, i32 1, ptr @.str.12 }, %struct.svc_procedure { ptr @nlm4svc_proc_null, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 320, i32 4, i32 0, i32 1, ptr @.str.13 }, %struct.svc_procedure { ptr @nlm4svc_proc_null, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 320, i32 4, i32 0, i32 1, ptr @.str.14 }, %struct.svc_procedure { ptr @nlm4svc_proc_granted_res, ptr @nlm4svc_decode_res, ptr @nlm4svc_encode_void, ptr null, i32 320, i32 4, i32 0, i32 1, ptr @.str.15 }, %struct.svc_procedure { ptr @nlm4svc_proc_sm_notify, ptr @nlm4svc_decode_reboot, ptr @nlm4svc_encode_void, ptr null, i32 28, i32 4, i32 0, i32 1, ptr @.str.16 }, %struct.svc_procedure { ptr @nlm4svc_proc_unused, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 0, ptr @.str.17 }, %struct.svc_procedure { ptr @nlm4svc_proc_unused, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 0, ptr @.str.17 }, %struct.svc_procedure { ptr @nlm4svc_proc_unused, ptr @nlm4svc_decode_void, ptr @nlm4svc_encode_void, ptr null, i32 4, i32 4, i32 0, i32 0, ptr @.str.17 }, %struct.svc_procedure { ptr @nlm4svc_proc_share, ptr @nlm4svc_decode_shareargs, ptr @nlm4svc_encode_shareres, ptr null, i32 344, i32 320, i32 0, i32 11, ptr @.str.18 }, %struct.svc_procedure { ptr @nlm4svc_proc_unshare, ptr @nlm4svc_decode_shareargs, ptr @nlm4svc_encode_shareres, ptr null, i32 344, i32 320, i32 0, i32 11, ptr @.str.19 }, %struct.svc_procedure { ptr @nlm4svc_proc_nm_lock, ptr @nlm4svc_decode_lockargs, ptr @nlm4svc_encode_res, ptr null, i32 344, i32 320, i32 0, i32 10, ptr @.str.20 }, %struct.svc_procedure { ptr @nlm4svc_proc_free_all, ptr @nlm4svc_decode_notify, ptr @nlm4svc_encode_void, ptr null, i32 344, i32 4, i32 0, i32 1, ptr @.str.21 }], align 4
@nlmsvc_ops = external dso_local local_unnamed_addr global ptr, align 4
@nlmsvc_lock_operations = external dso_local constant %struct.lock_manager_operations, align 4
@nlm4svc_callback_ops = internal constant %struct.rpc_call_ops { ptr null, ptr @nlm4svc_callback_exit, ptr null, ptr @nlm4svc_callback_release }, align 4
@.str.22 = private unnamed_addr constant [40 x i8] c"\014lockd: rejected NSM callback from %s\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nlm4svc_proc_null(ptr nocapture noundef readnone %0) #0 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_void(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_encode_void(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_test(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__nlm4svc_proc_test(ptr noundef %0, ptr noundef %3)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_testargs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_encode_testres(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_lock(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__nlm4svc_proc_lock(ptr noundef %0, ptr noundef %3)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_lockargs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_encode_res(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_cancel(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__nlm4svc_proc_cancel(ptr noundef %0, ptr noundef %3)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_cancargs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_unlock(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__nlm4svc_proc_unlock(ptr noundef %0, ptr noundef %3)
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_unlockargs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_granted(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %3, ptr noundef align 8 dereferenceable(36) %5, i32 36, i1 false) #8
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.nlm_args, ptr %5, i32 0, i32 1
  %8 = tail call i32 @nlmclnt_grant(ptr noundef %6, ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.nlm_res, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_test_msg(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @nlm4svc_callback(ptr noundef %0, i32 noundef 11, ptr noundef nonnull @__nlm4svc_proc_test)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_lock_msg(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @nlm4svc_callback(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @__nlm4svc_proc_lock)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_cancel_msg(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @nlm4svc_callback(ptr noundef %0, i32 noundef 13, ptr noundef nonnull @__nlm4svc_proc_cancel)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_unlock_msg(ptr noundef %0) #2 {
  %2 = tail call fastcc i32 @nlm4svc_callback(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @__nlm4svc_proc_unlock)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_granted_msg(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nlm_args, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nlm_args, ptr %3, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @nlmsvc_lookup_host(ptr noundef %0, ptr noundef %5, i32 noundef %7) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @nlm_alloc_call(ptr noundef nonnull %8) #8
  tail call void @nlmsvc_release_host(ptr noundef nonnull %8) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nlm_rqst, ptr %11, i32 0, i32 4
  %15 = load ptr, ptr %2, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %14, ptr noundef align 8 dereferenceable(36) %15, i32 36, i1 false) #8
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.nlm_args, ptr %15, i32 0, i32 1
  %18 = tail call i32 @nlmclnt_grant(ptr noundef %16, ptr noundef %17) #8
  %19 = getelementptr inbounds %struct.nlm_rqst, ptr %11, i32 0, i32 4, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nlm_rqst, ptr %11, i32 0, i32 1
  store i32 1, ptr %20, align 4
  %21 = tail call i32 @nlm_async_reply(ptr noundef nonnull %11, i32 noundef 15, ptr noundef nonnull @nlm4svc_callback_ops) #8
  %22 = icmp slt i32 %21, 0
  %23 = select i1 %22, i32 83886080, i32 0
  br label %24

24:                                               ; preds = %13, %10, %1
  %25 = phi i32 [ 83886080, %1 ], [ 83886080, %10 ], [ %23, %13 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_granted_res(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr @nlmsvc_ops, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nlm_res, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  tail call void @nlmsvc_grant_reply(ptr noundef %6, i32 noundef %8) #8
  br label %9

9:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_res(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_sm_notify(ptr noundef %0) #2 {
  %2 = alloca [63 x i8], align 1
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 2
  switch i16 %6, label %40 [
    i16 2, label %7
    i16 10, label %18
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sockaddr_in, ptr %5, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 252
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 255
  %16 = icmp eq i32 %15, 127
  %17 = zext i1 %16 to i32
  br label %37

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, 252
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 4
  %25 = tail call i32 @__ipv6_addr_type(ptr noundef %24) #8
  %26 = and i32 %25, 4096
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.svc_rqst, ptr %0, i32 0, i32 3, i32 0, i32 1, i32 16
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 127
  %33 = zext i1 %32 to i32
  br label %37

34:                                               ; preds = %23
  %35 = tail call i32 @__ipv6_addr_type(ptr noundef %24) #8
  %36 = and i32 %35, 16
  br label %37

37:                                               ; preds = %34, %28, %12
  %38 = phi i32 [ %17, %12 ], [ %33, %28 ], [ %36, %34 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %18, %7, %1
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(63) %2, i8 0, i32 63, i1 false), !annotation !8
  %41 = call ptr @svc_print_addr(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 63) #8
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %41) #9
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %2) #8
  br label %51

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  %47 = getelementptr inbounds %struct.svc_xprt, ptr %45, i32 0, i32 19
  %48 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %49 = select i1 %46, ptr %48, ptr %47
  %50 = load ptr, ptr %49, align 4
  tail call void @nlm_host_rebooted(ptr noundef %50, ptr noundef %4) #8
  br label %51

51:                                               ; preds = %43, %40
  %52 = phi i32 [ 0, %43 ], [ 83886080, %40 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_reboot(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nlm4svc_proc_unused(ptr nocapture noundef readnone %0) #0 {
  ret i32 50331648
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_share(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %7, ptr noundef align 8 dereferenceable(36) %5, i32 36, i1 false)
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.svc_xprt, ptr %9, i32 0, i32 19
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @locks_in_grace(ptr noundef %14) #8
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nlm_args, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nlm_res, ptr %7, i32 0, i32 1
  store i32 67108864, ptr %21, align 4
  br label %35

22:                                               ; preds = %16, %1
  %23 = call fastcc i32 @nlm4svc_retrieve_args(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %24 = getelementptr inbounds %struct.nlm_res, ptr %7, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = icmp eq i32 %23, 812974080
  %28 = select i1 %27, i32 1625948160, i32 0
  br label %35

29:                                               ; preds = %22
  %30 = load ptr, ptr %2, align 4
  %31 = load ptr, ptr %3, align 4
  %32 = call i32 @nlmsvc_share_file(ptr noundef %30, ptr noundef %31, ptr noundef %5) #8
  store i32 %32, ptr %24, align 4
  %33 = getelementptr inbounds %struct.nlm_args, ptr %5, i32 0, i32 1
  call void @nlmsvc_release_lockowner(ptr noundef %33) #8
  call void @nlmsvc_release_host(ptr noundef %30) #8
  %34 = load ptr, ptr %3, align 4
  call void @nlm_release_file(ptr noundef %34) #8
  br label %35

35:                                               ; preds = %29, %26, %20
  %36 = phi i32 [ %28, %26 ], [ 0, %29 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_shareargs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_encode_shareres(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_unshare(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %7, ptr noundef align 8 dereferenceable(36) %5, i32 36, i1 false)
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.svc_xprt, ptr %9, i32 0, i32 19
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %13 = select i1 %10, ptr %12, ptr %11
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 @locks_in_grace(ptr noundef %14) #8
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.nlm_res, ptr %7, i32 0, i32 1
  store i32 67108864, ptr %17, align 4
  br label %31

18:                                               ; preds = %1
  %19 = call fastcc i32 @nlm4svc_retrieve_args(ptr noundef %0, ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %20 = getelementptr inbounds %struct.nlm_res, ptr %7, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %19, 812974080
  %24 = select i1 %23, i32 1625948160, i32 0
  br label %31

25:                                               ; preds = %18
  %26 = load ptr, ptr %2, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = call i32 @nlmsvc_unshare_file(ptr noundef %26, ptr noundef %27, ptr noundef %5) #8
  store i32 %28, ptr %20, align 4
  %29 = getelementptr inbounds %struct.nlm_args, ptr %5, i32 0, i32 1
  call void @nlmsvc_release_lockowner(ptr noundef %29) #8
  call void @nlmsvc_release_host(ptr noundef %26) #8
  %30 = load ptr, ptr %3, align 4
  call void @nlm_release_file(ptr noundef %30) #8
  br label %31

31:                                               ; preds = %25, %22, %16
  %32 = phi i32 [ 0, %16 ], [ %24, %22 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_nm_lock(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nlm_args, ptr %3, i32 0, i32 5
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__nlm4svc_proc_lock(ptr noundef %0, ptr noundef %6) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nlm4svc_proc_free_all(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @nlmsvc_ops, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nlm_args, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nlm_args, ptr %3, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @nlmsvc_lookup_host(ptr noundef %0, ptr noundef %8, i32 noundef %10) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.nlm_args, ptr %3, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @nsm_monitor(ptr noundef nonnull %11) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %6
  tail call void @nlmsvc_release_host(ptr noundef %11) #8
  br label %22

21:                                               ; preds = %17, %13
  tail call void @nlmsvc_free_host_resources(ptr noundef nonnull %11) #8
  tail call void @nlmsvc_release_host(ptr noundef nonnull %11) #8
  br label %22

22:                                               ; preds = %21, %20, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nlm4svc_decode_notify(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__nlm4svc_proc_test(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %1, ptr noundef align 8 dereferenceable(36) %6, i32 36, i1 false)
  %7 = call fastcc i32 @nlm4svc_retrieve_args(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %8 = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 812974080
  %12 = select i1 %11, i32 1625948160, i32 0
  br label %22

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.nlm_args, ptr %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 2
  %18 = call i32 @nlmsvc_testlock(ptr noundef %0, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %1) #8
  store i32 %18, ptr %8, align 4
  %19 = icmp eq i32 %18, 812974080
  %20 = select i1 %19, i32 1625948160, i32 0
  call void @nlmsvc_release_lockowner(ptr noundef %16) #8
  call void @nlmsvc_release_host(ptr noundef %15) #8
  %21 = load ptr, ptr %4, align 4
  call void @nlm_release_file(ptr noundef %21) #8
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i32 [ %12, %10 ], [ %20, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlm4svc_retrieve_args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr @nlmsvc_ops, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call ptr @nlmsvc_lookup_host(ptr noundef %0, ptr noundef %10, i32 noundef %12) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @nsm_monitor(ptr noundef nonnull %13) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %19, %15
  store ptr %13, ptr %2, align 4
  %23 = icmp eq ptr %3, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5
  %26 = tail call i32 @lock_to_openmode(ptr noundef %25) #8
  %27 = call i32 @nlm_lookup_file(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 4
  store ptr %30, ptr %3, align 4
  %31 = getelementptr %struct.nlm_file, ptr %30, i32 0, i32 2, i32 %26
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 11
  store ptr %32, ptr %33, align 4
  %34 = tail call ptr @llvm.thread.pointer() #8
  %35 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 53
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 8
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 18
  store ptr @nlmsvc_lock_operations, ptr %38, align 8
  %39 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 4
  %40 = load i32, ptr %39, align 4
  call void @nlmsvc_locks_init_private(ptr noundef %25, ptr noundef nonnull %13, i32 noundef %40) #8
  %41 = getelementptr inbounds %struct.nlm_args, ptr %1, i32 0, i32 1, i32 5, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  call void @nlmsvc_release_host(ptr noundef nonnull %13) #8
  br label %47

45:                                               ; preds = %24
  call void @nlmsvc_release_host(ptr noundef nonnull %13) #8
  br label %47

46:                                               ; preds = %19, %9
  tail call void @nlmsvc_release_host(ptr noundef %13) #8
  br label %47

47:                                               ; preds = %46, %45, %44, %29, %22, %4
  %48 = phi i32 [ 33554432, %4 ], [ 33554432, %44 ], [ 0, %22 ], [ 33554432, %46 ], [ %27, %45 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_testlock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_lockowner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_release_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlmsvc_lookup_host(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsm_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_to_openmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlm_lookup_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_locks_init_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__nlm4svc_proc_lock(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %1, ptr noundef align 8 dereferenceable(36) %6, i32 36, i1 false)
  %7 = call fastcc i32 @nlm4svc_retrieve_args(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %8 = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 812974080
  %12 = select i1 %11, i32 1625948160, i32 0
  br label %25

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.nlm_args, ptr %6, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nlm_args, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nlm_args, ptr %6, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @nlmsvc_lock(ptr noundef %0, ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %18, ptr noundef %6, i32 noundef %20) #8
  store i32 %21, ptr %8, align 4
  %22 = icmp eq i32 %21, 812974080
  %23 = select i1 %22, i32 1625948160, i32 0
  call void @nlmsvc_release_lockowner(ptr noundef %16) #8
  call void @nlmsvc_release_host(ptr noundef %15) #8
  %24 = load ptr, ptr %4, align 4
  call void @nlm_release_file(ptr noundef %24) #8
  br label %25

25:                                               ; preds = %13, %10
  %26 = phi i32 [ %12, %10 ], [ %23, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_lock(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__nlm4svc_proc_cancel(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %1, ptr noundef align 8 dereferenceable(36) %6, i32 36, i1 false)
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 19
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @locks_in_grace(ptr noundef %13) #8
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  store i32 67108864, ptr %16, align 4
  br label %35

17:                                               ; preds = %2
  %18 = call fastcc i32 @nlm4svc_retrieve_args(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %19 = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 812974080
  %23 = select i1 %22, i32 1625948160, i32 0
  br label %35

24:                                               ; preds = %17
  %25 = load ptr, ptr %7, align 8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.svc_xprt, ptr %25, i32 0, i32 19
  %28 = select i1 %26, ptr %11, ptr %27
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.nlm_args, ptr %6, i32 0, i32 1
  %32 = call i32 @nlmsvc_cancel_blocked(ptr noundef %29, ptr noundef %30, ptr noundef %31) #8
  store i32 %32, ptr %19, align 4
  call void @nlmsvc_release_lockowner(ptr noundef %31) #8
  %33 = load ptr, ptr %3, align 4
  call void @nlmsvc_release_host(ptr noundef %33) #8
  %34 = load ptr, ptr %4, align 4
  call void @nlm_release_file(ptr noundef %34) #8
  br label %35

35:                                               ; preds = %24, %21, %15
  %36 = phi i32 [ 0, %15 ], [ %23, %21 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @locks_in_grace(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_cancel_blocked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__nlm4svc_proc_unlock(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(36) %1, ptr noundef align 8 dereferenceable(36) %6, i32 36, i1 false)
  %7 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.svc_xprt, ptr %8, i32 0, i32 19
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %12 = select i1 %9, ptr %11, ptr %10
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @locks_in_grace(ptr noundef %13) #8
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  store i32 67108864, ptr %16, align 4
  br label %35

17:                                               ; preds = %2
  %18 = call fastcc i32 @nlm4svc_retrieve_args(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %19 = getelementptr inbounds %struct.nlm_res, ptr %1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 812974080
  %23 = select i1 %22, i32 1625948160, i32 0
  br label %35

24:                                               ; preds = %17
  %25 = load ptr, ptr %7, align 8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.svc_xprt, ptr %25, i32 0, i32 19
  %28 = select i1 %26, ptr %11, ptr %27
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.nlm_args, ptr %6, i32 0, i32 1
  %32 = call i32 @nlmsvc_unlock(ptr noundef %29, ptr noundef %30, ptr noundef %31) #8
  store i32 %32, ptr %19, align 4
  call void @nlmsvc_release_lockowner(ptr noundef %31) #8
  %33 = load ptr, ptr %3, align 4
  call void @nlmsvc_release_host(ptr noundef %33) #8
  %34 = load ptr, ptr %4, align 4
  call void @nlm_release_file(ptr noundef %34) #8
  br label %35

35:                                               ; preds = %24, %21, %15
  %36 = phi i32 [ 0, %15 ], [ %23, %21 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_unlock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmclnt_grant(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nlm4svc_callback(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nlm_args, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nlm_args, ptr %5, i32 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @nlmsvc_lookup_host(ptr noundef %0, ptr noundef %7, i32 noundef %9) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @nlm_alloc_call(ptr noundef nonnull %10) #8
  tail call void @nlmsvc_release_host(ptr noundef nonnull %10) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 4
  %17 = tail call i32 %2(ptr noundef %0, ptr noundef %16) #8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @nlmsvc_release_call(ptr noundef nonnull %13) #8
  br label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nlm_rqst, ptr %13, i32 0, i32 1
  store i32 1, ptr %21, align 4
  %22 = tail call i32 @nlm_async_reply(ptr noundef nonnull %13, i32 noundef %1, ptr noundef nonnull @nlm4svc_callback_ops) #8
  %23 = icmp slt i32 %22, 0
  %24 = select i1 %23, i32 83886080, i32 0
  br label %25

25:                                               ; preds = %20, %19, %12, %3
  %26 = phi i32 [ %17, %19 ], [ 83886080, %3 ], [ 83886080, %12 ], [ %24, %20 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nlm_alloc_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_release_call(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlm_async_reply(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @nlm4svc_callback_exit(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nlm4svc_callback_release(ptr noundef %0) #2 {
  tail call void @nlmsvc_release_call(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_grant_reply(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @svc_print_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlm_host_rebooted(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_share_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nlmsvc_unshare_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nlmsvc_free_host_resources(ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
