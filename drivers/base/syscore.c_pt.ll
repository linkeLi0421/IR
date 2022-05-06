; ModuleID = '/llk/IR/drivers/base/syscore.c_pt.bc'
source_filename = "../drivers/base/syscore.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22register_syscore_ops\22\09\09\09\09\09"
module asm "__kstrtabns_register_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_syscore_ops\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_syscore_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscore_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22syscore_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_syscore_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_syscore_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22syscore_resume\22\09\09\09\09\09"
module asm "__kstrtabns_syscore_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }

@syscore_ops_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @syscore_ops_lock, i64 12), ptr getelementptr (i8, ptr @syscore_ops_lock, i64 12) } }, align 4
@syscore_ops_list = internal global %struct.list_head { ptr @syscore_ops_list, ptr @syscore_ops_list }, align 4
@__kstrtab_register_syscore_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_syscore_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_register_syscore_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_syscore_ops to i32), ptr @__kstrtab_register_syscore_ops, ptr @__kstrtabns_register_syscore_ops }, section "___ksymtab_gpl+register_syscore_ops", align 4
@__kstrtab_unregister_syscore_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_syscore_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_syscore_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_syscore_ops to i32), ptr @__kstrtab_unregister_syscore_ops, ptr @__kstrtabns_unregister_syscore_ops }, section "___ksymtab_gpl+unregister_syscore_ops", align 4
@syscore_suspend.___tp_str = internal global ptr @.str, section "__tracepoint_str", align 4
@.str = private unnamed_addr constant [16 x i8] c"syscore_suspend\00", align 1
@syscore_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"drivers/base/syscore.c\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Interrupts enabled before system core suspend.\0A\00", align 1
@syscore_suspend.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Interrupts enabled after %pS\0A\00", align 1
@syscore_suspend.___tp_str.5 = internal global ptr @.str, section "__tracepoint_str", align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"\013PM: System core suspend callback %pS failed.\0A\00", align 1
@__kstrtab_syscore_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscore_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_syscore_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscore_suspend to i32), ptr @__kstrtab_syscore_suspend, ptr @__kstrtabns_syscore_suspend }, section "___ksymtab_gpl+syscore_suspend", align 4
@syscore_resume.___tp_str = internal global ptr @.str.7, section "__tracepoint_str", align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"syscore_resume\00", align 1
@syscore_resume.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Interrupts enabled before system core resume.\0A\00", align 1
@syscore_resume.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@syscore_resume.___tp_str.10 = internal global ptr @.str.7, section "__tracepoint_str", align 4
@__kstrtab_syscore_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_syscore_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_syscore_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @syscore_resume to i32), ptr @__kstrtab_syscore_resume, ptr @__kstrtabns_syscore_resume }, section "___ksymtab_gpl+syscore_resume", align 4
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"\016PM: Calling %pS\0A\00", align 1
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_register_syscore_ops, ptr @__ksymtab_syscore_resume, ptr @__ksymtab_syscore_suspend, ptr @__ksymtab_unregister_syscore_ops, ptr @syscore_resume.___tp_str, ptr @syscore_resume.___tp_str.10, ptr @syscore_suspend.___tp_str, ptr @syscore_suspend.___tp_str.5], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @register_syscore_ops(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @syscore_ops_lock) #4
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  store ptr @syscore_ops_list, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  store volatile ptr %0, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @syscore_ops_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unregister_syscore_ops(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @syscore_ops_lock) #4
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @syscore_ops_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @syscore_suspend() #0 {
  %1 = load ptr, ptr @syscore_suspend.___tp_str, align 4
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = tail call ptr @llvm.thread.pointer() #4
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %16 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  br label %17

17:                                               ; preds = %15, %4, %0
  %18 = tail call zeroext i1 @pm_wakeup_pending() #4
  br i1 %18, label %82, label %19

19:                                               ; preds = %17
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !10
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  %23 = load i1, ptr @syscore_suspend.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %19
  store i1 true, ptr @syscore_suspend.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 60, i32 noundef 9, ptr noundef nonnull @.str.2) #4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  %29 = icmp eq ptr %28, @syscore_ops_list
  br i1 %29, label %51, label %30

