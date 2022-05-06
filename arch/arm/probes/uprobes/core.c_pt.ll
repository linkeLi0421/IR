; ModuleID = '/llk/IR/arch/arm/probes/uprobes/core.c_pt.bc'
source_filename = "../arch/arm/probes/uprobes/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_action = type { ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.arch_uprobe = type { [4 x i8], [2 x i32], i32, i8, i32, ptr, ptr, %struct.arch_probes_insn }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.uprobe_task = type { i32, %union.anon.43, ptr, i32, ptr, i32 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { %struct.arch_uprobe_task, i32 }
%struct.arch_uprobe_task = type { i32, i32 }

@uprobes_probes_actions = external dso_local constant [0 x %union.decode_action], align 4
@arch_uprobe_post_xol.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [31 x i8] c"arch/arm/probes/uprobes/core.c\00", align 1
@__initcall__kmod_core__227_227_arch_uprobes_init6 = internal global ptr @arch_uprobes_init, section ".initcall6.init", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@uprobes_arm_break_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 268435455, i32 133169657, i32 63, i32 16, ptr @uprobe_trap_handler }, align 4
@uprobes_arm_ss_hook = internal global %struct.undef_hook { %struct.list_head zeroinitializer, i32 268435455, i32 133169658, i32 63, i32 16, ptr @uprobe_trap_handler }, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_core__227_227_arch_uprobes_init6], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_swbp_insn(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 268435455
  %4 = icmp eq i32 %3, 133169657
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_swbp(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @uprobe_write_opcode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %5) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_write_opcode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @arch_uprobe_ignore(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr [18 x i32], ptr %1, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 %4(i32 noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 4
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %2
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @arch_uprobe_skip_sstep(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 7
  %9 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 7, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void %10(i32 noundef %7, ptr noundef %8, ptr noundef %1) #8
  br label %11

11:                                               ; preds = %6, %2
  %12 = xor i1 %5, true
  ret i1 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_uretprobe_hijack_return_addr(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr [18 x i32], ptr %1, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  store i32 %0, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_uprobe_analyze_insn(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = and i32 %2, 3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr %struct.arch_uprobe, ptr %0, i32 0, i32 1, i32 1
  store i32 -403701254, ptr %9, align 4
  %10 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 7
  %11 = tail call i32 @arm_probes_decode_insn(i32 noundef %7, ptr noundef %10, i1 noundef zeroext false, ptr noundef nonnull @uprobes_probes_actions, ptr noundef null) #8
  switch i32 %11, label %14 [
    i32 0, label %20
    i32 2, label %12
  ]

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 3
  store i8 1, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %6
  %15 = icmp ugt i32 %7, -536870913
  %16 = and i32 %7, -268435456
  %17 = or i32 %16, 133169657
  %18 = select i1 %15, i32 -403701255, i32 %17
  %19 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 2
  store i32 %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %14, %6, %3
  %21 = phi i32 [ 0, %14 ], [ -22, %3 ], [ -22, %6 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_probes_decode_insn(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_uprobe_copy_ixol(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load i32, ptr @pgprot_kernel, align 4
  %6 = or i32 %5, 512
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !9
  %7 = tail call ptr @llvm.thread.pointer() #8
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 149
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !10
  %11 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %6) #8
  %12 = and i32 %1, 4095
  %13 = getelementptr i8, ptr %11, i32 %12
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %13, ptr align 1 %2, i32 %3, i1 false)
  tail call void @flush_uprobe_xol_access(ptr noundef %0, i32 noundef %1, ptr noundef %13, i32 noundef %3) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !12
  tail call void @kunmap_local_indexed(ptr noundef %11) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %14 = load i32, ptr %8, align 8
  %15 = add i32 %14, -1
  store i32 %15, ptr %8, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_uprobe_xol_access(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_uprobe_pre_xol(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 147
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1
  tail call void %7(ptr noundef %0, ptr noundef %10, ptr noundef %1) #8
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 152, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  store i32 -1, ptr %12, align 4
  %15 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  store i32 %16, ptr %17, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_uprobe_post_xol(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 147
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 152, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, -1
  %9 = load i1, ptr @arch_uprobe_post_xol.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !15

12:                                               ; preds = %2
  store i1 true, ptr @arch_uprobe_post_xol.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 9, ptr noundef null) #8
  br label %13

13:                                               ; preds = %12, %2
  %14 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %6, align 4
  %16 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 4
  %19 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.arch_uprobe, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1
  tail call void %21(ptr noundef %0, ptr noundef %24, ptr noundef %1) #8
  br label %25

25:                                               ; preds = %23, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @arch_uprobe_xol_was_trapped(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 152, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @arch_uprobe_abort_xol(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = tail call ptr @llvm.thread.pointer() #8
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 147
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 152, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uprobe_task, ptr %5, i32 0, i32 1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [18 x i32], ptr %1, i32 0, i32 15
  store i32 %10, ptr %11, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_uprobe_exception_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @uprobe_get_swbp_addr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr [18 x i32], ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @arch_uprobes_init() #1 {
  tail call void @register_undef_hook(ptr noundef nonnull @uprobes_arm_break_hook) #8
  tail call void @register_undef_hook(ptr noundef nonnull @uprobes_arm_ss_hook) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uprobe_trap_handler(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !16
  %4 = and i32 %1, 268435455
  switch i32 %4, label %9 [
    i32 133169657, label %5
    i32 133169658, label %7
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @uprobe_pre_sstep_notifier(ptr noundef %0) #8
  br label %9

7:                                                ; preds = %2
  %8 = tail call i32 @uprobe_post_sstep_notifier(ptr noundef %0) #8
  br label %9

9:                                                ; preds = %7, %5, %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #8, !srcloc !17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_pre_sstep_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_post_sstep_notifier(ptr noundef) local_unnamed_addr #2

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

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
!9 = !{i64 2152371311}
!10 = !{i64 2150978460}
!11 = !{i64 2152424431}
!12 = !{i64 2152424479}
!13 = !{i64 2150978667}
!14 = !{i64 2152373936}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 308768, i64 308829}
!17 = !{i64 311785}
