; ModuleID = '/llk/IR/block/blk-map.c_pt.bc'
source_filename = "../block/blk-map.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_append_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_append_bio\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_append_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_map_user_iov:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_map_user_iov\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_map_user_iov:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_map_user:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_map_user\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_map_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_unmap_user:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_unmap_user\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_unmap_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_rq_map_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_rq_map_kern\22\09\09\09\09\09"
module asm "__kstrtabns_blk_rq_map_kern:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.35, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.35 = type {}
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.70, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.71, %union.anon.72, %union.anon.73, %union.anon.78, ptr, ptr }
%union.anon.70 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.71 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.72 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.73 = type { %struct.anon.77 }
%struct.anon.77 = type { i32, %struct.list_head, ptr }
%union.anon.78 = type { i64, [8 x i8] }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.56, %union.anon.57 }
%union.anon.56 = type { ptr }
%union.anon.57 = type { i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.rq_map_data = type { ptr, i32, i32, i32, i32, i32 }
%struct.bio_map_data = type { i8, %struct.iov_iter, [0 x %struct.iovec] }
%struct.iovec = type { ptr, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.63, %struct.atomic_t }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.50, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.50 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_blk_rq_append_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_append_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_append_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_append_bio to i32), ptr @__kstrtab_blk_rq_append_bio, ptr @__kstrtabns_blk_rq_append_bio }, section "___ksymtab+blk_rq_append_bio", align 4
@__kstrtab_blk_rq_map_user_iov = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_map_user_iov = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_map_user_iov = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_map_user_iov to i32), ptr @__kstrtab_blk_rq_map_user_iov, ptr @__kstrtabns_blk_rq_map_user_iov }, section "___ksymtab+blk_rq_map_user_iov", align 4
@__kstrtab_blk_rq_map_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_map_user = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_map_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_map_user to i32), ptr @__kstrtab_blk_rq_map_user, ptr @__kstrtabns_blk_rq_map_user }, section "___ksymtab+blk_rq_map_user", align 4
@__kstrtab_blk_rq_unmap_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_unmap_user = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_unmap_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_unmap_user to i32), ptr @__kstrtab_blk_rq_unmap_user, ptr @__kstrtabns_blk_rq_unmap_user }, section "___ksymtab+blk_rq_unmap_user", align 4
@__kstrtab_blk_rq_map_kern = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_rq_map_kern = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_rq_map_kern = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_rq_map_kern to i32), ptr @__kstrtab_blk_rq_map_kern, ptr @__kstrtabns_blk_rq_map_kern }, section "___ksymtab+blk_rq_map_kern", align 4
@max_low_pfn = external dso_local local_unnamed_addr global i32, align 4
@max_pfn = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_blk_rq_append_bio, ptr @__ksymtab_blk_rq_map_kern, ptr @__ksymtab_blk_rq_map_user, ptr @__ksymtab_blk_rq_map_user_iov, ptr @__ksymtab_blk_rq_unmap_user], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_rq_append_bio(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 255
  %16 = add nsw i32 %15, -3
  %17 = and i32 %16, -7
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %35, %6
  %20 = phi i32 [ 0, %6 ], [ %28, %35 ]
  %21 = phi i32 [ %8, %6 ], [ %37, %35 ]
  %22 = phi i32 [ %10, %6 ], [ %36, %35 ]
  %23 = phi i32 [ %4, %6 ], [ %38, %35 ]
  %24 = getelementptr %struct.bio_vec, ptr %12, i32 %22, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %21
  %27 = tail call i32 @llvm.umin.i32(i32 %23, i32 %26)
  %28 = add i32 %20, 1
  br i1 %18, label %35, label %29

29:                                               ; preds = %19
  %30 = add i32 %27, %21
  %31 = icmp eq i32 %30, %25
  %32 = zext i1 %31 to i32
  %33 = add i32 %22, %32
  %34 = select i1 %31, i32 0, i32 %30
  br label %35

35:                                               ; preds = %29, %19
  %36 = phi i32 [ %22, %19 ], [ %33, %29 ]
  %37 = phi i32 [ %21, %19 ], [ %34, %29 ]
  %38 = sub i32 %23, %27
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %19

40:                                               ; preds = %35, %2
  %41 = phi i32 [ 0, %2 ], [ %28, %35 ]
  %42 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 10
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = trunc i32 %41 to i16
  %47 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 17
  store i16 %46, ptr %47, align 2
  %48 = load i32, ptr %3, align 4
  %49 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  store ptr %1, ptr %50, align 4
  store ptr %1, ptr %42, align 8
  %51 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 4
  %52 = load i16, ptr %51, align 2
  %53 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 19
  store i16 %52, ptr %53, align 2
  br label %64

54:                                               ; preds = %40
  %55 = tail call i32 @ll_back_merge_fn(ptr noundef %0, ptr noundef %1, i32 noundef %41) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  store ptr %1, ptr %59, align 4
  store ptr %1, ptr %58, align 4
  %60 = load i32, ptr %3, align 4
  %61 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 8
  %62 = load i32, ptr %61, align 8
  %63 = add i32 %62, %60
  store i32 %63, ptr %61, align 8
  br label %64

64:                                               ; preds = %57, %54, %45
  %65 = phi i32 [ -22, %54 ], [ 0, %57 ], [ 0, %45 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ll_back_merge_fn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_rq_map_user_iov(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.iov_iter, align 8
  %10 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 21
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq ptr %0, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi i32 [ %15, %13 ], [ 511, %5 ]
  %18 = or i32 %17, %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  %19 = load i8, ptr %3, align 8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %378

21:                                               ; preds = %16
  %22 = icmp eq ptr %2, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  %27 = load i32, ptr @max_low_pfn, align 4
  %28 = load i32, ptr @max_pfn, align 4
  %29 = icmp uge i32 %27, %28
  %30 = select i1 %26, i1 %29, i1 false
  br i1 %30, label %43, label %31

31:                                               ; preds = %23
  %32 = tail call i32 @iov_iter_alignment(ptr noundef %3) #8
  %33 = and i32 %32, %18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @iov_iter_gap_alignment(ptr noundef %3) #8
  %41 = and i32 %40, %37
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %39, %35, %31, %23, %21
  %44 = phi i1 [ %42, %39 ], [ false, %35 ], [ true, %21 ], [ true, %23 ], [ true, %31 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef align 8 dereferenceable(24) %3, i32 24, i1 false)
  %45 = getelementptr inbounds %struct.iov_iter, ptr %9, i32 0, i32 4
  %46 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %47 = getelementptr inbounds %struct.rq_map_data, ptr %2, i32 0, i32 3
  %48 = getelementptr inbounds %struct.iov_iter, ptr %9, i32 0, i32 6
  %49 = getelementptr inbounds %struct.iov_iter, ptr %9, i32 0, i32 5
  %50 = zext i1 %22 to i8
  %51 = getelementptr inbounds %struct.rq_map_data, ptr %2, i32 0, i32 4
  %52 = getelementptr inbounds %struct.rq_map_data, ptr %2, i32 0, i32 1
  %53 = getelementptr inbounds %struct.rq_map_data, ptr %2, i32 0, i32 2
  %54 = or i32 %4, 3072
  %55 = getelementptr inbounds %struct.iov_iter, ptr %9, i32 0, i32 2
  %56 = getelementptr inbounds %struct.rq_map_data, ptr %2, i32 0, i32 5
  %57 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  br label %58

58:                                               ; preds = %371, %43
  %59 = phi ptr [ null, %43 ], [ %372, %371 ]
  br i1 %44, label %60, label %227

60:                                               ; preds = %58
  %61 = load i32, ptr %45, align 8
  br i1 %22, label %65, label %62

62:                                               ; preds = %60
  %63 = load i32, ptr %47, align 4
  %64 = and i32 %63, 4095
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i32 [ %64, %62 ], [ 0, %60 ]
  %67 = load i32, ptr %48, align 8
  %68 = icmp ugt i32 %67, 1024
  br i1 %68, label %375, label %69

69:                                               ; preds = %65
  %70 = shl nuw nsw i32 %67, 3
  %71 = add nuw nsw i32 %70, 32
  %72 = call noalias align 64 ptr @__kmalloc(i32 noundef %71, i32 noundef %4) #9
  %73 = icmp eq ptr %72, null
  br i1 %73, label %375, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.bio_map_data, ptr %72, i32 0, i32 2
  %76 = load ptr, ptr %49, align 4
  %77 = load i32, ptr %48, align 8
  %78 = shl i32 %77, 3
  call void @llvm.memcpy.p0.p0.i32(ptr align 32 %75, ptr align 4 %76, i32 %78, i1 false) #8
  %79 = getelementptr inbounds %struct.bio_map_data, ptr %72, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %9, i32 24, i1 false) #8
  %80 = getelementptr inbounds %struct.bio_map_data, ptr %72, i32 0, i32 1, i32 5
  store ptr %75, ptr %80, align 4
  %81 = load i8, ptr %72, align 64
  %82 = and i8 %81, -4
  %83 = or i8 %82, %50
  br i1 %22, label %88, label %84

84:                                               ; preds = %74
  %85 = load i32, ptr %51, align 4
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i8 0, i8 2
  br label %88

88:                                               ; preds = %84, %74
  %89 = phi i8 [ 0, %74 ], [ %87, %84 ]
  %90 = or i8 %89, %83
  store i8 %90, ptr %72, align 64
  %91 = add i32 %61, 4095
  %92 = add i32 %91, %66
  %93 = lshr i32 %92, 12
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 256) #8
  %95 = trunc i32 %94 to i16
  %96 = call ptr @bio_kmalloc(i32 noundef %4, i16 noundef zeroext %95) #8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %225, label %98

98:                                               ; preds = %88
  %99 = load i32, ptr %46, align 4
  %100 = and i32 %99, 255
  %101 = getelementptr inbounds %struct.bio, ptr %96, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, ptr %101, align 4
  br i1 %22, label %109, label %104

104:                                              ; preds = %98
  %105 = load i32, ptr %52, align 4
  %106 = shl nuw i32 1, %105
  %107 = load i32, ptr %47, align 4
  %108 = lshr i32 %107, 12
  br label %109

109:                                              ; preds = %104, %98
  %110 = phi i32 [ %108, %104 ], [ 0, %98 ]
  %111 = phi i32 [ %106, %104 ], [ %94, %98 ]
  %112 = icmp eq i32 %61, 0
  br i1 %112, label %149, label %113

113:                                              ; preds = %145, %109
  %114 = phi i32 [ 0, %145 ], [ %66, %109 ]
  %115 = phi i32 [ %147, %145 ], [ %61, %109 ]
  %116 = phi i32 [ %146, %145 ], [ %110, %109 ]
  %117 = sub nuw nsw i32 4096, %114
  %118 = call i32 @llvm.umin.i32(i32 %117, i32 %115) #8
  br i1 %22, label %123, label %119

119:                                              ; preds = %113
  %120 = load i32, ptr %53, align 4
  %121 = mul i32 %120, %111
  %122 = icmp eq i32 %116, %121
  br i1 %122, label %223, label %130

123:                                              ; preds = %113
  %124 = call ptr @__alloc_pages(i32 noundef %54, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %221, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %1, align 8
  %128 = call i32 @bio_add_pc_page(ptr noundef %127, ptr noundef nonnull %96, ptr noundef nonnull %124, i32 noundef %118, i32 noundef %114) #8
  %129 = icmp ult i32 %128, %118
  br i1 %129, label %144, label %145

130:                                              ; preds = %119
  %131 = load ptr, ptr %2, align 4
  %132 = freeze i32 %116
  %133 = freeze i32 %111
  %134 = sdiv i32 %132, %133
  %135 = getelementptr ptr, ptr %131, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = mul i32 %134, %133
  %138 = sub i32 %132, %137
  %139 = getelementptr %struct.page, ptr %136, i32 %138
  %140 = add i32 %116, 1
  %141 = load ptr, ptr %1, align 8
  %142 = call i32 @bio_add_pc_page(ptr noundef %141, ptr noundef nonnull %96, ptr noundef %139, i32 noundef %118, i32 noundef %114) #8
  %143 = icmp ult i32 %142, %118
  br i1 %143, label %153, label %145

144:                                              ; preds = %126
  call void @__free_pages(ptr noundef nonnull %124, i32 noundef 0) #8
  br label %150

145:                                              ; preds = %130, %126
  %146 = phi i32 [ %140, %130 ], [ %116, %126 ]
  %147 = sub i32 %115, %118
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %113

149:                                              ; preds = %145, %109
  br i1 %22, label %150, label %153

150:                                              ; preds = %149, %144
  %151 = load i8, ptr %55, align 2, !range !8
  %152 = icmp eq i8 %151, 1
  br i1 %152, label %166, label %207

153:                                              ; preds = %149, %130
  %154 = getelementptr inbounds %struct.bio, ptr %96, i32 0, i32 8, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = load i32, ptr %47, align 4
  %157 = add i32 %156, %155
  store i32 %157, ptr %47, align 4
  %158 = load i8, ptr %55, align 2, !range !8
  %159 = icmp eq i8 %158, 1
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load i32, ptr %51, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160, %153
  %164 = load i32, ptr %56, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %207, label %166

166:                                              ; preds = %163, %160, %150
  %167 = getelementptr inbounds %struct.bio, ptr %96, i32 0, i32 13
  %168 = getelementptr inbounds %struct.bio, ptr %96, i32 0, i32 16
  br label %169

169:                                              ; preds = %200, %166
  %170 = phi ptr [ null, %166 ], [ %190, %200 ]
  %171 = phi i32 [ 0, %166 ], [ %205, %200 ]
  %172 = phi i32 [ 0, %166 ], [ %203, %200 ]
  %173 = load i16, ptr %167, align 4
  %174 = zext i16 %173 to i32
  %175 = icmp ult i32 %171, %174
  br i1 %175, label %176, label %215

176:                                              ; preds = %169
  %177 = load ptr, ptr %168, align 4
  %178 = icmp eq i32 %172, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = getelementptr %struct.page, ptr %170, i32 1
  br label %189

181:                                              ; preds = %176
  %182 = getelementptr %struct.bio_vec, ptr %177, i32 %171
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr %struct.bio_vec, ptr %177, i32 %171, i32 2
  %185 = load i32, ptr %184, align 4
  %186 = lshr i32 %185, 12
  %187 = getelementptr %struct.page, ptr %183, i32 %186
  %188 = and i32 %185, 4095
  br label %189

189:                                              ; preds = %181, %179
  %190 = phi ptr [ %187, %181 ], [ %180, %179 ]
  %191 = phi i32 [ %188, %181 ], [ 0, %179 ]
  %192 = sub nuw nsw i32 4096, %191
  %193 = getelementptr %struct.bio_vec, ptr %177, i32 %171, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = sub i32 %194, %172
  %196 = call i32 @llvm.umin.i32(i32 %192, i32 %195) #8
  %197 = call i32 @copy_page_from_iter(ptr noundef %190, i32 noundef %191, i32 noundef %196, ptr noundef nonnull %9) #8
  %198 = load i32, ptr %45, align 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %215, label %200

200:                                              ; preds = %189
  %201 = add i32 %196, %172
  %202 = icmp eq i32 %201, %194
  %203 = select i1 %202, i32 0, i32 %201
  %204 = zext i1 %202 to i32
  %205 = add nuw nsw i32 %171, %204
  %206 = icmp ult i32 %197, %196
  br i1 %206, label %219, label %169

207:                                              ; preds = %163, %150
  %208 = load i8, ptr %72, align 64
  %209 = and i8 %208, 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  call void @zero_fill_bio(ptr noundef nonnull %96) #8
  br label %212

212:                                              ; preds = %211, %207
  %213 = getelementptr inbounds %struct.bio, ptr %96, i32 0, i32 8, i32 1
  %214 = load i32, ptr %213, align 4
  call void @iov_iter_advance(ptr noundef nonnull %9, i32 noundef %214) #8
  br label %215

215:                                              ; preds = %212, %189, %169
  %216 = getelementptr inbounds %struct.bio, ptr %96, i32 0, i32 11
  store ptr %72, ptr %216, align 4
  %217 = call i32 @blk_rq_append_bio(ptr noundef %1, ptr noundef nonnull %96) #8
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %367, label %219

219:                                              ; preds = %215, %200
  %220 = phi i32 [ -14, %200 ], [ %217, %215 ]
  br i1 %22, label %221, label %223

221:                                              ; preds = %219, %123
  %222 = phi i32 [ %220, %219 ], [ -12, %123 ]
  call void @bio_free_pages(ptr noundef nonnull %96) #8
  br label %223

223:                                              ; preds = %221, %219, %119
  %224 = phi i32 [ %222, %221 ], [ %220, %219 ], [ -12, %119 ]
  call void @bio_put(ptr noundef nonnull %96) #8
  br label %225

225:                                              ; preds = %223, %88
  %226 = phi i32 [ %224, %223 ], [ -12, %88 ]
  call void @kfree(ptr noundef nonnull %72) #8
  br label %375

227:                                              ; preds = %58
  %228 = load ptr, ptr %1, align 8
  %229 = getelementptr inbounds %struct.request_queue, ptr %228, i32 0, i32 32, i32 3
  %230 = load i32, ptr %229, align 4
  %231 = load i32, ptr %45, align 8
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %375, label %233

233:                                              ; preds = %227
  %234 = call i32 @iov_iter_npages(ptr noundef nonnull %9, i32 noundef 256) #8
  %235 = trunc i32 %234 to i16
  %236 = call ptr @bio_kmalloc(i32 noundef %4, i16 noundef zeroext %235) #8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %375, label %238

238:                                              ; preds = %233
  %239 = load i32, ptr %46, align 4
  %240 = and i32 %239, 255
  %241 = getelementptr inbounds %struct.bio, ptr %236, i32 0, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = or i32 %242, %240
  store i32 %243, ptr %241, align 4
  %244 = load i32, ptr %45, align 8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %356, label %246

246:                                              ; preds = %350, %238
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !9
  %247 = call i32 @iov_iter_get_pages_alloc(ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef 2147483647, ptr noundef nonnull %7) #8
  %248 = icmp slt i32 %247, 1
  br i1 %248, label %249, label %252, !prof !10

249:                                              ; preds = %246
  %250 = icmp eq i32 %247, 0
  %251 = select i1 %250, i32 -14, i32 %247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %359

252:                                              ; preds = %246
  %253 = load i32, ptr %7, align 4
  %254 = add nuw i32 %247, 4095
  %255 = add i32 %254, %253
  %256 = lshr i32 %255, 12
  %257 = load ptr, ptr %1, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.request_queue, ptr %257, i32 0, i32 22
  %261 = load i32, ptr %260, align 4
  br label %262

262:                                              ; preds = %259, %252
  %263 = phi i32 [ %261, %259 ], [ 511, %252 ]
  %264 = and i32 %263, %253
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %322, !prof !11

266:                                              ; preds = %262
  %267 = icmp ult i32 %255, 4096
  br i1 %267, label %318, label %268

268:                                              ; preds = %266
  %269 = call i32 @llvm.umax.i32(i32 %256, i32 1) #8
  %270 = load ptr, ptr %6, align 4
  %271 = load ptr, ptr %270, align 4
  %272 = sub i32 4096, %253
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1
  %273 = call i32 @llvm.umin.i32(i32 %272, i32 %247) #8
  %274 = call i32 @bio_add_hw_page(ptr noundef %257, ptr noundef nonnull %236, ptr noundef %271, i32 noundef %273, i32 noundef %253, i32 noundef %230, ptr noundef nonnull %8) #8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %301

276:                                              ; preds = %310, %268
  %277 = phi i32 [ 0, %268 ], [ %306, %310 ]
  %278 = phi i32 [ %247, %268 ], [ %307, %310 ]
  %279 = phi i32 [ 0, %268 ], [ %308, %310 ]
  %280 = phi ptr [ %271, %268 ], [ %314, %310 ]
  %281 = load i8, ptr %8, align 1, !range !8
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %300, label %283

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.page, ptr %280, i32 0, i32 1
  %285 = load volatile i32, ptr %284, align 4
  %286 = and i32 %285, 1
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288, !prof !11

288:                                              ; preds = %283
  %289 = add i32 %285, -1
  br label %292

290:                                              ; preds = %283
  %291 = ptrtoint ptr %280 to i32
  br label %292

292:                                              ; preds = %290, %288
  %293 = phi i32 [ %289, %288 ], [ %291, %290 ]
  %294 = inttoptr i32 %293 to ptr
  %295 = getelementptr inbounds %struct.page, ptr %294, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %295) #8, !srcloc !13
  %296 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %295, ptr %295, i32 1, ptr elementtype(i32) %295) #8, !srcloc !14
  %297 = extractvalue { i32, i32 } %296, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %292
  call void @__put_page(ptr noundef %294) #8
  br label %300

