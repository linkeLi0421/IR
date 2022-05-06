; ModuleID = '/llk/IR/kernel/futex/core.c_pt.bc'
source_filename = "../kernel/futex/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic64_t = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.65 = type { i64, i32, i32 }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [48 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.45, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16 }
%struct.llist_node = type { ptr }
%union.anon.16 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.45 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.1 = type { %union.anon.2, i32, i32 }
%union.anon.2 = type { i64 }
%struct.page = type { i32, %union.anon.8, %union.anon.64, %struct.atomic_t }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.anon.71 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.69, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.67 = type { %struct.callback_head }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.69 = type { ptr }
%struct.anon = type { i64, i32, i32 }
%struct.anon.3 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%union.futex_key = type { %struct.anon }
%struct.robust_list_head = type { %struct.robust_list, i32, ptr }
%struct.robust_list = type { ptr }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }

@__futex_data.0 = internal unnamed_addr global ptr null, section ".data..read_mostly", align 8
@__futex_data.1 = internal unnamed_addr global i32 0, section ".data..read_mostly", align 8
@wait_for_owner_exiting.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"kernel/futex/core.c\00", align 1
@wait_for_owner_exiting.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__initcall__kmod_core__239_1141_futex_init1 = internal global ptr @futex_init, section ".initcall1.init", align 4
@get_inode_sequence_number.i_seq = internal global %struct.atomic64_t zeroinitializer, align 8
@get_inode_sequence_number.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@handle_futex_death.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"futex\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_core__239_1141_futex_init1], section "llvm.metadata"

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @futex_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.65, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -559038725
  %5 = getelementptr i32, ptr %0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = getelementptr i32, ptr %0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %4
  %11 = load i32, ptr %0, align 4
  %12 = add i32 %11, %4
  %13 = xor i32 %10, %7
  %14 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 14) #9
  %15 = sub i32 %13, %14
  %16 = xor i32 %15, %12
  %17 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 11) #9
  %18 = sub i32 %16, %17
  %19 = xor i32 %18, %10
  %20 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 25) #9
  %21 = sub i32 %19, %20
  %22 = xor i32 %21, %15
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 16) #9
  %24 = sub i32 %22, %23
  %25 = xor i32 %24, %18
  %26 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 4) #9
  %27 = sub i32 %25, %26
  %28 = xor i32 %27, %21
  %29 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 14) #9
  %30 = sub i32 %28, %29
  %31 = tail call i32 @llvm.fshl.i32(i32 %30, i32 %30, i32 24) #9
  %32 = xor i32 %30, %24
  %33 = sub i32 %32, %31
  %34 = load ptr, ptr @__futex_data.0, align 8
  %35 = load i32, ptr @__futex_data.1, align 8
  %36 = add i32 %35, -1
  %37 = and i32 %33, %36
  %38 = getelementptr %struct.futex_hash_bucket, ptr %34, i32 %37
  ret ptr %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @futex_setup_timer(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %2, 1
  %8 = and i32 %7, 1
  %9 = xor i32 %8, 1
  tail call void @hrtimer_init_sleeper(ptr noundef %1, i32 noundef %9, i32 noundef 0) #9
  %10 = load i64, ptr %0, align 8
  %11 = getelementptr inbounds %struct.hrtimer, ptr %1, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = tail call i64 @ktime_add_safe(i64 noundef %10, i64 noundef %3) #9
  %13 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  store i64 %12, ptr %13, align 8
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi ptr [ %1, %6 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = alloca ptr, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %10 = and i32 %6, 4095
  %11 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = and i32 %6, 3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %197, !prof !9

14:                                               ; preds = %4
  %15 = and i32 %6, -4096
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1090519040) #10, !srcloc !10
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %197, !prof !9

19:                                               ; preds = %14
  br i1 %1, label %20, label %22

20:                                               ; preds = %19
  %21 = icmp eq i32 %3, 0
  br label %26

22:                                               ; preds = %19
  store ptr %9, ptr %2, align 8
  %23 = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 1
  store i32 %15, ptr %23, align 8
  br label %197

24:                                               ; preds = %69
  call void @unlock_page(ptr noundef %54) #9
  %25 = load ptr, ptr %5, align 4
  call fastcc void @put_page(ptr noundef %25)
  br label %122

26:                                               ; preds = %122, %20
  %27 = phi i32 [ 0, %20 ], [ %34, %122 ]
  %28 = call i32 @get_user_pages_fast(i32 noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %5) #9
  %29 = icmp eq i32 %28, -14
  %30 = and i1 %21, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @get_user_pages_fast(i32 noundef %15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %5) #9
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ 1, %31 ], [ %27, %26 ]
  %35 = phi i32 [ %32, %31 ], [ %28, %26 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %197, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !9

43:                                               ; preds = %37
  %44 = add i32 %40, -1
  br label %47

45:                                               ; preds = %37
  %46 = ptrtoint ptr %38 to i32
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = inttoptr i32 %48 to ptr
  store ptr %49, ptr %5, align 4
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1, i32 0, i32 1
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %78, !prof !11

53:                                               ; preds = %47
  call fastcc void @lock_page(ptr noundef %49)
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59, !prof !9

59:                                               ; preds = %53
  %60 = add i32 %56, -1
  br label %63

61:                                               ; preds = %53
  %62 = ptrtoint ptr %54 to i32
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = inttoptr i32 %64 to ptr
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 524288
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load volatile i32, ptr %65, align 4
  %71 = and i32 %70, 1024
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %24

73:                                               ; preds = %69, %63
  %74 = getelementptr inbounds %struct.page, ptr %54, i32 0, i32 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  call void @unlock_page(ptr noundef %54) #9
  %77 = load ptr, ptr %5, align 4
  call fastcc void @put_page(ptr noundef %77)
  br i1 %76, label %197, label %122

78:                                               ; preds = %47
  %79 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83, !prof !9

83:                                               ; preds = %78
  %84 = add i32 %80, -1
  %85 = inttoptr i32 %84 to ptr
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi ptr [ %49, %78 ], [ %85, %83 ]
  %88 = getelementptr inbounds %struct.anon.71, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = inttoptr i32 %48 to ptr
  %95 = icmp eq i32 %34, 0
  br i1 %95, label %96, label %178, !prof !12

96:                                               ; preds = %93
  %97 = load i32, ptr %11, align 4
  %98 = or i32 %97, 2
  store i32 %98, ptr %11, align 4
  store ptr %9, ptr %2, align 8
  %99 = getelementptr inbounds %struct.anon.1, ptr %2, i32 0, i32 1
  store i32 %15, ptr %99, align 8
  br label %178

100:                                              ; preds = %86
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr inbounds %struct.page, ptr %101, i32 0, i32 1, i32 0, i32 1
  %103 = load volatile ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, %51
  br i1 %104, label %124, label %105

105:                                              ; preds = %100
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %106 = load ptr, ptr %5, align 4
  %107 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 1
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !9

111:                                              ; preds = %105
  %112 = add i32 %108, -1
  br label %115

113:                                              ; preds = %105
  %114 = ptrtoint ptr %106 to i32
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = inttoptr i32 %116 to ptr
  %118 = getelementptr inbounds %struct.page, ptr %117, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #9, !srcloc !16
  %119 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #9, !srcloc !17
  %120 = extractvalue { i32, i32 } %119, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %144, %137, %123, %115, %73, %24
  br label %26

123:                                              ; preds = %115
  call void @__put_page(ptr noundef %117) #9
  br label %122

124:                                              ; preds = %100
  %125 = load volatile ptr, ptr %51, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %128 = load ptr, ptr %5, align 4
  %129 = getelementptr inbounds %struct.page, ptr %128, i32 0, i32 1
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133, !prof !9

133:                                              ; preds = %127
  %134 = add i32 %130, -1
  br label %137

135:                                              ; preds = %127
  %136 = ptrtoint ptr %128 to i32
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr inbounds %struct.page, ptr %139, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %140) #9, !srcloc !16
  %141 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %140, ptr %140, i32 1, ptr elementtype(i32) %140) #9, !srcloc !17
  %142 = extractvalue { i32, i32 } %141, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %122

