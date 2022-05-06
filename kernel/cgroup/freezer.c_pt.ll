; ModuleID = '/llk/IR/kernel/cgroup/freezer.c_pt.bc'
source_filename = "../kernel/cgroup/freezer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.cgroup_file, %struct.cgroup_file, i16, i16, i16, i16, [0 x ptr], ptr, %struct.list_head, [0 x %struct.list_head], ptr, ptr, ptr, %struct.list_head, %struct.cgroup_base_stat, %struct.cgroup_base_stat, %struct.prev_cputime, %struct.list_head, %struct.mutex, %struct.wait_queue_head, %struct.work_struct, %struct.psi_group, %struct.cgroup_bpf, %struct.atomic_t, %struct.cgroup_freezer_state, [0 x i64] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_base_stat = type { %struct.task_cputime }
%struct.task_cputime = type { i64, i64, i64 }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.psi_group = type {}
%struct.cgroup_bpf = type {}
%struct.cgroup_freezer_state = type { i8, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.37 }
%struct.llist_node = type { ptr }
%union.anon.37 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.38 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.57 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.css_set = type { [0 x ptr], %struct.refcount_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [0 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i8, %struct.callback_head }
%struct.css_task_iter = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@css_set_lock = external dso_local global %struct.spinlock, align 4
@trace_cgroup_path_lock = external dso_local global %struct.spinlock, align 4
@trace_cgroup_path = external dso_local global [1024 x i8], align 1
@cgroup_leave_frozen.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [24 x i8] c"kernel/cgroup/freezer.c\00", align 1
@cgroup_freeze.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_cgroup_notify_frozen = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cgroup_dec_frozen_cnt.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_cgroup_freeze = external dso_local global %struct.tracepoint, align 4
@__tracepoint_cgroup_unfreeze = external dso_local global %struct.tracepoint, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_update_frozen(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 36, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @__cgroup_task_count(ptr noundef %0) #5
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %136

15:                                               ; preds = %11
  tail call void @_set_bit(i32 noundef 3, ptr noundef %2) #5
  br label %21

16:                                               ; preds = %6, %1
  %17 = load volatile i32, ptr %2, align 4
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %136, label %20

20:                                               ; preds = %16
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #5
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i1 [ false, %20 ], [ true, %15 ]
  %23 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 13
  tail call void @cgroup_file_notify(ptr noundef %23) #5
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %28 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 11
  %29 = load ptr, ptr %28, align 8
  %30 = tail call i32 @kernfs_path_from_node(ptr noundef %29, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %31 = zext i1 %22 to i32
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = tail call ptr @llvm.thread.pointer() #5
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = lshr i32 %37, 5
  %39 = getelementptr i32, ptr @__cpu_online_mask, i32 %38
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %37, 31
  %42 = shl nuw i32 1, %41
  %43 = and i32 %42, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %46 = tail call i32 @__traceiter_cgroup_notify_frozen(ptr noundef null, ptr noundef %0, ptr noundef nonnull @trace_cgroup_path, i32 noundef %31) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %47

47:                                               ; preds = %45, %34, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %27) #5
  br label %48

48:                                               ; preds = %47, %21
  %49 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %0, i32 0, i32 12
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %136, label %52

52:                                               ; preds = %131, %48
  %53 = phi ptr [ %134, %131 ], [ %50, %48 ]
  %54 = phi i32 [ %132, %131 ], [ 1, %48 ]
  %55 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 36, i32 2
  %56 = load i32, ptr %55, align 4
  br i1 %22, label %57, label %98

57:                                               ; preds = %52
  %58 = add i32 %56, %54
  store i32 %58, ptr %55, align 4
  %59 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 1
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %131

63:                                               ; preds = %57
  %64 = load volatile i32, ptr %59, align 4
  %65 = and i32 %64, 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %131, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %58, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %67
  tail call void @_set_bit(i32 noundef 3, ptr noundef %59) #5
  %72 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 13
  tail call void @cgroup_file_notify(ptr noundef %72) #5
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %77 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 11
  %78 = load ptr, ptr %77, align 8
  %79 = tail call i32 @kernfs_path_from_node(ptr noundef %78, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = tail call ptr @llvm.thread.pointer() #5
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %94 = tail call i32 @__traceiter_cgroup_notify_frozen(ptr noundef null, ptr noundef nonnull %53, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %95

95:                                               ; preds = %93, %82, %75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %76) #5
  br label %96

96:                                               ; preds = %95, %71
  %97 = add i32 %54, 1
  br label %131

98:                                               ; preds = %52
  %99 = sub i32 %56, %54
  store i32 %99, ptr %55, align 4
  %100 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 1
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %131, label %104

104:                                              ; preds = %98
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %100) #5
  %105 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 13
  tail call void @cgroup_file_notify(ptr noundef %105) #5
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %110 = getelementptr inbounds %struct.cgroup, ptr %53, i32 0, i32 11
  %111 = load ptr, ptr %110, align 8
  %112 = tail call i32 @kernfs_path_from_node(ptr noundef %111, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %113 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %108
  %116 = tail call ptr @llvm.thread.pointer() #5
  %117 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  %119 = lshr i32 %118, 5
  %120 = getelementptr i32, ptr @__cpu_online_mask, i32 %119
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %118, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %123, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %115
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %127 = tail call i32 @__traceiter_cgroup_notify_frozen(ptr noundef null, ptr noundef nonnull %53, ptr noundef nonnull @trace_cgroup_path, i32 noundef 0) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %128

128:                                              ; preds = %126, %115, %108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %109) #5
  br label %129

129:                                              ; preds = %128, %104
  %130 = add i32 %54, 1
  br label %131

131:                                              ; preds = %129, %98, %96, %67, %63, %57
  %132 = phi i32 [ %54, %57 ], [ %97, %96 ], [ %54, %67 ], [ %54, %63 ], [ %130, %129 ], [ %54, %98 ]
  %133 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %53, i32 0, i32 12
  %134 = load ptr, ptr %133, align 8
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %52

136:                                              ; preds = %131, %48, %16, %11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_task_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_file_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_enter_frozen() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #5
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 49
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %7 = load i8, ptr %2, align 8
  %8 = or i8 %7, 32
  store i8 %8, ptr %2, align 8
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 123
  %10 = load volatile ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.css_set, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.cgroup, ptr %12, i32 0, i32 36, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  tail call void @cgroup_update_frozen(ptr noundef %12)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %16 = load i16, ptr @css_set_lock, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  br label %18

18:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_leave_frozen(i1 noundef zeroext %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %2 = tail call ptr @llvm.thread.pointer() #5
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 123
  %4 = load volatile ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.css_set, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  br i1 %0, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.cgroup, ptr %6, i32 0, i32 36, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %13, align 4
  %16 = icmp slt i32 %15, 0
  %17 = load i1, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !15

20:                                               ; preds = %12
  store i1 true, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #5
  br label %21

21:                                               ; preds = %20, %12
  tail call void @cgroup_update_frozen(ptr noundef %6)
  %22 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 49
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 32
  %25 = icmp eq i8 %24, 0
  %26 = load i1, ptr @cgroup_leave_frozen.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31, !prof !15

29:                                               ; preds = %21
  store i1 true, ptr @cgroup_leave_frozen.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #5
  %30 = load i8, ptr %22, align 8
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi i8 [ %30, %29 ], [ %23, %21 ]
  %33 = and i8 %32, -33
  store i8 %33, ptr %22, align 8
  br label %47

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 45
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 8388608
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 94
  %41 = load ptr, ptr %40, align 4
  tail call void @_raw_spin_lock(ptr noundef %41) #5
  %42 = load i32, ptr %35, align 4
  %43 = or i32 %42, 8388608
  store i32 %43, ptr %35, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %2) #5
  %44 = load ptr, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  br label %47

47:                                               ; preds = %39, %34, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %48 = load i16, ptr @css_set_lock, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr @css_set_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_freezer_migrate_task(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %61

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %19, %14, %9
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %26 = load i8, ptr %25, align 8
  %27 = and i8 %26, 32
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 36, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.cgroup, ptr %1, i32 0, i32 36, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  %36 = icmp slt i32 %35, 0
  %37 = load i1, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41, !prof !15

40:                                               ; preds = %29
  store i1 true, ptr @cgroup_dec_frozen_cnt.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef null) #5
  br label %41

41:                                               ; preds = %40, %29, %24
  tail call void @cgroup_update_frozen(ptr noundef %2)
  tail call void @cgroup_update_frozen(ptr noundef %1)
  %42 = getelementptr inbounds %struct.cgroup, ptr %2, i32 0, i32 1
  %43 = load volatile i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !17
  %44 = call ptr @__lock_task_sighand(ptr noundef %0, ptr noundef nonnull %4) #5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %60, label %46

46:                                               ; preds = %41
  %47 = and i32 %43, 4
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 45
  %50 = load i32, ptr %49, align 4
  br i1 %48, label %53, label %51

51:                                               ; preds = %46
  %52 = or i32 %50, 8388608
  store i32 %52, ptr %49, align 4
  call void @signal_wake_up_state(ptr noundef %0, i32 noundef 0) #5
  br label %56

53:                                               ; preds = %46
  %54 = and i32 %50, -8388609
  store i32 %54, ptr %49, align 4
  %55 = call i32 @wake_up_process(ptr noundef %0) #5
  br label %56

56:                                               ; preds = %53, %51
  %57 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 94
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %59) #5
  br label %60

60:                                               ; preds = %56, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %61

61:                                               ; preds = %60, %19, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cgroup_freeze(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.css_task_iter, align 4
  %5 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 36
  %6 = load i8, ptr %5, align 4, !range !18
  %7 = zext i1 %1 to i8
  %8 = icmp eq i8 %6, %7
  br i1 %8, label %165, label %9

9:                                                ; preds = %2
  store i8 %7, ptr %5, align 4
  %10 = tail call ptr @css_next_descendant_pre(ptr noundef null, ptr noundef %0) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %135, label %12

12:                                               ; preds = %129, %9
  %13 = phi ptr [ %132, %129 ], [ %10, %9 ]
  %14 = phi i1 [ true, %129 ], [ false, %9 ]
  br label %15

15:                                               ; preds = %126, %12
  %16 = phi ptr [ %127, %126 ], [ %13, %12 ]
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %17, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %126, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 36, i32 1
  %24 = load i32, ptr %23, align 4
  br i1 %1, label %25, label %28

25:                                               ; preds = %22
  %26 = add i32 %24, 1
  store i32 %26, ptr %23, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %126, label %37

28:                                               ; preds = %22
  %29 = add i32 %24, -1
  store i32 %29, ptr %23, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %126, label %31

31:                                               ; preds = %28
  %32 = icmp ne i32 %29, 0
  %33 = load i1, ptr @cgroup_freeze.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %43, !prof !15

36:                                               ; preds = %31
  store i1 true, ptr @cgroup_freeze.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 9, ptr noundef null) #5
  br label %43

37:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i32 52, i1 false) #5, !annotation !17
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %38 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 1
  call void @_set_bit(i32 noundef 2, ptr noundef %38) #5
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %39 = load i16, ptr @css_set_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 1), align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %49, label %91

