; ModuleID = '/llk/IR/kernel/power/suspend.c_pt.bc'
source_filename = "../kernel/power/suspend.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend_target_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend_target_state\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend_target_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend_global_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend_global_flags\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend_global_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend_default_s2idle:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend_default_s2idle\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend_default_s2idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s2idle_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22s2idle_wake\22\09\09\09\09\09"
module asm "__kstrtabns_s2idle_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_suspend_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22suspend_set_ops\22\09\09\09\09\09"
module asm "__kstrtabns_suspend_set_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_suspend_valid_only_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22suspend_valid_only_mem\22\09\09\09\09\09"
module asm "__kstrtabns_suspend_valid_only_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.suspend_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [40 x i8]], i32, [2 x i32], i32, [2 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.swait_queue = type { ptr, %struct.list_head }
%struct.platform_s2idle_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@pm_labels = dso_local local_unnamed_addr constant [4 x ptr] [ptr null, ptr @.str, ptr @.str.1, ptr @.str.2], align 4
@mem_sleep_current = dso_local local_unnamed_addr global i32 1, align 4
@mem_sleep_default = dso_local local_unnamed_addr global i32 4, align 4
@pm_suspend_target_state = dso_local global i32 0, align 4
@__kstrtab_pm_suspend_target_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend_target_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend_target_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend_target_state to i32), ptr @__kstrtab_pm_suspend_target_state, ptr @__kstrtabns_pm_suspend_target_state }, section "___ksymtab_gpl+pm_suspend_target_state", align 4
@pm_suspend_global_flags = dso_local global i32 0, align 4
@__kstrtab_pm_suspend_global_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend_global_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend_global_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend_global_flags to i32), ptr @__kstrtab_pm_suspend_global_flags, ptr @__kstrtabns_pm_suspend_global_flags }, section "___ksymtab_gpl+pm_suspend_global_flags", align 4
@__kstrtab_pm_suspend_default_s2idle = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend_default_s2idle = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend_default_s2idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend_default_s2idle to i32), ptr @__kstrtab_pm_suspend_default_s2idle, ptr @__kstrtabns_pm_suspend_default_s2idle }, section "___ksymtab_gpl+pm_suspend_default_s2idle", align 4
@s2idle_ops = internal unnamed_addr global ptr null, align 4
@s2idle_lock = internal global %struct.raw_spinlock zeroinitializer, align 4
@s2idle_state = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@s2idle_wait_head = internal global %struct.swait_queue_head { %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @s2idle_wait_head, i64 4), ptr getelementptr (i8, ptr @s2idle_wait_head, i64 4) } }, align 4
@__kstrtab_s2idle_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_s2idle_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_s2idle_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s2idle_wake to i32), ptr @__kstrtab_s2idle_wake, ptr @__kstrtabns_s2idle_wake }, section "___ksymtab_gpl+s2idle_wake", align 4
@pm_states = dso_local local_unnamed_addr global [4 x ptr] zeroinitializer, align 4
@mem_sleep_labels = internal unnamed_addr constant [4 x ptr] [ptr null, ptr @.str.10, ptr @.str.11, ptr @.str.12], align 4
@mem_sleep_states = dso_local local_unnamed_addr global [4 x ptr] zeroinitializer, align 4
@__setup_str_mem_sleep_default_setup = internal constant [19 x i8] c"mem_sleep_default=\00", section ".init.rodata", align 1
@__setup_mem_sleep_default_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_mem_sleep_default_setup, ptr @mem_sleep_default_setup, i32 0 }, section ".init.setup", align 4
@suspend_ops = internal unnamed_addr global ptr null, align 4
@__kstrtab_suspend_set_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_suspend_set_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_suspend_set_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @suspend_set_ops to i32), ptr @__kstrtab_suspend_set_ops, ptr @__kstrtabns_suspend_set_ops }, section "___ksymtab_gpl+suspend_set_ops", align 4
@__kstrtab_suspend_valid_only_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_suspend_valid_only_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_suspend_valid_only_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @suspend_valid_only_mem to i32), ptr @__kstrtab_suspend_valid_only_mem, ptr @__kstrtabns_suspend_valid_only_mem }, section "___ksymtab_gpl+suspend_valid_only_mem", align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"\013PM: Some devices failed to suspend, or early wake event detected\0A\00", align 1
@suspend_devices_and_enter.___tp_str = internal global ptr @.str.6, section "__tracepoint_str", align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"resume_console\00", align 1
@suspend_devices_and_enter.___tp_str.7 = internal global ptr @.str.6, section "__tracepoint_str", align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"\016PM: suspend entry (%s)\0A\00", align 1
@suspend_stats = external dso_local local_unnamed_addr global %struct.suspend_stats, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"\016PM: suspend exit\0A\00", align 1
@__kstrtab_pm_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_suspend to i32), ptr @__kstrtab_pm_suspend, ptr @__kstrtabns_pm_suspend }, section "___ksymtab+pm_suspend", align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"s2idle\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"shallow\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"deep\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\013PM: late suspend of devices failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\013PM: noirq suspend of devices failed\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@suspend_enter.___tp_str = internal global ptr @.str.15, section "__tracepoint_str", align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"machine_suspend\00", align 1
@suspend_enter.___tp_str.16 = internal global ptr @.str.15, section "__tracepoint_str", align 4
@s2idle_enter.___tp_str = internal global ptr @.str.15, section "__tracepoint_str", align 4
@s2idle_enter.___tp_str.17 = internal global ptr @.str.15, section "__tracepoint_str", align 4
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@enter_state.___tp_str = internal global ptr @.str.19, section "__tracepoint_str", align 4
@.str.19 = private unnamed_addr constant [14 x i8] c"suspend_enter\00", align 1
@system_transition_mutex = external dso_local global %struct.mutex, align 4
@sync_on_suspend_enabled = external dso_local local_unnamed_addr global i8, align 1
@enter_state.___tp_str.20 = internal global ptr @.str.21, section "__tracepoint_str", align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"sync_filesystems\00", align 1
@enter_state.___tp_str.22 = internal global ptr @.str.21, section "__tracepoint_str", align 4
@enter_state.___tp_str.23 = internal global ptr @.str.19, section "__tracepoint_str", align 4
@events_check_enabled = external dso_local local_unnamed_addr global i8, align 1
@suspend_prepare.___tp_str = internal global ptr @.str.24, section "__tracepoint_str", align 4
@.str.24 = private unnamed_addr constant [17 x i8] c"freeze_processes\00", align 1
@suspend_prepare.___tp_str.25 = internal global ptr @.str.24, section "__tracepoint_str", align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_pm_suspend, ptr @__ksymtab_pm_suspend_default_s2idle, ptr @__ksymtab_pm_suspend_global_flags, ptr @__ksymtab_pm_suspend_target_state, ptr @__ksymtab_s2idle_wake, ptr @__ksymtab_suspend_set_ops, ptr @__ksymtab_suspend_valid_only_mem, ptr @__setup_mem_sleep_default_setup, ptr @enter_state.___tp_str, ptr @enter_state.___tp_str.20, ptr @enter_state.___tp_str.22, ptr @enter_state.___tp_str.23, ptr @s2idle_enter.___tp_str, ptr @s2idle_enter.___tp_str.17, ptr @suspend_devices_and_enter.___tp_str, ptr @suspend_devices_and_enter.___tp_str.7, ptr @suspend_enter.___tp_str, ptr @suspend_enter.___tp_str.16, ptr @suspend_prepare.___tp_str, ptr @suspend_prepare.___tp_str.25], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pm_suspend_default_s2idle() #0 {
  %1 = load i32, ptr @mem_sleep_current, align 4
  %2 = icmp eq i32 %1, 1
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s2idle_set_ops(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @lock_system_sleep() #10
  store ptr %0, ptr @s2idle_ops, align 4
  tail call void @unlock_system_sleep() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_system_sleep() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_system_sleep() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s2idle_wake() #1 {
  %1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @s2idle_lock) #10
  %2 = load i32, ptr @s2idle_state, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 2, ptr @s2idle_state, align 4
  tail call void @swake_up_one(ptr noundef nonnull @s2idle_wait_head) #10
  br label %5