144:                                              ; preds = %137
  call void @__put_page(ptr noundef %139) #9
  br label %122

145:                                              ; preds = %124
  %146 = load i32, ptr %11, align 4
  %147 = or i32 %146, 1
  store i32 %147, ptr %11, align 4
  %148 = getelementptr inbounds %struct.inode, ptr %125, i32 0, i32 34
  %149 = call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %148, ptr elementtype(i64) %148) #9, !srcloc !19
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %172, !prof !11

151:                                              ; preds = %170, %145
  %152 = phi i64 [ %171, %170 ], [ undef, %145 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @get_inode_sequence_number.i_seq) #9, !srcloc !16
  %153 = call { i64, i32 } asm sideeffect "@ atomic64_add_return\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i64) @get_inode_sequence_number.i_seq, ptr nonnull @get_inode_sequence_number.i_seq, i64 1, ptr nonnull elementtype(i64) @get_inode_sequence_number.i_seq) #9, !srcloc !21
  %154 = extractvalue { i64, i32 } %153, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !22
  %155 = icmp eq i64 %154, 0
  %156 = load i1, ptr @get_inode_sequence_number.__already_done, align 1
  %157 = xor i1 %156, true
  %158 = select i1 %155, i1 %157, i1 false
  br i1 %158, label %159, label %160, !prof !11

159:                                              ; preds = %151
  store i1 true, ptr @get_inode_sequence_number.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 183, i32 noundef 9, ptr noundef null) #9
  br label %160

