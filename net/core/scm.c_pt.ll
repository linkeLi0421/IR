; ModuleID = '/llk/IR/net/core/scm.c_pt.bc'
source_filename = "../net/core/scm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scm_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22__scm_destroy\22\09\09\09\09\09"
module asm "__kstrtabns___scm_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22__scm_send\22\09\09\09\09\09"
module asm "__kstrtabns___scm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_cmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22put_cmsg\22\09\09\09\09\09"
module asm "__kstrtabns_put_cmsg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_cmsg_scm_timestamping64:\09\09\09\09\09"
module asm "\09.asciz \09\22put_cmsg_scm_timestamping64\22\09\09\09\09\09"
module asm "__kstrtabns_put_cmsg_scm_timestamping64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_cmsg_scm_timestamping:\09\09\09\09\09"
module asm "\09.asciz \09\22put_cmsg_scm_timestamping\22\09\09\09\09\09"
module asm "__kstrtabns_put_cmsg_scm_timestamping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scm_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22scm_detach_fds\22\09\09\09\09\09"
module asm "__kstrtabns_scm_detach_fds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scm_fp_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22scm_fp_dup\22\09\09\09\09\09"
module asm "__kstrtabns_scm_fp_dup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.scm_fp_list = type { i16, i16, ptr, [253 x ptr] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.22, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.19, %union.anon.20 }
%union.anon.19 = type { ptr }
%union.anon.20 = type { i64 }
%union.anon.22 = type { ptr }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [40 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [36 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cmsghdr = type { i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.128, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.86 }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.128 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.68 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.68 = type { %struct.callback_head }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.scm_timestamping64 = type { [3 x %struct.__kernel_timespec] }
%struct.__kernel_timespec = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.scm_timestamping = type { [3 x %struct.__kernel_old_timespec] }
%struct.__kernel_old_timespec = type { i32, i32 }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab___scm_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns___scm_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab___scm_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scm_destroy to i32), ptr @__kstrtab___scm_destroy, ptr @__kstrtabns___scm_destroy }, section "___ksymtab+__scm_destroy", align 4
@__kstrtab___scm_send = external dso_local constant [0 x i8], align 1
@__kstrtabns___scm_send = external dso_local constant [0 x i8], align 1
@__ksymtab___scm_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scm_send to i32), ptr @__kstrtab___scm_send, ptr @__kstrtabns___scm_send }, section "___ksymtab+__scm_send", align 4
@__kstrtab_put_cmsg = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_cmsg = external dso_local constant [0 x i8], align 1
@__ksymtab_put_cmsg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_cmsg to i32), ptr @__kstrtab_put_cmsg, ptr @__kstrtabns_put_cmsg }, section "___ksymtab+put_cmsg", align 4
@__kstrtab_put_cmsg_scm_timestamping64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_cmsg_scm_timestamping64 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_cmsg_scm_timestamping64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_cmsg_scm_timestamping64 to i32), ptr @__kstrtab_put_cmsg_scm_timestamping64, ptr @__kstrtabns_put_cmsg_scm_timestamping64 }, section "___ksymtab+put_cmsg_scm_timestamping64", align 4
@__kstrtab_put_cmsg_scm_timestamping = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_cmsg_scm_timestamping = external dso_local constant [0 x i8], align 1
@__ksymtab_put_cmsg_scm_timestamping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_cmsg_scm_timestamping to i32), ptr @__kstrtab_put_cmsg_scm_timestamping, ptr @__kstrtabns_put_cmsg_scm_timestamping }, section "___ksymtab+put_cmsg_scm_timestamping", align 4
@scm_detach_fds.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"net/core/scm.c\00", align 1
@__kstrtab_scm_detach_fds = external dso_local constant [0 x i8], align 1
@__kstrtabns_scm_detach_fds = external dso_local constant [0 x i8], align 1
@__ksymtab_scm_detach_fds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scm_detach_fds to i32), ptr @__kstrtab_scm_detach_fds, ptr @__kstrtabns_scm_detach_fds }, section "___ksymtab+scm_detach_fds", align 4
@__kstrtab_scm_fp_dup = external dso_local constant [0 x i8], align 1
@__kstrtabns_scm_fp_dup = external dso_local constant [0 x i8], align 1
@__ksymtab_scm_fp_dup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scm_fp_dup to i32), ptr @__kstrtab_scm_fp_dup, ptr @__kstrtabns_scm_fp_dup }, section "___ksymtab+scm_fp_dup", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab___scm_destroy, ptr @__ksymtab___scm_send, ptr @__ksymtab_put_cmsg, ptr @__ksymtab_put_cmsg_scm_timestamping, ptr @__ksymtab_put_cmsg_scm_timestamping64, ptr @__ksymtab_scm_detach_fds, ptr @__ksymtab_scm_fp_dup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__scm_destroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scm_cookie, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 4
  %6 = load i16, ptr %3, align 4
  %7 = icmp sgt i16 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %12, %10 ], [ %9, %8 ]
  %12 = add nsw i32 %11, -1
  %13 = getelementptr %struct.scm_fp_list, ptr %3, i32 0, i32 3, i32 %12
  %14 = load ptr, ptr %13, align 4
  tail call void @fput(ptr noundef %14) #7
  %15 = icmp ugt i32 %11, 1
  br i1 %15, label %10, label %16

