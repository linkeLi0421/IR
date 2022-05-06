; ModuleID = '/llk/IR/fs/eventfd.c_pt.bc'
source_filename = "../fs/eventfd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eventfd_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22eventfd_signal\22\09\09\09\09\09"
module asm "__kstrtabns_eventfd_signal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eventfd_ctx_put:\09\09\09\09\09"
module asm "\09.asciz \09\22eventfd_ctx_put\22\09\09\09\09\09"
module asm "__kstrtabns_eventfd_ctx_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eventfd_ctx_do_read:\09\09\09\09\09"
module asm "\09.asciz \09\22eventfd_ctx_do_read\22\09\09\09\09\09"
module asm "__kstrtabns_eventfd_ctx_do_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eventfd_ctx_remove_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22eventfd_ctx_remove_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_eventfd_ctx_remove_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eventfd_fget:\09\09\09\09\09"
module asm "\09.asciz \09\22eventfd_fget\22\09\09\09\09\09"
module asm "__kstrtabns_eventfd_fget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eventfd_ctx_fdget:\09\09\09\09\09"
module asm "\09.asciz \09\22eventfd_ctx_fdget\22\09\09\09\09\09"
module asm "__kstrtabns_eventfd_ctx_fdget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_eventfd_ctx_fileget:\09\09\09\09\09"
module asm "\09.asciz \09\22eventfd_ctx_fileget\22\09\09\09\09\09"
module asm "__kstrtabns_eventfd_ctx_fileget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lock_class_key = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.eventfd_ctx = type { %struct.kref, %struct.wait_queue_head, i64, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.8, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.54, %union.anon.55 }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }

@eventfd_signal.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"fs/eventfd.c\00", align 1
@__kstrtab_eventfd_signal = external dso_local constant [0 x i8], align 1
@__kstrtabns_eventfd_signal = external dso_local constant [0 x i8], align 1
@__ksymtab_eventfd_signal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eventfd_signal to i32), ptr @__kstrtab_eventfd_signal, ptr @__kstrtabns_eventfd_signal }, section "___ksymtab_gpl+eventfd_signal", align 4
@__kstrtab_eventfd_ctx_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_eventfd_ctx_put = external dso_local constant [0 x i8], align 1
@__ksymtab_eventfd_ctx_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eventfd_ctx_put to i32), ptr @__kstrtab_eventfd_ctx_put, ptr @__kstrtabns_eventfd_ctx_put }, section "___ksymtab_gpl+eventfd_ctx_put", align 4
@__kstrtab_eventfd_ctx_do_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_eventfd_ctx_do_read = external dso_local constant [0 x i8], align 1
@__ksymtab_eventfd_ctx_do_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eventfd_ctx_do_read to i32), ptr @__kstrtab_eventfd_ctx_do_read, ptr @__kstrtabns_eventfd_ctx_do_read }, section "___ksymtab_gpl+eventfd_ctx_do_read", align 4
@__kstrtab_eventfd_ctx_remove_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_eventfd_ctx_remove_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_eventfd_ctx_remove_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eventfd_ctx_remove_wait_queue to i32), ptr @__kstrtab_eventfd_ctx_remove_wait_queue, ptr @__kstrtabns_eventfd_ctx_remove_wait_queue }, section "___ksymtab_gpl+eventfd_ctx_remove_wait_queue", align 4
@eventfd_fops = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @eventfd_write, ptr @eventfd_read, ptr null, ptr null, ptr null, ptr null, ptr @eventfd_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @eventfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eventfd_show_fdinfo, ptr null, ptr null, ptr null }, align 4
@__kstrtab_eventfd_fget = external dso_local constant [0 x i8], align 1
@__kstrtabns_eventfd_fget = external dso_local constant [0 x i8], align 1
@__ksymtab_eventfd_fget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eventfd_fget to i32), ptr @__kstrtab_eventfd_fget, ptr @__kstrtabns_eventfd_fget }, section "___ksymtab_gpl+eventfd_fget", align 4
@__kstrtab_eventfd_ctx_fdget = external dso_local constant [0 x i8], align 1
@__kstrtabns_eventfd_ctx_fdget = external dso_local constant [0 x i8], align 1
@__ksymtab_eventfd_ctx_fdget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eventfd_ctx_fdget to i32), ptr @__kstrtab_eventfd_ctx_fdget, ptr @__kstrtabns_eventfd_ctx_fdget }, section "___ksymtab_gpl+eventfd_ctx_fdget", align 4
@__kstrtab_eventfd_ctx_fileget = external dso_local constant [0 x i8], align 1
@__kstrtabns_eventfd_ctx_fileget = external dso_local constant [0 x i8], align 1
@__ksymtab_eventfd_ctx_fileget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @eventfd_ctx_fileget to i32), ptr @__kstrtab_eventfd_ctx_fileget, ptr @__kstrtabns_eventfd_ctx_fileget }, section "___ksymtab_gpl+eventfd_ctx_fileget", align 4
@eventfd_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"eventfd-count: %16llx\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"eventfd-id: %d\0A\00", align 1
@do_eventfd.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"&ctx->wqh\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"[eventfd]\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_eventfd_ctx_do_read, ptr @__ksymtab_eventfd_ctx_fdget, ptr @__ksymtab_eventfd_ctx_fileget, ptr @__ksymtab_eventfd_ctx_put, ptr @__ksymtab_eventfd_ctx_remove_wait_queue, ptr @__ksymtab_eventfd_fget, ptr @__ksymtab_eventfd_signal], section "llvm.metadata"