160:                                              ; preds = %159, %151
  br i1 %155, label %170, label %161

161:                                              ; preds = %160
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %148) #9, !srcloc !16
  br label %162

162:                                              ; preds = %162, %161
  %163 = call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %148, ptr %148, i64 0, i64 %154, ptr elementtype(i64) %148) #9, !srcloc !23
  %164 = extractvalue { i32, i64 } %163, 0
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %162

166:                                              ; preds = %162
  %167 = extractvalue { i32, i64 } %163, 1
  %168 = icmp eq i64 %167, 0
  %169 = select i1 %168, i64 %154, i64 %167
  br label %170

170:                                              ; preds = %166, %160
  %171 = phi i64 [ %152, %160 ], [ %169, %166 ]
  br i1 %155, label %151, label %172

172:                                              ; preds = %170, %145
  %173 = phi i64 [ %149, %145 ], [ %171, %170 ]
  store i64 %173, ptr %2, align 8
  %174 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i32 %175, ptr %176, align 8
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  %177 = load ptr, ptr %5, align 4
  br label %178

178:                                              ; preds = %172, %96, %93
  %179 = phi ptr [ %94, %96 ], [ %94, %93 ], [ %177, %172 ]
  %180 = phi i32 [ 0, %96 ], [ -14, %93 ], [ 0, %172 ]
  %181 = getelementptr inbounds %struct.page, ptr %179, i32 0, i32 1
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185, !prof !9

185:                                              ; preds = %178
  %186 = add i32 %182, -1
  br label %189

187:                                              ; preds = %178
  %188 = ptrtoint ptr %179 to i32
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = inttoptr i32 %190 to ptr
  %192 = getelementptr inbounds %struct.page, ptr %191, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %192) #9, !srcloc !16
  %193 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %192, ptr %192, i32 1, ptr elementtype(i32) %192) #9, !srcloc !17
  %194 = extractvalue { i32, i32 } %193, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  call void @__put_page(ptr noundef %191) #9
  br label %197