16:                                               ; preds = %10, %5
  %17 = getelementptr inbounds %struct.scm_fp_list, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @free_uid(ptr noundef %18) #7
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__scm_send(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %5, 11
  br i1 %6, label %7, label %190

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %190, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.msghdr, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 2
  %14 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 2, i32 1
  %15 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 2, i32 2
  %16 = getelementptr inbounds %struct.socket, ptr %0, i32 0, i32 5
  %17 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 1
  br label %18

18:                                               ; preds = %176, %11
  %19 = phi i32 [ %5, %11 ], [ %178, %176 ]
  %20 = phi ptr [ %9, %11 ], [ %182, %176 ]
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 11
  br i1 %22, label %23, label %198

23:                                               ; preds = %18
  %24 = load ptr, ptr %12, align 8
  %25 = ptrtoint ptr %20 to i32
  %26 = ptrtoint ptr %24 to i32
  %27 = sub i32 %19, %25
  %28 = add i32 %27, %26
  %29 = icmp ugt i32 %21, %28
  br i1 %29, label %198, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.cmsghdr, ptr %20, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %176

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.cmsghdr, ptr %20, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %198 [
    i32 1, label %37
    i32 2, label %110
  ]

37:                                               ; preds = %34
  %38 = load ptr, ptr %16, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %198, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %38, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %198

43:                                               ; preds = %40
  %44 = getelementptr i8, ptr %20, i32 12
  %45 = load ptr, ptr %17, align 4
  %46 = add i32 %21, -12
  %47 = lshr i32 %46, 2
  %48 = icmp ult i32 %46, 4
  br i1 %48, label %176, label %49

49:                                               ; preds = %43
  %50 = icmp ugt i32 %46, 1015
  br i1 %50, label %198, label %51

51:                                               ; preds = %49
  %52 = icmp eq ptr %45, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %51
  %54 = load i16, ptr %45, align 4
  %55 = getelementptr inbounds %struct.scm_fp_list, ptr %45, i32 0, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = sext i16 %54 to i32
  %58 = sext i16 %56 to i32
  br label %66

59:                                               ; preds = %51
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 4197568, i32 noundef 1020) #8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %198, label %63

63:                                               ; preds = %59
  store ptr %61, ptr %17, align 4
  store i16 0, ptr %61, align 8
  %64 = getelementptr inbounds %struct.scm_fp_list, ptr %61, i32 0, i32 1
  store i16 253, ptr %64, align 2
  %65 = getelementptr inbounds %struct.scm_fp_list, ptr %61, i32 0, i32 2
  store ptr null, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %53
  %67 = phi i32 [ %58, %53 ], [ 253, %63 ]
  %68 = phi i32 [ %57, %53 ], [ 0, %63 ]
  %69 = phi ptr [ %45, %53 ], [ %61, %63 ]
  %70 = add nsw i32 %68, %47
  %71 = icmp sgt i32 %70, %67
  br i1 %71, label %198, label %72