300:                                              ; preds = %299, %292, %276
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  br label %318

301:                                              ; preds = %310, %268
  %302 = phi i32 [ %315, %310 ], [ %273, %268 ]
  %303 = phi i32 [ %308, %310 ], [ 0, %268 ]
  %304 = phi i32 [ %307, %310 ], [ %247, %268 ]
  %305 = phi i32 [ %306, %310 ], [ 0, %268 ]
  %306 = add i32 %302, %305
  %307 = sub i32 %304, %302
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %308 = add nuw nsw i32 %303, 1
  %309 = icmp eq i32 %308, %269
  br i1 %309, label %318, label %310

310:                                              ; preds = %301
  %311 = load ptr, ptr %1, align 8
  %312 = load ptr, ptr %6, align 4
  %313 = getelementptr ptr, ptr %312, i32 %308
  %314 = load ptr, ptr %313, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 0, ptr %8, align 1
  %315 = call i32 @llvm.umin.i32(i32 %307, i32 4096) #8
  %316 = call i32 @bio_add_hw_page(ptr noundef %311, ptr noundef nonnull %236, ptr noundef %314, i32 noundef %315, i32 noundef 0, i32 noundef %230, ptr noundef nonnull %8) #8
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %276, label %301

318:                                              ; preds = %301, %300, %266
  %319 = phi i32 [ %279, %300 ], [ 0, %266 ], [ %269, %301 ]
  %320 = phi i32 [ %278, %300 ], [ %247, %266 ], [ %307, %301 ]
  %321 = phi i32 [ %277, %300 ], [ 0, %266 ], [ %306, %301 ]
  call void @iov_iter_advance(ptr noundef nonnull %9, i32 noundef %321) #8
  br label %322