43:                                               ; preds = %36, %31
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %4, i8 0, i32 52, i1 false) #5, !annotation !17
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %44 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 1
  call void @_clear_bit(i32 noundef 2, ptr noundef %44) #5
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %45 = load i16, ptr @css_set_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %69, label %91

49:                                               ; preds = %37
  %50 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %51 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 11
  %52 = load ptr, ptr %51, align 8
  %53 = call i32 @kernfs_path_from_node(ptr noundef %52, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_freeze, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %49
  %57 = tail call ptr @llvm.thread.pointer() #5
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %56
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !19
  %68 = call i32 @__traceiter_cgroup_freeze(ptr noundef null, ptr noundef %17, ptr noundef nonnull @trace_cgroup_path) #5
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !20
  br label %89

69:                                               ; preds = %43
  %70 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %71 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 11
  %72 = load ptr, ptr %71, align 8
  %73 = call i32 @kernfs_path_from_node(ptr noundef %72, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %74 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_unfreeze, i32 0, i32 1), align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = tail call ptr @llvm.thread.pointer() #5
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8
  %80 = lshr i32 %79, 5
  %81 = getelementptr i32, ptr @__cpu_online_mask, i32 %80
  %82 = load volatile i32, ptr %81, align 4
  %83 = and i32 %79, 31
  %84 = shl nuw i32 1, %83
  %85 = and i32 %84, %82
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %76
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !21
  %88 = call i32 @__traceiter_cgroup_unfreeze(ptr noundef null, ptr noundef %17, ptr noundef nonnull @trace_cgroup_path) #5
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !22
  br label %89

89:                                               ; preds = %87, %76, %69, %67, %56, %49
  %90 = phi i32 [ %50, %49 ], [ %50, %56 ], [ %50, %67 ], [ %70, %69 ], [ %70, %76 ], [ %70, %87 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %90) #5
  br label %91

91:                                               ; preds = %89, %43, %37
  call void @css_task_iter_start(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %4) #5
  %92 = call ptr @css_task_iter_next(ptr noundef nonnull %4) #5
  %93 = icmp eq ptr %92, null
  br i1 %93, label %119, label %94

94:                                               ; preds = %116, %91
  %95 = phi ptr [ %117, %116 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 2097152
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !17
  %101 = call ptr @__lock_task_sighand(ptr noundef nonnull %95, ptr noundef nonnull %3) #5
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 45
  %105 = load i32, ptr %104, align 4
  br i1 %1, label %106, label %108

106:                                              ; preds = %103
  %107 = or i32 %105, 8388608
  store i32 %107, ptr %104, align 4
  call void @signal_wake_up_state(ptr noundef nonnull %95, i32 noundef 0) #5
  br label %111

108:                                              ; preds = %103
  %109 = and i32 %105, -8388609
  store i32 %109, ptr %104, align 4
  %110 = call i32 @wake_up_process(ptr noundef nonnull %95) #5
  br label %111

111:                                              ; preds = %108, %106
  %112 = getelementptr inbounds %struct.task_struct, ptr %95, i32 0, i32 94
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %113, i32 noundef %114) #5
  br label %115

115:                                              ; preds = %111, %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  br label %116

116:                                              ; preds = %115, %94
  %117 = call ptr @css_task_iter_next(ptr noundef nonnull %4) #5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %94

119:                                              ; preds = %116, %91
  call void @css_task_iter_end(ptr noundef nonnull %4) #5
  call void @_raw_spin_lock_irq(ptr noundef nonnull @css_set_lock) #5
  %120 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.cgroup, ptr %17, i32 0, i32 36, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  call void @cgroup_update_frozen(ptr noundef %17) #5
  br label %129

126:                                              ; preds = %28, %25, %15
  %127 = call ptr @css_next_descendant_pre(ptr noundef nonnull %16, ptr noundef %0) #5
  %128 = icmp eq ptr %127, null
  br i1 %128, label %134, label %15

129:                                              ; preds = %125, %119
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  %130 = load i16, ptr @css_set_lock, align 4
  %131 = add i16 %130, 1
  store i16 %131, ptr @css_set_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %4) #5
  %132 = call ptr @css_next_descendant_pre(ptr noundef nonnull %16, ptr noundef %0) #5
  %133 = icmp eq ptr %132, null
  br i1 %133, label %165, label %12