72:                                               ; preds = %66
  %73 = getelementptr %struct.scm_fp_list, ptr %69, i32 0, i32 3, i32 %68
  %74 = tail call i32 @llvm.umax.i32(i32 %47, i32 1) #7
  br label %75

75:                                               ; preds = %84, %72
  %76 = phi i32 [ %88, %84 ], [ 0, %72 ]
  %77 = phi ptr [ %85, %84 ], [ %73, %72 ]
  %78 = getelementptr i32, ptr %44, i32 %76
  %79 = load i32, ptr %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %198, label %81

81:                                               ; preds = %75
  %82 = tail call ptr @fget_raw(i32 noundef %79) #7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %198, label %84

84:                                               ; preds = %81
  %85 = getelementptr ptr, ptr %77, i32 1
  store ptr %82, ptr %77, align 4
  %86 = load i16, ptr %69, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %69, align 4
  %88 = add nuw nsw i32 %76, 1
  %89 = icmp eq i32 %88, %74
  br i1 %89, label %90, label %75

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.scm_fp_list, ptr %69, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %176

94:                                               ; preds = %90
  %95 = tail call ptr @llvm.thread.pointer() #7
  %96 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 83
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.cred, ptr %97, i32 0, i32 20
  %99 = load ptr, ptr %98, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #7, !srcloc !8
  %100 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #7, !srcloc !9
  %101 = extractvalue { i32, i32, i32 } %100, 0
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %107, label %103, !prof !10

103:                                              ; preds = %94
  %104 = add i32 %101, 1
  %105 = or i32 %104, %101
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %109, label %107, !prof !11

107:                                              ; preds = %103, %94
  %108 = phi i32 [ 2, %94 ], [ 1, %103 ]
  tail call void @refcount_warn_saturate(ptr noundef %99, i32 noundef %108) #7
  br label %109

109:                                              ; preds = %107, %103
  store ptr %99, ptr %91, align 4
  br label %176

110:                                              ; preds = %34
  %111 = icmp eq i32 %21, 24
  br i1 %111, label %112, label %198

112:                                              ; preds = %110
  %113 = getelementptr i8, ptr %20, i32 12
  %114 = load i32, ptr %113, align 1
  %115 = getelementptr i8, ptr %20, i32 16
  %116 = load i32, ptr %115, align 1
  %117 = getelementptr i8, ptr %20, i32 20
  %118 = load i32, ptr %117, align 1
  %119 = tail call ptr @llvm.thread.pointer() #7
  %120 = getelementptr inbounds %struct.task_struct, ptr %119, i32 0, i32 83
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 21
  %123 = icmp ne i32 %116, -1
  %124 = icmp ne i32 %118, -1
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %198

126:                                              ; preds = %112
  %127 = tail call i32 @__task_pid_nr_ns(ptr noundef %119, i32 noundef 1, ptr noundef null) #7
  %128 = icmp eq i32 %114, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = tail call ptr @task_active_pid_ns(ptr noundef %119) #7
  %131 = getelementptr inbounds %struct.pid_namespace, ptr %130, i32 0, i32 7
  %132 = load ptr, ptr %131, align 4
  %133 = tail call zeroext i1 @ns_capable(ptr noundef %132, i32 noundef 21) #7
  br i1 %133, label %134, label %198

134:                                              ; preds = %129, %126
  %135 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = icmp eq i32 %116, %136
  br i1 %137, label %149, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 5
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %116, %140
  br i1 %141, label %149, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %116, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %122, align 4
  %148 = tail call zeroext i1 @ns_capable(ptr noundef %147, i32 noundef 7) #7
  br i1 %148, label %149, label %198

