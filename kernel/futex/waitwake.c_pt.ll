; ModuleID = '/llk/IR/kernel/futex/waitwake.c_pt.bc'
source_filename = "../kernel/futex/waitwake.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.futex_key = type { %struct.anon.30 }
%struct.anon.30 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.36, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.36 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [48 x i8] }
%struct.plist_head = type { %struct.list_head }
%struct.anon.33 = type { i64, i32, i32 }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.futex_vector = type { %struct.futex_waitv, %struct.futex_q }
%struct.futex_waitv = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"kernel/futex/waitwake.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"refusing to wake PI futex\0A\00", align 1
@futex_q_init = external dso_local local_unnamed_addr constant %struct.futex_q, align 8
@futex_atomic_op_inuser._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.futex_atomic_op_inuser = private unnamed_addr constant [23 x i8] c"futex_atomic_op_inuser\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"\016futex_wake_op: %s tries to shift op by %d; fix this program\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @futex_wake_mark(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %8, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 9, ptr noundef nonnull @.str.1) #7
  br label %26

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #7, !srcloc !9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #7, !srcloc !10
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !11

18:                                               ; preds = %13
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %18, %13
  %23 = phi i32 [ 2, %13 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #7
  br label %24

24:                                               ; preds = %22, %18
  tail call void @__futex_unqueue(ptr noundef %1) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !12
  %25 = getelementptr inbounds %struct.futex_q, ptr %1, i32 0, i32 2
  store volatile ptr null, ptr %25, align 8
  tail call void @wake_q_add_safe(ptr noundef %0, ptr noundef %4) #7
  br label %26

26:                                               ; preds = %24, %12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_unqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_q_add_safe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_wake(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %union.futex_key, align 8
  %6 = alloca %struct.wake_q_head, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store ptr inttoptr (i32 1 to ptr), ptr %6, align 8
  %7 = getelementptr inbounds %struct.wake_q_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %70, label %9

9:                                                ; preds = %4
  %10 = and i32 %1, 1
  %11 = icmp ne i32 %10, 0
  %12 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %11, ptr noundef nonnull %5, i32 noundef 0) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %70, !prof !8

14:                                               ; preds = %9
  %15 = call ptr @futex_hash(ptr noundef nonnull %5) #7
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %70, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.futex_hash_bucket, ptr %15, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %19) #7
  %20 = getelementptr inbounds %struct.futex_hash_bucket, ptr %15, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %66, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.anon.33, ptr %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.anon.33, ptr %5, i32 0, i32 2
  br label %26

26:                                               ; preds = %63, %23
  %27 = phi ptr [ %21, %23 ], [ %30, %63 ]
  %28 = phi i32 [ 0, %23 ], [ %64, %63 ]
  %29 = getelementptr i8, ptr %27, i32 -12
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr i8, ptr %27, i32 20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %27, i32 28
  %35 = load i32, ptr %34, align 8
  %36 = load i32, ptr %24, align 8
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %33
  %39 = load i64, ptr %31, align 8
  %40 = load i64, ptr %5, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %27, i32 32
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %25, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %27, i32 36
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = getelementptr i8, ptr %27, i32 40
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %27, i32 48
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %3
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  call void @futex_wake_mark(ptr noundef nonnull %6, ptr noundef %29)
  %61 = add i32 %28, 1
  %62 = icmp slt i32 %61, %2
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %55, %42, %38, %33, %26
  %64 = phi i32 [ %61, %60 ], [ %28, %55 ], [ %28, %42 ], [ %28, %38 ], [ %28, %33 ], [ %28, %26 ]
  %65 = icmp eq ptr %30, %20
  br i1 %65, label %66, label %26