197:                                              ; preds = %196, %189, %73, %33, %22, %14, %4
  %198 = phi i32 [ 0, %22 ], [ -22, %4 ], [ -14, %14 ], [ %180, %189 ], [ %180, %196 ], [ %35, %33 ], [ -14, %73 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret i32 %198
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !16
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #9, !srcloc !24
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !25
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10
  tail call void @__folio_lock(ptr noundef %12) #9
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !9

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #9, !srcloc !16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #9, !srcloc !17
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #9
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fault_in_user_writeable(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @llvm.thread.pointer() #9
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 37
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %4, i1 noundef zeroext false) #9
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 15
  tail call void @down_read(ptr noundef %9) #9
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %4, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %13

13:                                               ; preds = %12, %8
  %14 = ptrtoint ptr %0 to i32
  %15 = tail call i32 @fixup_user_fault(ptr noundef %4, i32 noundef %14, i32 noundef 1, ptr noundef null) #9
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @__mmap_lock_do_trace_released(ptr noundef %4, i1 noundef zeroext false) #9
  br label %19

19:                                               ; preds = %18, %13
  tail call void @up_read(ptr noundef %9) #9
  %20 = tail call i32 @llvm.smin.i32(i32 %15, i32 0)
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_user_fault(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @futex_top_waiter(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 2
  %4 = icmp ne ptr %1, null
  %5 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon.65, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %30, %2
  %8 = phi ptr [ %3, %2 ], [ %9, %30 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %3
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 20
  %13 = icmp ne ptr %12, null
  %14 = and i1 %4, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 28
  %17 = load i32, ptr %16, align 8
  %18 = load i32, ptr %5, align 8
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i64, ptr %12, align 8
  %22 = load i64, ptr %1, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %9, i32 32
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %20, %15, %11
  %31 = phi i32 [ 0, %20 ], [ 0, %15 ], [ 0, %11 ], [ %29, %24 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %7, label %33

33:                                               ; preds = %30
  %34 = getelementptr i8, ptr %9, i32 -12
  br label %35

35:                                               ; preds = %33, %7
  %36 = phi ptr [ %34, %33 ], [ null, %7 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_cmpxchg_value_locked(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call ptr @llvm.thread.pointer() #9
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 149
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1090519040) #10, !srcloc !27
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #9, !srcloc !16
  %13 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #11, !srcloc !29
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %17 = tail call { i32, i32 } asm sideeffect "@futex_atomic_cmpxchg_inatomic\0A1:\09ldrex\09$1, [$4]\0A\09teq\09$1, $2\0A\09ite\09eq\09@ explicit IT needed for the 2b label\0A2:\09strexeq\09$0, $3, [$4]\0A\09movne\09$0, #0\0A\09teq\09$0, #0\0A\09bne\091b\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,r,r,r,Ir,~{cc},~{memory}"(i32 %2, i32 %3, ptr %1, i32 -14) #9, !srcloc !32
  %18 = extractvalue { i32, i32 } %17, 0
  %19 = extractvalue { i32, i32 } %17, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  store i32 %19, ptr %0, align 4
  br label %20

20:                                               ; preds = %12, %4
  %21 = phi i32 [ %18, %12 ], [ -14, %4 ]
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %22 = load i32, ptr %6, align 8
  %23 = add i32 %22, -1
  store i32 %23, ptr %6, align 8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_get_value_locked(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @llvm.thread.pointer() #9
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 149
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %7 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %7) #11, !srcloc !29
  %9 = and i32 %8, -13
  %10 = or i32 %9, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %11 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %1, i32 -1090519041) #9, !srcloc !35
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = extractvalue { i32, i32 } %11, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  store i32 %13, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %14 = load i32, ptr %4, align 8
  %15 = add i32 %14, -1
  store i32 %15, ptr %4, align 8
  %16 = icmp eq i32 %12, 0
  %17 = select i1 %16, i32 0, i32 -14
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_for_owner_exiting(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, -16
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp ne ptr %1, null
  %6 = load i1, ptr @wait_for_owner_exiting.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %27, !prof !11

9:                                                ; preds = %4
  store i1 true, ptr @wait_for_owner_exiting.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 9, ptr noundef null) #9
  br label %27

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  %12 = load i1, ptr @wait_for_owner_exiting.__already_done.1, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !11

15:                                               ; preds = %10
  store i1 true, ptr @wait_for_owner_exiting.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 476, i32 noundef 9, ptr noundef null) #9
  br label %16

16:                                               ; preds = %15, %10
  br i1 %11, label %27, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 128
  tail call void @mutex_lock(ptr noundef %18) #9
  tail call void @mutex_unlock(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #9, !srcloc !16
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #9, !srcloc !37
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = icmp sgt i32 %21, 0
  br i1 %24, label %27, label %25, !prof !9

25:                                               ; preds = %23
  tail call void @refcount_warn_saturate(ptr noundef %19, i32 noundef 3) #9
  br label %27

26:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void @__put_task_struct(ptr noundef nonnull %1) #9
  br label %27

27:                                               ; preds = %26, %25, %23, %16, %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__futex_unqueue(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #9
  br label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #9
  br label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %3, i32 -4
  %13 = getelementptr i8, ptr %3, i32 4
  tail call void @plist_del(ptr noundef %0, ptr noundef %13) #9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #9, !srcloc !39
  br label %15

15:                                               ; preds = %11, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @futex_q_lock(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 3, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -559038725
  %6 = getelementptr %struct.futex_q, ptr %0, i32 0, i32 3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = getelementptr i32, ptr %2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %5
  %12 = load i32, ptr %2, align 4
  %13 = add i32 %12, %5
  %14 = xor i32 %11, %8
  %15 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 14) #9
  %16 = sub i32 %14, %15
  %17 = xor i32 %16, %13
  %18 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 11) #9
  %19 = sub i32 %17, %18
  %20 = xor i32 %19, %11
  %21 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 25) #9
  %22 = sub i32 %20, %21
  %23 = xor i32 %22, %16
  %24 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 16) #9
  %25 = sub i32 %23, %24
  %26 = xor i32 %25, %19
  %27 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 4) #9
  %28 = sub i32 %26, %27
  %29 = xor i32 %28, %22
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 14) #9
  %31 = sub i32 %29, %30
  %32 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 24) #9
  %33 = xor i32 %31, %25
  %34 = sub i32 %33, %32
  %35 = load ptr, ptr @__futex_data.0, align 8
  %36 = load i32, ptr @__futex_data.1, align 8
  %37 = add i32 %36, -1
  %38 = and i32 %34, %37
  %39 = getelementptr %struct.futex_hash_bucket, ptr %35, i32 %38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #9, !srcloc !16
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #9, !srcloc !40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !41
  %41 = getelementptr %struct.futex_hash_bucket, ptr %35, i32 %38, i32 1
  %42 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 2
  store ptr %41, ptr %42, align 8
  tail call void @_raw_spin_lock(ptr noundef %41) #9
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @futex_q_unlock(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.futex_hash_bucket, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %3 = load i16, ptr %2, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #9, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__futex_queue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @llvm.thread.pointer() #9
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 100)
  store i32 %6, ptr %0, align 4
  %7 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.futex_hash_bucket, ptr %1, i32 0, i32 2
  tail call void @plist_add(ptr noundef %0, ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_unqueue(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %12, %9 ], [ %3, %1 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull %6) #9
  %7 = load ptr, ptr %2, align 8
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %14, label %9, !prof !9

9:                                                ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %10 = load i16, ptr %6, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  %12 = load volatile ptr, ptr %2, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %5

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %18, label %19, !prof !11

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #9
  br label %23

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %6, i32 -4
  %21 = getelementptr i8, ptr %6, i32 4
  tail call void @plist_del(ptr noundef %0, ptr noundef %21) #9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #9, !srcloc !16
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #9, !srcloc !39
  br label %23

23:                                               ; preds = %19, %18
  %24 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 607, 0\0A.popsection", ""() #9, !srcloc !46
  unreachable

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %29 = load i16, ptr %6, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  br label %31

31:                                               ; preds = %28, %9, %1
  %32 = phi i32 [ 1, %28 ], [ 0, %1 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @futex_unqueue_pi(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #9
  br label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 9, ptr noundef null) #9
  br label %15

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %3, i32 -4
  %13 = getelementptr i8, ptr %3, i32 4
  tail call void @plist_del(ptr noundef %0, ptr noundef %13) #9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #9, !srcloc !39
  br label %15

15:                                               ; preds = %11, %10, %5
  %16 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !11

19:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #9, !srcloc !47
  unreachable

20:                                               ; preds = %15
  tail call void @put_pi_state(ptr noundef nonnull %17) #9
  store ptr null, ptr %16, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pi_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @futex_exit_recursive(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 129
  %3 = load i32, ptr %2, align 32
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 128
  tail call void @mutex_unlock(ptr noundef %6) #9
  br label %7

7:                                                ; preds = %5, %1
  store i32 2, ptr %2, align 32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @futex_exec_release(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 128
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 129
  store i32 1, ptr %4, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !48
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 125
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %1
  tail call fastcc void @exit_robust_list(ptr noundef %0) #9
  store ptr null, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 126
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15, !prof !9

15:                                               ; preds = %11
  tail call fastcc void @exit_pi_state_list(ptr noundef %0) #9
  br label %16

16:                                               ; preds = %15, %11
  store i32 0, ptr %4, align 32
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @futex_exit_release(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 128
  tail call void @mutex_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 129
  store i32 1, ptr %4, align 32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !48
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 125
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %1
  tail call fastcc void @exit_robust_list(ptr noundef %0) #9
  store ptr null, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 126
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15, !prof !9

15:                                               ; preds = %11
  tail call fastcc void @exit_pi_state_list(ptr noundef %0) #9
  br label %16

16:                                               ; preds = %15, %11
  store i32 2, ptr %4, align 32
  tail call void @mutex_unlock(ptr noundef %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @futex_init() #6 section ".init.text" {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #9
  store i32 0, ptr %1, align 4, !annotation !8
  %2 = load i32, ptr @__cpu_possible_mask, align 4
  %3 = and i32 %2, 65535
  %4 = tail call i32 @__sw_hweight32(i32 noundef %3) #9
  %5 = shl i32 %4, 8
  %6 = add i32 %5, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 true) #9, !range !50
  %8 = sub nuw nsw i32 32, %7
  %9 = shl nuw i32 1, %8
  store i32 %9, ptr @__futex_data.1, align 8
  %10 = call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.2, i32 noundef 64, i32 noundef %9, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef null, i32 noundef %9, i32 noundef %9) #9
  store ptr %10, ptr @__futex_data.0, align 8
  %11 = load i32, ptr %1, align 4
  %12 = shl nuw i32 1, %11
  store i32 %12, ptr @__futex_data.1, align 8
  br label %13

13:                                               ; preds = %13, %0
  %14 = phi i32 [ 0, %0 ], [ %19, %13 ]
  %15 = getelementptr %struct.futex_hash_bucket, ptr %10, i32 %14
  store volatile i32 0, ptr %15, align 4
  %16 = getelementptr %struct.futex_hash_bucket, ptr %10, i32 %14, i32 2
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr %struct.futex_hash_bucket, ptr %10, i32 %14, i32 1
  store i32 0, ptr %18, align 4
  %19 = add nuw i32 %14, 1
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %21, label %13

21:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init_sleeper(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_add_safe(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exit_robust_list(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 125
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #9
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %5) #11, !srcloc !29
  %7 = and i32 %6, -13
  %8 = or i32 %7, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %9 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %3, i32 -1090519041) #9, !srcloc !51
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %81

12:                                               ; preds = %1
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = and i32 %13, -2
  %15 = inttoptr i32 %14 to ptr
  %16 = and i32 %13, 1
  %17 = getelementptr inbounds %struct.robust_list_head, ptr %3, i32 0, i32 1
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %5) #11, !srcloc !29
  %19 = and i32 %18, -13
  %20 = or i32 %19, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %21 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %17, i32 -1090519041) #9, !srcloc !52
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.robust_list_head, ptr %3, i32 0, i32 2
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %5) #11, !srcloc !29
  %28 = and i32 %27, -13
  %29 = or i32 %28, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %30 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %26, i32 -1090519041) #9, !srcloc !51
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %25
  %34 = extractvalue { i32, i32 } %30, 1
  %35 = and i32 %34, -2
  %36 = inttoptr i32 %35 to ptr
  %37 = and i32 %34, 1
  %38 = icmp eq ptr %3, %15
  br i1 %38, label %75, label %39

39:                                               ; preds = %72, %33
  %40 = phi i32 [ %70, %72 ], [ 2048, %33 ]
  %41 = phi i32 [ %68, %72 ], [ 0, %33 ]
  %42 = phi i32 [ %68, %72 ], [ %16, %33 ]
  %43 = phi ptr [ %69, %72 ], [ null, %33 ]
  %44 = phi ptr [ %69, %72 ], [ %15, %33 ]
  %45 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %5) #11, !srcloc !29
  %46 = and i32 %45, -13
  %47 = or i32 %46, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %48 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %44, i32 -1090519041) #9, !srcloc !51
  %49 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %45) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = extractvalue { i32, i32 } %48, 1
  %53 = and i32 %52, -2
  %54 = inttoptr i32 %53 to ptr
  %55 = and i32 %52, 1
  %56 = icmp eq ptr %44, %36
  br i1 %56, label %67, label %59