149:                                              ; preds = %146, %142, %138, %134
  %150 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  %152 = icmp eq i32 %118, %151
  br i1 %152, label %164, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %118, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.cred, ptr %121, i32 0, i32 4
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %118, %159
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %122, align 4
  %163 = tail call zeroext i1 @ns_capable(ptr noundef %162, i32 noundef 6) #7
  br i1 %163, label %164, label %198

164:                                              ; preds = %161, %157, %153, %149
  store i32 %114, ptr %13, align 4
  %165 = load ptr, ptr %2, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = tail call i32 @pid_vnr(ptr noundef nonnull %165) #7
  %169 = icmp eq i32 %168, %114
  br i1 %169, label %175, label %170

170:                                              ; preds = %167, %164
  %171 = tail call ptr @find_get_pid(i32 noundef %114) #7
  %172 = icmp eq ptr %171, null
  br i1 %172, label %198, label %173

173:                                              ; preds = %170
  %174 = load ptr, ptr %2, align 4
  tail call void @put_pid(ptr noundef %174) #7
  store ptr %171, ptr %2, align 4
  br label %175

175:                                              ; preds = %173, %167
  store i32 %116, ptr %14, align 4
  store i32 %118, ptr %15, align 4
  br label %176

176:                                              ; preds = %175, %109, %90, %43, %30
  %177 = load ptr, ptr %12, align 8
  %178 = load i32, ptr %4, align 8
  %179 = load i32, ptr %20, align 4
  %180 = add i32 %179, 3
  %181 = and i32 %180, -4
  %182 = getelementptr i8, ptr %20, i32 %181
  %183 = getelementptr %struct.cmsghdr, ptr %182, i32 1
  %184 = ptrtoint ptr %183 to i32
  %185 = ptrtoint ptr %177 to i32
  %186 = sub i32 %184, %185
  %187 = icmp ugt i32 %186, %178
  %188 = icmp eq ptr %182, null
  %189 = select i1 %187, i1 true, i1 %188
  br i1 %189, label %190, label %18

190:                                              ; preds = %176, %7, %3
  %191 = getelementptr inbounds %struct.scm_cookie, ptr %2, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %217, label %194

194:                                              ; preds = %190
  %195 = load i16, ptr %192, align 4
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %194
  tail call void @kfree(ptr noundef nonnull %192) #7
  store ptr null, ptr %191, align 4
  br label %217

198:                                              ; preds = %170, %161, %146, %129, %112, %110, %81, %75, %66, %59, %49, %40, %37, %34, %23, %18
  %199 = phi i32 [ -9, %81 ], [ -9, %75 ], [ -3, %170 ], [ -1, %129 ], [ -1, %146 ], [ -1, %161 ], [ -22, %110 ], [ -22, %112 ], [ -22, %49 ], [ -12, %59 ], [ -22, %66 ], [ -22, %18 ], [ -22, %23 ], [ -22, %37 ], [ -22, %40 ], [ -22, %34 ]
  %200 = load ptr, ptr %2, align 4
  tail call void @put_pid(ptr noundef %200) #7
  store ptr null, ptr %2, align 4
  %201 = load ptr, ptr %17, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %217, label %203

203:                                              ; preds = %198
  store ptr null, ptr %17, align 4
  %204 = load i16, ptr %201, align 4
  %205 = icmp sgt i16 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %203
  %207 = zext i16 %204 to i32
  br label %208

208:                                              ; preds = %208, %206
  %209 = phi i32 [ %210, %208 ], [ %207, %206 ]
  %210 = add nsw i32 %209, -1
  %211 = getelementptr %struct.scm_fp_list, ptr %201, i32 0, i32 3, i32 %210
  %212 = load ptr, ptr %211, align 4
  tail call void @fput(ptr noundef %212) #7
  %213 = icmp ugt i32 %209, 1
  br i1 %213, label %208, label %214

214:                                              ; preds = %208, %203
  %215 = getelementptr inbounds %struct.scm_fp_list, ptr %201, i32 0, i32 2
  %216 = load ptr, ptr %215, align 4
  tail call void @free_uid(ptr noundef %216) #7
  tail call void @kfree(ptr noundef nonnull %201) #7
  br label %217