322:                                              ; preds = %318, %262
  %323 = phi i32 [ %319, %318 ], [ 0, %262 ]
  %324 = phi i32 [ %320, %318 ], [ 1, %262 ]
  %325 = icmp ult i32 %323, %256
  br i1 %325, label %326, label %350

326:                                              ; preds = %348, %322
  %327 = phi i32 [ %329, %348 ], [ %323, %322 ]
  %328 = load ptr, ptr %6, align 4
  %329 = add nuw nsw i32 %327, 1
  %330 = getelementptr ptr, ptr %328, i32 %327
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr inbounds %struct.page, ptr %331, i32 0, i32 1
  %333 = load volatile i32, ptr %332, align 4
  %334 = and i32 %333, 1
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %338, label %336, !prof !11

336:                                              ; preds = %326
  %337 = add i32 %333, -1
  br label %340

338:                                              ; preds = %326
  %339 = ptrtoint ptr %331 to i32
  br label %340

340:                                              ; preds = %338, %336
  %341 = phi i32 [ %337, %336 ], [ %339, %338 ]
  %342 = inttoptr i32 %341 to ptr
  %343 = getelementptr inbounds %struct.page, ptr %342, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %343) #8, !srcloc !13
  %344 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %343, ptr %343, i32 1, ptr elementtype(i32) %343) #8, !srcloc !14
  %345 = extractvalue { i32, i32 } %344, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %340
  call void @__put_page(ptr noundef %342) #8
  br label %348