57:                                               ; preds = %39
  %58 = icmp eq ptr %44, %36
  br i1 %58, label %81, label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ %41, %57 ], [ %55, %51 ]
  %61 = phi ptr [ %43, %57 ], [ %54, %51 ]
  %62 = getelementptr i8, ptr %44, i32 %23
  %63 = icmp ne i32 %42, 0
  %64 = tail call fastcc i32 @handle_futex_death(ptr noundef %62, ptr noundef %0, i1 noundef zeroext %63, i1 noundef zeroext false)
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i1 %50, i1 false
  br i1 %66, label %67, label %81

67:                                               ; preds = %59, %51
  %68 = phi i32 [ %60, %59 ], [ %55, %51 ]
  %69 = phi ptr [ %61, %59 ], [ %54, %51 ]
  %70 = add nsw i32 %40, -1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = tail call i32 @__cond_resched() #9
  %74 = icmp eq ptr %69, %3
  br i1 %74, label %75, label %39

75:                                               ; preds = %72, %67, %33
  %76 = icmp eq i32 %35, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = getelementptr i8, ptr %36, i32 %23
  %79 = icmp ne i32 %37, 0
  %80 = tail call fastcc i32 @handle_futex_death(ptr noundef %78, ptr noundef %0, i1 noundef zeroext %79, i1 noundef zeroext true)
  br label %81

