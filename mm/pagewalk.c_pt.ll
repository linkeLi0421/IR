; ModuleID = '/llk/IR/mm/pagewalk.c_pt.bc'
source_filename = "../mm/pagewalk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_walk = type { ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.mm_walk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.63, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.47, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.47 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_page_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.mm_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = getelementptr inbounds i8, ptr %6, i32 20
  store i32 0, ptr %7, align 4, !annotation !8
  store ptr %3, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 1
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 3
  %11 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %9, i8 0, i64 13, i1 false)
  store ptr %4, ptr %11, align 4
  %12 = icmp uge i32 %1, %2
  %13 = icmp eq ptr %0, null
  %14 = or i1 %13, %12
  br i1 %14, label %76, label %15

15:                                               ; preds = %5
  %16 = tail call ptr @find_vma(ptr noundef nonnull %0, i32 noundef %1) #6
  br label %17

17:                                               ; preds = %72, %15
  %18 = phi ptr [ %16, %15 ], [ %73, %72 ]
  %19 = phi i32 [ %1, %15 ], [ %74, %72 ]
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store ptr null, ptr %10, align 4
  br label %60

22:                                               ; preds = %17
  %23 = load i32, ptr %18, align 4
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  store ptr null, ptr %10, align 4
  %26 = load i32, ptr %18, align 4
  %27 = call i32 @llvm.umin.i32(i32 %26, i32 %2)
  br label %60

28:                                               ; preds = %22
  store ptr %18, ptr %10, align 4
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = call i32 @llvm.umin.i32(i32 %30, i32 %2)
  %32 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %6, align 4
  %35 = getelementptr inbounds %struct.mm_walk_ops, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = call i32 %36(i32 noundef %19, i32 noundef %31, ptr noundef nonnull %6) #6
  br label %52

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %18, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1024
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.mm_walk_ops, ptr %34, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %45
  %50 = call i32 %47(i32 noundef %19, i32 noundef %31, i32 noundef -1, ptr noundef nonnull %6) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %49, %38
  %53 = phi i32 [ %39, %38 ], [ %50, %49 ]
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %52
  %56 = icmp slt i32 %53, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %10, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57, %25, %21
  %61 = phi i32 [ %31, %57 ], [ %2, %21 ], [ %27, %25 ]
  %62 = phi ptr [ %33, %57 ], [ null, %21 ], [ %18, %25 ]
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.mm_walk_ops, ptr %63, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %60, %57, %40
  %68 = phi i32 [ %61, %60 ], [ %31, %57 ], [ %31, %40 ]
  %69 = phi ptr [ %62, %60 ], [ %33, %57 ], [ %33, %40 ]
  %70 = call fastcc i32 @__walk_page_range(i32 noundef %19, i32 noundef %68, ptr noundef nonnull %6)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %60, %52, %49, %45
  %73 = phi ptr [ %69, %67 ], [ %33, %52 ], [ %33, %45 ], [ %33, %49 ], [ %62, %60 ]
  %74 = phi i32 [ %68, %67 ], [ %31, %52 ], [ %31, %45 ], [ %31, %49 ], [ %61, %60 ]
  %75 = icmp ult i32 %74, %2
  br i1 %75, label %17, label %76