5:                                                ; preds = %4, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @s2idle_lock, i32 noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @swake_up_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pm_states_init() local_unnamed_addr #4 section ".init.text" {
  store ptr @.str.2, ptr getelementptr inbounds ([4 x ptr], ptr @pm_states, i32 0, i32 3), align 4
  store ptr @.str, ptr getelementptr inbounds ([4 x ptr], ptr @pm_states, i32 0, i32 1), align 4
  store ptr @.str.10, ptr getelementptr inbounds ([4 x ptr], ptr @mem_sleep_states, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mem_sleep_default_setup(ptr nocapture noundef readonly %0) #5 section ".init.text" {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi i32 [ 1, %1 ], [ %10, %9 ]
  %4 = getelementptr [4 x ptr], ptr @mem_sleep_labels, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @strcmp(ptr noundef %0, ptr noundef %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 %3, ptr @mem_sleep_default, align 4
  br label %12

9:                                                ; preds = %2
  %10 = add nuw nsw i32 %3, 1
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %12, label %2

12:                                               ; preds = %9, %8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @suspend_set_ops(ptr noundef %0) #1 {
  tail call void @lock_system_sleep() #10
  store ptr %0, ptr @suspend_ops, align 4
  %2 = icmp eq ptr %0, null
  br i1 %2, label %35, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %3
  %7 = tail call i32 %4(i32 noundef 2) #10
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr @suspend_ops, align 4
  br i1 %8, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.platform_suspend_ops, ptr %9, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  store ptr @.str.11, ptr getelementptr inbounds ([4 x ptr], ptr @mem_sleep_states, i32 0, i32 2), align 4
  store ptr @.str.1, ptr getelementptr inbounds ([4 x ptr], ptr @pm_states, i32 0, i32 2), align 4
  %15 = load i32, ptr @mem_sleep_default, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 2, ptr @mem_sleep_current, align 4
  br label %18

18:                                               ; preds = %17, %14, %10, %6
  %19 = icmp eq ptr %9, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = tail call i32 %21(i32 noundef 3) #10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @suspend_ops, align 4
  %28 = getelementptr inbounds %struct.platform_suspend_ops, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  store ptr @.str.12, ptr getelementptr inbounds ([4 x ptr], ptr @mem_sleep_states, i32 0, i32 3), align 4
  %32 = load i32, ptr @mem_sleep_default, align 4
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 3, ptr @mem_sleep_current, align 4
  br label %35

35:                                               ; preds = %34, %31, %26, %23, %20, %18, %3, %1
  tail call void @unlock_system_sleep() #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @suspend_valid_only_mem(i32 noundef %0) #6 {
  %2 = icmp eq i32 %0, 3
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_suspend_disable_irqs() local_unnamed_addr #1 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @arch_suspend_enable_irqs() local_unnamed_addr #1 {
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @suspend_devices_and_enter(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca %struct.swait_queue, align 4
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %19, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @suspend_ops, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %349, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %349, label %10

10:                                               ; preds = %7
  %11 = tail call i32 %8(i32 noundef %0) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %349, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @suspend_ops, align 4
  %15 = getelementptr inbounds %struct.platform_suspend_ops, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %349, label %18

18:                                               ; preds = %13
  store i32 %0, ptr @pm_suspend_target_state, align 4
  br label %29

19:                                               ; preds = %1
  store i32 1, ptr @pm_suspend_target_state, align 4
  %20 = load i32, ptr @pm_suspend_global_flags, align 4
  %21 = or i32 %20, 4
  store i32 %21, ptr @pm_suspend_global_flags, align 4
  %22 = load ptr, ptr @s2idle_ops, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %22, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 %25() #10
  br label %38

29:                                               ; preds = %24, %19, %18
  %30 = load ptr, ptr @suspend_ops, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.platform_suspend_ops, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = tail call i32 %34(i32 noundef %0) #10
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi i32 [ %28, %27 ], [ %37, %36 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %330

41:                                               ; preds = %38, %32, %29
  tail call void @suspend_console() #10
  %42 = tail call i32 @dpm_suspend_start([1 x i32] [i32 2]) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.swait_queue, ptr %2, i32 0, i32 1
  %46 = getelementptr inbounds %struct.swait_queue, ptr %2, i32 0, i32 1, i32 1
  br label %55

47:                                               ; preds = %41
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br i1 %3, label %295, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr @suspend_ops, align 4
  %51 = getelementptr inbounds %struct.platform_suspend_ops, ptr %50, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %295, label %54

54:                                               ; preds = %49
  tail call void %52() #10
  br label %295

55:                                               ; preds = %293, %44
  br i1 %3, label %64, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr @suspend_ops, align 4
  %58 = getelementptr inbounds %struct.platform_suspend_ops, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = call i32 %59() #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %273

64:                                               ; preds = %61, %56, %55
  %65 = call i32 @dpm_suspend_late([1 x i32] [i32 2]) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %270

69:                                               ; preds = %64
  %70 = load ptr, ptr @s2idle_ops, align 4
  %71 = icmp ne ptr %70, null
  %72 = select i1 %3, i1 %71, i1 false
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.platform_s2idle_ops, ptr %70, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = call i32 %75() #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %267

80:                                               ; preds = %77, %73, %69
  %81 = call i32 @dpm_suspend_noirq([1 x i32] [i32 2]) #10
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %256

85:                                               ; preds = %80
  br i1 %3, label %86, label %94

86:                                               ; preds = %85
  %87 = load ptr, ptr @s2idle_ops, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %99, %90, %86
  br label %105

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.platform_s2idle_ops, ptr %87, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %89, label %99

94:                                               ; preds = %85
  %95 = load ptr, ptr @suspend_ops, align 4
  %96 = getelementptr inbounds %struct.platform_suspend_ops, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %170, label %102

99:                                               ; preds = %90
  %100 = call i32 %92() #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %89, label %234

102:                                              ; preds = %94
  %103 = call i32 %97() #10
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %170, label %242

105:                                              ; preds = %169, %89
  %106 = load ptr, ptr @s2idle_ops, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.platform_s2idle_ops, ptr %106, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = call zeroext i1 %110() #10
  br i1 %113, label %234, label %116

114:                                              ; preds = %108, %105
  %115 = call zeroext i1 @pm_wakeup_pending() #10
  br i1 %115, label %234, label %116

116:                                              ; preds = %114, %112
  %117 = load ptr, ptr @s2idle_enter.___tp_str, align 4
  %118 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = tail call ptr @llvm.thread.pointer() #10
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %120
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %132 = call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %117, i32 noundef 1, i1 noundef zeroext true) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %133

133:                                              ; preds = %131, %120, %116
  call void @_raw_spin_lock_irq(ptr noundef nonnull @s2idle_lock) #10
  %134 = call zeroext i1 @pm_wakeup_pending() #10
  br i1 %134, label %150, label %135

135:                                              ; preds = %133
  store i32 1, ptr @s2idle_state, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %136 = load i16, ptr @s2idle_lock, align 4
  %137 = add i16 %136, 1
  store i16 %137, ptr @s2idle_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  call void @cpus_read_lock() #10
  call void @wake_up_all_idle_cpus() #10
  %138 = load i32, ptr @s2idle_state, align 4
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %149, label %140

140:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !16
  store volatile ptr %45, ptr %45, align 4
  store ptr %45, ptr %46, align 4
  %141 = call i32 @prepare_to_swait_event(ptr noundef nonnull @s2idle_wait_head, ptr noundef nonnull %2, i32 noundef 2) #10
  %142 = load i32, ptr @s2idle_state, align 4
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %148, label %144

144:                                              ; preds = %144, %140
  call void @schedule() #10
  %145 = call i32 @prepare_to_swait_event(ptr noundef nonnull @s2idle_wait_head, ptr noundef nonnull %2, i32 noundef 2) #10
  %146 = load i32, ptr @s2idle_state, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %144

148:                                              ; preds = %144, %140
  call void @finish_swait(ptr noundef nonnull @s2idle_wait_head, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  br label %149

149:                                              ; preds = %148, %135
  call void @cpus_read_unlock() #10
  call void @_raw_spin_lock_irq(ptr noundef nonnull @s2idle_lock) #10
  br label %150

150:                                              ; preds = %149, %133
  store i32 0, ptr @s2idle_state, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  %151 = load i16, ptr @s2idle_lock, align 4
  %152 = add i16 %151, 1
  store i16 %152, ptr @s2idle_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !9
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !15
  %153 = load ptr, ptr @s2idle_enter.___tp_str.17, align 4
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = tail call ptr @llvm.thread.pointer() #10
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %168 = call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %153, i32 noundef 1, i1 noundef zeroext false) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %169

169:                                              ; preds = %167, %156, %150
  br label %105

170:                                              ; preds = %102, %94
  call void @cpuidle_pause() #10
  %171 = call i32 @freeze_secondary_cpus(i32 noundef 0) #10
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %231

173:                                              ; preds = %170
  call void @arch_suspend_disable_irqs() #10
  %174 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !17
  %175 = and i32 %174, 128
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178, !prof !18

177:                                              ; preds = %173
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/suspend.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 428, 0\0A.popsection", ""() #10, !srcloc !19
  unreachable

178:                                              ; preds = %173
  store i32 7, ptr @system_state, align 4
  %179 = call i32 @syscore_suspend() #10
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %224

181:                                              ; preds = %178
  %182 = call zeroext i1 @pm_wakeup_pending() #10
  %183 = zext i1 %182 to i8
  br i1 %182, label %222, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr @suspend_enter.___tp_str, align 4
  %186 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %184
  %189 = tail call ptr @llvm.thread.pointer() #10
  %190 = getelementptr inbounds %struct.thread_info, ptr %189, i32 0, i32 2
  %191 = load i32, ptr %190, align 8
  %192 = lshr i32 %191, 5
  %193 = getelementptr i32, ptr @__cpu_online_mask, i32 %192
  %194 = load volatile i32, ptr %193, align 4
  %195 = and i32 %191, 31
  %196 = shl nuw i32 1, %195
  %197 = and i32 %196, %194
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %188
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %200 = call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %185, i32 noundef %0, i1 noundef zeroext true) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %201

201:                                              ; preds = %199, %188, %184
  %202 = load ptr, ptr @suspend_ops, align 4
  %203 = getelementptr inbounds %struct.platform_suspend_ops, ptr %202, i32 0, i32 4
  %204 = load ptr, ptr %203, align 4
  %205 = call i32 %204(i32 noundef %0) #10
  %206 = load ptr, ptr @suspend_enter.___tp_str.16, align 4
  %207 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %201
  %210 = tail call ptr @llvm.thread.pointer() #10
  %211 = getelementptr inbounds %struct.thread_info, ptr %210, i32 0, i32 2
  %212 = load i32, ptr %211, align 8
  %213 = lshr i32 %212, 5
  %214 = getelementptr i32, ptr @__cpu_online_mask, i32 %213
  %215 = load volatile i32, ptr %214, align 4
  %216 = and i32 %212, 31
  %217 = shl nuw i32 1, %216
  %218 = and i32 %217, %215
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %209
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %221 = call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %206, i32 noundef %0, i1 noundef zeroext false) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %222

222:                                              ; preds = %220, %209, %201, %181
  %223 = phi i32 [ -16, %181 ], [ %205, %201 ], [ %205, %209 ], [ %205, %220 ]
  call void @syscore_resume() #10
  br label %224

224:                                              ; preds = %222, %178
  %225 = phi i8 [ %183, %222 ], [ 0, %178 ]
  %226 = phi i32 [ %223, %222 ], [ %179, %178 ]
  store i32 3, ptr @system_state, align 4
  call void @arch_suspend_enable_irqs() #10
  %227 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !17
  %228 = and i32 %227, 128
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230, !prof !20

230:                                              ; preds = %224
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/power/suspend.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 450, 0\0A.popsection", ""() #10, !srcloc !21
  unreachable

231:                                              ; preds = %224, %170
  %232 = phi i8 [ %225, %224 ], [ 0, %170 ]
  %233 = phi i32 [ %226, %224 ], [ %171, %170 ]
  call void @thaw_secondary_cpus() #10
  call void @cpuidle_resume() #10
  br label %242

234:                                              ; preds = %114, %112, %99
  %235 = phi i32 [ %100, %99 ], [ 0, %112 ], [ 0, %114 ]
  %236 = load ptr, ptr @s2idle_ops, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %253, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.platform_s2idle_ops, ptr %236, i32 0, i32 4
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %253, label %249

242:                                              ; preds = %231, %102
  %243 = phi i8 [ %232, %231 ], [ 0, %102 ]
  %244 = phi i32 [ %233, %231 ], [ %103, %102 ]
  %245 = load ptr, ptr @suspend_ops, align 4
  %246 = getelementptr inbounds %struct.platform_suspend_ops, ptr %245, i32 0, i32 5
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %242, %238
  %250 = phi i8 [ 0, %238 ], [ %243, %242 ]
  %251 = phi i32 [ %235, %238 ], [ %244, %242 ]
  %252 = phi ptr [ %240, %238 ], [ %247, %242 ]
  call void %252() #10
  br label %253

253:                                              ; preds = %249, %242, %238, %234
  %254 = phi i8 [ 0, %234 ], [ 0, %238 ], [ %250, %249 ], [ %243, %242 ]
  %255 = phi i32 [ %235, %234 ], [ %235, %238 ], [ %251, %249 ], [ %244, %242 ]
  call void @dpm_resume_noirq([1 x i32] [i32 16]) #10
  br label %256

256:                                              ; preds = %253, %83
  %257 = phi i8 [ %254, %253 ], [ 0, %83 ]
  %258 = phi i32 [ %255, %253 ], [ %81, %83 ]
  %259 = load ptr, ptr @s2idle_ops, align 4
  %260 = icmp ne ptr %259, null
  %261 = select i1 %3, i1 %260, i1 false
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.platform_s2idle_ops, ptr %259, i32 0, i32 5
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  call void %264() #10
  br label %267

267:                                              ; preds = %266, %262, %256, %77
  %268 = phi i8 [ %257, %262 ], [ %257, %266 ], [ %257, %256 ], [ 0, %77 ]
  %269 = phi i32 [ %258, %262 ], [ %258, %266 ], [ %258, %256 ], [ %78, %77 ]
  call void @dpm_resume_early([1 x i32] [i32 16]) #10
  br label %270

270:                                              ; preds = %267, %67
  %271 = phi i8 [ %268, %267 ], [ 0, %67 ]
  %272 = phi i32 [ %269, %267 ], [ %65, %67 ]
  br i1 %3, label %281, label %273

273:                                              ; preds = %270, %61
  %274 = phi i8 [ %271, %270 ], [ 0, %61 ]
  %275 = phi i32 [ %272, %270 ], [ %62, %61 ]
  %276 = load ptr, ptr @suspend_ops, align 4
  %277 = getelementptr inbounds %struct.platform_suspend_ops, ptr %276, i32 0, i32 6
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %273
  call void %278() #10
  br label %281

281:                                              ; preds = %280, %273, %270
  %282 = phi i8 [ %271, %270 ], [ %274, %273 ], [ %274, %280 ]
  %283 = phi i32 [ %272, %270 ], [ %275, %273 ], [ %275, %280 ]
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %281
  %286 = icmp ne i8 %282, 0
  %287 = or i1 %3, %286
  br i1 %287, label %295, label %288

288:                                              ; preds = %285
  %289 = load ptr, ptr @suspend_ops, align 4
  %290 = getelementptr inbounds %struct.platform_suspend_ops, ptr %289, i32 0, i32 7
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %295, label %293

293:                                              ; preds = %288
  %294 = call zeroext i1 %291() #10
  br i1 %294, label %55, label %295

295:                                              ; preds = %293, %288, %285, %281, %54, %49, %47
  %296 = phi i32 [ %42, %47 ], [ %42, %49 ], [ %42, %54 ], [ 0, %288 ], [ 0, %293 ], [ 0, %285 ], [ %283, %281 ]
  call void @dpm_resume_end([1 x i32] [i32 16]) #10
  %297 = load ptr, ptr @suspend_devices_and_enter.___tp_str, align 4
  %298 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %295
  %301 = tail call ptr @llvm.thread.pointer() #10
  %302 = getelementptr inbounds %struct.thread_info, ptr %301, i32 0, i32 2
  %303 = load i32, ptr %302, align 8
  %304 = lshr i32 %303, 5
  %305 = getelementptr i32, ptr @__cpu_online_mask, i32 %304
  %306 = load volatile i32, ptr %305, align 4
  %307 = and i32 %303, 31
  %308 = shl nuw i32 1, %307
  %309 = and i32 %308, %306
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %300
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %312 = call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %297, i32 noundef %0, i1 noundef zeroext true) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %313