81:                                               ; preds = %77, %75, %59, %57, %25, %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @exit_pi_state_list(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 126
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  %4 = load volatile ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %105, label %6

6:                                                ; preds = %71, %1
  %7 = phi ptr [ %72, %71 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds i8, ptr %8, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 4, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 4, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -559038725
  %17 = add i32 %16, %13
  %18 = add i32 %16, %11
  %19 = add i32 %16, %9
  %20 = xor i32 %18, %17
  %21 = tail call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 14) #9
  %22 = sub i32 %20, %21
  %23 = xor i32 %22, %19
  %24 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 11) #9
  %25 = sub i32 %23, %24
  %26 = xor i32 %25, %18
  %27 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 25) #9
  %28 = sub i32 %26, %27
  %29 = xor i32 %28, %22
  %30 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 16) #9
  %31 = sub i32 %29, %30
  %32 = xor i32 %31, %25
  %33 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 4) #9
  %34 = sub i32 %32, %33
  %35 = xor i32 %34, %28
  %36 = tail call i32 @llvm.fshl.i32(i32 %34, i32 %34, i32 14) #9
  %37 = sub i32 %35, %36
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 24) #9
  %39 = xor i32 %37, %31
  %40 = sub i32 %39, %38
  %41 = load ptr, ptr @__futex_data.0, align 8
  %42 = load i32, ptr @__futex_data.1, align 8
  %43 = add i32 %42, -1
  %44 = and i32 %40, %43
  %45 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 3
  %46 = load volatile i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %58, %6
  %49 = phi i32 [ %56, %58 ], [ %46, %6 ]
  %50 = add i32 %49, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #9, !srcloc !16
  br label %51

51:                                               ; preds = %51, %48
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 %49, i32 %50, ptr elementtype(i32) %45) #9, !srcloc !53
  %53 = extractvalue { i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %51

55:                                               ; preds = %51
  %56 = extractvalue { i32, i32 } %52, 1
  %57 = icmp eq i32 %56, %49
  br i1 %57, label %60, label %58, !prof !9

58:                                               ; preds = %55
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %60, label %48

60:                                               ; preds = %58, %55, %6
  %61 = phi i32 [ 0, %6 ], [ 0, %58 ], [ %49, %55 ]
  %62 = add i32 %61, 1
  %63 = or i32 %62, %61
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %66, label %65, !prof !9

65:                                               ; preds = %60
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 0) #9
  br label %66