76:                                               ; preds = %72, %67, %55, %5
  %77 = phi i32 [ -22, %5 ], [ %53, %55 ], [ 0, %72 ], [ %70, %67 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  ret i32 %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__walk_page_range(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mm_walk_ops, ptr %6, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(i32 noundef %0, i32 noundef %1, ptr noundef %2) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %245

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 4
  br label %17

17:                                               ; preds = %15, %8, %3
  %18 = phi ptr [ %16, %15 ], [ %6, %8 ], [ %6, %3 ]
  %19 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi ptr [ %26, %22 ], [ %20, %17 ]
  %29 = lshr i32 %0, 21
  %30 = getelementptr [2 x i32], ptr %28, i32 %29
  %31 = add i32 %1, -1
  %32 = getelementptr inbounds %struct.mm_walk_ops, ptr %18, i32 0, i32 1
  %33 = getelementptr inbounds %struct.mm_walk_ops, ptr %18, i32 0, i32 2
  %34 = getelementptr inbounds %struct.mm_walk_ops, ptr %18, i32 0, i32 3
  %35 = getelementptr inbounds %struct.mm_walk_ops, ptr %18, i32 0, i32 4
  %36 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 5
  %37 = getelementptr inbounds %struct.mm_walk, ptr %2, i32 0, i32 4
  br label %38

38:                                               ; preds = %235, %27
  %39 = phi ptr [ %30, %27 ], [ %236, %235 ]
  %40 = phi i32 [ %0, %27 ], [ %45, %235 ]
  %41 = add i32 %40, 2097152
  %42 = and i32 %41, -2097152
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %43, %31
  %45 = select i1 %44, i32 %42, i32 %1
  %46 = load ptr, ptr %18, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = tail call i32 %46(ptr noundef %39, i32 noundef %40, i32 noundef %45, ptr noundef %2) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %238

51:                                               ; preds = %48, %38
  %52 = load ptr, ptr %32, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load ptr, ptr %33, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load ptr, ptr %34, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load ptr, ptr %35, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %235, label %63

63:                                               ; preds = %60, %57, %54, %51
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.mm_walk_ops, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = tail call i32 %66(ptr noundef %39, i32 noundef %40, i32 noundef %45, ptr noundef %2) #6
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %238

71:                                               ; preds = %68, %63
  %72 = getelementptr inbounds %struct.mm_walk_ops, ptr %64, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mm_walk_ops, ptr %64, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.mm_walk_ops, ptr %64, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %235, label %83

83:                                               ; preds = %79, %75, %71
  %84 = load ptr, ptr %2, align 4
  %85 = getelementptr inbounds %struct.mm_walk_ops, ptr %84, i32 0, i32 2
  br label %86

86:                                               ; preds = %105, %83
  %87 = load ptr, ptr %4, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i8, ptr %36, align 4, !range !9
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.mm_walk_ops, ptr %84, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %235, label %96

96:                                               ; preds = %92
  %97 = tail call i32 %94(i32 noundef %40, i32 noundef %45, i32 noundef 0, ptr noundef %2) #6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %235, label %238

99:                                               ; preds = %89, %86
  store i32 0, ptr %37, align 4
  %100 = load ptr, ptr %85, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = tail call i32 %100(ptr noundef %39, i32 noundef %40, i32 noundef %45, ptr noundef %2) #6
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %238

105:                                              ; preds = %102
  %106 = load i32, ptr %37, align 4
  switch i32 %106, label %107 [
    i32 2, label %86
    i32 1, label %235
  ]

107:                                              ; preds = %105, %99
  %108 = getelementptr inbounds %struct.mm_walk_ops, ptr %84, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.mm_walk_ops, ptr %84, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %235, label %115

115:                                              ; preds = %111, %107
  %116 = load ptr, ptr %2, align 4
  %117 = getelementptr inbounds %struct.mm_walk_ops, ptr %116, i32 0, i32 3
  br label %118

118:                                              ; preds = %144, %115
  %119 = load i32, ptr %39, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %4, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i8, ptr %36, align 4, !range !9
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124, %118
  %128 = getelementptr inbounds %struct.mm_walk_ops, ptr %116, i32 0, i32 5
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %235, label %131

131:                                              ; preds = %127
  %132 = tail call i32 %129(i32 noundef %40, i32 noundef %45, i32 noundef 0, ptr noundef %2) #6
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %235, label %238

134:                                              ; preds = %121
  store i32 0, ptr %37, align 4
  %135 = load ptr, ptr %117, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %161, label %140

137:                                              ; preds = %124
  store i32 0, ptr %37, align 4
  %138 = load ptr, ptr %117, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %150, label %140

140:                                              ; preds = %137, %134
  %141 = phi ptr [ %138, %137 ], [ %135, %134 ]
  %142 = tail call i32 %141(ptr noundef %39, i32 noundef %40, i32 noundef %45, ptr noundef %2) #6
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %238

144:                                              ; preds = %140
  %145 = load i32, ptr %37, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %118, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr %4, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %159

150:                                              ; preds = %147, %137
  %151 = phi i32 [ %145, %147 ], [ 0, %137 ]
  %152 = load i32, ptr %39, align 4
  %153 = and i32 %152, 2
  %154 = icmp ne i32 %153, 0
  %155 = icmp eq i32 %152, 0
  %156 = or i1 %155, %154
  %157 = icmp eq i32 %151, 1
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %235, label %161

159:                                              ; preds = %147
  %160 = icmp eq i32 %145, 1
  br i1 %160, label %235, label %161

161:                                              ; preds = %159, %150, %134
  %162 = getelementptr inbounds %struct.mm_walk_ops, ptr %116, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %235, label %165

165:                                              ; preds = %161
  %166 = load i8, ptr %36, align 4, !range !9
  %167 = icmp eq i8 %166, 0
  %168 = load ptr, ptr @mem_map, align 4
  %169 = load i32, ptr %39, align 4
  %170 = lshr i32 %169, 12
  %171 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %172 = sub i32 %170, %171
  br i1 %167, label %201, label %173

173:                                              ; preds = %165
  %174 = getelementptr %struct.page, ptr %168, i32 %172
  %175 = load i32, ptr @pgprot_kernel, align 4
  %176 = or i32 %175, 512
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %177 = tail call ptr @llvm.thread.pointer() #6
  %178 = getelementptr inbounds %struct.task_struct, ptr %177, i32 0, i32 149
  %179 = load i32, ptr %178, align 8
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %181 = tail call ptr @__kmap_local_page_prot(ptr noundef %174, i32 noundef %176) #6
  %182 = lshr i32 %40, 12
  %183 = and i32 %182, 511
  %184 = getelementptr i32, ptr %181, i32 %183
  %185 = load ptr, ptr %2, align 4
  %186 = getelementptr inbounds %struct.mm_walk_ops, ptr %185, i32 0, i32 4
  %187 = add i32 %45, -4096
  br label %188

188:                                              ; preds = %188, %173
  %189 = phi i32 [ %40, %173 ], [ %192, %188 ]
  %190 = phi ptr [ %184, %173 ], [ %197, %188 ]
  %191 = load ptr, ptr %186, align 4
  %192 = add i32 %189, 4096
  %193 = tail call i32 %191(ptr noundef %190, i32 noundef %189, i32 noundef %192, ptr noundef %2) #6
  %194 = icmp eq i32 %193, 0
  %195 = icmp ult i32 %189, %187
  %196 = and i1 %195, %194
  %197 = getelementptr i32, ptr %190, i32 1
  br i1 %196, label %188, label %198

198:                                              ; preds = %188
  tail call void @kunmap_local_indexed(ptr noundef %184) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %199 = load i32, ptr %178, align 8
  %200 = add i32 %199, -1
  store i32 %200, ptr %178, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %232

201:                                              ; preds = %165
  %202 = getelementptr %struct.page, ptr %168, i32 %172, i32 1, i32 0, i32 3
  %203 = getelementptr %struct.page, ptr %168, i32 %172
  %204 = load i32, ptr @pgprot_kernel, align 4
  %205 = or i32 %204, 512
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  %206 = tail call ptr @llvm.thread.pointer() #6
  %207 = getelementptr inbounds %struct.task_struct, ptr %206, i32 0, i32 149
  %208 = load i32, ptr %207, align 8
  %209 = add i32 %208, 1
  store i32 %209, ptr %207, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !11
  %210 = tail call ptr @__kmap_local_page_prot(ptr noundef %203, i32 noundef %205) #6
  %211 = lshr i32 %40, 12
  %212 = and i32 %211, 511
  %213 = getelementptr i32, ptr %210, i32 %212
  tail call void @_raw_spin_lock(ptr noundef %202) #6
  %214 = load ptr, ptr %2, align 4
  %215 = getelementptr inbounds %struct.mm_walk_ops, ptr %214, i32 0, i32 4
  %216 = add i32 %45, -4096
  br label %217

217:                                              ; preds = %217, %201
  %218 = phi i32 [ %40, %201 ], [ %221, %217 ]
  %219 = phi ptr [ %213, %201 ], [ %226, %217 ]
  %220 = load ptr, ptr %215, align 4
  %221 = add i32 %218, 4096
  %222 = tail call i32 %220(ptr noundef %219, i32 noundef %218, i32 noundef %221, ptr noundef %2) #6
  %223 = icmp eq i32 %222, 0
  %224 = icmp ult i32 %218, %216
  %225 = and i1 %224, %223
  %226 = getelementptr i32, ptr %219, i32 1
  br i1 %225, label %217, label %227

227:                                              ; preds = %217
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %228 = load i16, ptr %202, align 4
  %229 = add i16 %228, 1
  store i16 %229, ptr %202, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  tail call void @kunmap_local_indexed(ptr noundef %213) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %230 = load i32, ptr %207, align 8
  %231 = add i32 %230, -1
  store i32 %231, ptr %207, align 8
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %232

232:                                              ; preds = %227, %198
  %233 = phi i32 [ %193, %198 ], [ %222, %227 ]
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232, %161, %159, %150, %131, %127, %111, %105, %96, %92, %79, %60
  %236 = getelementptr [2 x i32], ptr %39, i32 1
  %237 = icmp eq i32 %45, %1
  br i1 %237, label %238, label %38

238:                                              ; preds = %235, %232, %140, %131, %102, %96, %68, %48
  %239 = phi i32 [ %142, %140 ], [ %103, %102 ], [ 0, %235 ], [ %49, %48 ], [ %233, %232 ], [ %132, %131 ], [ %97, %96 ], [ %69, %68 ]
  br i1 %7, label %245, label %240

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.mm_walk_ops, ptr %6, i32 0, i32 9
  %242 = load ptr, ptr %241, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  tail call void %242(ptr noundef %2) #6
  br label %245

245:                                              ; preds = %244, %240, %238, %12
  %246 = phi i32 [ %13, %12 ], [ %239, %244 ], [ %239, %240 ], [ %239, %238 ]
  ret i32 %246
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_page_range_novma(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.mm_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #6
  %8 = getelementptr inbounds i8, ptr %7, i32 20
  store i32 0, ptr %8, align 4, !annotation !8
  store ptr %3, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mm_walk, ptr %7, i32 0, i32 1
  store ptr %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mm_walk, ptr %7, i32 0, i32 2
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mm_walk, ptr %7, i32 0, i32 3
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mm_walk, ptr %7, i32 0, i32 4
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mm_walk, ptr %7, i32 0, i32 5
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mm_walk, ptr %7, i32 0, i32 6
  store ptr %5, ptr %14, align 4
  %15 = icmp ult i32 %1, %2
  %16 = icmp ne ptr %0, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = call fastcc i32 @__walk_page_range(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %7)
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %19, %18 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_page_vma(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.mm_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #6
  %5 = getelementptr inbounds i8, ptr %4, i32 20
  store i32 0, ptr %5, align 4, !annotation !8
  store ptr %1, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mm_walk, ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  store ptr %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.mm_walk, ptr %4, i32 0, i32 2
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mm_walk, ptr %4, i32 0, i32 3
  store ptr %0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mm_walk, ptr %4, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mm_walk, ptr %4, i32 0, i32 6
  store ptr %2, ptr %12, align 4
  %13 = icmp eq ptr %8, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mm_walk_ops, ptr %1, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 %19(i32 noundef %15, i32 noundef %17, ptr noundef nonnull %4) #6
  br label %35

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1024
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.mm_walk_ops, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = call i32 %30(i32 noundef %15, i32 noundef %17, i32 noundef -1, ptr noundef nonnull %4) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %32, %21
  %36 = phi i32 [ %22, %21 ], [ %33, %32 ]
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = icmp slt i32 %36, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %0, align 4
  %42 = load i32, ptr %16, align 4
  br label %43

43:                                               ; preds = %40, %23
  %44 = phi i32 [ %42, %40 ], [ %17, %23 ]
  %45 = phi i32 [ %41, %40 ], [ %15, %23 ]
  %46 = call fastcc i32 @__walk_page_range(i32 noundef %45, i32 noundef %44, ptr noundef nonnull %4)
  br label %47

47:                                               ; preds = %43, %38, %35, %32, %28, %3
  %48 = phi i32 [ %46, %43 ], [ -22, %3 ], [ 0, %35 ], [ %36, %38 ], [ 0, %28 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #6
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @walk_page_mapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.mm_walk, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = getelementptr inbounds i8, ptr %6, i32 20
  store i32 0, ptr %7, align 4, !annotation !8
  store ptr %3, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 3
  %10 = getelementptr inbounds %struct.mm_walk, ptr %6, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(17) %8, i8 0, i64 17, i1 false)
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 5
  %12 = add i32 %2, %1
  %13 = add i32 %12, -1
  %14 = tail call ptr @vma_interval_tree_iter_first(ptr noundef %11, i32 noundef %1, i32 noundef %13) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %68, label %16

16:                                               ; preds = %65, %5
  %17 = phi ptr [ %66, %65 ], [ %14, %5 ]
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %17, align 4
  %23 = sub i32 %21, %22
  %24 = lshr i32 %23, 12
  %25 = add i32 %24, %19
  %26 = call i32 @llvm.umin.i32(i32 %12, i32 %25)
  %27 = call i32 @llvm.usub.sat.i32(i32 %1, i32 %19)
  %28 = shl i32 %27, 12
  %29 = add i32 %28, %22
  %30 = sub i32 %26, %19
  %31 = shl i32 %30, 12
  %32 = add i32 %31, %22
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %16
  store ptr %17, ptr %9, align 4
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %8, align 4
  %37 = load i32, ptr %17, align 4
  %38 = load i32, ptr %20, align 4
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.mm_walk_ops, ptr %39, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = call i32 %41(i32 noundef %37, i32 noundef %38, ptr noundef nonnull %6) #6
  br label %57

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %17, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.mm_walk_ops, ptr %39, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = call i32 %52(i32 noundef %37, i32 noundef %38, i32 noundef -1, ptr noundef nonnull %6) #6
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54, %43
  %58 = phi i32 [ %44, %43 ], [ %55, %54 ]
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = icmp slt i32 %58, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %60, %45
  %63 = call fastcc i32 @__walk_page_range(i32 noundef %29, i32 noundef %32, ptr noundef nonnull %6)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %16
  %66 = call ptr @vma_interval_tree_iter_next(ptr noundef nonnull %17, i32 noundef %1, i32 noundef %13) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %16

68:                                               ; preds = %65, %62, %60, %57, %54, %50, %5
  %69 = phi i32 [ 0, %5 ], [ 0, %54 ], [ 0, %50 ], [ 0, %57 ], [ %63, %62 ], [ %58, %60 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_first(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vma_interval_tree_iter_next(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2152390234}
!11 = !{i64 2151522196}
!12 = !{i64 2151522403}
!13 = !{i64 2152392859}
!14 = !{i64 2149025527}
!15 = !{i64 2149021351}
!16 = !{i64 2149021426, i64 2149021453, i64 2149021500, i64 2149021522, i64 2149021550, i64 2149021570}
!17 = !{i64 2149048530}