313:                                              ; preds = %311, %300, %295
  call void @resume_console() #10
  %314 = load ptr, ptr @suspend_devices_and_enter.___tp_str.7, align 4
  %315 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %316 = icmp sgt i32 %315, 0
  br i1 %316, label %317, label %330

317:                                              ; preds = %313
  %318 = tail call ptr @llvm.thread.pointer() #10
  %319 = getelementptr inbounds %struct.thread_info, ptr %318, i32 0, i32 2
  %320 = load i32, ptr %319, align 8
  %321 = lshr i32 %320, 5
  %322 = getelementptr i32, ptr @__cpu_online_mask, i32 %321
  %323 = load volatile i32, ptr %322, align 4
  %324 = and i32 %320, 31
  %325 = shl nuw i32 1, %324
  %326 = and i32 %325, %323
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %317
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %329 = call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %314, i32 noundef %0, i1 noundef zeroext false) #10
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %330

330:                                              ; preds = %328, %317, %313, %38
  %331 = phi i32 [ %39, %38 ], [ %296, %313 ], [ %296, %317 ], [ %296, %328 ]
  %332 = load ptr, ptr @s2idle_ops, align 4
  %333 = icmp ne ptr %332, null
  %334 = select i1 %3, i1 %333, i1 false
  br i1 %334, label %335, label %339