134:                                              ; preds = %126
  br i1 %14, label %165, label %135

135:                                              ; preds = %134, %9
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %135
  %139 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @trace_cgroup_path_lock) #5
  %140 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 11
  %141 = load ptr, ptr %140, align 8
  %142 = call i32 @kernfs_path_from_node(ptr noundef %141, ptr noundef null, ptr noundef nonnull @trace_cgroup_path, i32 noundef 1024) #5
  %143 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 1
  %144 = load volatile i32, ptr %143, align 4
  %145 = lshr i32 %144, 3
  %146 = and i32 %145, 1
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cgroup_notify_frozen, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %138
  %150 = tail call ptr @llvm.thread.pointer() #5
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr @__cpu_online_mask, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %152, 31
  %157 = shl nuw i32 1, %156
  %158 = and i32 %157, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %149
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !8
  %161 = call i32 @__traceiter_cgroup_notify_frozen(ptr noundef null, ptr noundef %0, ptr noundef nonnull @trace_cgroup_path, i32 noundef %146) #5
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !9
  br label %162

162:                                              ; preds = %160, %149, %138
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @trace_cgroup_path_lock, i32 noundef %139) #5
  br label %163

163:                                              ; preds = %162, %135
  %164 = getelementptr inbounds %struct.cgroup, ptr %0, i32 0, i32 13
  call void @cgroup_file_notify(ptr noundef %164) #5
  br label %165

165:                                              ; preds = %163, %134, %129, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_next_descendant_pre(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_notify_frozen(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lock_task_sighand(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @signal_wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_start(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @css_task_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @css_task_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_freeze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cgroup_unfreeze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
!8 = !{i64 2153396744}
!9 = !{i64 2153396926}
!10 = !{i64 2149199867}
!11 = !{i64 2149195691}
!12 = !{i64 2149195766, i64 2149195793, i64 2149195840, i64 2149195862, i64 2149195890, i64 2149195910}
!13 = !{i64 580646}
!14 = !{i64 2149224011}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2149222870}
!17 = !{!"auto-init"}
!18 = !{i8 0, i8 2}
!19 = !{i64 2153303247}
!20 = !{i64 2153303405}
!21 = !{i64 2153319322}
!22 = !{i64 2153319484}
