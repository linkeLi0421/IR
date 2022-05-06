; ModuleID = '/llk/IR/kernel/sched/cpupri.c_pt.bc'
source_filename = "../kernel/sched/cpupri.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.116, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.116 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpupri_find(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %5 = load i32, ptr %4, align 16
  switch i32 %5, label %6 [
    i32 -1, label %34
    i32 99, label %34
    i32 100, label %9
  ]

6:                                                ; preds = %3
  %7 = tail call i32 @llvm.usub.sat.i32(i32 99, i32 %5) #5
  %8 = icmp ugt i32 %5, 98
  br i1 %8, label %34, label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %7, %6 ], [ %5, %3 ]
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29
  %12 = icmp eq ptr %2, null
  br label %13

13:                                               ; preds = %31, %9
  %14 = phi i32 [ 0, %9 ], [ %32, %31 ]
  %15 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  br i1 %17, label %31, label %18

18:                                               ; preds = %13
  %19 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %14, i32 1
  %20 = load i32, ptr %11, align 4
  %21 = load i32, ptr %19, align 4
  %22 = and i32 %20, 65535
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  %25 = tail call i32 @llvm.cttz.i32(i32 %23, i1 true) #5, !range !9
  %26 = select i1 %24, i32 16, i32 %25
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  br i1 %12, label %34, label %30

30:                                               ; preds = %29
  store i32 %23, ptr %2, align 4
  br i1 %24, label %31, label %34

31:                                               ; preds = %30, %18, %13
  %32 = add nuw nsw i32 %14, 1
  %33 = icmp eq i32 %32, %10
  br i1 %33, label %34, label %13

34:                                               ; preds = %31, %30, %29, %6, %3, %3
  %35 = phi i32 [ 0, %6 ], [ 0, %3 ], [ 0, %3 ], [ 1, %30 ], [ 1, %29 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpupri_find_fitness(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %6 = load i32, ptr %5, align 16
  switch i32 %6, label %7 [
    i32 -1, label %55
    i32 99, label %55
    i32 100, label %10
  ]

7:                                                ; preds = %4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 99, i32 %6) #5
  %9 = icmp ugt i32 %6, 98
  br i1 %9, label %55, label %10

10:                                               ; preds = %7, %4
  %11 = phi i32 [ %8, %7 ], [ %6, %4 ]
  %12 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29
  %13 = icmp eq ptr %2, null
  %14 = icmp eq ptr %3, null
  br label %15

15:                                               ; preds = %52, %10
  %16 = phi i32 [ 0, %10 ], [ %53, %52 ]
  %17 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  br i1 %19, label %52, label %20

20:                                               ; preds = %15
  %21 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %16, i32 1
  %22 = load i32, ptr %12, align 4
  %23 = load i32, ptr %21, align 4
  %24 = and i32 %22, 65535
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  %27 = tail call i32 @llvm.cttz.i32(i32 %25, i1 true) #5, !range !9
  %28 = select i1 %26, i32 16, i32 %27
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %20
  br i1 %13, label %87, label %32

32:                                               ; preds = %31
  store i32 %25, ptr %2, align 4
  br i1 %26, label %52, label %33

33:                                               ; preds = %32
  br i1 %14, label %87, label %34

34:                                               ; preds = %33
  %35 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull %2) #6
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %42, %34
  %39 = phi i32 [ %43, %42 ], [ %35, %34 ]
  %40 = tail call zeroext i1 %3(ptr noundef %1, i32 noundef %39) #5
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @_clear_bit(i32 noundef %39, ptr noundef nonnull %2) #5
  br label %42

42:                                               ; preds = %41, %38
  %43 = tail call i32 @cpumask_next(i32 noundef %39, ptr noundef nonnull %2) #6
  %44 = load i32, ptr @nr_cpu_ids, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %38, label %46

46:                                               ; preds = %42
  %47 = load i32, ptr %2, align 4
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi i32 [ %47, %46 ], [ %25, %34 ]
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %48, %32, %20, %15
  %53 = add nuw nsw i32 %16, 1
  %54 = icmp eq i32 %53, %11
  br i1 %54, label %55, label %15

55:                                               ; preds = %52, %7, %4, %4
  %56 = icmp eq ptr %3, null
  br i1 %56, label %87, label %57

57:                                               ; preds = %55
  %58 = load i32, ptr %5, align 16
  switch i32 %58, label %59 [
    i32 -1, label %87
    i32 99, label %87
    i32 100, label %62
  ]

59:                                               ; preds = %57
  %60 = tail call i32 @llvm.usub.sat.i32(i32 99, i32 %58) #5
  %61 = icmp ugt i32 %58, 98
  br i1 %61, label %87, label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %60, %59 ], [ %58, %57 ]
  %64 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 29
  %65 = icmp eq ptr %2, null
  br label %66