217:                                              ; preds = %214, %198, %197, %194, %190
  %218 = phi i32 [ 0, %197 ], [ 0, %194 ], [ 0, %190 ], [ %199, %198 ], [ %199, %214 ]
  ret i32 %218
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_pid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @put_cmsg(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = add i32 %3, 12
  %7 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, 12
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %5
  %17 = or i32 %8, 8
  store i32 %17, ptr %7, align 4
  br label %75

18:                                               ; preds = %12
  %19 = icmp ult i32 %14, %6
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = or i32 %8, 8
  store i32 %21, ptr %7, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %14, %20 ], [ %6, %18 ]
  %24 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 4
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %62, label %28

28:                                               ; preds = %22
  %29 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %10, i32 %23, i32 -1090519040) #9, !srcloc !12
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = tail call ptr @llvm.thread.pointer() #7
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %35 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #10, !srcloc !13
  %36 = and i32 %35, -13
  %37 = or i32 %36, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %10, i32 %23, i32 -1090519041) #7, !srcloc !16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %75, !prof !11

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.cmsghdr, ptr %10, i32 0, i32 1
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #10, !srcloc !13
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %41, i32 %1, i32 -1090519041) #7, !srcloc !17
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %75, !prof !11

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.cmsghdr, ptr %10, i32 0, i32 2
  %49 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #10, !srcloc !13
  %50 = and i32 %49, -13
  %51 = or i32 %50, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %52 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %48, i32 %2, i32 -1090519041) #7, !srcloc !18
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %75, !prof !11

54:                                               ; preds = %47
  %55 = getelementptr i8, ptr %10, i32 12
  %56 = add i32 %23, -12
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %34) #10, !srcloc !13
  %58 = and i32 %57, -13
  %59 = or i32 %58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %60 = tail call i32 @arm_copy_to_user(ptr noundef %55, ptr noundef %4, i32 noundef %56) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %75

62:                                               ; preds = %22
  %63 = getelementptr inbounds %struct.cmsghdr, ptr %10, i32 0, i32 1
  store i32 %1, ptr %63, align 4
  %64 = getelementptr inbounds %struct.cmsghdr, ptr %10, i32 0, i32 2
  store i32 %2, ptr %64, align 4
  store i32 %23, ptr %10, align 4
  %65 = getelementptr i8, ptr %10, i32 12
  %66 = add i32 %23, -12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %65, ptr align 1 %4, i32 %66, i1 false)
  br label %67

67:                                               ; preds = %62, %54
  %68 = add i32 %3, 15
  %69 = and i32 %68, -4
  %70 = load i32, ptr %13, align 8
  %71 = tail call i32 @llvm.umin.i32(i32 %69, i32 %70)
  %72 = load ptr, ptr %9, align 8
  %73 = getelementptr i8, ptr %72, i32 %71
  store ptr %73, ptr %9, align 8
  %74 = sub i32 %70, %71
  store i32 %74, ptr %13, align 8
  br label %75