30:                                               ; preds = %47, %27
  %31 = phi ptr [ %49, %47 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.syscore_ops, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = tail call i32 %33() #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !10
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  %42 = load i1, ptr @syscore_suspend.__already_done.3, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %47, !prof !11

45:                                               ; preds = %38
  store i1 true, ptr @syscore_suspend.__already_done.3, align 1
  %46 = load ptr, ptr %32, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %46) #4
  br label %47

47:                                               ; preds = %45, %38, %30
  %48 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, @syscore_ops_list
  br i1 %50, label %51, label %30

51:                                               ; preds = %47, %27
  %52 = load ptr, ptr @syscore_suspend.___tp_str.5, align 4
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #4
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %67 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %52, i32 noundef 0, i1 noundef zeroext false) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  br label %82

68:                                               ; preds = %35
  %69 = load ptr, ptr %32, align 4
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %69) #5
  %71 = load ptr, ptr %31, align 4
  %72 = icmp eq ptr %71, @syscore_ops_list
  br i1 %72, label %82, label %73

73:                                               ; preds = %79, %68
  %74 = phi ptr [ %80, %79 ], [ %71, %68 ]
  %75 = getelementptr inbounds %struct.syscore_ops, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void %76() #4
  br label %79

79:                                               ; preds = %78, %73
  %80 = load ptr, ptr %74, align 4
  %81 = icmp eq ptr %80, @syscore_ops_list
  br i1 %81, label %82, label %73

82:                                               ; preds = %79, %68, %66, %55, %51, %17
  %83 = phi i32 [ -16, %17 ], [ 0, %51 ], [ 0, %55 ], [ 0, %66 ], [ %36, %68 ], [ %36, %79 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @syscore_resume() #0 {
  %1 = load ptr, ptr @syscore_resume.___tp_str, align 4
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = tail call ptr @llvm.thread.pointer() #4
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %16 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  br label %17

17:                                               ; preds = %15, %4, %0
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !10
  %19 = and i32 %18, 128
  %20 = icmp eq i32 %19, 0
  %21 = load i1, ptr @syscore_resume.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !11

24:                                               ; preds = %17
  store i1 true, ptr @syscore_resume.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.8) #4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load ptr, ptr @syscore_ops_list, align 4
  %27 = icmp eq ptr %26, @syscore_ops_list
  br i1 %27, label %45, label %28

28:                                               ; preds = %42, %25
  %29 = phi ptr [ %43, %42 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.syscore_ops, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  tail call void %31() #4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !10
  %35 = and i32 %34, 128
  %36 = icmp eq i32 %35, 0
  %37 = load i1, ptr @syscore_resume.__already_done.9, align 1
  %38 = xor i1 %37, true
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %42, !prof !11

40:                                               ; preds = %33
  store i1 true, ptr @syscore_resume.__already_done.9, align 1
  %41 = load ptr, ptr %30, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 104, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %41) #4
  br label %42

42:                                               ; preds = %40, %33, %28
  %43 = load ptr, ptr %29, align 4
  %44 = icmp eq ptr %43, @syscore_ops_list
  br i1 %44, label %45, label %28

45:                                               ; preds = %42, %25
  %46 = load ptr, ptr @syscore_resume.___tp_str.10, align 4
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = tail call ptr @llvm.thread.pointer() #4
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  %61 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %46, i32 noundef 0, i1 noundef zeroext false) #4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !9
  br label %62

62:                                               ; preds = %60, %49, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @syscore_shutdown() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @syscore_ops_lock) #4
  %1 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @syscore_ops_list, i32 0, i32 1), align 4
  %2 = icmp eq ptr %1, @syscore_ops_list
  br i1 %2, label %20, label %3

3:                                                ; preds = %16, %0
  %4 = phi ptr [ %18, %16 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.syscore_ops, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr @initcall_debug, align 1, !range !12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %6) #5
  %13 = load ptr, ptr %5, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %13, %11 ], [ %6, %8 ]
  tail call void %15() #4
  br label %16

16:                                               ; preds = %14, %3
  %17 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @syscore_ops_list
  br i1 %19, label %20, label %3

20:                                               ; preds = %16, %0
  tail call void @mutex_unlock(ptr noundef nonnull @syscore_ops_lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2154293134}
!9 = !{i64 2154293310}
!10 = !{i64 495682}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i8 0, i8 2}