348:                                              ; preds = %347, %340
  %349 = icmp eq i32 %329, %256
  br i1 %349, label %350, label %326

350:                                              ; preds = %348, %322
  %351 = load ptr, ptr %6, align 4
  call void @kvfree(ptr noundef %351) #8
  %352 = icmp ne i32 %324, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %353 = load i32, ptr %45, align 8
  %354 = icmp eq i32 %353, 0
  %355 = select i1 %352, i1 true, i1 %354
  br i1 %355, label %356, label %246

356:                                              ; preds = %350, %238
  %357 = call i32 @blk_rq_append_bio(ptr noundef %1, ptr noundef nonnull %236) #8
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %356, %249
  %360 = phi i32 [ %251, %249 ], [ %357, %356 ]
  %361 = getelementptr inbounds %struct.bio, ptr %236, i32 0, i32 3
  %362 = load i16, ptr %361, align 4
  %363 = and i16 %362, 1
  %364 = icmp eq i16 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  call void @__bio_release_pages(ptr noundef nonnull %236, i1 noundef zeroext false) #8
  br label %366

366:                                              ; preds = %365, %359
  call void @bio_put(ptr noundef nonnull %236) #8
  br label %375

367:                                              ; preds = %356, %215
  %368 = icmp eq ptr %59, null
  br i1 %368, label %369, label %371