66:                                               ; preds = %65, %60
  %67 = icmp eq i32 %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9
  %68 = load i16, ptr %3, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9
  tail call void asm sideeffect "", "~{memory}"() #9
  br i1 %67, label %70, label %74

70:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !55
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  br label %71

71:                                               ; preds = %94, %79, %70
  %72 = load volatile ptr, ptr %2, align 4
  %73 = icmp eq ptr %72, %2
  br i1 %73, label %105, label %6

74:                                               ; preds = %66
  %75 = getelementptr %struct.futex_hash_bucket, ptr %41, i32 %44, i32 1
  tail call void @_raw_spin_lock(ptr noundef %75) #9
  %76 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %76) #9
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %77 = load ptr, ptr %2, align 4
  %78 = icmp eq ptr %77, %7
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %80 = load i16, ptr %76, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %82 = load i16, ptr %75, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  tail call void @put_pi_state(ptr noundef %7) #9
  br label %71

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.futex_pi_state, ptr %7, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %89, label %88, !prof !9

88:                                               ; preds = %84
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 987, i32 noundef 9, ptr noundef null) #9
  br label %89

89:                                               ; preds = %88, %84
  %90 = load volatile ptr, ptr %7, align 4
  %91 = icmp eq ptr %90, %7
  br i1 %91, label %92, label %94, !prof !11

92:                                               ; preds = %89
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 988, i32 noundef 9, ptr noundef null) #9
  %93 = load ptr, ptr %7, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = phi ptr [ %93, %92 ], [ %90, %89 ]
  %96 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %97, ptr %98, align 4
  store volatile ptr %95, ptr %97, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %96, align 4
  store ptr null, ptr %85, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %99 = load i16, ptr %3, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %101 = load i16, ptr %76, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !48
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %103 = load i16, ptr %75, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %75, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !45
  tail call void @rt_mutex_futex_unlock(ptr noundef %76) #9
  tail call void @put_pi_state(ptr noundef %7) #9
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #9
  br label %71

105:                                              ; preds = %71, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !42
  %106 = load i16, ptr %3, align 4
  %107 = add i16 %106, 1
  store i16 %107, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !43
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !44
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !48
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_futex_death(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #2 {
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %4
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #11, !srcloc !29
  %12 = and i32 %11, -13
  %13 = or i32 %12, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %14 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #9, !srcloc !56
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %8
  %18 = xor i1 %3, true
  %19 = or i1 %18, %2
  %20 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 149
  br label %21

21:                                               ; preds = %56, %17
  %22 = phi { i32, i32 } [ %14, %17 ], [ %60, %56 ]
  %23 = extractvalue { i32, i32 } %22, 1
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %19, i1 true, i1 %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @futex_wake(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -1) #9
  br label %75

28:                                               ; preds = %21
  %29 = and i32 %23, 1073741823
  %30 = tail call i32 @__task_pid_nr_ns(ptr noundef %1, i32 noundef 0, ptr noundef null) #9
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %28
  %33 = and i32 %23, -2147483648
  %34 = load i32, ptr %20, align 8
  %35 = add i32 %34, 1
  store i32 %35, ptr %20, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !26
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 4, i32 -1090519040) #10, !srcloc !27
  %37 = extractvalue { i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %40 = load i32, ptr %20, align 8
  %41 = add i32 %40, -1
  store i32 %41, ptr %20, align 8
  br label %51

42:                                               ; preds = %32
  %43 = or i32 %33, 1073741824
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #9, !srcloc !16
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #11, !srcloc !29
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %47 = tail call { i32, i32 } asm sideeffect "@futex_atomic_cmpxchg_inatomic\0A1:\09ldrex\09$1, [$4]\0A\09teq\09$1, $2\0A\09ite\09eq\09@ explicit IT needed for the 2b label\0A2:\09strexeq\09$0, $3, [$4]\0A\09movne\09$0, #0\0A\09teq\09$0, #0\0A\09bne\091b\0A3:\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4f, 2b, 4f\0A\09.popsection\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $5\0A\09b\093b\0A\09.popsection", "=&r,=&r,r,r,r,Ir,~{cc},~{memory}"(i32 %23, i32 %43, ptr %0, i32 -14) #9, !srcloc !32
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %49 = load i32, ptr %20, align 8
  %50 = add i32 %49, -1
  store i32 %50, ptr %20, align 8
  switch i32 %48, label %63 [
    i32 0, label %67
    i32 -14, label %51
    i32 -11, label %54
  ]

51:                                               ; preds = %42, %39
  %52 = tail call i32 @fault_in_user_writeable(ptr noundef %0)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %75

54:                                               ; preds = %42
  %55 = tail call i32 @__cond_resched() #9
  br label %56

56:                                               ; preds = %67, %54, %51
  %57 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %10) #11, !srcloc !29
  %58 = and i32 %57, -13
  %59 = or i32 %58, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %60 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #9, !srcloc !56
  %61 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #9, !srcloc !30
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !31
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %21, label %75