335:                                              ; preds = %330
  %336 = getelementptr inbounds %struct.platform_s2idle_ops, ptr %332, i32 0, i32 6
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %346

339:                                              ; preds = %335, %330
  %340 = load ptr, ptr @suspend_ops, align 4
  %341 = icmp eq ptr %340, null
  br i1 %341, label %348, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.platform_suspend_ops, ptr %340, i32 0, i32 8
  %344 = load ptr, ptr %343, align 4
  %345 = icmp eq ptr %344, null
  br i1 %345, label %348, label %346

346:                                              ; preds = %342, %335
  %347 = phi ptr [ %337, %335 ], [ %344, %342 ]
  call void %347() #10
  br label %348

348:                                              ; preds = %346, %342, %339
  store i32 0, ptr @pm_suspend_target_state, align 4
  br label %349

349:                                              ; preds = %348, %13, %10, %7, %4
  %350 = phi i32 [ %331, %348 ], [ -38, %13 ], [ -38, %10 ], [ -38, %7 ], [ -38, %4 ]
  ret i32 %350
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_console() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_start([1 x i32]) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_end([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resume_console() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_suspend(i32 noundef %0) #1 {
  %2 = add i32 %0, -4
  %3 = icmp ult i32 %2, -3
  br i1 %3, label %195, label %4

4:                                                ; preds = %1
  %5 = getelementptr [4 x ptr], ptr @mem_sleep_labels, i32 0, i32 %0
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %6) #11
  %8 = load ptr, ptr @enter_state.___tp_str, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %23 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %8, i32 noundef %0, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %24

24:                                               ; preds = %22, %11, %4
  %25 = icmp eq i32 %0, 1
  br i1 %25, label %40, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr @suspend_ops, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %180, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %27, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %180, label %32

32:                                               ; preds = %29
  %33 = tail call i32 %30(i32 noundef %0) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %180, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @suspend_ops, align 4
  %37 = getelementptr inbounds %struct.platform_suspend_ops, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %180, label %43

40:                                               ; preds = %24
  %41 = tail call i32 @mutex_trylock(ptr noundef nonnull @system_transition_mutex) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %180, label %46

43:                                               ; preds = %35
  %44 = tail call i32 @mutex_trylock(ptr noundef nonnull @system_transition_mutex) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %180, label %47

46:                                               ; preds = %40
  store i32 0, ptr @s2idle_state, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i8, ptr @sync_on_suspend_enabled, align 1, !range !22
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr @enter_state.___tp_str.20, align 4
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = tail call ptr @llvm.thread.pointer() #10
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %66 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %51, i32 noundef 0, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %67

67:                                               ; preds = %65, %54, %50
  tail call void @ksys_sync_helper() #10
  %68 = load ptr, ptr @enter_state.___tp_str.22, align 4
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = tail call ptr @llvm.thread.pointer() #10
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %83 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %68, i32 noundef 0, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %84

84:                                               ; preds = %82, %71, %67, %47
  store i32 0, ptr @pm_suspend_global_flags, align 4
  br i1 %25, label %99, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr @suspend_ops, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %176, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %86, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %176, label %91

91:                                               ; preds = %88
  %92 = tail call i32 %89(i32 noundef %0) #10
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %176, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr @suspend_ops, align 4
  %96 = getelementptr inbounds %struct.platform_suspend_ops, ptr %95, i32 0, i32 4
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %176, label %99

99:                                               ; preds = %94, %84
  tail call void @pm_prepare_console() #10
  %100 = tail call i32 @pm_notifier_call_chain_robust(i32 noundef 3, i32 noundef 4) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %177

102:                                              ; preds = %99
  %103 = load ptr, ptr @suspend_prepare.___tp_str, align 4
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = tail call ptr @llvm.thread.pointer() #10
  %108 = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 8
  %110 = lshr i32 %109, 5
  %111 = getelementptr i32, ptr @__cpu_online_mask, i32 %110
  %112 = load volatile i32, ptr %111, align 4
  %113 = and i32 %109, 31
  %114 = shl nuw i32 1, %113
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %106
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %118 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %103, i32 noundef 0, i1 noundef zeroext true) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %119