75:                                               ; preds = %67, %54, %47, %40, %32, %28, %16
  %76 = phi i32 [ 0, %16 ], [ 0, %67 ], [ -14, %28 ], [ -14, %32 ], [ -14, %40 ], [ -14, %47 ], [ -14, %54 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_cmsg_scm_timestamping64(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.scm_timestamping64, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #7
  %4 = load i64, ptr %1, align 8
  store i64 %4, ptr %3, align 8
  %5 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %3, i32 0, i32 0, i32 1
  store i64 %7, ptr %8, align 8
  %9 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %3, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 1, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %3, i32 0, i32 1, i32 1
  store i64 %14, ptr %15, align 8
  %16 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %3, i32 0, i32 2
  store i64 %17, ptr %18, align 8
  %19 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 2, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x %struct.__kernel_timespec], ptr %3, i32 0, i32 2, i32 1
  store i64 %21, ptr %22, align 8
  %23 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 65, i32 noundef 48, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_cmsg_scm_timestamping(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.scm_timestamping, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %4 = load i64, ptr %1, align 8
  %5 = trunc i64 %4 to i32
  store i32 %5, ptr %3, align 4
  %6 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %3, i32 0, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %3, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %3, i32 0, i32 1, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %3, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  %20 = getelementptr [3 x %struct.timespec64], ptr %1, i32 0, i32 2, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds [3 x %struct.__kernel_old_timespec], ptr %3, i32 0, i32 2, i32 1
  store i32 %21, ptr %22, align 4
  %23 = call i32 @put_cmsg(ptr noundef %0, i32 noundef 1, i32 noundef 37, i32 noundef 24, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scm_detach_fds(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 11
  %8 = and i32 %7, 524288
  %9 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 13
  %12 = add i32 %10, -12
  %13 = lshr i32 %12, 2
  %14 = select i1 %11, i32 0, i32 %13
  %15 = getelementptr inbounds %struct.scm_cookie, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i16, ptr %16, align 4
  %18 = sext i16 %17 to i32
  %19 = tail call i32 @llvm.smin.i32(i32 %14, i32 %18)
  %20 = getelementptr i8, ptr %4, i32 12
  %21 = getelementptr inbounds %struct.msghdr, ptr %0, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 1
  %24 = icmp eq i8 %23, 0
  %25 = load i1, ptr @scm_detach_fds.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !10

28:                                               ; preds = %2
  store i1 true, ptr @scm_detach_fds.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 307, i32 noundef 9, ptr noundef null) #7
  br label %29

29:                                               ; preds = %28, %2
  br i1 %24, label %109, label %30

30:                                               ; preds = %29
  %31 = icmp sgt i32 %19, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %42, %30
  %33 = phi i32 [ %43, %42 ], [ 0, %30 ]
  %34 = getelementptr i32, ptr %20, i32 %33
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %15, align 4
  %38 = getelementptr %struct.scm_fp_list, ptr %37, i32 0, i32 3, i32 %33
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @__receive_fd(ptr noundef %39, ptr noundef nonnull %34, i32 noundef %8) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = add nuw nsw i32 %33, 1
  %44 = icmp eq i32 %43, %19
  br i1 %44, label %45, label %32

45:                                               ; preds = %42, %36, %32
  %46 = phi i32 [ %19, %42 ], [ %33, %36 ], [ %33, %32 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %45
  %49 = shl i32 %46, 2
  %50 = add i32 %49, 12
  %51 = getelementptr inbounds %struct.cmsghdr, ptr %4, i32 0, i32 1
  %52 = tail call ptr @llvm.thread.pointer() #7
  %53 = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %54 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #10, !srcloc !13
  %55 = and i32 %54, -13
  %56 = or i32 %55, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %57 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %51, i32 1, i32 -1090519041) #7, !srcloc !19
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %54) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.cmsghdr, ptr %4, i32 0, i32 2
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #10, !srcloc !13
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %64 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %60, i32 1, i32 -1090519041) #7, !srcloc !20
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %53) #10, !srcloc !13
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %70 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %50, i32 -1090519041) #7, !srcloc !21
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #7, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !15
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, ptr %9, align 8
  %74 = tail call i32 @llvm.umin.i32(i32 %73, i32 %50)
  %75 = load ptr, ptr %3, align 8
  %76 = getelementptr i8, ptr %75, i32 %74
  store ptr %76, ptr %3, align 8
  %77 = sub i32 %73, %74
  store i32 %77, ptr %9, align 8
  br label %78

78:                                               ; preds = %72, %66, %59, %48, %45, %30
  %79 = phi i32 [ %46, %48 ], [ %46, %59 ], [ %46, %66 ], [ %46, %72 ], [ %46, %45 ], [ 0, %30 ]
  %80 = load ptr, ptr %15, align 4
  %81 = load i16, ptr %80, align 4
  %82 = sext i16 %81 to i32
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = icmp ne i16 %81, 0
  %86 = icmp slt i32 %19, 1
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %78
  %89 = load i32, ptr %5, align 4
  %90 = or i32 %89, 8
  store i32 %90, ptr %5, align 4
  %91 = load ptr, ptr %15, align 4
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi ptr [ %91, %88 ], [ %80, %84 ]
  %94 = icmp eq ptr %93, null
  br i1 %94, label %109, label %95