369:                                              ; preds = %367
  %370 = load ptr, ptr %57, align 8
  br label %371

371:                                              ; preds = %369, %367
  %372 = phi ptr [ %59, %367 ], [ %370, %369 ]
  %373 = load i32, ptr %45, align 8
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %381, label %58

375:                                              ; preds = %366, %233, %227, %225, %69, %65
  %376 = phi i32 [ %360, %366 ], [ %226, %225 ], [ -12, %233 ], [ -22, %227 ], [ -12, %69 ], [ -12, %65 ]
  %377 = call i32 @blk_rq_unmap_user(ptr noundef %59)
  br label %378

378:                                              ; preds = %375, %16
  %379 = phi i32 [ %376, %375 ], [ -22, %16 ]
  %380 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 10
  store ptr null, ptr %380, align 8
  br label %381

381:                                              ; preds = %378, %371
  %382 = phi i32 [ %379, %378 ], [ 0, %371 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  ret i32 %382
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_alignment(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_gap_alignment(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_rq_unmap_user(ptr noundef %0) #0 {
  %2 = alloca %struct.iov_iter, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %103, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds [3 x i64], ptr %2, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i64], ptr %2, i32 0, i32 2
  br label %7

7:                                                ; preds = %99, %4
  %8 = phi i32 [ 0, %4 ], [ %100, %99 ]
  %9 = phi ptr [ %0, %4 ], [ %101, %99 ]
  %10 = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %89, label %13

13:                                               ; preds = %7
  %14 = load i8, ptr %11, align 8
  %15 = and i8 %14, 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #8
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 37
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %77, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %77

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bio_map_data, ptr %11, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.bio_map_data, ptr %11, i32 0, i32 1, i32 4
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.bio_map_data, ptr %11, i32 0, i32 1, i32 6
  %33 = load i64, ptr %32, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  store i64 %29, ptr %2, align 8
  store i64 %31, ptr %5, align 8
  store i64 %33, ptr %6, align 8
  %34 = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 13
  %35 = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 16
  br label %36

36:                                               ; preds = %67, %27
  %37 = phi ptr [ null, %27 ], [ %57, %67 ]
  %38 = phi i32 [ 0, %27 ], [ %72, %67 ]
  %39 = phi i32 [ 0, %27 ], [ %70, %67 ]
  %40 = load i16, ptr %34, align 4
  %41 = zext i16 %40 to i32
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %36
  %44 = load ptr, ptr %35, align 4
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = getelementptr %struct.page, ptr %37, i32 1
  br label %56

48:                                               ; preds = %43
  %49 = getelementptr %struct.bio_vec, ptr %44, i32 %38
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr %struct.bio_vec, ptr %44, i32 %38, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 12
  %54 = getelementptr %struct.page, ptr %50, i32 %53
  %55 = and i32 %52, 4095
  br label %56

56:                                               ; preds = %48, %46
  %57 = phi ptr [ %54, %48 ], [ %47, %46 ]
  %58 = phi i32 [ %55, %48 ], [ 0, %46 ]
  %59 = sub nuw nsw i32 4096, %58
  %60 = getelementptr %struct.bio_vec, ptr %44, i32 %38, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = sub i32 %61, %39
  %63 = call i32 @llvm.umin.i32(i32 %59, i32 %62) #8
  %64 = call i32 @copy_page_to_iter(ptr noundef %57, i32 noundef %58, i32 noundef %63, ptr noundef nonnull %2) #8
  %65 = load i32, ptr %5, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %56
  %68 = add i32 %63, %39
  %69 = icmp eq i32 %68, %61
  %70 = select i1 %69, i32 0, i32 %68
  %71 = zext i1 %69 to i32
  %72 = add nuw nsw i32 %38, %71
  %73 = icmp ult i32 %64, %63
  br i1 %73, label %74, label %36

74:                                               ; preds = %67, %56, %36
  %75 = phi i32 [ 0, %36 ], [ 0, %56 ], [ -14, %67 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  %76 = load i8, ptr %11, align 8
  br label %77

77:                                               ; preds = %74, %22, %17
  %78 = phi i8 [ %76, %74 ], [ %14, %22 ], [ %14, %17 ]
  %79 = phi i32 [ %75, %74 ], [ 0, %22 ], [ -4, %17 ]
  %80 = and i8 %78, 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  call void @bio_free_pages(ptr noundef nonnull %9) #8
  br label %83

83:                                               ; preds = %82, %77, %13
  %84 = phi i32 [ 0, %13 ], [ %79, %82 ], [ %79, %77 ]
  call void @kfree(ptr noundef nonnull %11) #8
  %85 = icmp eq i32 %84, 0
  %86 = icmp ne i32 %8, 0
  %87 = select i1 %85, i1 true, i1 %86
  %88 = select i1 %87, i32 %8, i32 %84
  br label %99

89:                                               ; preds = %7
  %90 = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 3
  %91 = load i16, ptr %90, align 4
  %92 = and i16 %91, 1
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  call void @__bio_release_pages(ptr noundef nonnull %9, i1 noundef zeroext %98) #8
  br label %99

99:                                               ; preds = %94, %89, %83
  %100 = phi i32 [ %88, %83 ], [ %8, %89 ], [ %8, %94 ]
  %101 = load ptr, ptr %9, align 4
  call void @bio_put(ptr noundef nonnull %9) #8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %7

103:                                              ; preds = %99, %1
  %104 = phi i32 [ 0, %1 ], [ %100, %99 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_rq_map_user(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.iovec, align 8
  %8 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = call i32 @import_single_range(i32 noundef %11, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %8) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14, !prof !10

14:                                               ; preds = %6
  %15 = call i32 @blk_rq_map_user_iov(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8, i32 noundef %5)
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %15, %14 ], [ %12, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_single_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blk_rq_map_kern(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = ptrtoint ptr %2 to i32
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 %12, 9
  %14 = icmp ult i32 %13, %3
  br i1 %14, label %147, label %15

15:                                               ; preds = %5
  %16 = icmp ne i32 %3, 0
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %147

19:                                               ; preds = %15
  %20 = icmp eq ptr %0, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 22
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %23, %21 ], [ 511, %19 ]
  %26 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 21
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, %25
  %29 = or i32 %10, %3
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %24
  %33 = tail call ptr @llvm.thread.pointer() #8
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = icmp ugt ptr %35, %2
  %37 = getelementptr i8, ptr %35, i32 8192
  %38 = icmp ule ptr %37, %2
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 32
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 1
  %44 = load i32, ptr @max_low_pfn, align 4
  %45 = load i32, ptr @max_pfn, align 4
  %46 = icmp uge i32 %44, %45
  %47 = select i1 %43, i1 %46, i1 false
  br i1 %47, label %48, label %83

48:                                               ; preds = %40, %32, %24
  %49 = add i32 %10, %3
  %50 = add i32 %49, 4095
  %51 = lshr i32 %50, 12
  %52 = lshr i32 %10, 12
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %134, label %54

54:                                               ; preds = %48
  %55 = sub nsw i32 %51, %52
  %56 = trunc i32 %55 to i16
  %57 = tail call ptr @bio_kmalloc(i32 noundef %4, i16 noundef zeroext %56) #8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %134, label %59

59:                                               ; preds = %54
  %60 = or i32 %4, 3328
  br label %61

61:                                               ; preds = %70, %59
  %62 = phi ptr [ %2, %59 ], [ %74, %70 ]
  %63 = phi i32 [ %3, %59 ], [ %73, %70 ]
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 4096) #8
  %65 = tail call ptr @__alloc_pages(i32 noundef %60, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %82, label %67

67:                                               ; preds = %61
  br i1 %9, label %70, label %68

68:                                               ; preds = %67
  %69 = tail call ptr @page_address(ptr noundef nonnull %65) #8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr align 1 %62, i32 %64, i1 false) #8
  br label %70

70:                                               ; preds = %68, %67
  %71 = tail call i32 @bio_add_pc_page(ptr noundef %0, ptr noundef nonnull %57, ptr noundef nonnull %65, i32 noundef %64, i32 noundef 0) #8
  %72 = icmp ult i32 %71, %64
  %73 = sub i32 %63, %64
  %74 = getelementptr i8, ptr %62, i32 %64
  %75 = icmp eq i32 %73, 0
  %76 = select i1 %72, i1 true, i1 %75
  br i1 %76, label %77, label %61

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.bio, ptr %57, i32 0, i32 10
  br i1 %9, label %79, label %81

79:                                               ; preds = %77
  store ptr @bio_copy_kern_endio_read, ptr %78, align 4
  %80 = getelementptr inbounds %struct.bio, ptr %57, i32 0, i32 11
  store ptr %2, ptr %80, align 4
  br label %128

81:                                               ; preds = %77
  store ptr @bio_copy_kern_endio, ptr %78, align 4
  br label %128

82:                                               ; preds = %61
  tail call void @bio_free_pages(ptr noundef nonnull %57) #8
  br label %131

83:                                               ; preds = %40
  %84 = add i32 %10, %3
  %85 = add i32 %84, 4095
  %86 = lshr i32 %85, 12
  %87 = lshr i32 %10, 12
  %88 = sub nsw i32 %86, %87
  %89 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %2) #8
  %90 = trunc i32 %88 to i16
  %91 = tail call ptr @bio_kmalloc(i32 noundef %4, i16 noundef zeroext %90) #8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %134, label %93

93:                                               ; preds = %83
  br i1 %89, label %94, label %96

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.bio, ptr %91, i32 0, i32 11
  store ptr %2, ptr %95, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = icmp slt i32 %88, 1
  br i1 %97, label %126, label %98

98:                                               ; preds = %96
  %99 = and i32 %10, 4095
  br label %100

100:                                              ; preds = %119, %98
  %101 = phi i32 [ %122, %119 ], [ 0, %98 ]
  %102 = phi i32 [ 0, %119 ], [ %99, %98 ]
  %103 = phi ptr [ %120, %119 ], [ %2, %98 ]
  %104 = phi i32 [ %121, %119 ], [ %3, %98 ]
  %105 = sub nuw nsw i32 4096, %102
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 %104) #8
  br i1 %89, label %113, label %107

107:                                              ; preds = %100
  %108 = load ptr, ptr @mem_map, align 4
  %109 = ptrtoint ptr %103 to i32
  %110 = add i32 %109, 1073741824
  %111 = lshr i32 %110, 12
  %112 = getelementptr %struct.page, ptr %108, i32 %111
  br label %115

113:                                              ; preds = %100
  %114 = tail call ptr @vmalloc_to_page(ptr noundef %103) #8
  br label %115

115:                                              ; preds = %113, %107
  %116 = phi ptr [ %114, %113 ], [ %112, %107 ]
  %117 = tail call i32 @bio_add_pc_page(ptr noundef %0, ptr noundef nonnull %91, ptr noundef %116, i32 noundef %106, i32 noundef %102) #8
  %118 = icmp ult i32 %117, %106
  br i1 %118, label %131, label %119

119:                                              ; preds = %115
  %120 = getelementptr i8, ptr %103, i32 %106
  %121 = sub i32 %104, %106
  %122 = add nuw nsw i32 %101, 1
  %123 = icmp sge i32 %122, %88
  %124 = icmp eq i32 %121, 0
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %126, label %100

126:                                              ; preds = %119, %96
  %127 = getelementptr inbounds %struct.bio, ptr %91, i32 0, i32 10
  store ptr @bio_map_kern_endio, ptr %127, align 4
  br label %128

128:                                              ; preds = %126, %81, %79
  %129 = phi ptr [ %57, %81 ], [ %57, %79 ], [ %91, %126 ]
  %130 = icmp ugt ptr %129, inttoptr (i32 -4096 to ptr)
  br i1 %130, label %134, label %137

131:                                              ; preds = %115, %82
  %132 = phi ptr [ %57, %82 ], [ %91, %115 ]
  %133 = phi ptr [ inttoptr (i32 -12 to ptr), %82 ], [ inttoptr (i32 -22 to ptr), %115 ]
  tail call void @bio_put(ptr noundef nonnull %132) #8
  br label %134

134:                                              ; preds = %131, %128, %83, %54, %48
  %135 = phi ptr [ %129, %128 ], [ inttoptr (i32 -12 to ptr), %83 ], [ inttoptr (i32 -12 to ptr), %54 ], [ inttoptr (i32 -22 to ptr), %48 ], [ %133, %131 ]
  %136 = ptrtoint ptr %135 to i32
  br label %147

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.bio, ptr %129, i32 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, -256
  store i32 %140, ptr %138, align 4
  %141 = load i32, ptr %6, align 4
  %142 = and i32 %141, 255
  %143 = or i32 %142, %140
  store i32 %143, ptr %138, align 4
  %144 = tail call i32 @blk_rq_append_bio(ptr noundef %1, ptr noundef nonnull %129)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146, !prof !11

146:                                              ; preds = %137
  tail call void @bio_put(ptr noundef nonnull %129) #8
  br label %147

147:                                              ; preds = %146, %137, %134, %15, %5
  %148 = phi i32 [ %136, %134 ], [ -22, %5 ], [ -22, %15 ], [ %144, %146 ], [ 0, %137 ]
  ret i32 %148
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_kmalloc(i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_pc_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_fill_bio(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_free_pages(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_npages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_hw_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_release_pages(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bio_copy_kern_endio_read(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 13
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 16
  br label %9

9:                                                ; preds = %26, %5
  %10 = phi ptr [ %7, %5 ], [ %43, %26 ]
  %11 = phi i32 [ 0, %5 ], [ %38, %26 ]
  %12 = phi i32 [ 0, %5 ], [ %37, %26 ]
  %13 = phi ptr [ null, %5 ], [ %27, %26 ]
  %14 = load ptr, ptr %8, align 4
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr %struct.page, ptr %13, i32 1
  br label %26

18:                                               ; preds = %9
  %19 = getelementptr %struct.bio_vec, ptr %14, i32 %12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.bio_vec, ptr %14, i32 %12, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 12
  %24 = getelementptr %struct.page, ptr %20, i32 %23
  %25 = and i32 %22, 4095
  br label %26

26:                                               ; preds = %18, %16
  %27 = phi ptr [ %24, %18 ], [ %17, %16 ]
  %28 = phi i32 [ %25, %18 ], [ 0, %16 ]
  %29 = sub nuw nsw i32 4096, %28
  %30 = getelementptr %struct.bio_vec, ptr %14, i32 %12, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %31, %11
  %33 = tail call i32 @llvm.umin.i32(i32 %29, i32 %32) #8
  %34 = add i32 %33, %11
  %35 = icmp eq i32 %34, %31
  %36 = zext i1 %35 to i32
  %37 = add nuw nsw i32 %12, %36
  %38 = select i1 %35, i32 0, i32 %34
  %39 = load i32, ptr @pgprot_kernel, align 4
  %40 = or i32 %39, 512
  %41 = tail call ptr @__kmap_local_page_prot(ptr noundef %27, i32 noundef %40) #8
  %42 = getelementptr i8, ptr %41, i32 %28
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %10, ptr align 1 %42, i32 %33, i1 false) #8
  tail call void @kunmap_local_indexed(ptr noundef %41) #8
  %43 = getelementptr i8, ptr %10, i32 %33
  %44 = load i16, ptr %2, align 4
  %45 = zext i16 %44 to i32
  %46 = icmp ult i32 %37, %45
  br i1 %46, label %9, label %47

47:                                               ; preds = %26, %1
  tail call void @bio_free_pages(ptr noundef %0) #8
  tail call void @bio_put(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bio_copy_kern_endio(ptr noundef %0) #0 {
  tail call void @bio_free_pages(ptr noundef %0) #8
  tail call void @bio_put(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bio_map_kern_endio(ptr noundef %0) #0 {
  tail call void @bio_put(ptr noundef %0) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148025696}
!13 = !{i64 422858, i64 2147912829, i64 2147912855, i64 2147912902, i64 2147912924, i64 2147912952, i64 2147912972}
!14 = !{i64 2147928082, i64 2147928114, i64 2147928143, i64 2147928177, i64 2147928208, i64 2147928231}
!15 = !{i64 2148025899}