119:                                              ; preds = %117, %106, %102
  %120 = tail call i32 @freeze_processes() #10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = tail call i32 @freeze_kernel_threads() #10
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  tail call void @thaw_processes() #10
  br label %126

126:                                              ; preds = %125, %122, %119
  %127 = phi i32 [ %120, %119 ], [ %123, %125 ], [ 0, %122 ]
  %128 = load ptr, ptr @suspend_prepare.___tp_str.25, align 4
  %129 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %126
  %132 = tail call ptr @llvm.thread.pointer() #10
  %133 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 8
  %135 = lshr i32 %134, 5
  %136 = getelementptr i32, ptr @__cpu_online_mask, i32 %135
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %134, 31
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %131
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %143 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %128, i32 noundef 0, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %144

144:                                              ; preds = %142, %131, %126
  %145 = icmp eq i32 %127, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %144
  %147 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  %148 = add i32 %147, 1
  store i32 %148, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 2), align 4
  %149 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %150 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %149
  store i32 1, ptr %150, align 4
  %151 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %152 = add i32 %151, 1
  %153 = srem i32 %152, 2
  store i32 %153, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  br label %173

154:                                              ; preds = %144
  %155 = load ptr, ptr @enter_state.___tp_str.23, align 4
  %156 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = tail call ptr @llvm.thread.pointer() #10
  %160 = getelementptr inbounds %struct.thread_info, ptr %159, i32 0, i32 2
  %161 = load i32, ptr %160, align 8
  %162 = lshr i32 %161, 5
  %163 = getelementptr i32, ptr @__cpu_online_mask, i32 %162
  %164 = load volatile i32, ptr %163, align 4
  %165 = and i32 %161, 31
  %166 = shl nuw i32 1, %165
  %167 = and i32 %166, %164
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %158
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %170 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %155, i32 noundef %0, i1 noundef zeroext false) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %171