66:                                               ; preds = %63, %60, %51, %47, %18
  %67 = phi i32 [ 0, %18 ], [ -22, %47 ], [ -22, %51 ], [ %61, %60 ], [ %64, %63 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %68 = load i16, ptr %19, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %19, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  call void @wake_up_q(ptr noundef nonnull %6) #7
  br label %70

70:                                               ; preds = %66, %14, %9, %4
  %71 = phi i32 [ %67, %66 ], [ -22, %4 ], [ %12, %9 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret i32 %71
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_wake_op(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca [16 x i8], align 1
  %8 = alloca %union.futex_key, align 8
  %9 = alloca %union.futex_key, align 8
  %10 = alloca %struct.wake_q_head, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #7
  store ptr inttoptr (i32 1 to ptr), ptr %10, align 8
  %11 = getelementptr inbounds %struct.wake_q_head, ptr %10, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = and i32 %1, 1
  %13 = icmp ne i32 %12, 0
  %14 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %13, ptr noundef nonnull %8, i32 noundef 0) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %261, !prof !8

16:                                               ; preds = %6
  %17 = lshr i32 %5, 28
  %18 = and i32 %17, 7
  %19 = lshr i32 %5, 24
  %20 = and i32 %19, 15
  %21 = shl i32 %5, 8
  %22 = ashr i32 %21, 20
  %23 = icmp sgt i32 %5, -1
  %24 = icmp ugt i32 %21, 33554431
  %25 = and i32 %22, 31
  br label %29

26:                                               ; preds = %160
  %27 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull %8, i32 noundef 0) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %261, !prof !8

29:                                               ; preds = %26, %16
  %30 = call i32 @get_futex_key(ptr noundef %2, i1 noundef zeroext %13, ptr noundef nonnull %9, i32 noundef 1) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %261, !prof !8

32:                                               ; preds = %29
  %33 = call ptr @futex_hash(ptr noundef nonnull %8) #7
  %34 = call ptr @futex_hash(ptr noundef nonnull %9) #7
  %35 = icmp ugt ptr %33, %34
  %36 = select i1 %35, ptr %33, ptr %34
  %37 = select i1 %35, ptr %34, ptr %33
  %38 = getelementptr inbounds %struct.futex_hash_bucket, ptr %37, i32 0, i32 1
  %39 = icmp eq ptr %37, %36
  %40 = getelementptr inbounds %struct.futex_hash_bucket, ptr %36, i32 0, i32 1
  %41 = getelementptr inbounds %struct.futex_hash_bucket, ptr %33, i32 0, i32 1
  %42 = icmp eq ptr %33, %34
  %43 = getelementptr inbounds %struct.futex_hash_bucket, ptr %34, i32 0, i32 1
  br label %44

44:                                               ; preds = %160, %32
  call void @_raw_spin_lock(ptr noundef %38) #7
  br i1 %39, label %46, label %45

45:                                               ; preds = %44
  call void @_raw_spin_lock(ptr noundef %40) #7
  br label %46

46:                                               ; preds = %45, %44
  br i1 %23, label %59, label %47

47:                                               ; preds = %46
  br i1 %24, label %48, label %56

48:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false) #7, !annotation !18
  %49 = call i32 @___ratelimit(ptr noundef nonnull @futex_atomic_op_inuser._rs, ptr noundef nonnull @__func__.futex_atomic_op_inuser) #7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @llvm.thread.pointer() #7
  %53 = call ptr @__get_task_comm(ptr noundef nonnull %7, i32 noundef 16, ptr noundef %52) #7
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %53, i32 noundef %22) #8
  br label %55

55:                                               ; preds = %51, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %56

56:                                               ; preds = %55, %47
  %57 = phi i32 [ %25, %55 ], [ %22, %47 ]
  %58 = shl nuw i32 1, %57
  br label %59

59:                                               ; preds = %56, %46
  %60 = phi i32 [ %58, %56 ], [ %22, %46 ]
  %61 = tail call ptr @llvm.thread.pointer() #7
  %62 = getelementptr inbounds %struct.task_struct, ptr %61, i32 0, i32 149
  %63 = load i32, ptr %62, align 8
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !19
  %65 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 4, i32 -1090519040) #9, !srcloc !20
  %66 = extractvalue { i32, i32 } %65, 0
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %110

68:                                               ; preds = %59
  switch i32 %18, label %110 [
    i32 0, label %69
    i32 1, label %77
    i32 2, label %85
    i32 3, label %93
    i32 4, label %102
  ]

69:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !21
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !9
  %70 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %71 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %70) #10, !srcloc !22
  %72 = and i32 %71, -13
  %73 = or i32 %72, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %74 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09mov\09$0, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %2, i32 %60, i32 -14) #7, !srcloc !25
  %75 = extractvalue { i32, i32, i32 } %74, 0
  %76 = extractvalue { i32, i32, i32 } %74, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %71) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  br label %110

77:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !26
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !9
  %78 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #10, !srcloc !22
  %80 = and i32 %79, -13
  %81 = or i32 %80, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %82 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09add\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %2, i32 %60, i32 -14) #7, !srcloc !27
  %83 = extractvalue { i32, i32, i32 } %82, 0
  %84 = extractvalue { i32, i32, i32 } %82, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  br label %110

85:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !28
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !9
  %86 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %87 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %86) #10, !srcloc !22
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %90 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09orr\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %2, i32 %60, i32 -14) #7, !srcloc !29
  %91 = extractvalue { i32, i32, i32 } %90, 0
  %92 = extractvalue { i32, i32, i32 } %90, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  br label %110

93:                                               ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !30
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !9
  %94 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %95 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %94) #10, !srcloc !22
  %96 = and i32 %95, -13
  %97 = or i32 %96, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %98 = xor i32 %60, -1
  %99 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09and\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %2, i32 %98, i32 -14) #7, !srcloc !31
  %100 = extractvalue { i32, i32, i32 } %99, 0
  %101 = extractvalue { i32, i32, i32 } %99, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %95) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  br label %110

102:                                              ; preds = %68
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #7, !srcloc !9
  %103 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %104 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %103) #10, !srcloc !22
  %105 = and i32 %104, -13
  %106 = or i32 %105, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %107 = call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$1, [$3]\0A\09eor\09$0, $1, $4\0A2:\09strex\09$2, $0, [$3]\0A\09teq\09$2, #0\0A\09bne\091b\0A\09mov\09$0, #0\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,=&r,r,r,Ir,~{cc},~{memory}"(ptr %2, i32 %60, i32 -14) #7, !srcloc !33
  %108 = extractvalue { i32, i32, i32 } %107, 0
  %109 = extractvalue { i32, i32, i32 } %107, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %104) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  br label %110

110:                                              ; preds = %102, %93, %85, %77, %69, %68, %59
  %111 = phi i32 [ 0, %59 ], [ %109, %102 ], [ %101, %93 ], [ %92, %85 ], [ %84, %77 ], [ %76, %69 ], [ 0, %68 ]
  %112 = phi i32 [ -14, %59 ], [ %108, %102 ], [ %100, %93 ], [ %91, %85 ], [ %83, %77 ], [ %75, %69 ], [ -38, %68 ]
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !34
  %113 = load i32, ptr %62, align 8
  %114 = add i32 %113, -1
  store i32 %114, ptr %62, align 8
  %115 = icmp eq i32 %112, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %110
  switch i32 %20, label %149 [
    i32 0, label %117
    i32 1, label %122
    i32 2, label %127
    i32 5, label %132
    i32 3, label %137
    i32 4, label %142
  ]

117:                                              ; preds = %116
  %118 = shl i32 %5, 20
  %119 = ashr exact i32 %118, 20
  %120 = icmp eq i32 %111, %119
  %121 = zext i1 %120 to i32
  br label %162

122:                                              ; preds = %116
  %123 = shl i32 %5, 20
  %124 = ashr exact i32 %123, 20
  %125 = icmp ne i32 %111, %124
  %126 = zext i1 %125 to i32
  br label %162

127:                                              ; preds = %116
  %128 = shl i32 %5, 20
  %129 = ashr exact i32 %128, 20
  %130 = icmp slt i32 %111, %129
  %131 = zext i1 %130 to i32
  br label %162

132:                                              ; preds = %116
  %133 = shl i32 %5, 20
  %134 = ashr exact i32 %133, 20
  %135 = icmp sge i32 %111, %134
  %136 = zext i1 %135 to i32
  br label %162

137:                                              ; preds = %116
  %138 = shl i32 %5, 20
  %139 = ashr exact i32 %138, 20
  %140 = icmp sle i32 %111, %139
  %141 = zext i1 %140 to i32
  br label %162

142:                                              ; preds = %116
  %143 = shl i32 %5, 20
  %144 = ashr exact i32 %143, 20
  %145 = icmp sgt i32 %111, %144
  %146 = zext i1 %145 to i32
  br label %162

147:                                              ; preds = %110
  %148 = icmp slt i32 %112, 0
  br i1 %148, label %149, label %162, !prof !11