95:                                               ; preds = %92
  store ptr null, ptr %15, align 4
  %96 = load i16, ptr %93, align 4
  %97 = icmp sgt i16 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %95
  %99 = zext i16 %96 to i32
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i32 [ %102, %100 ], [ %99, %98 ]
  %102 = add nsw i32 %101, -1
  %103 = getelementptr %struct.scm_fp_list, ptr %93, i32 0, i32 3, i32 %102
  %104 = load ptr, ptr %103, align 4
  tail call void @fput(ptr noundef %104) #7
  %105 = icmp ugt i32 %101, 1
  br i1 %105, label %100, label %106

106:                                              ; preds = %100, %95
  %107 = getelementptr inbounds %struct.scm_fp_list, ptr %93, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  tail call void @free_uid(ptr noundef %108) #7
  tail call void @kfree(ptr noundef nonnull %93) #7
  br label %109

109:                                              ; preds = %106, %92, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scm_fp_dup(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 4
  %5 = sext i16 %4 to i32
  %6 = shl nsw i32 %5, 2
  %7 = add nsw i32 %6, 8
  %8 = tail call ptr @kmemdup(ptr noundef nonnull %0, i32 noundef %7, i32 noundef 4197568) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %3
  %11 = load i16, ptr %0, align 4
  %12 = icmp sgt i16 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %19, %13 ], [ 0, %10 ]
  %15 = getelementptr %struct.scm_fp_list, ptr %0, i32 0, i32 3, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.file, ptr %16, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #7, !srcloc !8
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #7, !srcloc !22
  %19 = add nuw nsw i32 %14, 1
  %20 = load i16, ptr %0, align 4
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %13, label %23

23:                                               ; preds = %13, %10
  %24 = load i16, ptr %8, align 4
  %25 = getelementptr inbounds %struct.scm_fp_list, ptr %8, i32 0, i32 1
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.scm_fp_list, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #7, !srcloc !8
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #7, !srcloc !9
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !10

31:                                               ; preds = %23
  %32 = add i32 %29, 1
  %33 = or i32 %32, %29
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %37, label %35, !prof !11

35:                                               ; preds = %31, %23
  %36 = phi i32 [ 2, %23 ], [ 1, %31 ]
  tail call void @refcount_warn_saturate(ptr noundef %27, i32 noundef %36) #7
  br label %37

37:                                               ; preds = %35, %31
  %38 = getelementptr inbounds %struct.scm_fp_list, ptr %8, i32 0, i32 2
  store ptr %27, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %3, %1
  %40 = phi ptr [ null, %1 ], [ %8, %37 ], [ null, %3 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__receive_fd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

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
!8 = !{i64 548431, i64 2148038402, i64 2148038428, i64 2148038475, i64 2148038497, i64 2148038525, i64 2148038545}
!9 = !{i64 2148051275, i64 2148051307, i64 2148051336, i64 2148051370, i64 2148051401, i64 2148051424}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155810354, i64 2155810379}
!13 = !{i64 4256519}
!14 = !{i64 4256716}
!15 = !{i64 2151741995}
!16 = !{i64 2155828934, i64 2155829244, i64 2155829558, i64 2155829872}
!17 = !{i64 2155849730, i64 2155850040, i64 2155850354, i64 2155850668}
!18 = !{i64 2155870505, i64 2155870815, i64 2155871129, i64 2155871443}
!19 = !{i64 2155889186, i64 2155889466, i64 2155889800, i64 2155890134}
!20 = !{i64 2155897363, i64 2155897643, i64 2155897977, i64 2155898311}
!21 = !{i64 2155905532, i64 2155905812, i64 2155906146, i64 2155906480}
!22 = !{i64 2148049817, i64 2148049843, i64 2148049872, i64 2148049906, i64 2148049937, i64 2148049960}
