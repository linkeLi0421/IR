; ModuleID = '/llk/IR/drivers/base/power/clock_ops.c_pt.bc'
source_filename = "../drivers/base/power/clock_ops.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_add:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_add\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_add_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_add_clk\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_add_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pm_clk_add_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pm_clk_add_clk\22\09\09\09\09\09"
module asm "__kstrtabns_of_pm_clk_add_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pm_clk_add_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pm_clk_add_clks\22\09\09\09\09\09"
module asm "__kstrtabns_of_pm_clk_add_clks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_remove_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_remove_clk\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_remove_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_init\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_create\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_clk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_clk_create\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_clk_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_resume\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_clk_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_clk_add_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pm_clk_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.pm_clock_entry = type { %struct.list_head, ptr, ptr, i32, i8 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pm_clk_notifier_block = type { %struct.notifier_block, ptr, [0 x ptr] }
%struct.notifier_block = type { ptr, ptr, i32 }

@__kstrtab_pm_clk_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_add = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_add to i32), ptr @__kstrtab_pm_clk_add, ptr @__kstrtabns_pm_clk_add }, section "___ksymtab_gpl+pm_clk_add", align 4
@__kstrtab_pm_clk_add_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_add_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_add_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_add_clk to i32), ptr @__kstrtab_pm_clk_add_clk, ptr @__kstrtabns_pm_clk_add_clk }, section "___ksymtab_gpl+pm_clk_add_clk", align 4
@__kstrtab_of_pm_clk_add_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pm_clk_add_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pm_clk_add_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pm_clk_add_clk to i32), ptr @__kstrtab_of_pm_clk_add_clk, ptr @__kstrtabns_of_pm_clk_add_clk }, section "___ksymtab_gpl+of_pm_clk_add_clk", align 4
@__kstrtab_of_pm_clk_add_clks = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pm_clk_add_clks = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pm_clk_add_clks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pm_clk_add_clks to i32), ptr @__kstrtab_of_pm_clk_add_clks, ptr @__kstrtabns_of_pm_clk_add_clks }, section "___ksymtab_gpl+of_pm_clk_add_clks", align 4
@__kstrtab_pm_clk_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_remove to i32), ptr @__kstrtab_pm_clk_remove, ptr @__kstrtabns_pm_clk_remove }, section "___ksymtab_gpl+pm_clk_remove", align 4
@__kstrtab_pm_clk_remove_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_remove_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_remove_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_remove_clk to i32), ptr @__kstrtab_pm_clk_remove_clk, ptr @__kstrtabns_pm_clk_remove_clk }, section "___ksymtab_gpl+pm_clk_remove_clk", align 4
@pm_clk_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [18 x i8] c"&psd->clock_mutex\00", align 1
@__kstrtab_pm_clk_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_init to i32), ptr @__kstrtab_pm_clk_init, ptr @__kstrtabns_pm_clk_init }, section "___ksymtab_gpl+pm_clk_init", align 4
@__kstrtab_pm_clk_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_create = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_create to i32), ptr @__kstrtab_pm_clk_create, ptr @__kstrtabns_pm_clk_create }, section "___ksymtab_gpl+pm_clk_create", align 4
@__kstrtab_pm_clk_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_destroy to i32), ptr @__kstrtab_pm_clk_destroy, ptr @__kstrtabns_pm_clk_destroy }, section "___ksymtab_gpl+pm_clk_destroy", align 4
@__kstrtab_devm_pm_clk_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_clk_create = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_clk_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_clk_create to i32), ptr @__kstrtab_devm_pm_clk_create, ptr @__kstrtabns_devm_pm_clk_create }, section "___ksymtab_gpl+devm_pm_clk_create", align 4
@__func__.pm_clk_suspend = private unnamed_addr constant [15 x i8] c"pm_clk_suspend\00", align 1
@__kstrtab_pm_clk_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_suspend to i32), ptr @__kstrtab_pm_clk_suspend, ptr @__kstrtabns_pm_clk_suspend }, section "___ksymtab_gpl+pm_clk_suspend", align 4
@__func__.pm_clk_resume = private unnamed_addr constant [14 x i8] c"pm_clk_resume\00", align 1
@__kstrtab_pm_clk_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_resume to i32), ptr @__kstrtab_pm_clk_resume, ptr @__kstrtabns_pm_clk_resume }, section "___ksymtab_gpl+pm_clk_resume", align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to suspend device\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to suspend clock\0A\00", align 1
@__kstrtab_pm_clk_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_runtime_suspend to i32), ptr @__kstrtab_pm_clk_runtime_suspend, ptr @__kstrtabns_pm_clk_runtime_suspend }, section "___ksymtab_gpl+pm_clk_runtime_suspend", align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to resume clock\0A\00", align 1
@__kstrtab_pm_clk_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_runtime_resume to i32), ptr @__kstrtab_pm_clk_runtime_resume, ptr @__kstrtabns_pm_clk_runtime_resume }, section "___ksymtab_gpl+pm_clk_runtime_resume", align 4
@__kstrtab_pm_clk_add_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_clk_add_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_clk_add_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_clk_add_notifier to i32), ptr @__kstrtab_pm_clk_add_notifier, ptr @__kstrtabns_pm_clk_add_notifier }, section "___ksymtab_gpl+pm_clk_add_notifier", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"clk_prepare() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\013%s: atomic context with clock_ops_might_sleep = %d\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: failed to enable clk %p, error %d\0A\00", align 1
@__func__.__pm_clk_enable = private unnamed_addr constant [16 x i8] c"__pm_clk_enable\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_devm_pm_clk_create, ptr @__ksymtab_of_pm_clk_add_clk, ptr @__ksymtab_of_pm_clk_add_clks, ptr @__ksymtab_pm_clk_add, ptr @__ksymtab_pm_clk_add_clk, ptr @__ksymtab_pm_clk_add_notifier, ptr @__ksymtab_pm_clk_create, ptr @__ksymtab_pm_clk_destroy, ptr @__ksymtab_pm_clk_init, ptr @__ksymtab_pm_clk_remove, ptr @__ksymtab_pm_clk_remove_clk, ptr @__ksymtab_pm_clk_resume, ptr @__ksymtab_pm_clk_runtime_resume, ptr @__ksymtab_pm_clk_runtime_suspend, ptr @__ksymtab_pm_clk_suspend], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_clk_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__pm_clk_add(ptr noundef %0, ptr noundef %1, ptr noundef null)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pm_clk_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %68, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %68, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 24) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %68, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %1, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = tail call noalias ptr @kstrdup(ptr noundef nonnull %1, i32 noundef 3264) #10
  %17 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 1
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %28

22:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %68

23:                                               ; preds = %13
  %24 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %68

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 2
  store ptr %2, ptr %27, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi ptr [ %21, %19 ], [ %2, %26 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 2
  %33 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = tail call ptr @clk_get(ptr noundef nonnull %0, ptr noundef %34) #10
  store ptr %35, ptr %32, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi ptr [ %35, %31 ], [ %29, %28 ]
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 3
  store i32 4, ptr %40, align 8
  br label %52

41:                                               ; preds = %36
  %42 = tail call zeroext i1 @clk_is_enabled_when_prepared(ptr noundef %37) #10
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 3
  store i32 1, ptr %44, align 8
  %45 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 4
  store i8 1, ptr %45, align 4
  br label %52

46:                                               ; preds = %41
  %47 = tail call i32 @clk_prepare(ptr noundef %37) #10
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 3
  br i1 %48, label %51, label %50

50:                                               ; preds = %46
  store i32 4, ptr %49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #11
  br label %52

51:                                               ; preds = %46
  store i32 2, ptr %49, align 8
  br label %52

52:                                               ; preds = %51, %50, %43, %39
  %53 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %53) #10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %7) #10
  %54 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 4
  %55 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 4, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr %11, ptr %55, align 4
  store ptr %54, ptr %11, align 8
  %57 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %11, ptr %56, align 4
  %58 = getelementptr inbounds %struct.pm_clock_entry, ptr %11, i32 0, i32 4
  %59 = load i8, ptr %58, align 4, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  br label %65

65:                                               ; preds = %61, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %66 = load i16, ptr %7, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_unlock(ptr noundef %53) #10
  br label %68