149:                                              ; preds = %147, %116
  %150 = phi i32 [ %112, %147 ], [ -38, %116 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %151 = load i16, ptr %41, align 4
  %152 = add i16 %151, 1
  store i16 %152, ptr %41, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br i1 %42, label %156, label %153

153:                                              ; preds = %149
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %154 = load i16, ptr %43, align 4
  %155 = add i16 %154, 1
  store i16 %155, ptr %43, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %156

156:                                              ; preds = %153, %149
  switch i32 %150, label %261 [
    i32 -14, label %157
    i32 -11, label %160
  ]

157:                                              ; preds = %156
  %158 = call i32 @fault_in_user_writeable(ptr noundef %2) #7
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %261

160:                                              ; preds = %157, %156
  %161 = call i32 @__cond_resched() #7
  br i1 %13, label %26, label %44

162:                                              ; preds = %147, %142, %137, %132, %127, %122, %117
  %163 = phi i32 [ %121, %117 ], [ %126, %122 ], [ %131, %127 ], [ %136, %132 ], [ %141, %137 ], [ %146, %142 ], [ %112, %147 ]
  %164 = getelementptr inbounds %struct.futex_hash_bucket, ptr %33, i32 0, i32 2
  %165 = load ptr, ptr %164, align 8
  %166 = icmp eq ptr %165, %164
  br i1 %166, label %205, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.anon.33, ptr %8, i32 0, i32 1
  %169 = getelementptr inbounds %struct.anon.33, ptr %8, i32 0, i32 2
  br label %170

170:                                              ; preds = %202, %167
  %171 = phi ptr [ %165, %167 ], [ %174, %202 ]
  %172 = phi i32 [ 0, %167 ], [ %203, %202 ]
  %173 = getelementptr i8, ptr %171, i32 -12
  %174 = load ptr, ptr %171, align 4
  %175 = getelementptr i8, ptr %171, i32 20
  %176 = icmp eq ptr %175, null
  br i1 %176, label %202, label %177

177:                                              ; preds = %170
  %178 = getelementptr i8, ptr %171, i32 28
  %179 = load i32, ptr %178, align 8
  %180 = load i32, ptr %168, align 8
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %177
  %183 = load i64, ptr %175, align 8
  %184 = load i64, ptr %8, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %182
  %187 = getelementptr i8, ptr %171, i32 32
  %188 = load i32, ptr %187, align 4
  %189 = load i32, ptr %169, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %186
  %192 = getelementptr i8, ptr %171, i32 36
  %193 = load ptr, ptr %192, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %253

195:                                              ; preds = %191
  %196 = getelementptr i8, ptr %171, i32 40
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %253

199:                                              ; preds = %195
  call void @futex_wake_mark(ptr noundef nonnull %10, ptr noundef %173)
  %200 = add i32 %172, 1
  %201 = icmp slt i32 %200, %3
  br i1 %201, label %202, label %205

202:                                              ; preds = %199, %186, %182, %177, %170
  %203 = phi i32 [ %200, %199 ], [ %172, %186 ], [ %172, %182 ], [ %172, %177 ], [ %172, %170 ]
  %204 = icmp eq ptr %174, %164
  br i1 %204, label %205, label %170

205:                                              ; preds = %202, %199, %162
  %206 = phi i32 [ 0, %162 ], [ %200, %199 ], [ %203, %202 ]
  %207 = icmp sgt i32 %163, 0
  br i1 %207, label %208, label %253

208:                                              ; preds = %205
  %209 = getelementptr inbounds %struct.futex_hash_bucket, ptr %34, i32 0, i32 2
  %210 = load ptr, ptr %209, align 8
  %211 = icmp eq ptr %210, %209
  br i1 %211, label %250, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.anon.33, ptr %9, i32 0, i32 1
  %214 = getelementptr inbounds %struct.anon.33, ptr %9, i32 0, i32 2
  br label %215

215:                                              ; preds = %247, %212
  %216 = phi ptr [ %210, %212 ], [ %219, %247 ]
  %217 = phi i32 [ 0, %212 ], [ %248, %247 ]
  %218 = getelementptr i8, ptr %216, i32 -12
  %219 = load ptr, ptr %216, align 4
  %220 = getelementptr i8, ptr %216, i32 20
  %221 = icmp eq ptr %220, null
  br i1 %221, label %247, label %222

222:                                              ; preds = %215
  %223 = getelementptr i8, ptr %216, i32 28
  %224 = load i32, ptr %223, align 8
  %225 = load i32, ptr %213, align 8
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %247

227:                                              ; preds = %222
  %228 = load i64, ptr %220, align 8
  %229 = load i64, ptr %9, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %247

231:                                              ; preds = %227
  %232 = getelementptr i8, ptr %216, i32 32
  %233 = load i32, ptr %232, align 4
  %234 = load i32, ptr %214, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %247

236:                                              ; preds = %231
  %237 = getelementptr i8, ptr %216, i32 36
  %238 = load ptr, ptr %237, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %253

240:                                              ; preds = %236
  %241 = getelementptr i8, ptr %216, i32 40
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %253

244:                                              ; preds = %240
  call void @futex_wake_mark(ptr noundef nonnull %10, ptr noundef %218)
  %245 = add i32 %217, 1
  %246 = icmp slt i32 %245, %4
  br i1 %246, label %247, label %250

247:                                              ; preds = %244, %231, %227, %222, %215
  %248 = phi i32 [ %245, %244 ], [ %217, %231 ], [ %217, %227 ], [ %217, %222 ], [ %217, %215 ]
  %249 = icmp eq ptr %219, %209
  br i1 %249, label %250, label %215

250:                                              ; preds = %247, %244, %208
  %251 = phi i32 [ 0, %208 ], [ %245, %244 ], [ %248, %247 ]
  %252 = add i32 %251, %206
  br label %253

253:                                              ; preds = %250, %240, %236, %205, %195, %191
  %254 = phi i32 [ %252, %250 ], [ %206, %205 ], [ -22, %240 ], [ -22, %236 ], [ -22, %195 ], [ -22, %191 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %255 = load i16, ptr %41, align 4
  %256 = add i16 %255, 1
  store i16 %256, ptr %41, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br i1 %42, label %260, label %257

257:                                              ; preds = %253
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %258 = load i16, ptr %43, align 4
  %259 = add i16 %258, 1
  store i16 %259, ptr %43, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %260

260:                                              ; preds = %257, %253
  call void @wake_up_q(ptr noundef nonnull %10) #7
  br label %261

261:                                              ; preds = %260, %157, %156, %29, %26, %6
  %262 = phi i32 [ %254, %260 ], [ %14, %6 ], [ %158, %157 ], [ %150, %156 ], [ %27, %26 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  ret i32 %262
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_user_writeable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @futex_wait_queue(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #7
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 1, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !35
  tail call void @__futex_queue(ptr noundef %1, ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %7 = load i16, ptr %6, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  %9 = icmp eq ptr %2, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.plist_node, ptr %1, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %34, label %22, !prof !11

14:                                               ; preds = %3
  tail call void @hrtimer_sleeper_start_expires(ptr noundef nonnull %2, i32 noundef 0) #7
  %15 = getelementptr inbounds %struct.plist_node, ptr %1, i32 0, i32 2
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %34, label %18, !prof !11

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18, %10
  %23 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 1073741824
  store i32 %25, ptr %23, align 4
  tail call void @schedule() #7
  %26 = load i32, ptr %23, align 4
  %27 = and i32 %26, -1073741825
  store i32 %27, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %28 = load volatile i32, ptr @system_freezing_cnt, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30, !prof !8

30:                                               ; preds = %22
  %31 = tail call zeroext i1 @freezing_slow_path(ptr noundef %4) #7
  br i1 %31, label %32, label %34, !prof !11

32:                                               ; preds = %30
  %33 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br label %34

34:                                               ; preds = %32, %30, %22, %18, %14, %10
  store volatile i32 0, ptr %5, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_sleeper_start_expires(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_wait_multiple(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @hrtimer_sleeper_start_expires(ptr noundef nonnull %2, i32 noundef 0) #7
  br label %7

7:                                                ; preds = %6, %3
  %8 = icmp sgt i32 %1, 0
  %9 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %2, i32 0, i32 1
  %10 = icmp eq i32 %1, 0
  br label %11

11:                                               ; preds = %147, %7
  %12 = phi i32 [ 0, %7 ], [ %100, %147 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !18
  br label %13

13:                                               ; preds = %75, %11
  %14 = phi i32 [ %12, %11 ], [ %74, %75 ]
  %15 = phi i1 [ true, %11 ], [ false, %75 ]
  br i1 %8, label %16, label %35

16:                                               ; preds = %32, %13
  %17 = phi i32 [ %33, %32 ], [ 0, %13 ]
  %18 = getelementptr %struct.futex_vector, ptr %0, i32 %17
  %19 = getelementptr inbounds %struct.futex_waitv, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %15, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.futex_waitv, ptr %18, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr %struct.futex_vector, ptr %0, i32 %17, i32 1, i32 3
  %30 = call i32 @get_futex_key(ptr noundef %28, i1 noundef zeroext %22, ptr noundef %29, i32 noundef 0) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %95, !prof !8

32:                                               ; preds = %24, %16
  %33 = add nuw nsw i32 %17, 1
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %16

35:                                               ; preds = %32, %13
  %36 = tail call ptr @llvm.thread.pointer() #7
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 1
  store volatile i32 1, ptr %37, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !37
  br i1 %8, label %38, label %99

38:                                               ; preds = %89, %35
  %39 = phi i32 [ %90, %89 ], [ %14, %35 ]
  %40 = phi i32 [ %91, %89 ], [ 0, %35 ]
  %41 = getelementptr %struct.futex_vector, ptr %0, i32 %40
  %42 = getelementptr inbounds %struct.futex_waitv, ptr %41, i32 0, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr %struct.futex_vector, ptr %0, i32 %40, i32 1
  %47 = load i64, ptr %41, align 8
  %48 = trunc i64 %47 to i32
  %49 = call ptr @futex_q_lock(ptr noundef %46) #7
  %50 = call i32 @futex_get_value_locked(ptr noundef nonnull %4, ptr noundef %45) #7
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr %4, align 4
  %53 = icmp eq i32 %52, %48
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %59

55:                                               ; preds = %38
  call void @__futex_queue(ptr noundef %46, ptr noundef %49) #7
  %56 = getelementptr inbounds %struct.futex_hash_bucket, ptr %49, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  %57 = load i16, ptr %56, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %56, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !17
  br label %89

59:                                               ; preds = %38
  call void @futex_q_unlock(ptr noundef %49) #7
  store volatile i32 0, ptr %37, align 8
  %60 = icmp eq i32 %40, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ %68, %61 ], [ 0, %59 ]
  %63 = phi i32 [ %67, %61 ], [ -1, %59 ]
  %64 = getelementptr %struct.futex_vector, ptr %0, i32 %62, i32 1
  %65 = call i32 @futex_unqueue(ptr noundef %64) #7
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 %62, i32 %63
  %68 = add nuw nsw i32 %62, 1
  %69 = icmp eq i32 %68, %40
  br i1 %69, label %70, label %61

70:                                               ; preds = %61
  %71 = icmp sgt i32 %67, -1
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %97

73:                                               ; preds = %70, %59
  %74 = phi i32 [ %67, %70 ], [ -1, %59 ]
  br i1 %51, label %86, label %75

75:                                               ; preds = %73
  %76 = trunc i64 %43 to i32
  %77 = inttoptr i32 %76 to ptr
  %78 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #10, !srcloc !22
  %80 = and i32 %79, -13
  %81 = or i32 %80, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %82 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %77, i32 -1090519041) #7, !srcloc !38
  %83 = extractvalue { i32, i32 } %82, 0
  %84 = extractvalue { i32, i32 } %82, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  store i32 %84, ptr %4, align 4
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %13, label %93

86:                                               ; preds = %73
  %87 = load i32, ptr %4, align 4
  %88 = icmp eq i32 %87, %48
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %55
  %90 = phi i32 [ %39, %55 ], [ %74, %86 ]
  %91 = add nuw nsw i32 %40, 1
  %92 = icmp eq i32 %91, %1
  br i1 %92, label %99, label %38

93:                                               ; preds = %86, %75
  %94 = phi i32 [ -11, %86 ], [ -14, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %151

95:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %96 = icmp sgt i32 %30, 0
  br i1 %96, label %97, label %151

97:                                               ; preds = %95, %72
  %98 = phi i32 [ %67, %72 ], [ %14, %95 ]
  br label %151

99:                                               ; preds = %89, %35
  %100 = phi i32 [ %90, %89 ], [ %12, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br i1 %5, label %104, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr %9, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %127, label %104

104:                                              ; preds = %101, %99
  br i1 %10, label %115, label %105

105:                                              ; preds = %111, %104
  %106 = phi ptr [ %113, %111 ], [ %0, %104 ]
  %107 = phi i32 [ %112, %111 ], [ %1, %104 ]
  %108 = getelementptr inbounds %struct.futex_vector, ptr %106, i32 0, i32 1, i32 2
  %109 = load volatile ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %127, label %111

111:                                              ; preds = %105
  %112 = add i32 %107, -1
  %113 = getelementptr %struct.futex_vector, ptr %106, i32 1
  %114 = icmp eq i32 %112, 0
  br i1 %114, label %115, label %105

115:                                              ; preds = %111, %104
  %116 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = or i32 %117, 1073741824
  store i32 %118, ptr %116, align 4
  call void @schedule() #7
  %119 = load i32, ptr %116, align 4
  %120 = and i32 %119, -1073741825
  store i32 %120, ptr %116, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !36
  %121 = load volatile i32, ptr @system_freezing_cnt, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %127, label %123, !prof !8

123:                                              ; preds = %115
  %124 = call zeroext i1 @freezing_slow_path(ptr noundef %36) #7
  br i1 %124, label %125, label %127, !prof !11

125:                                              ; preds = %123
  %126 = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #7
  br label %127

127:                                              ; preds = %125, %123, %115, %105, %101
  store volatile i32 0, ptr %37, align 8
  br i1 %8, label %128, label %139

128:                                              ; preds = %128, %127
  %129 = phi i32 [ %135, %128 ], [ 0, %127 ]
  %130 = phi i32 [ %134, %128 ], [ -1, %127 ]
  %131 = getelementptr %struct.futex_vector, ptr %0, i32 %129, i32 1
  %132 = call i32 @futex_unqueue(ptr noundef %131) #7
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, i32 %129, i32 %130
  %135 = add nuw nsw i32 %129, 1
  %136 = icmp eq i32 %135, %1
  br i1 %136, label %137, label %128

137:                                              ; preds = %128
  %138 = icmp sgt i32 %134, -1
  br i1 %138, label %151, label %139

139:                                              ; preds = %137, %127
  br i1 %5, label %143, label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %9, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %140, %139
  %144 = load volatile i32, ptr %36, align 4
  %145 = and i32 %144, 256
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151, !prof !8

147:                                              ; preds = %143
  %148 = load volatile i32, ptr %36, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %11, label %151

151:                                              ; preds = %147, %143, %140, %137, %97, %95, %93
  %152 = phi i32 [ %98, %97 ], [ %30, %95 ], [ %94, %93 ], [ -512, %143 ], [ -512, %147 ], [ -110, %140 ], [ %134, %137 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_wait_setup(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !18
  %7 = and i32 %2, 1
  %8 = icmp ne i32 %7, 0
  %9 = getelementptr inbounds %struct.futex_q, ptr %3, i32 0, i32 3
  %10 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %8, ptr noundef %9, i32 noundef 0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %39, !prof !8

12:                                               ; preds = %30
  %13 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext true, ptr noundef %9, i32 noundef 0) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %39, !prof !8

15:                                               ; preds = %31, %5
  %16 = call ptr @futex_q_lock(ptr noundef %3) #7
  store ptr %16, ptr %4, align 4
  %17 = call i32 @futex_get_value_locked(ptr noundef nonnull %6, ptr noundef %0) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 4
  call void @futex_q_unlock(ptr noundef %20) #7
  %21 = tail call ptr @llvm.thread.pointer() #7
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %22) #10, !srcloc !22
  %24 = and i32 %23, -13
  %25 = or i32 %24, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  %26 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #7, !srcloc !39
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = extractvalue { i32, i32 } %26, 1
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #7, !srcloc !23
  call void asm sideeffect "isb ", "~{memory}"() #7, !srcloc !24
  store i32 %28, ptr %6, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  br i1 %8, label %12, label %31

31:                                               ; preds = %30, %12
  br label %15

32:                                               ; preds = %15
  %33 = load i32, ptr %6, align 4
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 4
  call void @futex_q_unlock(ptr noundef %36) #7
  br label %39

37:                                               ; preds = %19
  %38 = extractvalue { i32, i32 } %26, 0
  br label %39

39:                                               ; preds = %37, %35, %32, %12, %5
  %40 = phi i32 [ -11, %35 ], [ 0, %32 ], [ %10, %5 ], [ %38, %37 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_q_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_q_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_wait(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.hrtimer_sleeper, align 8
  %7 = alloca ptr, align 4
  %8 = alloca %struct.futex_q, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i32 56, i1 false), !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr null, ptr %7, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) @futex_q_init, i32 72, i1 false)
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.futex_q, ptr %8, i32 0, i32 7
  store i32 %4, ptr %11, align 4
  %12 = tail call ptr @llvm.thread.pointer() #7
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 143
  %14 = load i64, ptr %13, align 8
  %15 = call ptr @futex_setup_timer(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %1, i64 noundef %14) #7
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %15, i32 0, i32 1
  br label %18

18:                                               ; preds = %33, %10
  %19 = call i32 @futex_wait_setup(ptr noundef %0, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %7)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 4
  call void @futex_wait_queue(ptr noundef %22, ptr noundef nonnull %8, ptr noundef %15)
  %23 = call i32 @futex_unqueue(ptr noundef nonnull %8) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  br i1 %16, label %29, label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %17, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %26, %25
  %30 = load volatile i32, ptr %12, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37, !prof !8

33:                                               ; preds = %29
  %34 = load volatile i32, ptr %12, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %18, label %37

37:                                               ; preds = %33, %29
  %38 = icmp eq ptr %3, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 51, i32 2
  store ptr %0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 51, i32 2, i32 0, i32 1
  store i32 %2, ptr %41, align 4
  %42 = load i64, ptr %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 51, i32 2, i32 0, i32 4
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 51, i32 2, i32 0, i32 3
  store i32 %4, ptr %44, align 4
  %45 = or i32 %1, 4
  %46 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 51, i32 2, i32 0, i32 2
  store i32 %45, ptr %46, align 8
  %47 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 51, i32 1
  store ptr @futex_wait_restart, ptr %47, align 4
  br label %48

48:                                               ; preds = %39, %37, %21, %18
  %49 = phi i32 [ -516, %39 ], [ -512, %37 ], [ 0, %21 ], [ %19, %18 ]
  br i1 %16, label %53, label %50

50:                                               ; preds = %48, %26
  %51 = phi i32 [ %49, %48 ], [ -110, %26 ]
  %52 = call i32 @hrtimer_cancel(ptr noundef nonnull %15) #7
  br label %53

53:                                               ; preds = %50, %48, %5
  %54 = phi i32 [ -22, %5 ], [ %51, %50 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #7
  ret i32 %54
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_unqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @futex_wait_restart(ptr nocapture noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8, !annotation !18
  %5 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 4
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %2, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %2, %9 ], [ null, %1 ]
  %14 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 1
  store ptr @do_no_restart_syscall, ptr %14, align 4
  %15 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.restart_block, ptr %0, i32 0, i32 2, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @futex_wait(ptr noundef %4, i32 noundef %6, i32 noundef %16, ptr noundef %13, i32 noundef %18)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_no_restart_syscall(ptr noundef) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 539347, i64 2148040913, i64 2148040939, i64 2148040986, i64 2148041008, i64 2148041036, i64 2148041056}
!10 = !{i64 2148105633, i64 2148105665, i64 2148105694, i64 2148105728, i64 2148105759, i64 2148105782}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2150792494}
!13 = !{i64 2150789300}
!14 = !{i64 2149187560}
!15 = !{i64 2149183384}
!16 = !{i64 2149183459, i64 2149183486, i64 2149183533, i64 2149183555, i64 2149183583, i64 2149183603}
!17 = !{i64 2149210563}
!18 = !{!"auto-init"}
!19 = !{i64 2149930128}
!20 = !{i64 2150782681, i64 2150782706}
!21 = !{i64 2150783799}
!22 = !{i64 2423734}
!23 = !{i64 2423931}
!24 = !{i64 2149909210}
!25 = !{i64 2150783327, i64 2150783356, i64 2150783377, i64 2150783409, i64 2150783431, i64 2150783450, i64 2150783837, i64 2150783853, i64 2150783892, i64 2150783913, i64 2150783944, i64 2150783968, i64 2150784009, i64 2150784030, i64 2150784062, i64 2150784079}
!26 = !{i64 2150784742}
!27 = !{i64 2150784266, i64 2150784295, i64 2150784316, i64 2150784348, i64 2150784370, i64 2150784389, i64 2150784780, i64 2150784796, i64 2150784835, i64 2150784856, i64 2150784887, i64 2150784911, i64 2150784952, i64 2150784973, i64 2150785005, i64 2150785022}
!28 = !{i64 2150785685}
!29 = !{i64 2150785209, i64 2150785238, i64 2150785259, i64 2150785291, i64 2150785313, i64 2150785332, i64 2150785723, i64 2150785739, i64 2150785778, i64 2150785799, i64 2150785830, i64 2150785854, i64 2150785895, i64 2150785916, i64 2150785948, i64 2150785965}
!30 = !{i64 2150786629}
!31 = !{i64 2150786152, i64 2150786181, i64 2150786202, i64 2150786234, i64 2150786256, i64 2150786275, i64 2150786667, i64 2150786683, i64 2150786722, i64 2150786743, i64 2150786774, i64 2150786798, i64 2150786839, i64 2150786860, i64 2150786892, i64 2150786909}
!32 = !{i64 2150787572}
!33 = !{i64 2150787096, i64 2150787125, i64 2150787146, i64 2150787178, i64 2150787200, i64 2150787219, i64 2150787610, i64 2150787626, i64 2150787665, i64 2150787686, i64 2150787717, i64 2150787741, i64 2150787782, i64 2150787803, i64 2150787835, i64 2150787852}
!34 = !{i64 2149930335}
!35 = !{i64 2150819101}
!36 = !{i64 2150755238}
!37 = !{i64 2150824795}
!38 = !{i64 2150839788, i64 2150840068, i64 2150840402, i64 2150840736}
!39 = !{i64 2150857225, i64 2150857505, i64 2150857839, i64 2150858173}