63:                                               ; preds = %42
  %64 = extractvalue { i32, i32 } %47, 0
  %65 = load i1, ptr @handle_futex_death.__already_done, align 1
  br i1 %65, label %75, label %66, !prof !9

66:                                               ; preds = %63
  store i1 true, ptr @handle_futex_death.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 723, i32 noundef 9, ptr noundef null) #9
  br label %75

67:                                               ; preds = %42
  %68 = extractvalue { i32, i32 } %47, 1
  %69 = icmp eq i32 %68, %23
  br i1 %69, label %70, label %56

70:                                               ; preds = %67
  %71 = icmp eq i32 %33, 0
  %72 = select i1 %2, i1 true, i1 %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @futex_wake(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef -1) #9
  br label %75

75:                                               ; preds = %73, %70, %66, %63, %56, %51, %28, %26, %8, %4
  %76 = phi i32 [ 0, %26 ], [ -1, %4 ], [ %64, %66 ], [ %64, %63 ], [ 0, %73 ], [ 0, %70 ], [ -1, %8 ], [ -1, %56 ], [ 0, %28 ], [ -1, %51 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wake(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_futex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2152710367, i64 2152710392}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 2002}
!13 = !{i64 2149124471}
!14 = !{i64 2149124688}
!15 = !{i64 2148065735}
!16 = !{i64 463694, i64 2147953665, i64 2147953691, i64 2147953738, i64 2147953760, i64 2147953788, i64 2147953808}
!17 = !{i64 2147968121, i64 2147968153, i64 2147968182, i64 2147968216, i64 2147968247, i64 2147968270}
!18 = !{i64 2148065938}
!19 = !{i64 453308, i64 453329}
!20 = !{i64 2148102338}
!21 = !{i64 2147977063, i64 2147977097, i64 2147977131, i64 2147977165, i64 2147977199, i64 2147977235, i64 2147977258}
!22 = !{i64 2148102543}
!23 = !{i64 456923, i64 456949, i64 456977, i64 456995, i64 457013, i64 457035}
!24 = !{i64 2147973542, i64 2147973574, i64 2147973603, i64 2147973637, i64 2147973668, i64 2147973691}
!25 = !{i64 2148074858}
!26 = !{i64 2151092369}
!27 = !{i64 2152669653, i64 2152669678}
!28 = !{i64 2152670223}
!29 = !{i64 3585975}
!30 = !{i64 3586172}
!31 = !{i64 2151071451}
!32 = !{i64 5182742, i64 5182779, i64 5182802, i64 5182819, i64 5182870, i64 5182899, i64 5182918, i64 5182935, i64 2152670261, i64 2152670277, i64 2152670316, i64 2152670337, i64 2152670368, i64 2152670392, i64 2152670433, i64 2152670454, i64 2152670486, i64 2152670503}
!33 = !{i64 2152670614}
!34 = !{i64 2151092576}
!35 = !{i64 2152731766, i64 2152732046, i64 2152732380, i64 2152732714}
!36 = !{i64 2148066736}
!37 = !{i64 2147968895, i64 2147968927, i64 2147968956, i64 2147968990, i64 2147969021, i64 2147969044}
!38 = !{i64 2149161372}
!39 = !{i64 2147967437, i64 2147967463, i64 2147967492, i64 2147967526, i64 2147967557, i64 2147967580}
!40 = !{i64 2147965080, i64 2147965106, i64 2147965135, i64 2147965169, i64 2147965200, i64 2147965223}
!41 = !{i64 2152677093}
!42 = !{i64 2148932604}
!43 = !{i64 2148928428}
!44 = !{i64 2148928503, i64 2148928530, i64 2148928577, i64 2148928599, i64 2148928627, i64 2148928647}
!45 = !{i64 2148955607}
!46 = !{i64 2152748514, i64 2152748998, i64 2152748551, i64 2152748607, i64 2152748641, i64 2152748665, i64 2152748706, i64 2152748727, i64 2152748755, i64 2152748789}
!47 = !{i64 2152749530, i64 2152750014, i64 2152749567, i64 2152749623, i64 2152749657, i64 2152749681, i64 2152749722, i64 2152749743, i64 2152749771, i64 2152749805}
!48 = !{i64 359178}
!49 = !{i64 2148956748}
!50 = !{i32 0, i32 33}
!51 = !{i64 2152771971, i64 2152772251, i64 2152772585, i64 2152772919}
!52 = !{i64 2152784027, i64 2152784307, i64 2152784641, i64 2152784975}
!53 = !{i64 449757, i64 449781, i64 449802, i64 449819, i64 449836}
!54 = !{i64 2152789381}
!55 = !{i64 2152789223}
!56 = !{i64 2152758623, i64 2152758903, i64 2152759237, i64 2152759571}