171:                                              ; preds = %169, %158, %154
  tail call void @pm_restrict_gfp_mask() #10
  %172 = tail call i32 @suspend_devices_and_enter(i32 noundef %0) #10
  tail call void @pm_restore_gfp_mask() #10
  store i8 0, ptr @events_check_enabled, align 1
  tail call void @thaw_processes() #10
  br label %173

173:                                              ; preds = %171, %146
  %174 = phi i32 [ %127, %146 ], [ %172, %171 ]
  %175 = tail call i32 @pm_notifier_call_chain(i32 noundef 4) #10
  br label %177

176:                                              ; preds = %94, %91, %88, %85
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #10
  br label %180

177:                                              ; preds = %173, %99
  %178 = phi i32 [ %100, %99 ], [ %174, %173 ]
  tail call void @pm_restore_console() #10
  tail call void @mutex_unlock(ptr noundef nonnull @system_transition_mutex) #10
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %177, %176, %43, %40, %35, %32, %29, %26
  %181 = phi i32 [ %178, %177 ], [ -1, %176 ], [ -22, %26 ], [ -22, %29 ], [ -22, %32 ], [ -16, %43 ], [ -16, %40 ], [ -22, %35 ]
  %182 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 1), align 4
  %184 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %185 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 13, i32 %184
  store i32 %181, ptr %185, align 4
  %186 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  %187 = add i32 %186, 1
  %188 = srem i32 %187, 2
  store i32 %188, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 12), align 4
  br label %192