68:                                               ; preds = %65, %25, %22, %9, %5, %3
  %69 = phi i32 [ 0, %65 ], [ -12, %22 ], [ -2, %25 ], [ -22, %5 ], [ -12, %9 ], [ -22, %3 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_clk_add_clk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__pm_clk_add(ptr noundef %0, ptr noundef null, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pm_clk_add_clk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = tail call ptr @of_clk_get_by_name(ptr noundef nonnull %6, ptr noundef nonnull %1) #10
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %19

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @__pm_clk_add(ptr noundef nonnull %0, ptr noundef null, ptr noundef %11) #10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_put(ptr noundef %11) #10
  br label %19

19:                                               ; preds = %18, %15, %13, %4, %2
  %20 = phi i32 [ %14, %13 ], [ %16, %18 ], [ -22, %4 ], [ -22, %2 ], [ 0, %15 ]
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_pm_clk_add_clks(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @of_clk_get_parent_count(ptr noundef nonnull %5) #10
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %45, label %10

10:                                               ; preds = %7
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #10
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %45, label %13, !prof !14

13:                                               ; preds = %10
  %14 = extractvalue { i32, i1 } %11, 0
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %31, %13
  %18 = phi i32 [ %32, %31 ], [ 0, %13 ]
  %19 = load ptr, ptr %4, align 8
  %20 = tail call ptr @of_clk_get(ptr noundef %19, i32 noundef %18) #10
  %21 = getelementptr ptr, ptr %15, i32 %18
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = ptrtoint ptr %20 to i32
  br label %34

25:                                               ; preds = %17
  %26 = tail call fastcc i32 @__pm_clk_add(ptr noundef nonnull %0, ptr noundef null, ptr noundef %20) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = getelementptr ptr, ptr %15, i32 %18
  %30 = load ptr, ptr %29, align 4
  tail call void @clk_put(ptr noundef %30) #10
  br label %34

31:                                               ; preds = %25
  %32 = add nuw nsw i32 %18, 1
  %33 = icmp eq i32 %32, %8
  br i1 %33, label %43, label %17

34:                                               ; preds = %28, %23
  %35 = phi i32 [ %24, %23 ], [ %26, %28 ]
  %36 = icmp eq i32 %18, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %37, %34
  %38 = phi i32 [ %39, %37 ], [ %18, %34 ]
  %39 = add nsw i32 %38, -1
  %40 = getelementptr ptr, ptr %15, i32 %39
  %41 = load ptr, ptr %40, align 4
  tail call void @pm_clk_remove_clk(ptr noundef nonnull %0, ptr noundef %41)
  %42 = icmp eq i32 %39, 0
  br i1 %42, label %43, label %37

43:                                               ; preds = %37, %34, %31
  %44 = phi i32 [ %35, %34 ], [ %35, %37 ], [ %8, %31 ]
  tail call void @kfree(ptr noundef nonnull %15) #10
  br label %45

45:                                               ; preds = %43, %13, %10, %7, %3, %1
  %46 = phi i32 [ -22, %3 ], [ -22, %1 ], [ -19, %7 ], [ -12, %13 ], [ -12, %10 ], [ %44, %43 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_clk_remove_clk(ptr noundef readonly %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %39

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %6) #10
  %12 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 4
  br label %13

13:                                               ; preds = %17, %10
  %14 = phi ptr [ %12, %10 ], [ %15, %17 ]
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %12
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.pm_clock_entry, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %24, label %13

21:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %22 = load i16, ptr %6, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %39

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %29 = getelementptr inbounds %struct.pm_clock_entry, ptr %15, i32 0, i32 4
  %30 = load i8, ptr %29, align 4, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %37 = load i16, ptr %6, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_unlock(ptr noundef %11) #10
  tail call fastcc void @__pm_clk_remove(ptr noundef %15)
  br label %39

39:                                               ; preds = %36, %21, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_clk_remove(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %46, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %9) #10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull %6) #10
  %10 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = icmp eq ptr %1, null
  br label %15

15:                                               ; preds = %25, %13
  %16 = phi ptr [ %11, %13 ], [ %26, %25 ]
  %17 = getelementptr inbounds %struct.pm_clock_entry, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %14, label %20, label %21

20:                                               ; preds = %15
  br i1 %19, label %31, label %25

21:                                               ; preds = %15
  br i1 %19, label %25, label %22

22:                                               ; preds = %21
  %23 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %18)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22, %21, %20
  %26 = load ptr, ptr %16, align 4
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %28, label %15

28:                                               ; preds = %25, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %29 = load i16, ptr %6, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_unlock(ptr noundef %9) #10
  br label %46

31:                                               ; preds = %22, %20
  %32 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %16, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  %36 = getelementptr inbounds %struct.pm_clock_entry, ptr %16, i32 0, i32 4
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.pm_subsys_data, ptr %6, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %44 = load i16, ptr %6, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_unlock(ptr noundef %9) #10
  tail call fastcc void @__pm_clk_remove(ptr noundef %16)
  br label %46

46:                                               ; preds = %43, %28, %4, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__pm_clk_remove(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pm_clock_entry, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %17 [
    i32 3, label %6
    i32 2, label %9
    i32 1, label %12
    i32 4, label %12
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pm_clock_entry, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #10
  br label %9

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds %struct.pm_clock_entry, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_unprepare(ptr noundef %11) #10
  br label %12

12:                                               ; preds = %9, %3, %3
  %13 = getelementptr inbounds %struct.pm_clock_entry, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @clk_put(ptr noundef %14) #10
  br label %17

17:                                               ; preds = %16, %12, %3
  %18 = getelementptr inbounds %struct.pm_clock_entry, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_clk_init(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.pm_subsys_data, ptr %5, i32 0, i32 4
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pm_subsys_data, ptr %5, i32 0, i32 4, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.pm_subsys_data, ptr %5, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @pm_clk_init.__key) #10
  %11 = getelementptr inbounds %struct.pm_subsys_data, ptr %5, i32 0, i32 2
  store i32 0, ptr %11, align 4
  br label %12

12:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_clk_create(ptr noundef %0) #0 {
  %2 = tail call i32 @dev_pm_get_subsys_data(ptr noundef %0) #10
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_get_subsys_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_clk_destroy(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  br label %38

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  store volatile ptr %2, ptr %2, align 8
  %10 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 3
  call void @mutex_lock(ptr noundef %11) #10
  call void @_raw_spin_lock_irq(ptr noundef nonnull %7) #10
  %12 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 4
  %13 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %12
  br i1 %15, label %25, label %16

16:                                               ; preds = %16, %9
  %17 = phi ptr [ %19, %16 ], [ %14, %9 ]
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %17, ptr %23, align 4
  store ptr %22, ptr %17, align 4
  store ptr %2, ptr %18, align 4
  store volatile ptr %17, ptr %2, align 8
  %24 = icmp eq ptr %19, %12
  br i1 %24, label %25, label %16

25:                                               ; preds = %16, %9
  %26 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 2
  store i32 0, ptr %26, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %27 = load i16, ptr %7, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @mutex_unlock(ptr noundef %11) #10
  call void @dev_pm_put_subsys_data(ptr noundef nonnull %0) #10
  %29 = load ptr, ptr %10, align 4
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %38, label %31

31:                                               ; preds = %31, %25
  %32 = phi ptr [ %34, %31 ], [ %29, %25 ]
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %36, align 4
  store volatile ptr %35, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  call fastcc void @__pm_clk_remove(ptr noundef %32)
  %37 = icmp eq ptr %34, %2
  br i1 %37, label %38, label %31

38:                                               ; preds = %31, %25, %5, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_put_subsys_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pm_clk_create(ptr noundef %0) #0 {
  %2 = tail call i32 @dev_pm_get_subsys_data(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @pm_clk_destroy_action, ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @pm_clk_destroy(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ 0, %4 ], [ %5, %7 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pm_clk_destroy_action(ptr noundef %0) #0 {
  tail call void @pm_clk_destroy(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_clk_suspend(ptr noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  br label %43

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %5
  %10 = call fastcc i32 @pm_clk_op_lock(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull @__func__.pm_clk_suspend)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 4
  %14 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 4, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %35, label %17

17:                                               ; preds = %31, %12
  %18 = phi ptr [ %33, %31 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.pm_clock_entry, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.pm_clock_entry, ptr %18, i32 0, i32 4
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.pm_clock_entry, ptr %18, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #10
  br i1 %25, label %29, label %28

28:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %27) #10
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ 1, %28 ], [ 2, %22 ]
  store i32 %30, ptr %19, align 4
  br label %31

31:                                               ; preds = %29, %17
  %32 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %13
  br i1 %34, label %35, label %17

35:                                               ; preds = %31, %12
  %36 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %40) #10
  br label %43

41:                                               ; preds = %35
  %42 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %7, i32 noundef %42) #10
  br label %43

43:                                               ; preds = %41, %39, %9, %5, %4
  %44 = phi i32 [ 0, %5 ], [ %10, %9 ], [ 0, %4 ], [ 0, %39 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_clk_op_lock(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #10
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !16
  %10 = and i32 %9, 128
  %11 = icmp ne i32 %10, 0
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i1 [ true, %3 ], [ %11, %8 ]
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  store i32 %14, ptr %1, align 4
  %15 = getelementptr inbounds %struct.pm_subsys_data, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.pm_subsys_data, ptr %0, i32 0, i32 3
  br label %20

20:                                               ; preds = %28, %18
  %21 = phi i32 [ %14, %18 ], [ %29, %28 ]
  br i1 %13, label %22, label %25

22:                                               ; preds = %20
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef %16) #11
  %24 = load i32, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %24) #10
  br label %32

25:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %21) #10
  tail call void @mutex_lock(ptr noundef %19) #10
  %26 = load i32, ptr %15, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32, !prof !14

28:                                               ; preds = %25
  tail call void @mutex_unlock(ptr noundef %19) #10
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #10
  store i32 %29, ptr %1, align 4
  %30 = load i32, ptr %15, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %28, %25, %22, %12
  %33 = phi i32 [ -1, %22 ], [ 0, %12 ], [ 0, %25 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_clk_resume(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  br label %50

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 26
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %5
  %10 = call fastcc i32 @pm_clk_op_lock(ptr noundef nonnull %7, ptr noundef nonnull %2, ptr noundef nonnull @__func__.pm_clk_resume)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %42, label %16

16:                                               ; preds = %39, %12
  %17 = phi ptr [ %40, %39 ], [ %14, %12 ]
  %18 = getelementptr inbounds %struct.pm_clock_entry, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %39 [
    i32 1, label %20
    i32 2, label %29
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pm_clock_entry, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = tail call i32 @clk_enable(ptr noundef %22) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #10
  br label %35

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.pm_clock_entry, ptr %17, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @clk_enable(ptr noundef %31) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %25
  store i32 3, ptr %18, align 4
  br label %39

35:                                               ; preds = %29, %28, %20
  %36 = phi i32 [ %32, %29 ], [ %26, %28 ], [ %23, %20 ]
  %37 = getelementptr inbounds %struct.pm_clock_entry, ptr %17, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.__pm_clk_enable, ptr noundef %38, i32 noundef %36) #11
  br label %39

39:                                               ; preds = %35, %34, %16
  %40 = load ptr, ptr %17, align 4
  %41 = icmp eq ptr %40, %13
  br i1 %41, label %42, label %16

42:                                               ; preds = %39, %12
  %43 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.pm_subsys_data, ptr %7, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %47) #10
  br label %50

48:                                               ; preds = %42
  %49 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %7, i32 noundef %49) #10
  br label %50

50:                                               ; preds = %48, %46, %9, %5, %4
  %51 = phi i32 [ 0, %5 ], [ %10, %9 ], [ 0, %4 ], [ 0, %46 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_clk_runtime_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  br label %10

5:                                                ; preds = %1
  %6 = tail call i32 @pm_clk_suspend(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.2) #11
  %9 = tail call i32 @pm_generic_runtime_resume(ptr noundef %0) #10
  br label %10

10:                                               ; preds = %8, %5, %4
  %11 = phi i32 [ %2, %4 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pm_clk_runtime_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @pm_clk_resume(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #11
  br label %7

5:                                                ; preds = %1
  %6 = tail call i32 @pm_generic_runtime_resume(ptr noundef %0) #10
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi i32 [ %2, %4 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_clk_add_notifier(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  store ptr @pm_clk_notify, ptr %1, align 4
  %7 = tail call i32 @bus_register_notifier(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pm_clk_notify(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  switch i32 %1, label %33 [
    i32 1, label %4
    i32 2, label %26
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = tail call i32 @dev_pm_get_subsys_data(ptr noundef %2) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pm_clk_notifier_block, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @dev_pm_domain_set(ptr noundef %2, ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.pm_clk_notifier_block, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %17, %11
  %18 = phi ptr [ %21, %17 ], [ %14, %11 ]
  %19 = phi ptr [ %22, %17 ], [ %15, %11 ]
  %20 = tail call fastcc i32 @__pm_clk_add(ptr noundef %2, ptr noundef nonnull %19, ptr noundef null) #10
  %21 = getelementptr ptr, ptr %18, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %17

24:                                               ; preds = %11
  %25 = tail call fastcc i32 @__pm_clk_add(ptr noundef %2, ptr noundef null, ptr noundef null) #10
  br label %33

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.pm_clk_notifier_block, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @dev_pm_domain_set(ptr noundef %2, ptr noundef null) #10
  tail call void @pm_clk_destroy(ptr noundef %2)
  br label %33

33:                                               ; preds = %32, %26, %24, %17, %8, %4, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_enabled_when_prepared(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_set(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{i64 2149227597}
!10 = !{i64 2149223421}
!11 = !{i64 2149223496, i64 2149223523, i64 2149223570, i64 2149223592, i64 2149223620, i64 2149223640}
!12 = !{i64 323672}
!13 = !{i64 2149251741}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"auto-init"}
!16 = !{i64 326159}