@sys_eventfd2 = dso_local alias i32 (i32, i32), ptr @__se_sys_eventfd2
@sys_eventfd = dso_local alias i32 (i32), ptr @__se_sys_eventfd

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @eventfd_signal(ptr noundef %0, i64 noundef %1) #0 {
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 49
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 64
  %7 = icmp ne i8 %6, 0
  %8 = load i1, ptr @eventfd_signal.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %2
  store i1 true, ptr @eventfd_signal.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #8
  br label %12

12:                                               ; preds = %11, %2
  br i1 %7, label %30, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 1
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = load i8, ptr %4, align 8
  %17 = or i8 %16, 64
  store i8 %17, ptr %4, align 8
  %18 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = xor i64 %19, -1
  %21 = tail call i64 @llvm.umin.i64(i64 %20, i64 %1)
  %22 = tail call i64 @llvm.uadd.sat.i64(i64 %1, i64 %19)
  store i64 %22, ptr %18, align 8
  %23 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 1, i32 1
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  tail call void @__wake_up_locked_key(ptr noundef %14, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i8, ptr %4, align 8
  %29 = and i8 %28, -65
  store i8 %29, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  br label %30

30:                                               ; preds = %27, %12
  %31 = phi i64 [ %21, %27 ], [ 0, %12 ]
  ret i64 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @eventfd_ctx_put(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #8, !srcloc !10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #8, !srcloc !11
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %14, label %7, !prof !12

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #8
  br label %14

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %9 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ida_free(ptr noundef nonnull @eventfd_ida, i32 noundef %10) #8
  br label %13

13:                                               ; preds = %12, %8
  tail call void @kfree(ptr noundef %0) #8
  br label %14

14:                                               ; preds = %13, %7, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @eventfd_ctx_do_read(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i64 [ %9, %7 ], [ 1, %2 ]
  store i64 %11, ptr %1, align 8
  %12 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %13, %11
  store i64 %14, ptr %12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @eventfd_ctx_remove_wait_queue(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %3
  %14 = phi i64 [ %12, %10 ], [ 1, %3 ]
  store i64 %14, ptr %2, align 8
  %15 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = sub i64 %16, %14
  store i64 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  %23 = load i64, ptr %2, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.eventfd_ctx, ptr %0, i32 0, i32 1, i32 1
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @__wake_up_locked_key(ptr noundef %4, i32 noundef 3, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %30

30:                                               ; preds = %29, %25, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  %31 = load i64, ptr %2, align 8
  %32 = icmp eq i64 %31, 0
  %33 = select i1 %32, i32 -11, i32 0
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @eventfd_fget(i32 noundef %0) #0 {
  %2 = tail call ptr @fget(i32 noundef %0) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @eventfd_fops
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fput(ptr noundef nonnull %2) #8
  br label %9

9:                                                ; preds = %8, %4, %1
  %10 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %2, %4 ], [ inttoptr (i32 -9 to ptr), %1 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @eventfd_ctx_fdget(i32 noundef %0) #0 {
  %2 = tail call i32 @__fdget(i32 noundef %0) #8, !noalias !14
  %3 = and i32 %2, -4
  %4 = inttoptr i32 %3 to ptr
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @eventfd_fops
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #8, !srcloc !10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #8, !srcloc !17
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !8

16:                                               ; preds = %10
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !12

20:                                               ; preds = %16, %10
  %21 = phi i32 [ 2, %10 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #8
  br label %22

22:                                               ; preds = %20, %16, %6
  %23 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %12, %16 ], [ %12, %20 ]
  %24 = and i32 %2, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @fput(ptr noundef nonnull %4) #8
  br label %27

27:                                               ; preds = %26, %22, %1
  %28 = phi ptr [ inttoptr (i32 -9 to ptr), %1 ], [ %23, %22 ], [ %23, %26 ]
  ret ptr %28
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @eventfd_ctx_fileget(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @eventfd_fops
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #8, !srcloc !10
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #8, !srcloc !17
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !8

11:                                               ; preds = %5
  %12 = add i32 %9, 1
  %13 = or i32 %12, %9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %17, label %15, !prof !12

15:                                               ; preds = %11, %5
  %16 = phi i32 [ 2, %5 ], [ 1, %11 ]
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %15, %11, %1
  %18 = phi ptr [ inttoptr (i32 -22 to ptr), %1 ], [ %7, %11 ], [ %7, %15 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_eventfd2(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @do_eventfd(i32 noundef %0, i32 noundef %1) #8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_eventfd(i32 noundef %0) #0 {
  %2 = tail call fastcc i32 @do_eventfd(i32 noundef %0, i32 noundef 0) #8
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eventfd_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 1
  %10 = tail call ptr @llvm.thread.pointer() #8
  store i32 0, ptr %6, align 4
  store ptr %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 2
  store ptr @default_wake_function, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %6, i32 0, i32 3, i32 1
  store ptr null, ptr %13, align 4
  %14 = icmp ult i32 %2, 8
  br i1 %14, label %101, label %15

15:                                               ; preds = %4
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 8, i32 -1090519040) #9, !srcloc !19
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !prof !12

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #10, !srcloc !20
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #8, !srcloc !21
  tail call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !22
  %24 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #8, !srcloc !21
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !12

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %24, %19 ], [ 8, %15 ]
  %28 = sub i32 8, %27
  %29 = getelementptr i8, ptr %5, i32 %28
  call void @llvm.memset.p0.i32(ptr align 1 %29, i8 0, i32 %27, i1 false) #8
  br label %101

30:                                               ; preds = %19
  %31 = load i64, ptr %5, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %101, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.eventfd_ctx, ptr %8, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %34) #8
  %35 = getelementptr inbounds %struct.eventfd_ctx, ptr %8, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = xor i64 %36, -1
  %38 = load i64, ptr %5, align 8
  %39 = icmp ult i64 %38, %37
  br i1 %39, label %88, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.eventfd_ctx, ptr %8, i32 0, i32 1, i32 1
  br label %47

47:                                               ; preds = %51, %45
  %48 = phi ptr [ %46, %45 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %46
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %49, i32 -12
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %47

56:                                               ; preds = %51, %47
  %57 = phi ptr [ %49, %51 ], [ %46, %47 ]
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %12, ptr %58, align 4
  store ptr %57, ptr %12, align 4
  store ptr %48, ptr %13, align 4
  store volatile ptr %12, ptr %48, align 4
  %59 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  store volatile i32 1, ptr %59, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %60 = load i64, ptr %35, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, ptr %5, align 8
  %63 = icmp ult i64 %62, %61
  br i1 %63, label %79, label %64

64:                                               ; preds = %72, %56
  %65 = load volatile i32, ptr %10, align 4
  %66 = and i32 %65, 256
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %79, !prof !12

68:                                               ; preds = %64
  %69 = load volatile i32, ptr %10, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79, !prof !24

72:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %73 = load i16, ptr %34, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %34, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %34) #8
  store volatile i32 1, ptr %59, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %75 = load i64, ptr %35, align 8
  %76 = xor i64 %75, -1
  %77 = load i64, ptr %5, align 8
  %78 = icmp ult i64 %77, %76
  br i1 %78, label %79, label %64

79:                                               ; preds = %72, %68, %64, %56
  %80 = phi i1 [ true, %56 ], [ false, %64 ], [ true, %72 ], [ false, %68 ]
  %81 = phi i32 [ 8, %56 ], [ -512, %64 ], [ 8, %72 ], [ -512, %68 ]
  %82 = load ptr, ptr %13, align 4
  %83 = load ptr, ptr %12, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %82, ptr %84, align 4
  store volatile ptr %83, ptr %82, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  store volatile i32 0, ptr %59, align 8
  br i1 %80, label %85, label %97, !prof !12

85:                                               ; preds = %79
  %86 = load i64, ptr %5, align 8
  %87 = load i64, ptr %35, align 8
  br label %88

88:                                               ; preds = %85, %33
  %89 = phi i64 [ %87, %85 ], [ %36, %33 ]
  %90 = phi i64 [ %86, %85 ], [ %38, %33 ]
  %91 = phi i32 [ %81, %85 ], [ 8, %33 ]
  %92 = add i64 %89, %90
  store i64 %92, ptr %35, align 8
  %93 = getelementptr inbounds %struct.eventfd_ctx, ptr %8, i32 0, i32 1, i32 1
  %94 = load volatile ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %93
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  call void @__wake_up_locked_key(ptr noundef %34, i32 noundef 3, ptr noundef nonnull inttoptr (i32 1 to ptr)) #8
  br label %97

97:                                               ; preds = %96, %88, %79, %40
  %98 = phi i32 [ %91, %88 ], [ %91, %96 ], [ %81, %79 ], [ -11, %40 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %99 = load i16, ptr %34, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %34, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  br label %101

101:                                              ; preds = %97, %30, %26, %4
  %102 = phi i32 [ %98, %97 ], [ -22, %4 ], [ -22, %30 ], [ -14, %26 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eventfd_read(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %9 = tail call ptr @llvm.thread.pointer() #8
  store i32 0, ptr %4, align 4
  store ptr %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr @default_wake_function, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %92, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %32 = load i16, ptr %17, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  br label %92

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 1, i32 1
  br label %36

36:                                               ; preds = %40, %34
  %37 = phi ptr [ %35, %34 ], [ %38, %40 ]
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %35
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %38, i32 -12
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %36

45:                                               ; preds = %40, %36
  %46 = phi ptr [ %38, %40 ], [ %35, %36 ]
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %11, ptr %47, align 4
  store ptr %46, ptr %11, align 4
  store ptr %37, ptr %12, align 4
  store volatile ptr %11, ptr %37, align 4
  %48 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 1
  store volatile i32 1, ptr %48, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %49 = load i64, ptr %18, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %65, %45
  %52 = load volatile i32, ptr %9, align 4
  %53 = and i32 %52, 256
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59, !prof !12

55:                                               ; preds = %51
  %56 = load volatile i32, ptr %9, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55, %51
  %60 = load ptr, ptr %12, align 4
  %61 = load ptr, ptr %11, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  store volatile i32 0, ptr %48, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %63 = load i16, ptr %17, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  br label %92

65:                                               ; preds = %55
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %66 = load i16, ptr %17, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %17) #8
  store volatile i32 1, ptr %48, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !30
  %68 = load i64, ptr %18, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %51, label %70

70:                                               ; preds = %65, %45
  %71 = load ptr, ptr %12, align 4
  %72 = load ptr, ptr %11, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %71, ptr %73, align 4
  store volatile ptr %72, ptr %71, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  store volatile i32 0, ptr %48, align 8
  br label %74

74:                                               ; preds = %70, %16
  %75 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 3
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  %79 = load i64, ptr %18, align 8
  %80 = select i1 %78, i64 %79, i64 1
  store i64 %80, ptr %3, align 8
  %81 = sub i64 %79, %80
  store i64 %81, ptr %18, align 8
  %82 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 1, i32 1
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %86, label %85

85:                                               ; preds = %74
  call void @__wake_up_locked_key(ptr noundef %17, i32 noundef 3, ptr noundef nonnull inttoptr (i32 4 to ptr)) #8
  br label %86

86:                                               ; preds = %85, %74
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %87 = load i16, ptr %17, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !27
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %89 = call i32 @_copy_to_iter(ptr noundef nonnull %3, i32 noundef 8, ptr noundef %1) #8
  %90 = icmp eq i32 %89, 8
  %91 = select i1 %90, i32 8, i32 -14
  br label %92

92:                                               ; preds = %86, %59, %31, %2
  %93 = phi i32 [ -11, %31 ], [ -512, %59 ], [ -22, %2 ], [ %91, %86 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eventfd_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #8
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 2
  %15 = load volatile i64, ptr %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = icmp eq i64 %15, -1
  %19 = or i32 %17, 8
  %20 = select i1 %18, i32 %19, i32 %17
  %21 = icmp ult i64 %15, -2
  %22 = or i32 %20, 4
  %23 = select i1 %21, i32 %22, i32 %20
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eventfd_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %5, i32 noundef 3, i32 noundef 1, ptr noundef nonnull inttoptr (i32 16 to ptr)) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #8, !srcloc !10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #8, !srcloc !11
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %18, label %11, !prof !12

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #8
  br label %18

12:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %13 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @ida_free(ptr noundef nonnull @eventfd_ida, i32 noundef %14) #8
  br label %17

17:                                               ; preds = %16, %12
  tail call void @kfree(ptr noundef %4) #8
  br label %18

18:                                               ; preds = %17, %11, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eventfd_show_fdinfo(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef %7) #8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !25
  %8 = load i16, ptr %5, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !29
  %10 = getelementptr inbounds %struct.eventfd_ctx, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %11) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_eventfd(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, -526338
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 32) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %5
  store volatile i32 1, ptr %7, align 8
  %10 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %10, ptr noundef nonnull @.str.5, ptr noundef nonnull @do_eventfd.__key) #8
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 2
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 3
  store i32 %1, ptr %13, align 8
  %14 = tail call i32 @ida_alloc_range(ptr noundef nonnull @eventfd_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  %15 = getelementptr inbounds %struct.eventfd_ctx, ptr %7, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = and i32 %1, 526336
  %17 = or i32 %16, 2
  %18 = tail call i32 @get_unused_fd_flags(i32 noundef %17) #8
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %9
  %21 = tail call ptr @anon_inode_getfile(ptr noundef nonnull @.str.6, ptr noundef nonnull @eventfd_fops, ptr noundef nonnull %7, i32 noundef %17) #8
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  tail call void @put_unused_fd(i32 noundef %18) #8
  %24 = ptrtoint ptr %21 to i32
  br label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.file, ptr %21, i32 0, i32 8
  %27 = load i32, ptr %26, align 8
  %28 = or i32 %27, 134217728
  store i32 %28, ptr %26, align 8
  tail call void @fd_install(i32 noundef %18, ptr noundef %21) #8
  br label %35

29:                                               ; preds = %23, %9
  %30 = phi i32 [ %18, %9 ], [ %24, %23 ]
  %31 = load i32, ptr %15, align 4
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @ida_free(ptr noundef nonnull @eventfd_ida, i32 noundef %31) #8
  br label %34

34:                                               ; preds = %33, %29
  tail call void @kfree(ptr noundef nonnull %7) #8
  br label %35

35:                                               ; preds = %34, %25, %5, %2
  %36 = phi i32 [ %30, %34 ], [ %18, %25 ], [ -22, %2 ], [ -12, %5 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2148037547}
!10 = !{i64 434505, i64 2147924476, i64 2147924502, i64 2147924549, i64 2147924571, i64 2147924599, i64 2147924619}
!11 = !{i64 2147939706, i64 2147939738, i64 2147939767, i64 2147939801, i64 2147939832, i64 2147939855}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149824054}
!14 = !{!15}
!15 = distinct !{!15, !16, !"fdget: argument 0"}
!16 = distinct !{!16, !"fdget"}
!17 = !{i64 2147937349, i64 2147937381, i64 2147937410, i64 2147937444, i64 2147937475, i64 2147937498}
!18 = !{!"auto-init"}
!19 = !{i64 2150979851, i64 2150979876}
!20 = !{i64 3475963}
!21 = !{i64 3476160}
!22 = !{i64 2150961439}
!23 = !{i64 2153634903}
!24 = !{!"branch_weights", i32 2146410443, i32 1073205}
!25 = !{i64 2148955762}
!26 = !{i64 2148951586}
!27 = !{i64 2148951661, i64 2148951688, i64 2148951735, i64 2148951757, i64 2148951785, i64 2148951805}
!28 = !{i64 329989}
!29 = !{i64 2148979906}
!30 = !{i64 2153622271}