189:                                              ; preds = %177
  %190 = load i32, ptr @suspend_stats, align 4
  %191 = add i32 %190, 1
  store i32 %191, ptr @suspend_stats, align 4
  br label %192

192:                                              ; preds = %189, %180
  %193 = phi i32 [ %181, %180 ], [ 0, %189 ]
  %194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %195

195:                                              ; preds = %192, %1
  %196 = phi i32 [ %193, %192 ], [ -22, %1 ]
  ret i32 %196
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_late([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_suspend_noirq([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @syscore_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @syscore_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_noirq([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_resume_early([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_all_idle_cpus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_swait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_swait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_pause() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_secondary_cpus(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_secondary_cpus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ksys_sync_helper() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restrict_gfp_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restore_gfp_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_prepare_console() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain_robust(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_notifier_call_chain(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_restore_console() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_processes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_kernel_threads() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thaw_processes() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 321893}
!9 = !{i64 321703}
!10 = !{i64 2154336519}
!11 = !{i64 2154336695}
!12 = !{i64 2149181120}
!13 = !{i64 2149176944}
!14 = !{i64 2149177019, i64 2149177046, i64 2149177093, i64 2149177115, i64 2149177143, i64 2149177163}
!15 = !{i64 2149205264}
!16 = !{!"auto-init"}
!17 = !{i64 324190}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 2154637559, i64 2154638046, i64 2154637596, i64 2154637652, i64 2154637686, i64 2154637710, i64 2154637751, i64 2154637772, i64 2154637800, i64 2154637834}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2154640409, i64 2154640896, i64 2154640446, i64 2154640502, i64 2154640536, i64 2154640560, i64 2154640601, i64 2154640622, i64 2154640650, i64 2154640684}
!22 = !{i8 0, i8 2}