66:                                               ; preds = %84, %62
  %67 = phi i32 [ 0, %62 ], [ %85, %84 ]
  %68 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %67
  %69 = load volatile i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %67, i32 1
  %73 = load i32, ptr %64, align 4
  %74 = load i32, ptr %72, align 4
  %75 = and i32 %73, 65535
  %76 = and i32 %75, %74
  %77 = icmp eq i32 %76, 0
  %78 = tail call i32 @llvm.cttz.i32(i32 %76, i1 true) #5, !range !9
  %79 = select i1 %77, i32 16, i32 %78
  %80 = load i32, ptr @nr_cpu_ids, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  br i1 %65, label %87, label %83

83:                                               ; preds = %82
  store i32 %76, ptr %2, align 4
  br i1 %77, label %84, label %87

84:                                               ; preds = %83, %71, %66
  %85 = add nuw nsw i32 %67, 1
  %86 = icmp eq i32 %85, %63
  br i1 %86, label %87, label %66

87:                                               ; preds = %84, %83, %82, %59, %57, %57, %55, %48, %33, %31
  %88 = phi i32 [ 0, %55 ], [ 0, %59 ], [ 0, %57 ], [ 0, %57 ], [ 1, %83 ], [ 1, %82 ], [ 0, %84 ], [ 1, %33 ], [ 1, %48 ], [ 1, %31 ]
  ret i32 %88
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpupri_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cpupri, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 %1
  %7 = load i32, ptr %6, align 4
  switch i32 %2, label %8 [
    i32 -1, label %14
    i32 99, label %11
    i32 100, label %10
  ]

8:                                                ; preds = %3
  %9 = tail call i32 @llvm.usub.sat.i32(i32 99, i32 %2) #5
  br label %11

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %10, %8, %3
  %12 = phi i32 [ 100, %10 ], [ %9, %8 ], [ 0, %3 ]
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %29, label %16

14:                                               ; preds = %3
  %15 = icmp eq i32 %7, -1
  br i1 %15, label %29, label %22

16:                                               ; preds = %11
  %17 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %12
  %18 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %12, i32 1
  tail call void @_set_bit(i32 noundef %1, ptr noundef %18) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #5, !srcloc !11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #5, !srcloc !12
  %20 = icmp eq i32 %7, -1
  br i1 %20, label %27, label %21, !prof !13

21:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  br label %22

22:                                               ; preds = %21, %14
  %23 = phi i32 [ %12, %21 ], [ -1, %14 ]
  %24 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #5, !srcloc !11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #5, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !16
  %26 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %7, i32 1
  tail call void @_clear_bit(i32 noundef %1, ptr noundef %26) #5
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32 [ %23, %22 ], [ %12, %16 ]
  store i32 %28, ptr %6, align 4
  br label %29

29:                                               ; preds = %27, %14, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpupri_init(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %3
  store volatile i32 0, ptr %4, align 4
  %5 = getelementptr [101 x %struct.cpupri_vec], ptr %0, i32 0, i32 %3, i32 1
  store i32 0, ptr %5, align 4
  %6 = add nuw nsw i32 %3, 1
  %7 = icmp eq i32 %6, 101
  br i1 %7, label %8, label %2

8:                                                ; preds = %2
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #5
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %12, label %14, !prof !13

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cpupri, ptr %0, i32 0, i32 1
  store ptr null, ptr %13, align 4
  br label %35

14:                                               ; preds = %8
  %15 = extractvalue { i32, i1 } %10, 0
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #7
  %17 = getelementptr inbounds %struct.cpupri, ptr %0, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #6
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = getelementptr i32, ptr %16, i32 %20
  store i32 -1, ptr %24, align 4
  %25 = tail call i32 @cpumask_next(i32 noundef %20, ptr noundef nonnull @__cpu_possible_mask) #6
  %26 = load i32, ptr @nr_cpu_ids, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %28, %23
  %29 = phi i32 [ %32, %28 ], [ %25, %23 ]
  %30 = load ptr, ptr %17, align 4
  %31 = getelementptr i32, ptr %30, i32 %29
  store i32 -1, ptr %31, align 4
  %32 = tail call i32 @cpumask_next(i32 noundef %29, ptr noundef nonnull @__cpu_possible_mask) #6
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %28, label %35

35:                                               ; preds = %28, %23, %19, %14, %12
  %36 = phi i32 [ 0, %19 ], [ -12, %12 ], [ -12, %14 ], [ 0, %23 ], [ 0, %28 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cpupri_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cpupri, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{i64 2156322092}
!9 = !{i32 0, i32 33}
!10 = !{i64 2156328650}
!11 = !{i64 606338, i64 2148107904, i64 2148107930, i64 2148107977, i64 2148107999, i64 2148108027, i64 2148108047}
!12 = !{i64 2148171166, i64 2148171192, i64 2148171221, i64 2148171255, i64 2148171286, i64 2148171309}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2156328844}
!15 = !{i64 2148173523, i64 2148173549, i64 2148173578, i64 2148173612, i64 2148173643, i64 2148173666}
!16 = !{i64 2156328995}
