; ModuleID = '/llk/IR/drivers/base/power/main.c_pt.bc'
source_filename = "../drivers/base/power/main.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpm_resume_start:\09\09\09\09\09"
module asm "\09.asciz \09\22dpm_resume_start\22\09\09\09\09\09"
module asm "__kstrtabns_dpm_resume_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpm_resume_end:\09\09\09\09\09"
module asm "\09.asciz \09\22dpm_resume_end\22\09\09\09\09\09"
module asm "__kstrtabns_dpm_resume_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpm_suspend_end:\09\09\09\09\09"
module asm "\09.asciz \09\22dpm_suspend_end\22\09\09\09\09\09"
module asm "__kstrtabns_dpm_suspend_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpm_suspend_start:\09\09\09\09\09"
module asm "\09.asciz \09\22dpm_suspend_start\22\09\09\09\09\09"
module asm "__kstrtabns_dpm_suspend_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___suspend_report_result:\09\09\09\09\09"
module asm "\09.asciz \09\22__suspend_report_result\22\09\09\09\09\09"
module asm "__kstrtabns___suspend_report_result:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_pm_wait_for_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22device_pm_wait_for_dev\22\09\09\09\09\09"
module asm "__kstrtabns_device_pm_wait_for_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dpm_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22dpm_for_each_dev\22\09\09\09\09\09"
module asm "__kstrtabns_dpm_for_each_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.suspend_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [40 x i8]], i32, [2 x i32], i32, [2 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@dpm_list = dso_local global %struct.list_head { ptr @dpm_list, ptr @dpm_list }, align 4
@dpm_list_mtx = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dpm_list_mtx, i64 12), ptr getelementptr (i8, ptr @dpm_list_mtx, i64 12) } }, align 4
@.str = private unnamed_addr constant [38 x i8] c"PM: parent %s should not be sleeping\0A\00", align 1
@pm_transition.0 = internal unnamed_addr global i32 0, align 4
@dpm_resume_early.___tp_str = internal global ptr @.str.1, section "__tracepoint_str", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"dpm_resume_early\00", align 1
@dpm_late_early_list = internal global %struct.list_head { ptr @dpm_late_early_list, ptr @dpm_late_early_list }, align 4
@dpm_suspended_list = internal global %struct.list_head { ptr @dpm_suspended_list, ptr @dpm_suspended_list }, align 4
@suspend_stats = dso_local global %struct.suspend_stats zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" early\00", align 1
@dpm_resume_early.___tp_str.4 = internal global ptr @.str.1, section "__tracepoint_str", align 4
@__kstrtab_dpm_resume_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpm_resume_start = external dso_local constant [0 x i8], align 1
@__ksymtab_dpm_resume_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpm_resume_start to i32), ptr @__kstrtab_dpm_resume_start, ptr @__kstrtabns_dpm_resume_start }, section "___ksymtab_gpl+dpm_resume_start", align 4
@dpm_resume.___tp_str = internal global ptr @.str.5, section "__tracepoint_str", align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"dpm_resume\00", align 1
@async_error = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dpm_prepared_list = internal global %struct.list_head { ptr @dpm_prepared_list, ptr @dpm_prepared_list }, align 4
@dpm_resume.___tp_str.7 = internal global ptr @.str.5, section "__tracepoint_str", align 4
@dpm_complete.___tp_str = internal global ptr @.str.8, section "__tracepoint_str", align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"dpm_complete\00", align 1
@dpm_complete.___tp_str.9 = internal global ptr @.str.8, section "__tracepoint_str", align 4
@__kstrtab_dpm_resume_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpm_resume_end = external dso_local constant [0 x i8], align 1
@__ksymtab_dpm_resume_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpm_resume_end to i32), ptr @__kstrtab_dpm_resume_end, ptr @__kstrtabns_dpm_resume_end }, section "___ksymtab_gpl+dpm_resume_end", align 4
@dpm_suspend_late.___tp_str = internal global ptr @.str.10, section "__tracepoint_str", align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"dpm_suspend_late\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" late\00", align 1
@dpm_suspend_late.___tp_str.13 = internal global ptr @.str.10, section "__tracepoint_str", align 4
@__kstrtab_dpm_suspend_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpm_suspend_end = external dso_local constant [0 x i8], align 1
@__ksymtab_dpm_suspend_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpm_suspend_end to i32), ptr @__kstrtab_dpm_suspend_end, ptr @__kstrtabns_dpm_suspend_end }, section "___ksymtab_gpl+dpm_suspend_end", align 4
@dpm_suspend.___tp_str = internal global ptr @.str.15, section "__tracepoint_str", align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"dpm_suspend\00", align 1
@dpm_suspend.___tp_str.16 = internal global ptr @.str.15, section "__tracepoint_str", align 4
@dpm_prepare.___tp_str = internal global ptr @.str.17, section "__tracepoint_str", align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"dpm_prepare\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"PM: not prepared for power transition: code %d\0A\00", align 1
@dpm_prepare.___tp_str.19 = internal global ptr @.str.17, section "__tracepoint_str", align 4
@__kstrtab_dpm_suspend_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpm_suspend_start = external dso_local constant [0 x i8], align 1
@__ksymtab_dpm_suspend_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpm_suspend_start to i32), ptr @__kstrtab_dpm_suspend_start, ptr @__kstrtabns_dpm_suspend_start }, section "___ksymtab_gpl+dpm_suspend_start", align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"\013PM: %s(): %pS returns %d\0A\00", align 1
@__kstrtab___suspend_report_result = external dso_local constant [0 x i8], align 1
@__kstrtabns___suspend_report_result = external dso_local constant [0 x i8], align 1
@__ksymtab___suspend_report_result = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__suspend_report_result to i32), ptr @__kstrtab___suspend_report_result, ptr @__kstrtabns___suspend_report_result }, section "___ksymtab_gpl+__suspend_report_result", align 4
@__kstrtab_device_pm_wait_for_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_pm_wait_for_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_device_pm_wait_for_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_pm_wait_for_dev to i32), ptr @__kstrtab_device_pm_wait_for_dev, ptr @__kstrtabns_device_pm_wait_for_dev }, section "___ksymtab_gpl+device_pm_wait_for_dev", align 4
@__kstrtab_dpm_for_each_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_dpm_for_each_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_dpm_for_each_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dpm_for_each_dev to i32), ptr @__kstrtab_dpm_for_each_dev, ptr @__kstrtabns_dpm_for_each_dev }, section "___ksymtab_gpl+dpm_for_each_dev", align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@dpm_noirq_resume_devices.___tp_str = internal global ptr @.str.23, section "__tracepoint_str", align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"dpm_resume_noirq\00", align 1
@dpm_noirq_list = internal global %struct.list_head { ptr @dpm_noirq_list, ptr @dpm_noirq_list }, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c" noirq\00", align 1
@dpm_noirq_resume_devices.___tp_str.26 = internal global ptr @.str.23, section "__tracepoint_str", align 4
@.str.27 = private unnamed_addr constant [7 x i8] c" async\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"noirq power domain \00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"noirq type \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"noirq class \00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"noirq bus \00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"noirq driver \00", align 1
@__func__.dpm_run_callback = private unnamed_addr constant [17 x i8] c"dpm_run_callback\00", align 1
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@pm_async_enabled = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [20 x i8] c"early power domain \00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"early type \00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"early class \00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"early bus \00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"early driver \00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"PM: failed to %s%s: error %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"suspend\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"quiesce\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"hibernate\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"thaw\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"(unknown PM event)\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"power domain \00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"type \00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"bus \00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"legacy bus \00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"driver \00", align 1
@__tracepoint_device_pm_callback_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_device_pm_callback_end = external dso_local global %struct.tracepoint, align 4
@dpm_noirq_suspend_devices.___tp_str = internal global ptr @.str.60, section "__tracepoint_str", align 4
@.str.60 = private unnamed_addr constant [18 x i8] c"dpm_suspend_noirq\00", align 1
@dpm_noirq_suspend_devices.___tp_str.61 = internal global ptr @.str.60, section "__tracepoint_str", align 4
@.str.62 = private unnamed_addr constant [19 x i8] c"late power domain \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"late type \00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"late class \00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"late bus \00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"late driver \00", align 1
@__func__.legacy_suspend = private unnamed_addr constant [15 x i8] c"legacy_suspend\00", align 1
@__func__.device_prepare = private unnamed_addr constant [15 x i8] c"device_prepare\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab___suspend_report_result, ptr @__ksymtab_device_pm_wait_for_dev, ptr @__ksymtab_dpm_for_each_dev, ptr @__ksymtab_dpm_resume_end, ptr @__ksymtab_dpm_resume_start, ptr @__ksymtab_dpm_suspend_end, ptr @__ksymtab_dpm_suspend_start, ptr @dpm_complete.___tp_str, ptr @dpm_complete.___tp_str.9, ptr @dpm_noirq_resume_devices.___tp_str, ptr @dpm_noirq_resume_devices.___tp_str.26, ptr @dpm_noirq_suspend_devices.___tp_str, ptr @dpm_noirq_suspend_devices.___tp_str.61, ptr @dpm_prepare.___tp_str, ptr @dpm_prepare.___tp_str.19, ptr @dpm_resume.___tp_str, ptr @dpm_resume.___tp_str.7, ptr @dpm_resume_early.___tp_str, ptr @dpm_resume_early.___tp_str.4, ptr @dpm_suspend.___tp_str, ptr @dpm_suspend.___tp_str.16, ptr @dpm_suspend_late.___tp_str, ptr @dpm_suspend_late.___tp_str.13], section "llvm.metadata"
@switch.table.dpm_suspend_end = private unnamed_addr constant [8 x i32] [i32 128, i32 16, i32 0, i32 64, i32 0, i32 0, i32 0, i32 128], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_sleep_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, -121
  store i16 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %6, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #9
  tail call void @complete_all(ptr noundef %5) #9
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4, i32 1
  store ptr %8, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_lock() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_unlock() local_unnamed_addr #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 128
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  tail call void @device_pm_check_callbacks(ptr noundef %0)
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %8, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %22) #10
  br label %23

23:                                               ; preds = %21, %10, %6
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_list, i32 0, i32 1), align 4
  store ptr %24, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_list, i32 0, i32 1), align 4
  store ptr @dpm_list, ptr %24, align 4
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4, i32 1
  store ptr %25, ptr %26, align 4
  store volatile ptr %24, ptr %25, align 4
  %27 = load i16, ptr %2, align 4
  %28 = or i16 %27, 4
  store i16 %28, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  br label %29

29:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_check_callbacks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %210

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %210

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %210

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %210

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %210

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 9
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %210

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %210

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dev_pm_ops, ptr %8, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %210

41:                                               ; preds = %37, %6
  %42 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 14
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %210

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 15
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %210

49:                                               ; preds = %45, %1
  %50 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %88, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.class, ptr %51, i32 0, i32 13
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %88, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %210

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.dev_pm_ops, ptr %55, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %210

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dev_pm_ops, ptr %55, i32 0, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %210

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.dev_pm_ops, ptr %55, i32 0, i32 14
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %210

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dev_pm_ops, ptr %55, i32 0, i32 15
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %210

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.dev_pm_ops, ptr %55, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %210

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.dev_pm_ops, ptr %55, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %210

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.dev_pm_ops, ptr %55, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %210

88:                                               ; preds = %84, %53, %49
  %89 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %127, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.device_type, ptr %90, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %127, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %94, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %210

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %210

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 8
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %210

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 14
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %210

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 15
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %210

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 9
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %210

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %210

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %210

127:                                              ; preds = %123, %92, %88
  %128 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %129 = load ptr, ptr %128, align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %162, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %129, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %210

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.dev_pm_ops, ptr %129, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %210

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.dev_pm_ops, ptr %129, i32 0, i32 8
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %210

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.dev_pm_ops, ptr %129, i32 0, i32 14
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %210

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.dev_pm_ops, ptr %129, i32 0, i32 15
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %210

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.dev_pm_ops, ptr %129, i32 0, i32 9
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %210

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.dev_pm_ops, ptr %129, i32 0, i32 3
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %210

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.dev_pm_ops, ptr %129, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %210

162:                                              ; preds = %158, %127
  %163 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %164 = load ptr, ptr %163, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %210, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.device_driver, ptr %164, i32 0, i32 16
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %201, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr %168, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %210

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 2
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %210

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 8
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %210

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 14
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %210

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 15
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %210

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 9
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %210

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 3
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %210

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %197, %166
  %202 = getelementptr inbounds %struct.device_driver, ptr %164, i32 0, i32 12
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.device_driver, ptr %164, i32 0, i32 13
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  %209 = select i1 %208, i8 4, i8 0
  br label %210

210:                                              ; preds = %205, %201, %197, %193, %189, %185, %181, %177, %173, %170, %162, %158, %154, %150, %146, %142, %138, %134, %131, %123, %119, %115, %111, %107, %103, %99, %96, %84, %80, %76, %72, %68, %64, %60, %57, %45, %41, %37, %33, %29, %25, %21, %17, %13, %10
  %211 = phi i8 [ 0, %158 ], [ 0, %123 ], [ 0, %84 ], [ 0, %45 ], [ 0, %41 ], [ 0, %37 ], [ 4, %162 ], [ 0, %201 ], [ 0, %197 ], [ %209, %205 ], [ 0, %33 ], [ 0, %29 ], [ 0, %25 ], [ 0, %21 ], [ 0, %17 ], [ 0, %13 ], [ 0, %10 ], [ 0, %80 ], [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %60 ], [ 0, %57 ], [ 0, %119 ], [ 0, %115 ], [ 0, %111 ], [ 0, %107 ], [ 0, %103 ], [ 0, %99 ], [ 0, %96 ], [ 0, %154 ], [ 0, %150 ], [ 0, %146 ], [ 0, %142 ], [ 0, %138 ], [ 0, %134 ], [ 0, %131 ], [ 0, %193 ], [ 0, %189 ], [ 0, %185 ], [ 0, %181 ], [ 0, %177 ], [ 0, %173 ], [ 0, %170 ]
  %212 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %213 = load i8, ptr %212, align 4
  %214 = and i8 %213, -5
  %215 = or i8 %214, %211
  store i8 %215, ptr %212, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %216 = load i16, ptr %2, align 4
  %217 = add i16 %216, 1
  store i16 %217, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 128
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  tail call void @complete_all(ptr noundef %7) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  %13 = load i16, ptr %2, align 4
  %14 = and i16 %13, -5
  store i16 %14, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %15 = tail call i32 @device_wakeup_disable(ptr noundef %0) #9
  tail call void @pm_runtime_remove(ptr noundef %0) #9
  tail call void @device_pm_check_callbacks(ptr noundef %0)
  br label %16

16:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_move_before(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  %9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 4, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %3, ptr %9, align 4
  store ptr %4, ptr %3, align 4
  store ptr %10, ptr %5, align 4
  store volatile ptr %3, ptr %10, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_move_after(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  store ptr %9, ptr %3, align 4
  store ptr %4, ptr %5, align 4
  store volatile ptr %3, ptr %4, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_move_last(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 4, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_list, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_list, i32 0, i32 1), align 4
  store ptr @dpm_list, ptr %2, align 4
  store ptr %7, ptr %3, align 4
  store volatile ptr %2, ptr %7, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dev_pm_skip_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i32, ptr @pm_transition.0, align 4
  switch i32 %2, label %12 [
    i32 64, label %17
    i32 32, label %3
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br label %17

17:                                               ; preds = %12, %8, %3, %1
  %18 = phi i1 [ %16, %12 ], [ false, %1 ], [ false, %3 ], [ %11, %8 ]
  ret i1 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dev_pm_skip_suspend(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 2
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_resume_noirq([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = tail call i64 @ktime_get() #9
  %4 = load ptr, ptr @dpm_noirq_resume_devices.___tp_str, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %19 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %4, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %18, %7, %1
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  store i32 %2, ptr @pm_transition.0, align 4
  %21 = load ptr, ptr @dpm_noirq_list, align 4
  %22 = icmp eq ptr %21, @dpm_noirq_list
  br i1 %22, label %23, label %26

23:                                               ; preds = %40, %20
  %24 = load volatile ptr, ptr @dpm_noirq_list, align 4
  %25 = icmp eq ptr %24, @dpm_noirq_list
  br i1 %25, label %96, label %43

26:                                               ; preds = %40, %20
  %27 = phi ptr [ %41, %40 ], [ %21, %20 ]
  %28 = getelementptr i8, ptr %27, i32 8
  store i32 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %27, i32 -12
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 2
  %32 = icmp ne i16 %31, 0
  %33 = load i32, ptr @pm_async_enabled, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %27, i32 -136
  %38 = tail call ptr @get_device(ptr noundef %37) #9
  %39 = tail call i64 @async_schedule_node(ptr noundef nonnull @async_resume_noirq, ptr noundef %37, i32 noundef -1) #9
  br label %40

40:                                               ; preds = %36, %26
  %41 = load ptr, ptr %27, align 4
  %42 = icmp eq ptr %41, @dpm_noirq_list
  br i1 %42, label %23, label %26

43:                                               ; preds = %93, %23
  %44 = phi ptr [ %94, %93 ], [ %24, %23 ]
  %45 = getelementptr i8, ptr %44, i32 -136
  %46 = tail call ptr @get_device(ptr noundef %45) #9
  %47 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_late_early_list, i32 0, i32 1), align 4
  store ptr %44, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_late_early_list, i32 0, i32 1), align 4
  store ptr @dpm_late_early_list, ptr %44, align 4
  store ptr %51, ptr %47, align 4
  store volatile ptr %44, ptr %51, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %52 = getelementptr i8, ptr %44, i32 -12
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 2
  %55 = icmp ne i16 %54, 0
  %56 = load i32, ptr @pm_async_enabled, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %93, label %59

59:                                               ; preds = %43
  %60 = tail call fastcc i32 @device_resume_noirq(ptr noundef %45, [1 x i32] %0, i1 noundef zeroext false) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9), align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 9), align 4
  %65 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %66 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %65
  store i32 6, ptr %66, align 4
  %67 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %68 = add i32 %67, 1
  %69 = srem i32 %68, 2
  store i32 %69, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %70 = getelementptr i8, ptr %44, i32 -92
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load ptr, ptr %45, align 4
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi ptr [ %74, %73 ], [ %71, %62 ]
  %77 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %78 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %77
  %79 = tail call i32 @strlcpy(ptr noundef %78, ptr noundef %76, i32 noundef 40) #9
  %80 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %81 = add i32 %80, 1
  %82 = srem i32 %81, 2
  store i32 %82, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  switch i32 %2, label %90 [
    i32 2, label %91
    i32 16, label %83
    i32 1, label %84
    i32 8, label %85
    i32 4, label %86
    i32 32, label %87
    i32 64, label %88
    i32 128, label %89
  ]

83:                                               ; preds = %75
  br label %91

84:                                               ; preds = %75
  br label %91

85:                                               ; preds = %75
  br label %91

86:                                               ; preds = %75
  br label %91

87:                                               ; preds = %75
  br label %91

88:                                               ; preds = %75
  br label %91

89:                                               ; preds = %75
  br label %91

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %89, %88, %87, %86, %85, %84, %83, %75
  %92 = phi ptr [ @.str.48, %90 ], [ @.str.47, %89 ], [ @.str.46, %88 ], [ @.str.45, %87 ], [ @.str.44, %86 ], [ @.str.43, %85 ], [ @.str.42, %84 ], [ @.str.41, %83 ], [ @.str.40, %75 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.39, ptr noundef nonnull %92, ptr noundef nonnull @.str.24, i32 noundef %60) #10
  br label %93

93:                                               ; preds = %91, %59, %43
  tail call void @put_device(ptr noundef %45) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %94 = load volatile ptr, ptr @dpm_noirq_list, align 4
  %95 = icmp eq ptr %94, @dpm_noirq_list
  br i1 %95, label %96, label %43

96:                                               ; preds = %93, %23
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @async_synchronize_full() #9
  %97 = tail call i64 @ktime_get() #9
  %98 = sub i64 %97, %3
  %99 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %98, i32 0) #11, !srcloc !15
  %100 = extractvalue { i64, i32 } %99, 0
  %101 = extractvalue { i64, i32 } %99, 1
  %102 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %98, i64 %100, i32 %101) #11, !srcloc !16
  %103 = load ptr, ptr @dpm_noirq_resume_devices.___tp_str.26, align 4
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %96
  %107 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %118 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %103, i32 noundef %2, i1 noundef zeroext false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %119

119:                                              ; preds = %117, %106, %96
  tail call void @resume_device_irqs() #9
  tail call void @device_wakeup_disarm_wake_irqs() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @resume_device_irqs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_wakeup_disarm_wake_irqs() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_resume_early([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = tail call i64 @ktime_get() #9
  %4 = load ptr, ptr @dpm_resume_early.___tp_str, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %19 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %4, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %18, %7, %1
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  store i32 %2, ptr @pm_transition.0, align 4
  %21 = load ptr, ptr @dpm_late_early_list, align 4
  %22 = icmp eq ptr %21, @dpm_late_early_list
  br i1 %22, label %23, label %26

23:                                               ; preds = %40, %20
  %24 = load volatile ptr, ptr @dpm_late_early_list, align 4
  %25 = icmp eq ptr %24, @dpm_late_early_list
  br i1 %25, label %96, label %43

26:                                               ; preds = %40, %20
  %27 = phi ptr [ %41, %40 ], [ %21, %20 ]
  %28 = getelementptr i8, ptr %27, i32 8
  store i32 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %27, i32 -12
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 2
  %32 = icmp ne i16 %31, 0
  %33 = load i32, ptr @pm_async_enabled, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %27, i32 -136
  %38 = tail call ptr @get_device(ptr noundef %37) #9
  %39 = tail call i64 @async_schedule_node(ptr noundef nonnull @async_resume_early, ptr noundef %37, i32 noundef -1) #9
  br label %40

40:                                               ; preds = %36, %26
  %41 = load ptr, ptr %27, align 4
  %42 = icmp eq ptr %41, @dpm_late_early_list
  br i1 %42, label %23, label %26

43:                                               ; preds = %93, %23
  %44 = phi ptr [ %94, %93 ], [ %24, %23 ]
  %45 = getelementptr i8, ptr %44, i32 -136
  %46 = tail call ptr @get_device(ptr noundef %45) #9
  %47 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %44, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  %51 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_suspended_list, i32 0, i32 1), align 4
  store ptr %44, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_suspended_list, i32 0, i32 1), align 4
  store ptr @dpm_suspended_list, ptr %44, align 4
  store ptr %51, ptr %47, align 4
  store volatile ptr %44, ptr %51, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %52 = getelementptr i8, ptr %44, i32 -12
  %53 = load i16, ptr %52, align 4
  %54 = and i16 %53, 2
  %55 = icmp ne i16 %54, 0
  %56 = load i32, ptr @pm_async_enabled, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %93, label %59

59:                                               ; preds = %43
  %60 = tail call fastcc i32 @device_resume_early(ptr noundef %45, [1 x i32] %0, i1 noundef zeroext false)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %93, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8), align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 8), align 4
  %65 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %66 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %65
  store i32 7, ptr %66, align 4
  %67 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %68 = add i32 %67, 1
  %69 = srem i32 %68, 2
  store i32 %69, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %70 = getelementptr i8, ptr %44, i32 -92
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load ptr, ptr %45, align 4
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi ptr [ %74, %73 ], [ %71, %62 ]
  %77 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %78 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %77
  %79 = tail call i32 @strlcpy(ptr noundef %78, ptr noundef %76, i32 noundef 40) #9
  %80 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %81 = add i32 %80, 1
  %82 = srem i32 %81, 2
  store i32 %82, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  switch i32 %2, label %90 [
    i32 2, label %91
    i32 16, label %83
    i32 1, label %84
    i32 8, label %85
    i32 4, label %86
    i32 32, label %87
    i32 64, label %88
    i32 128, label %89
  ]

83:                                               ; preds = %75
  br label %91

84:                                               ; preds = %75
  br label %91

85:                                               ; preds = %75
  br label %91

86:                                               ; preds = %75
  br label %91

87:                                               ; preds = %75
  br label %91

88:                                               ; preds = %75
  br label %91

89:                                               ; preds = %75
  br label %91

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %89, %88, %87, %86, %85, %84, %83, %75
  %92 = phi ptr [ @.str.48, %90 ], [ @.str.47, %89 ], [ @.str.46, %88 ], [ @.str.45, %87 ], [ @.str.44, %86 ], [ @.str.43, %85 ], [ @.str.42, %84 ], [ @.str.41, %83 ], [ @.str.40, %75 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.39, ptr noundef nonnull %92, ptr noundef nonnull @.str.2, i32 noundef %60) #10
  br label %93

93:                                               ; preds = %91, %59, %43
  tail call void @put_device(ptr noundef %45) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %94 = load volatile ptr, ptr @dpm_late_early_list, align 4
  %95 = icmp eq ptr %94, @dpm_late_early_list
  br i1 %95, label %96, label %43

96:                                               ; preds = %93, %23
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @async_synchronize_full() #9
  %97 = tail call i64 @ktime_get() #9
  %98 = sub i64 %97, %3
  %99 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %98, i32 0) #11, !srcloc !15
  %100 = extractvalue { i64, i32 } %99, 0
  %101 = extractvalue { i64, i32 } %99, 1
  %102 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %98, i64 %100, i32 %101) #11, !srcloc !16
  %103 = load ptr, ptr @dpm_resume_early.___tp_str.4, align 4
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %96
  %107 = tail call ptr @llvm.thread.pointer() #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %118 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %103, i32 noundef %2, i1 noundef zeroext false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %119

119:                                              ; preds = %117, %106, %96
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_resume_early(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr @pm_transition.0, align 4
  %4 = insertvalue [1 x i32] undef, i32 %3, 0
  %5 = tail call fastcc i32 @device_resume_early(ptr noundef %0, [1 x i32] %4, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @pm_transition.0, align 4
  switch i32 %8, label %16 [
    i32 2, label %17
    i32 16, label %9
    i32 1, label %10
    i32 8, label %11
    i32 4, label %12
    i32 32, label %13
    i32 64, label %14
    i32 128, label %15
  ]

9:                                                ; preds = %7
  br label %17

10:                                               ; preds = %7
  br label %17

11:                                               ; preds = %7
  br label %17

12:                                               ; preds = %7
  br label %17

13:                                               ; preds = %7
  br label %17

14:                                               ; preds = %7
  br label %17

15:                                               ; preds = %7
  br label %17

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %7
  %18 = phi ptr [ @.str.48, %16 ], [ @.str.47, %15 ], [ @.str.46, %14 ], [ @.str.45, %13 ], [ @.str.44, %12 ], [ @.str.43, %11 ], [ @.str.42, %10 ], [ @.str.41, %9 ], [ @.str.40, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %18, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %19

19:                                               ; preds = %17, %2
  tail call void @put_device(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_resume_early(ptr noundef %0, [1 x i32] %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %113

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 576
  %12 = icmp eq i16 %11, 64
  br i1 %12, label %13, label %113

13:                                               ; preds = %8
  %14 = tail call fastcc zeroext i1 @dpm_wait_for_superior(ptr noundef %0, i1 noundef zeroext %2)
  br i1 %14, label %15, label %113

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = extractvalue [1 x i32] %1, 0
  switch i32 %20, label %72 [
    i32 2, label %21
    i32 16, label %23
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.dev_pm_ops, ptr %17, i32 0, i32 8
  br label %67

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dev_pm_ops, ptr %17, i32 0, i32 9
  br label %67

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.device_type, ptr %27, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = extractvalue [1 x i32] %1, 0
  switch i32 %34, label %72 [
    i32 2, label %35
    i32 16, label %37
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.dev_pm_ops, ptr %31, i32 0, i32 8
  br label %67

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dev_pm_ops, ptr %31, i32 0, i32 9
  br label %67

39:                                               ; preds = %29, %25
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.class, ptr %41, i32 0, i32 13
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = extractvalue [1 x i32] %1, 0
  switch i32 %48, label %72 [
    i32 2, label %49
    i32 16, label %51
  ]

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.dev_pm_ops, ptr %45, i32 0, i32 8
  br label %67

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.dev_pm_ops, ptr %45, i32 0, i32 9
  br label %67

53:                                               ; preds = %43, %39
  %54 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bus_type, ptr %55, i32 0, i32 18
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = extractvalue [1 x i32] %1, 0
  switch i32 %62, label %72 [
    i32 2, label %63
    i32 16, label %65
  ]

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.dev_pm_ops, ptr %59, i32 0, i32 8
  br label %67

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.dev_pm_ops, ptr %59, i32 0, i32 9
  br label %67

67:                                               ; preds = %65, %63, %51, %49, %37, %35, %23, %21
  %68 = phi ptr [ %24, %23 ], [ %22, %21 ], [ %38, %37 ], [ %36, %35 ], [ %52, %51 ], [ %50, %49 ], [ %66, %65 ], [ %64, %63 ]
  %69 = phi ptr [ @.str.34, %23 ], [ @.str.34, %21 ], [ @.str.35, %37 ], [ @.str.35, %35 ], [ @.str.36, %51 ], [ @.str.36, %49 ], [ @.str.37, %65 ], [ @.str.37, %63 ]
  %70 = load ptr, ptr %68, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %105

72:                                               ; preds = %67, %61, %57, %53, %47, %33, %19
  %73 = phi ptr [ %69, %67 ], [ @.str.37, %61 ], [ @.str.36, %47 ], [ @.str.35, %33 ], [ @.str.34, %19 ], [ null, %53 ], [ null, %57 ]
  %74 = load i32, ptr @pm_transition.0, align 4
  switch i32 %74, label %80 [
    i32 64, label %88
    i32 32, label %75
  ]

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %84

80:                                               ; preds = %72
  %81 = load i8, ptr %4, align 4
  %82 = and i8 %81, 8
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %109, label %88

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %109, label %88

88:                                               ; preds = %84, %80, %75, %72
  %89 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %105, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.device_driver, ptr %90, i32 0, i32 16
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %92
  %97 = extractvalue [1 x i32] %1, 0
  switch i32 %97, label %105 [
    i32 2, label %98
    i32 16, label %100
  ]

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 8
  br label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 9
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi ptr [ %101, %100 ], [ %99, %98 ]
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %96, %92, %88, %67
  %106 = phi ptr [ %70, %67 ], [ null, %92 ], [ null, %88 ], [ null, %96 ], [ %104, %102 ]
  %107 = phi ptr [ %69, %67 ], [ %73, %92 ], [ %73, %88 ], [ @.str.38, %96 ], [ @.str.38, %102 ]
  %108 = tail call fastcc i32 @dpm_run_callback(ptr noundef %106, ptr noundef %0, [1 x i32] %1, ptr noundef %107)
  br label %109

109:                                              ; preds = %105, %84, %80
  %110 = phi i32 [ %108, %105 ], [ 0, %84 ], [ 0, %80 ]
  %111 = load i16, ptr %9, align 4
  %112 = and i16 %111, -65
  store i16 %112, ptr %9, align 4
  br label %113

113:                                              ; preds = %109, %13, %8, %3
  %114 = phi i32 [ 0, %3 ], [ 0, %8 ], [ %110, %109 ], [ 0, %13 ]
  tail call void @pm_runtime_enable(ptr noundef %0) #9
  %115 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  tail call void @complete_all(ptr noundef %115) #9
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_resume_start([1 x i32] %0) #0 {
  tail call void @dpm_resume_noirq([1 x i32] %0)
  tail call void @dpm_resume_early([1 x i32] %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_resume([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = tail call i64 @ktime_get() #9
  %4 = load ptr, ptr @dpm_resume.___tp_str, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %19 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %4, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %18, %7, %1
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  store i32 %2, ptr @pm_transition.0, align 4
  store i32 0, ptr @async_error, align 4
  %21 = load ptr, ptr @dpm_suspended_list, align 4
  %22 = icmp eq ptr %21, @dpm_suspended_list
  br i1 %22, label %23, label %26

23:                                               ; preds = %40, %20
  %24 = load volatile ptr, ptr @dpm_suspended_list, align 4
  %25 = icmp eq ptr %24, @dpm_suspended_list
  br i1 %25, label %100, label %43

26:                                               ; preds = %40, %20
  %27 = phi ptr [ %41, %40 ], [ %21, %20 ]
  %28 = getelementptr i8, ptr %27, i32 8
  store i32 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %27, i32 -12
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 2
  %32 = icmp ne i16 %31, 0
  %33 = load i32, ptr @pm_async_enabled, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = getelementptr i8, ptr %27, i32 -136
  %38 = tail call ptr @get_device(ptr noundef %37) #9
  %39 = tail call i64 @async_schedule_node(ptr noundef nonnull @async_resume, ptr noundef %37, i32 noundef -1) #9
  br label %40

40:                                               ; preds = %36, %26
  %41 = load ptr, ptr %27, align 4
  %42 = icmp eq ptr %41, @dpm_suspended_list
  br i1 %42, label %23, label %26

43:                                               ; preds = %97, %23
  %44 = phi ptr [ %98, %97 ], [ %24, %23 ]
  %45 = getelementptr i8, ptr %44, i32 -136
  %46 = tail call ptr @get_device(ptr noundef %45) #9
  %47 = getelementptr i8, ptr %44, i32 -12
  %48 = load i16, ptr %47, align 4
  %49 = and i16 %48, 2
  %50 = icmp ne i16 %49, 0
  %51 = load i32, ptr @pm_async_enabled, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %89, label %54

54:                                               ; preds = %43
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %55 = tail call fastcc i32 @device_resume(ptr noundef %45, [1 x i32] %0, i1 noundef zeroext false)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %54
  %58 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7), align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 7), align 4
  %60 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %61 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %60
  store i32 8, ptr %61, align 4
  %62 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %63 = add i32 %62, 1
  %64 = srem i32 %63, 2
  store i32 %64, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %65 = getelementptr i8, ptr %44, i32 -92
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load ptr, ptr %45, align 4
  br label %70

70:                                               ; preds = %68, %57
  %71 = phi ptr [ %69, %68 ], [ %66, %57 ]
  %72 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %73 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %72
  %74 = tail call i32 @strlcpy(ptr noundef %73, ptr noundef %71, i32 noundef 40) #9
  %75 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %76 = add i32 %75, 1
  %77 = srem i32 %76, 2
  store i32 %77, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  switch i32 %2, label %85 [
    i32 2, label %86
    i32 16, label %78
    i32 1, label %79
    i32 8, label %80
    i32 4, label %81
    i32 32, label %82
    i32 64, label %83
    i32 128, label %84
  ]

78:                                               ; preds = %70
  br label %86

79:                                               ; preds = %70
  br label %86

80:                                               ; preds = %70
  br label %86

81:                                               ; preds = %70
  br label %86

82:                                               ; preds = %70
  br label %86

83:                                               ; preds = %70
  br label %86

84:                                               ; preds = %70
  br label %86

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %84, %83, %82, %81, %80, %79, %78, %70
  %87 = phi ptr [ @.str.48, %85 ], [ @.str.47, %84 ], [ @.str.46, %83 ], [ @.str.45, %82 ], [ @.str.44, %81 ], [ @.str.43, %80 ], [ @.str.42, %79 ], [ @.str.41, %78 ], [ @.str.40, %70 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.39, ptr noundef nonnull %87, ptr noundef nonnull @.str.6, i32 noundef %55) #10
  br label %88

88:                                               ; preds = %86, %54
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  br label %89

89:                                               ; preds = %88, %43
  %90 = load volatile ptr, ptr %44, align 4
  %91 = icmp eq ptr %90, %44
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %94, ptr %95, align 4
  store volatile ptr %90, ptr %94, align 4
  %96 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_prepared_list, i32 0, i32 1), align 4
  store ptr %44, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_prepared_list, i32 0, i32 1), align 4
  store ptr @dpm_prepared_list, ptr %44, align 4
  store ptr %96, ptr %93, align 4
  store volatile ptr %44, ptr %96, align 4
  br label %97

97:                                               ; preds = %92, %89
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @put_device(ptr noundef %45) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %98 = load volatile ptr, ptr @dpm_suspended_list, align 4
  %99 = icmp eq ptr %98, @dpm_suspended_list
  br i1 %99, label %100, label %43

100:                                              ; preds = %97, %23
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @async_synchronize_full() #9
  %101 = tail call i64 @ktime_get() #9
  %102 = sub i64 %101, %3
  %103 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %102, i32 0) #11, !srcloc !15
  %104 = extractvalue { i64, i32 } %103, 0
  %105 = extractvalue { i64, i32 } %103, 1
  %106 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %102, i64 %104, i32 %105) #11, !srcloc !16
  tail call void @cpufreq_resume() #9
  tail call void @devfreq_resume() #9
  %107 = load ptr, ptr @dpm_resume.___tp_str.7, align 4
  %108 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %100
  %111 = tail call ptr @llvm.thread.pointer() #9
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 5
  %115 = getelementptr i32, ptr @__cpu_online_mask, i32 %114
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %113, 31
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %122 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %107, i32 noundef %2, i1 noundef zeroext false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %123

123:                                              ; preds = %121, %110, %100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_resume(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr @pm_transition.0, align 4
  %4 = insertvalue [1 x i32] undef, i32 %3, 0
  %5 = tail call fastcc i32 @device_resume(ptr noundef %0, [1 x i32] %4, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @pm_transition.0, align 4
  switch i32 %8, label %16 [
    i32 2, label %17
    i32 16, label %9
    i32 1, label %10
    i32 8, label %11
    i32 4, label %12
    i32 32, label %13
    i32 64, label %14
    i32 128, label %15
  ]

9:                                                ; preds = %7
  br label %17

10:                                               ; preds = %7
  br label %17

11:                                               ; preds = %7
  br label %17

12:                                               ; preds = %7
  br label %17

13:                                               ; preds = %7
  br label %17

14:                                               ; preds = %7
  br label %17

15:                                               ; preds = %7
  br label %17

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %7
  %18 = phi ptr [ @.str.48, %16 ], [ @.str.47, %15 ], [ @.str.46, %14 ], [ @.str.45, %13 ], [ @.str.44, %12 ], [ @.str.43, %11 ], [ @.str.42, %10 ], [ @.str.41, %9 ], [ @.str.40, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %18, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %19

19:                                               ; preds = %17, %2
  tail call void @put_device(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_resume(ptr noundef %0, [1 x i32] %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %109

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 512
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @pm_runtime_enable(ptr noundef %0) #9
  br label %109

14:                                               ; preds = %8
  %15 = tail call fastcc zeroext i1 @dpm_wait_for_superior(ptr noundef %0, i1 noundef zeroext %2)
  br i1 %15, label %16, label %109

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %17) #9
  %18 = load i16, ptr %9, align 4
  %19 = and i16 %18, -9
  store i16 %19, ptr %9, align 4
  %20 = and i16 %18, 16
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %107, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = extractvalue [1 x i32] %1, 0
  switch i32 %27, label %83 [
    i32 2, label %28
    i32 16, label %30
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.dev_pm_ops, ptr %24, i32 0, i32 2
  br label %78

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dev_pm_ops, ptr %24, i32 0, i32 3
  br label %78

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.device_type, ptr %34, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = extractvalue [1 x i32] %1, 0
  switch i32 %41, label %83 [
    i32 2, label %42
    i32 16, label %44
  ]

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.dev_pm_ops, ptr %38, i32 0, i32 2
  br label %78

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.dev_pm_ops, ptr %38, i32 0, i32 3
  br label %78

46:                                               ; preds = %36, %32
  %47 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.class, ptr %48, i32 0, i32 13
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = extractvalue [1 x i32] %1, 0
  switch i32 %55, label %83 [
    i32 2, label %56
    i32 16, label %58
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.dev_pm_ops, ptr %52, i32 0, i32 2
  br label %78

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dev_pm_ops, ptr %52, i32 0, i32 3
  br label %78

60:                                               ; preds = %50, %46
  %61 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.bus_type, ptr %62, i32 0, i32 18
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = extractvalue [1 x i32] %1, 0
  switch i32 %69, label %83 [
    i32 2, label %70
    i32 16, label %72
  ]

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.dev_pm_ops, ptr %66, i32 0, i32 2
  br label %78

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dev_pm_ops, ptr %66, i32 0, i32 3
  br label %78

74:                                               ; preds = %64
  %75 = getelementptr inbounds %struct.bus_type, ptr %62, i32 0, i32 15
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %101

78:                                               ; preds = %72, %70, %58, %56, %44, %42, %30, %28
  %79 = phi ptr [ %31, %30 ], [ %29, %28 ], [ %45, %44 ], [ %43, %42 ], [ %59, %58 ], [ %57, %56 ], [ %73, %72 ], [ %71, %70 ]
  %80 = phi ptr [ @.str.49, %30 ], [ @.str.49, %28 ], [ @.str.50, %44 ], [ @.str.50, %42 ], [ @.str.51, %58 ], [ @.str.51, %56 ], [ @.str.52, %72 ], [ @.str.52, %70 ]
  %81 = load ptr, ptr %79, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %101

83:                                               ; preds = %78, %74, %68, %60, %54, %40, %26
  %84 = phi ptr [ %80, %78 ], [ @.str.52, %68 ], [ @.str.51, %54 ], [ @.str.50, %40 ], [ @.str.49, %26 ], [ null, %60 ], [ null, %74 ]
  %85 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %101, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.device_driver, ptr %86, i32 0, i32 16
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %88
  %93 = extractvalue [1 x i32] %1, 0
  switch i32 %93, label %101 [
    i32 2, label %94
    i32 16, label %96
  ]

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.dev_pm_ops, ptr %90, i32 0, i32 2
  br label %98

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.dev_pm_ops, ptr %90, i32 0, i32 3
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi ptr [ %97, %96 ], [ %95, %94 ]
  %100 = load ptr, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %92, %88, %83, %78, %74
  %102 = phi ptr [ %81, %78 ], [ null, %88 ], [ null, %83 ], [ %76, %74 ], [ null, %92 ], [ %100, %98 ]
  %103 = phi ptr [ %80, %78 ], [ %84, %88 ], [ %84, %83 ], [ @.str.53, %74 ], [ @.str.54, %92 ], [ @.str.54, %98 ]
  %104 = tail call fastcc i32 @dpm_run_callback(ptr noundef %102, ptr noundef %0, [1 x i32] %1, ptr noundef %103)
  %105 = load i16, ptr %9, align 4
  %106 = and i16 %105, -17
  store i16 %106, ptr %9, align 4
  br label %107

107:                                              ; preds = %101, %16
  %108 = phi i32 [ %104, %101 ], [ 0, %16 ]
  tail call void @mutex_unlock(ptr noundef %17) #9
  br label %109

109:                                              ; preds = %107, %14, %13, %3
  %110 = phi i32 [ 0, %3 ], [ 0, %13 ], [ %108, %107 ], [ 0, %14 ]
  %111 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  tail call void @complete_all(ptr noundef %111) #9
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_resume() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_resume() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_complete([1 x i32] %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = extractvalue [1 x i32] %0, 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %4 = load ptr, ptr @dpm_complete.___tp_str, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %19 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %4, i32 noundef %3, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %18, %7, %1
  store volatile ptr %2, ptr %2, align 8
  %21 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %21, align 4
  call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %22 = load volatile ptr, ptr @dpm_prepared_list, align 4
  %23 = icmp eq ptr %22, @dpm_prepared_list
  br i1 %23, label %126, label %24

24:                                               ; preds = %123, %20
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_prepared_list, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 -136
  %27 = call ptr @get_device(ptr noundef %26) #9
  %28 = getelementptr i8, ptr %25, i32 -12
  %29 = load i16, ptr %28, align 4
  %30 = and i16 %29, -9
  store i16 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %25, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %25, ptr %36, align 4
  store ptr %35, ptr %25, align 4
  store ptr %2, ptr %31, align 4
  store volatile ptr %25, ptr %2, align 8
  call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_start, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %24
  %40 = tail call ptr @llvm.thread.pointer() #9
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %51 = call i32 @__traceiter_device_pm_callback_start(ptr noundef null, ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %3) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %52

52:                                               ; preds = %50, %39, %24
  %53 = getelementptr i8, ptr %25, i32 28
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %106

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %25, i32 -68
  call void @mutex_lock(ptr noundef %58) #9
  %59 = getelementptr i8, ptr %25, i32 208
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = getelementptr i8, ptr %25, i32 -88
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.device_type, ptr %64, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %86

70:                                               ; preds = %66, %62
  %71 = getelementptr i8, ptr %25, i32 308
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.class, ptr %72, i32 0, i32 13
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %74, %70
  %79 = getelementptr i8, ptr %25, i32 -84
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.bus_type, ptr %80, i32 0, i32 18
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %82, %74, %66, %57
  %87 = phi ptr [ %60, %57 ], [ %68, %66 ], [ %76, %74 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.dev_pm_ops, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %86, %82, %78
  %92 = getelementptr i8, ptr %25, i32 -80
  %93 = load ptr, ptr %92, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.device_driver, ptr %93, i32 0, i32 16
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.dev_pm_ops, ptr %97, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99, %86
  %104 = phi ptr [ %101, %99 ], [ %89, %86 ]
  call void %104(ptr noundef %26) #9
  br label %105

105:                                              ; preds = %103, %99, %95, %91
  call void @mutex_unlock(ptr noundef %58) #9
  br label %106

106:                                              ; preds = %105, %52
  %107 = call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #9
  %108 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_end, i32 0, i32 1), align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %106
  %111 = tail call ptr @llvm.thread.pointer() #9
  %112 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = lshr i32 %113, 5
  %115 = getelementptr i32, ptr @__cpu_online_mask, i32 %114
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %113, 31
  %118 = shl nuw i32 1, %117
  %119 = and i32 %118, %116
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %122 = call i32 @__traceiter_device_pm_callback_end(ptr noundef null, ptr noundef %26, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %123

123:                                              ; preds = %121, %110, %106
  call void @put_device(ptr noundef %26) #9
  call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %124 = load volatile ptr, ptr @dpm_prepared_list, align 4
  %125 = icmp eq ptr %124, @dpm_prepared_list
  br i1 %125, label %126, label %24

126:                                              ; preds = %123, %20
  %127 = load volatile ptr, ptr %2, align 8
  %128 = icmp eq ptr %127, %2
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @dpm_list, align 4
  %131 = load ptr, ptr %21, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr @dpm_list, ptr %132, align 4
  store ptr %127, ptr @dpm_list, align 4
  store ptr %130, ptr %131, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %130, i32 0, i32 1
  store ptr %131, ptr %133, align 4
  br label %134

134:                                              ; preds = %129, %126
  call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  call void @device_unblock_probing() #9
  %135 = load ptr, ptr @dpm_complete.___tp_str.9, align 4
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = tail call ptr @llvm.thread.pointer() #9
  %140 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 5
  %143 = getelementptr i32, ptr @__cpu_online_mask, i32 %142
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %141, 31
  %146 = shl nuw i32 1, %145
  %147 = and i32 %146, %144
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %150 = call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %135, i32 noundef %3, i1 noundef zeroext false) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %151

151:                                              ; preds = %149, %138, %134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unblock_probing() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_resume_end([1 x i32] %0) #0 {
  tail call void @dpm_resume([1 x i32] %0)
  tail call void @dpm_complete([1 x i32] %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_suspend_noirq([1 x i32] %0) local_unnamed_addr #0 {
  tail call void @device_wakeup_arm_wake_irqs() #9
  tail call void @suspend_device_irqs() #9
  %2 = extractvalue [1 x i32] %0, 0
  %3 = tail call i64 @ktime_get() #9
  %4 = load ptr, ptr @dpm_noirq_suspend_devices.___tp_str, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %19 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %4, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %18, %7, %1
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  store i32 %2, ptr @pm_transition.0, align 4
  store i32 0, ptr @async_error, align 4
  %21 = load volatile ptr, ptr @dpm_late_early_list, align 4
  %22 = icmp eq ptr %21, @dpm_late_early_list
  br i1 %22, label %85, label %26

23:                                               ; preds = %79
  %24 = load volatile ptr, ptr @dpm_late_early_list, align 4
  %25 = icmp eq ptr %24, @dpm_late_early_list
  br i1 %25, label %85, label %26

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_late_early_list, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 -136
  %29 = tail call ptr @get_device(ptr noundef %28) #9
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %30 = getelementptr i8, ptr %27, i32 8
  store i32 0, ptr %30, align 4
  %31 = getelementptr i8, ptr %27, i32 -12
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 2
  %34 = icmp ne i16 %33, 0
  %35 = load i32, ptr @pm_async_enabled, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = tail call ptr @get_device(ptr noundef %28) #9
  %40 = tail call i64 @async_schedule_node(ptr noundef nonnull @async_suspend_noirq, ptr noundef %28, i32 noundef -1) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  br label %70

41:                                               ; preds = %26
  %42 = load i32, ptr @pm_transition.0, align 4
  %43 = insertvalue [1 x i32] undef, i32 %42, 0
  %44 = tail call fastcc i32 @__device_suspend_noirq(ptr noundef %28, [1 x i32] %43, i1 noundef zeroext false) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %41
  switch i32 %2, label %54 [
    i32 2, label %55
    i32 16, label %47
    i32 1, label %48
    i32 8, label %49
    i32 4, label %50
    i32 32, label %51
    i32 64, label %52
    i32 128, label %53
  ]

47:                                               ; preds = %46
  br label %55

48:                                               ; preds = %46
  br label %55

49:                                               ; preds = %46
  br label %55

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  br label %55

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %53, %52, %51, %50, %49, %48, %47, %46
  %56 = phi ptr [ @.str.48, %54 ], [ @.str.47, %53 ], [ @.str.46, %52 ], [ @.str.45, %51 ], [ @.str.44, %50 ], [ @.str.43, %49 ], [ @.str.42, %48 ], [ @.str.41, %47 ], [ @.str.40, %46 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.39, ptr noundef nonnull %56, ptr noundef nonnull @.str.24, i32 noundef %44) #10
  %57 = getelementptr i8, ptr %27, i32 -92
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %28, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi ptr [ %61, %60 ], [ %58, %55 ]
  %64 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %65 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %64
  %66 = tail call i32 @strlcpy(ptr noundef %65, ptr noundef %63, i32 noundef 40) #9
  %67 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %68 = add i32 %67, 1
  %69 = srem i32 %68, 2
  store i32 %69, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  br label %79

70:                                               ; preds = %41, %38
  %71 = load volatile ptr, ptr %27, align 4
  %72 = icmp eq ptr %71, %27
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  store volatile ptr %71, ptr %75, align 4
  %77 = load ptr, ptr @dpm_noirq_list, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %27, ptr %78, align 4
  store ptr %77, ptr %27, align 4
  store ptr @dpm_noirq_list, ptr %74, align 4
  store volatile ptr %27, ptr @dpm_noirq_list, align 4
  br label %79

79:                                               ; preds = %73, %70, %62
  %80 = phi i1 [ false, %70 ], [ false, %73 ], [ true, %62 ]
  %81 = phi i32 [ 0, %70 ], [ 0, %73 ], [ %44, %62 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @put_device(ptr noundef %28) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %82 = load i32, ptr @async_error, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %80, i1 true, i1 %83
  br i1 %84, label %85, label %23

85:                                               ; preds = %79, %23, %20
  %86 = phi i32 [ 0, %20 ], [ %81, %23 ], [ %81, %79 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @async_synchronize_full() #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, ptr @async_error, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %88, %85
  %92 = phi i32 [ %89, %88 ], [ %86, %85 ]
  %93 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6), align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 6), align 4
  %95 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %96 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %95
  store i32 5, ptr %96, align 4
  %97 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %98 = add i32 %97, 1
  %99 = srem i32 %98, 2
  store i32 %99, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  br label %100

100:                                              ; preds = %91, %88
  %101 = phi i32 [ %92, %91 ], [ 0, %88 ]
  %102 = tail call i64 @ktime_get() #9
  %103 = sub i64 %102, %3
  %104 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %103, i32 0) #11, !srcloc !15
  %105 = extractvalue { i64, i32 } %104, 0
  %106 = extractvalue { i64, i32 } %104, 1
  %107 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %103, i64 %105, i32 %106) #11, !srcloc !16
  %108 = load ptr, ptr @dpm_noirq_suspend_devices.___tp_str.61, align 4
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %100
  %112 = tail call ptr @llvm.thread.pointer() #9
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = lshr i32 %114, 5
  %116 = getelementptr i32, ptr @__cpu_online_mask, i32 %115
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %114, 31
  %119 = shl nuw i32 1, %118
  %120 = and i32 %119, %117
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %111
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %123 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %108, i32 noundef %2, i1 noundef zeroext false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %124

124:                                              ; preds = %122, %111, %100
  %125 = icmp eq i32 %101, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %124
  %127 = add i32 %2, -1
  %128 = icmp ult i32 %127, 8
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = getelementptr inbounds [8 x i32], ptr @switch.table.dpm_suspend_end, i32 0, i32 %127
  %131 = load i32, ptr %130, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i32 [ %131, %129 ], [ 0, %126 ]
  %134 = insertvalue [1 x i32] poison, i32 %133, 0
  tail call void @dpm_resume_noirq([1 x i32] %134)
  br label %135

135:                                              ; preds = %132, %124
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_wakeup_arm_wake_irqs() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_device_irqs() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_suspend_late([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = tail call i64 @ktime_get() #9
  %4 = load ptr, ptr @dpm_suspend_late.___tp_str, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %19 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %4, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %18, %7, %1
  tail call void @wake_up_all_idle_cpus() #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  store i32 %2, ptr @pm_transition.0, align 4
  store i32 0, ptr @async_error, align 4
  br label %21

21:                                               ; preds = %79, %20
  %22 = load volatile ptr, ptr @dpm_suspended_list, align 4
  %23 = icmp eq ptr %22, @dpm_suspended_list
  br i1 %23, label %83, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_suspended_list, i32 0, i32 1), align 4
  %26 = getelementptr i8, ptr %25, i32 -136
  %27 = tail call ptr @get_device(ptr noundef %26) #9
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %28 = getelementptr i8, ptr %25, i32 8
  store i32 0, ptr %28, align 4
  %29 = getelementptr i8, ptr %25, i32 -12
  %30 = load i16, ptr %29, align 4
  %31 = and i16 %30, 2
  %32 = icmp ne i16 %31, 0
  %33 = load i32, ptr @pm_async_enabled, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = tail call ptr @get_device(ptr noundef %26) #9
  %38 = tail call i64 @async_schedule_node(ptr noundef nonnull @async_suspend_late, ptr noundef %26, i32 noundef -1) #9
  br label %43

39:                                               ; preds = %24
  %40 = load i32, ptr @pm_transition.0, align 4
  %41 = insertvalue [1 x i32] undef, i32 %40, 0
  %42 = tail call fastcc i32 @__device_suspend_late(ptr noundef %26, [1 x i32] %41, i1 noundef zeroext false) #9
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i32 [ %42, %39 ], [ 0, %36 ]
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %45 = load volatile ptr, ptr %25, align 4
  %46 = icmp eq ptr %45, %25
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %45, ptr %49, align 4
  %51 = load ptr, ptr @dpm_late_early_list, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %25, ptr %52, align 4
  store ptr %51, ptr %25, align 4
  store ptr @dpm_late_early_list, ptr %48, align 4
  store volatile ptr %25, ptr @dpm_late_early_list, align 4
  br label %53

53:                                               ; preds = %47, %43
  %54 = icmp ne i32 %44, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %53
  switch i32 %2, label %63 [
    i32 2, label %64
    i32 16, label %56
    i32 1, label %57
    i32 8, label %58
    i32 4, label %59
    i32 32, label %60
    i32 64, label %61
    i32 128, label %62
  ]

56:                                               ; preds = %55
  br label %64

57:                                               ; preds = %55
  br label %64

58:                                               ; preds = %55
  br label %64

59:                                               ; preds = %55
  br label %64

60:                                               ; preds = %55
  br label %64

61:                                               ; preds = %55
  br label %64

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %62, %61, %60, %59, %58, %57, %56, %55
  %65 = phi ptr [ @.str.48, %63 ], [ @.str.47, %62 ], [ @.str.46, %61 ], [ @.str.45, %60 ], [ @.str.44, %59 ], [ @.str.43, %58 ], [ @.str.42, %57 ], [ @.str.41, %56 ], [ @.str.40, %55 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.39, ptr noundef nonnull %65, ptr noundef nonnull @.str.11, i32 noundef %44) #10
  %66 = getelementptr i8, ptr %25, i32 -92
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load ptr, ptr %26, align 4
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %70, %69 ], [ %67, %64 ]
  %73 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %74 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %73
  %75 = tail call i32 @strlcpy(ptr noundef %74, ptr noundef %72, i32 noundef 40) #9
  %76 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %77 = add i32 %76, 1
  %78 = srem i32 %77, 2
  store i32 %78, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  br label %79

79:                                               ; preds = %71, %53
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @put_device(ptr noundef %26) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %80 = load i32, ptr @async_error, align 4
  %81 = icmp ne i32 %80, 0
  %82 = select i1 %54, i1 true, i1 %81
  br i1 %82, label %83, label %21

83:                                               ; preds = %79, %21
  %84 = phi i32 [ %44, %79 ], [ 0, %21 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @async_synchronize_full() #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr @async_error, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %86, %83
  %90 = phi i32 [ %87, %86 ], [ %84, %83 ]
  %91 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5), align 4
  %92 = add i32 %91, 1
  store i32 %92, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 5), align 4
  %93 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %94 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %93
  store i32 4, ptr %94, align 4
  %95 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %96 = add i32 %95, 1
  %97 = srem i32 %96, 2
  store i32 %97, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %98 = add i32 %2, -1
  %99 = icmp ult i32 %98, 8
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = getelementptr inbounds [8 x i32], ptr @switch.table.dpm_suspend_end, i32 0, i32 %98
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %100, %89
  %104 = phi i32 [ %102, %100 ], [ 0, %89 ]
  %105 = insertvalue [1 x i32] poison, i32 %104, 0
  tail call void @dpm_resume_early([1 x i32] %105)
  br label %106

106:                                              ; preds = %103, %86
  %107 = phi i32 [ %90, %103 ], [ 0, %86 ]
  %108 = tail call i64 @ktime_get() #9
  %109 = sub i64 %108, %3
  %110 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %109, i32 0) #11, !srcloc !15
  %111 = extractvalue { i64, i32 } %110, 0
  %112 = extractvalue { i64, i32 } %110, 1
  %113 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %109, i64 %111, i32 %112) #11, !srcloc !16
  %114 = load ptr, ptr @dpm_suspend_late.___tp_str.13, align 4
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %106
  %118 = tail call ptr @llvm.thread.pointer() #9
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %117
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %129 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %114, i32 noundef %2, i1 noundef zeroext false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %130

130:                                              ; preds = %128, %117, %106
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_all_idle_cpus() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_suspend_end([1 x i32] %0) #0 {
  %2 = tail call i64 @ktime_get() #9
  %3 = tail call i32 @dpm_suspend_late([1 x i32] %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call i32 @dpm_suspend_noirq([1 x i32] %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %5
  %9 = extractvalue [1 x i32] %0, 0
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [8 x i32], ptr @switch.table.dpm_suspend_end, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi i32 [ %14, %12 ], [ 0, %8 ]
  %17 = insertvalue [1 x i32] poison, i32 %16, 0
  tail call void @dpm_resume_early([1 x i32] %17)
  br label %18

18:                                               ; preds = %15, %5, %1
  %19 = phi i32 [ %3, %1 ], [ %6, %15 ], [ 0, %5 ]
  %20 = tail call i64 @ktime_get() #9
  %21 = sub i64 %20, %2
  %22 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %21, i32 0) #11, !srcloc !15
  %23 = extractvalue { i64, i32 } %22, 0
  %24 = extractvalue { i64, i32 } %22, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %21, i64 %23, i32 %24) #11, !srcloc !16
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_suspend([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = tail call i64 @ktime_get() #9
  %4 = load ptr, ptr @dpm_suspend.___tp_str, align 4
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %19 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %4, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %20

20:                                               ; preds = %18, %7, %1
  tail call void @devfreq_suspend() #9
  tail call void @cpufreq_suspend() #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  store i32 %2, ptr @pm_transition.0, align 4
  store i32 0, ptr @async_error, align 4
  %21 = load volatile ptr, ptr @dpm_prepared_list, align 4
  %22 = icmp eq ptr %21, @dpm_prepared_list
  br i1 %22, label %85, label %26

23:                                               ; preds = %79
  %24 = load volatile ptr, ptr @dpm_prepared_list, align 4
  %25 = icmp eq ptr %24, @dpm_prepared_list
  br i1 %25, label %85, label %26

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_prepared_list, i32 0, i32 1), align 4
  %28 = getelementptr i8, ptr %27, i32 -136
  %29 = tail call ptr @get_device(ptr noundef %28) #9
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %30 = getelementptr i8, ptr %27, i32 8
  store i32 0, ptr %30, align 4
  %31 = getelementptr i8, ptr %27, i32 -12
  %32 = load i16, ptr %31, align 4
  %33 = and i16 %32, 2
  %34 = icmp ne i16 %33, 0
  %35 = load i32, ptr @pm_async_enabled, align 4
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = tail call ptr @get_device(ptr noundef %28) #9
  %40 = tail call i64 @async_schedule_node(ptr noundef nonnull @async_suspend, ptr noundef %28, i32 noundef -1) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  br label %70

41:                                               ; preds = %26
  %42 = load i32, ptr @pm_transition.0, align 4
  %43 = insertvalue [1 x i32] undef, i32 %42, 0
  %44 = tail call fastcc i32 @__device_suspend(ptr noundef %28, [1 x i32] %43, i1 noundef zeroext false) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %41
  switch i32 %2, label %54 [
    i32 2, label %55
    i32 16, label %47
    i32 1, label %48
    i32 8, label %49
    i32 4, label %50
    i32 32, label %51
    i32 64, label %52
    i32 128, label %53
  ]

47:                                               ; preds = %46
  br label %55

48:                                               ; preds = %46
  br label %55

49:                                               ; preds = %46
  br label %55

50:                                               ; preds = %46
  br label %55

51:                                               ; preds = %46
  br label %55

52:                                               ; preds = %46
  br label %55

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %53, %52, %51, %50, %49, %48, %47, %46
  %56 = phi ptr [ @.str.48, %54 ], [ @.str.47, %53 ], [ @.str.46, %52 ], [ @.str.45, %51 ], [ @.str.44, %50 ], [ @.str.43, %49 ], [ @.str.42, %48 ], [ @.str.41, %47 ], [ @.str.40, %46 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.39, ptr noundef nonnull %56, ptr noundef nonnull @.str.6, i32 noundef %44) #10
  %57 = getelementptr i8, ptr %27, i32 -92
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load ptr, ptr %28, align 4
  br label %62

62:                                               ; preds = %60, %55
  %63 = phi ptr [ %61, %60 ], [ %58, %55 ]
  %64 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %65 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %64
  %66 = tail call i32 @strlcpy(ptr noundef %65, ptr noundef %63, i32 noundef 40) #9
  %67 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %68 = add i32 %67, 1
  %69 = srem i32 %68, 2
  store i32 %69, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  br label %79

70:                                               ; preds = %41, %38
  %71 = load volatile ptr, ptr %27, align 4
  %72 = icmp eq ptr %71, %27
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %75, ptr %76, align 4
  store volatile ptr %71, ptr %75, align 4
  %77 = load ptr, ptr @dpm_suspended_list, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %27, ptr %78, align 4
  store ptr %77, ptr %27, align 4
  store ptr @dpm_suspended_list, ptr %74, align 4
  store volatile ptr %27, ptr @dpm_suspended_list, align 4
  br label %79

79:                                               ; preds = %73, %70, %62
  %80 = phi i1 [ false, %70 ], [ false, %73 ], [ true, %62 ]
  %81 = phi i32 [ 0, %70 ], [ 0, %73 ], [ %44, %62 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @put_device(ptr noundef %28) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %82 = load i32, ptr @async_error, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %80, i1 true, i1 %83
  br i1 %84, label %85, label %23

85:                                               ; preds = %79, %23, %20
  %86 = phi i32 [ 0, %20 ], [ %81, %79 ], [ %81, %23 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @async_synchronize_full() #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, ptr @async_error, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %88, %85
  %92 = phi i32 [ %89, %88 ], [ %86, %85 ]
  %93 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4), align 4
  %94 = add i32 %93, 1
  store i32 %94, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 4), align 4
  %95 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %96 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %95
  store i32 3, ptr %96, align 4
  %97 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %98 = add i32 %97, 1
  %99 = srem i32 %98, 2
  store i32 %99, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  br label %100

100:                                              ; preds = %91, %88
  %101 = phi i32 [ %92, %91 ], [ 0, %88 ]
  %102 = tail call i64 @ktime_get() #9
  %103 = sub i64 %102, %3
  %104 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %103, i32 0) #11, !srcloc !15
  %105 = extractvalue { i64, i32 } %104, 0
  %106 = extractvalue { i64, i32 } %104, 1
  %107 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %103, i64 %105, i32 %106) #11, !srcloc !16
  %108 = load ptr, ptr @dpm_suspend.___tp_str.16, align 4
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %100
  %112 = tail call ptr @llvm.thread.pointer() #9
  %113 = getelementptr inbounds %struct.thread_info, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 8
  %115 = lshr i32 %114, 5
  %116 = getelementptr i32, ptr @__cpu_online_mask, i32 %115
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %114, 31
  %119 = shl nuw i32 1, %118
  %120 = and i32 %119, %117
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %111
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %123 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %108, i32 noundef %2, i1 noundef zeroext false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %124

124:                                              ; preds = %122, %111, %100
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_suspend() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_suspend() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_prepare([1 x i32] %0) local_unnamed_addr #0 {
  %2 = extractvalue [1 x i32] %0, 0
  %3 = load ptr, ptr @dpm_prepare.___tp_str, align 4
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = tail call ptr @llvm.thread.pointer() #9
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %18 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %3, i32 noundef %2, i1 noundef zeroext true) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %19

19:                                               ; preds = %17, %6, %1
  tail call void @wait_for_device_probe() #9
  tail call void @device_block_probing() #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %20 = load volatile ptr, ptr @dpm_list, align 4
  %21 = icmp eq ptr %20, @dpm_list
  br i1 %21, label %171, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %2, 2
  br label %24

24:                                               ; preds = %164, %22
  %25 = phi ptr [ %20, %22 ], [ %166, %164 ]
  %26 = getelementptr i8, ptr %25, i32 -136
  %27 = tail call ptr @get_device(ptr noundef %26) #9
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_start, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = tail call ptr @llvm.thread.pointer() #9
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %33, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %42 = tail call i32 @__traceiter_device_pm_callback_start(ptr noundef null, ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %2) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %43

43:                                               ; preds = %41, %30, %24
  %44 = getelementptr i8, ptr %25, i32 120
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #9, !srcloc !21
  %45 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #9, !srcloc !22
  %46 = getelementptr i8, ptr %25, i32 28
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %134

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %25, i32 -68
  tail call void @mutex_lock(ptr noundef %51) #9
  %52 = load i8, ptr %46, align 4
  %53 = and i8 %52, -2
  store i8 %53, ptr %46, align 4
  %54 = and i8 %52, 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %108

56:                                               ; preds = %50
  %57 = getelementptr i8, ptr %25, i32 208
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %84

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %25, i32 -88
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.device_type, ptr %62, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %64, %60
  %69 = getelementptr i8, ptr %25, i32 308
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.class, ptr %70, i32 0, i32 13
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %72, %68
  %77 = getelementptr i8, ptr %25, i32 -84
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.bus_type, ptr %78, i32 0, i32 18
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %80, %72, %64, %56
  %85 = phi ptr [ %58, %56 ], [ %66, %64 ], [ %74, %72 ], [ %82, %80 ]
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %84, %80, %76
  %89 = getelementptr i8, ptr %25, i32 -80
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.device_driver, ptr %90, i32 0, i32 16
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %94, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %108, label %99

99:                                               ; preds = %96, %84
  %100 = phi ptr [ %97, %96 ], [ %86, %84 ]
  %101 = tail call i32 %100(ptr noundef %26) #9
  tail call void @mutex_unlock(ptr noundef %51) #9
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.device_prepare, ptr noundef nonnull %100, i32 noundef %101) #10
  %105 = tail call i32 @__pm_runtime_idle(ptr noundef %26, i32 noundef 5) #9
  br label %134

106:                                              ; preds = %99
  %107 = getelementptr i8, ptr %25, i32 -4
  tail call void @_raw_spin_lock_irq(ptr noundef %107) #9
  br i1 %23, label %110, label %125

108:                                              ; preds = %96, %92, %88, %50
  tail call void @mutex_unlock(ptr noundef %51) #9
  %109 = getelementptr i8, ptr %25, i32 -4
  tail call void @_raw_spin_lock_irq(ptr noundef %109) #9
  br i1 %23, label %112, label %125

110:                                              ; preds = %106
  %111 = icmp eq i32 %101, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %110, %108
  %113 = phi ptr [ %107, %110 ], [ %109, %108 ]
  %114 = load i8, ptr %46, align 4
  %115 = and i8 %114, 4
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %112, %110
  %118 = phi ptr [ %113, %112 ], [ %107, %110 ]
  %119 = getelementptr i8, ptr %25, i32 -8
  %120 = load i32, ptr %119, align 8
  %121 = trunc i32 %120 to i16
  %122 = shl i16 %121, 9
  %123 = and i16 %122, 512
  %124 = xor i16 %123, 512
  br label %125

125:                                              ; preds = %117, %112, %108, %106
  %126 = phi ptr [ %113, %112 ], [ %107, %106 ], [ %118, %117 ], [ %109, %108 ]
  %127 = phi i16 [ 0, %112 ], [ 0, %106 ], [ %124, %117 ], [ 0, %108 ]
  %128 = getelementptr i8, ptr %25, i32 -12
  %129 = load i16, ptr %128, align 4
  %130 = and i16 %129, -513
  %131 = or i16 %130, %127
  store i16 %131, ptr %128, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %132 = load i16, ptr %126, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %126, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %134

134:                                              ; preds = %125, %103, %43
  %135 = phi i32 [ %101, %103 ], [ 0, %125 ], [ 0, %43 ]
  %136 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_end, i32 0, i32 1), align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = tail call ptr @llvm.thread.pointer() #9
  %140 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 8
  %142 = lshr i32 %141, 5
  %143 = getelementptr i32, ptr @__cpu_online_mask, i32 %142
  %144 = load volatile i32, ptr %143, align 4
  %145 = and i32 %141, 31
  %146 = shl nuw i32 1, %145
  %147 = and i32 %146, %144
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %150 = tail call i32 @__traceiter_device_pm_callback_end(ptr noundef null, ptr noundef %26, i32 noundef %135) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %151

151:                                              ; preds = %149, %138, %134
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  switch i32 %135, label %163 [
    i32 0, label %152
    i32 -11, label %164
  ]

152:                                              ; preds = %151
  %153 = getelementptr i8, ptr %25, i32 -12
  %154 = load i16, ptr %153, align 4
  %155 = or i16 %154, 8
  store i16 %155, ptr %153, align 4
  %156 = load volatile ptr, ptr %25, align 4
  %157 = icmp eq ptr %156, %25
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  store ptr %160, ptr %161, align 4
  store volatile ptr %156, ptr %160, align 4
  %162 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_prepared_list, i32 0, i32 1), align 4
  store ptr %25, ptr getelementptr inbounds (%struct.list_head, ptr @dpm_prepared_list, i32 0, i32 1), align 4
  store ptr @dpm_prepared_list, ptr %25, align 4
  store ptr %162, ptr %159, align 4
  store volatile ptr %25, ptr %162, align 4
  br label %164

163:                                              ; preds = %151
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.18, i32 noundef %135) #10
  br label %164

164:                                              ; preds = %163, %158, %152, %151
  %165 = phi i32 [ %135, %163 ], [ 0, %152 ], [ 0, %158 ], [ 0, %151 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  tail call void @put_device(ptr noundef %26) #9
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %166 = load volatile ptr, ptr @dpm_list, align 4
  %167 = icmp eq ptr %166, @dpm_list
  %168 = zext i1 %167 to i32
  %169 = or i32 %165, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %24, label %171

171:                                              ; preds = %164, %19
  %172 = phi i32 [ 0, %19 ], [ %165, %164 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %173 = load ptr, ptr @dpm_prepare.___tp_str.19, align 4
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = tail call ptr @llvm.thread.pointer() #9
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = lshr i32 %179, 5
  %181 = getelementptr i32, ptr @__cpu_online_mask, i32 %180
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %179, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %188 = tail call i32 @__traceiter_suspend_resume(ptr noundef null, ptr noundef %173, i32 noundef %2, i1 noundef zeroext false) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %189

189:                                              ; preds = %187, %176, %171
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_block_probing() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpm_suspend_start([1 x i32] %0) #0 {
  %2 = tail call i64 @ktime_get() #9
  %3 = tail call i32 @dpm_prepare([1 x i32] %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3), align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 3), align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %9 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 15, i32 %8
  store i32 2, ptr %9, align 4
  %10 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  %11 = add i32 %10, 1
  %12 = srem i32 %11, 2
  store i32 %12, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 14), align 4
  br label %15

13:                                               ; preds = %1
  %14 = tail call i32 @dpm_suspend([1 x i32] %0)
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi i32 [ %3, %5 ], [ %14, %13 ]
  %17 = tail call i64 @ktime_get() #9
  %18 = sub i64 %17, %2
  %19 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %18, i32 0) #11, !srcloc !15
  %20 = extractvalue { i64, i32 } %19, 0
  %21 = extractvalue { i64, i32 } %19, 1
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %18, i64 %20, i32 %21) #11, !srcloc !16
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__suspend_report_result(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %0, ptr noundef %1, i32 noundef %2) #10
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_pm_wait_for_dev(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = load i32, ptr @pm_async_enabled, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %4
  %18 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 5
  tail call void @wait_for_completion(ptr noundef %18) #9
  br label %19

19:                                               ; preds = %17, %12, %9, %2
  %20 = load i32, ptr @async_error, align 4
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpm_for_each_dev(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %5 = load ptr, ptr @dpm_list, align 4
  %6 = icmp eq ptr %5, @dpm_list
  br i1 %6, label %12, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %10, %7 ], [ %5, %4 ]
  %9 = getelementptr i8, ptr %8, i32 -136
  tail call void %1(ptr noundef %9, ptr noundef %0) #9
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %10, @dpm_list
  br i1 %11, label %12, label %7

12:                                               ; preds = %7, %4
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  br label %13

13:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_resume_noirq(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr @pm_transition.0, align 4
  %4 = insertvalue [1 x i32] undef, i32 %3, 0
  %5 = tail call fastcc i32 @device_resume_noirq(ptr noundef %0, [1 x i32] %4, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @pm_transition.0, align 4
  switch i32 %8, label %16 [
    i32 2, label %17
    i32 16, label %9
    i32 1, label %10
    i32 8, label %11
    i32 4, label %12
    i32 32, label %13
    i32 64, label %14
    i32 128, label %15
  ]

9:                                                ; preds = %7
  br label %17

10:                                               ; preds = %7
  br label %17

11:                                               ; preds = %7
  br label %17

12:                                               ; preds = %7
  br label %17

13:                                               ; preds = %7
  br label %17

14:                                               ; preds = %7
  br label %17

15:                                               ; preds = %7
  br label %17

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %7
  %18 = phi ptr [ @.str.48, %16 ], [ @.str.47, %15 ], [ @.str.46, %14 ], [ @.str.45, %13 ], [ @.str.44, %12 ], [ @.str.43, %11 ], [ @.str.42, %10 ], [ @.str.41, %9 ], [ @.str.40, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %18, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %19

19:                                               ; preds = %17, %2
  tail call void @put_device(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_resume_noirq(ptr noundef %0, [1 x i32] %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %128

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 544
  %12 = icmp eq i16 %11, 32
  br i1 %12, label %13, label %128

13:                                               ; preds = %8
  %14 = tail call fastcc zeroext i1 @dpm_wait_for_superior(ptr noundef %0, i1 noundef zeroext %2)
  br i1 %14, label %15, label %128

15:                                               ; preds = %13
  %16 = load i32, ptr @pm_transition.0, align 4
  switch i32 %16, label %22 [
    i32 64, label %30
    i32 32, label %17
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %26

22:                                               ; preds = %15
  %23 = load i8, ptr %4, align 4
  %24 = and i8 %23, 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %39, label %30

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %39, label %30

30:                                               ; preds = %26, %22, %17, %15
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %26, %22
  %40 = phi i32 [ 2, %22 ], [ 2, %26 ], [ 0, %35 ]
  %41 = phi i1 [ true, %22 ], [ true, %26 ], [ false, %35 ]
  %42 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef %40) #9
  br label %43

43:                                               ; preds = %39, %35, %30
  %44 = phi i1 [ false, %35 ], [ false, %30 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = extractvalue [1 x i32] %1, 0
  switch i32 %49, label %101 [
    i32 2, label %50
    i32 16, label %52
  ]

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.dev_pm_ops, ptr %46, i32 0, i32 14
  br label %96

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.dev_pm_ops, ptr %46, i32 0, i32 15
  br label %96

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.device_type, ptr %56, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = extractvalue [1 x i32] %1, 0
  switch i32 %63, label %101 [
    i32 2, label %64
    i32 16, label %66
  ]

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.dev_pm_ops, ptr %60, i32 0, i32 14
  br label %96

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dev_pm_ops, ptr %60, i32 0, i32 15
  br label %96

68:                                               ; preds = %58, %54
  %69 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.class, ptr %70, i32 0, i32 13
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = extractvalue [1 x i32] %1, 0
  switch i32 %77, label %101 [
    i32 2, label %78
    i32 16, label %80
  ]

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.dev_pm_ops, ptr %74, i32 0, i32 14
  br label %96

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.dev_pm_ops, ptr %74, i32 0, i32 15
  br label %96

82:                                               ; preds = %72, %68
  %83 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.bus_type, ptr %84, i32 0, i32 18
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = extractvalue [1 x i32] %1, 0
  switch i32 %91, label %101 [
    i32 2, label %92
    i32 16, label %94
  ]

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.dev_pm_ops, ptr %88, i32 0, i32 14
  br label %96

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.dev_pm_ops, ptr %88, i32 0, i32 15
  br label %96

96:                                               ; preds = %94, %92, %80, %78, %66, %64, %52, %50
  %97 = phi ptr [ %53, %52 ], [ %51, %50 ], [ %67, %66 ], [ %65, %64 ], [ %81, %80 ], [ %79, %78 ], [ %95, %94 ], [ %93, %92 ]
  %98 = phi ptr [ @.str.28, %52 ], [ @.str.28, %50 ], [ @.str.29, %66 ], [ @.str.29, %64 ], [ @.str.30, %80 ], [ @.str.30, %78 ], [ @.str.31, %94 ], [ @.str.31, %92 ]
  %99 = load ptr, ptr %97, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %96, %90, %86, %82, %76, %62, %48
  %102 = phi ptr [ %98, %96 ], [ @.str.31, %90 ], [ @.str.30, %76 ], [ @.str.29, %62 ], [ @.str.28, %48 ], [ null, %82 ], [ null, %86 ]
  br i1 %44, label %124, label %103

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %105 = load ptr, ptr %104, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %120, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.device_driver, ptr %105, i32 0, i32 16
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = extractvalue [1 x i32] %1, 0
  switch i32 %112, label %120 [
    i32 2, label %113
    i32 16, label %115
  ]

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.dev_pm_ops, ptr %109, i32 0, i32 14
  br label %117

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.dev_pm_ops, ptr %109, i32 0, i32 15
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi ptr [ %116, %115 ], [ %114, %113 ]
  %119 = load ptr, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %111, %107, %103, %96
  %121 = phi ptr [ %99, %96 ], [ null, %107 ], [ null, %103 ], [ null, %111 ], [ %119, %117 ]
  %122 = phi ptr [ %98, %96 ], [ %102, %107 ], [ %102, %103 ], [ @.str.32, %111 ], [ @.str.32, %117 ]
  %123 = tail call fastcc i32 @dpm_run_callback(ptr noundef %121, ptr noundef %0, [1 x i32] %1, ptr noundef %122)
  br label %124

124:                                              ; preds = %120, %101
  %125 = phi i32 [ %123, %120 ], [ 0, %101 ]
  %126 = load i16, ptr %9, align 4
  %127 = and i16 %126, -33
  store i16 %127, ptr %9, align 4
  br label %128

128:                                              ; preds = %124, %13, %8, %3
  %129 = phi i32 [ 0, %3 ], [ 0, %8 ], [ %125, %124 ], [ 0, %13 ]
  %130 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  tail call void @complete_all(ptr noundef %130) #9
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dpm_wait_for_superior(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @dpm_list_mtx) #9
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  br label %56

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @get_device(ptr noundef %10) #9
  tail call void @mutex_unlock(ptr noundef nonnull @dpm_list_mtx) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  br i1 %1, label %22, label %14

14:                                               ; preds = %13
  %15 = load i32, ptr @pm_async_enabled, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17, %13
  %23 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 5
  tail call void @wait_for_completion(ptr noundef %23) #9
  br label %24

24:                                               ; preds = %22, %17, %14, %8
  tail call void @put_device(ptr noundef %11) #9
  %25 = tail call i32 @device_links_read_lock() #9
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %27 = load volatile ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %52, label %29

29:                                               ; preds = %49, %24
  %30 = phi ptr [ %50, %49 ], [ %27, %24 ]
  %31 = getelementptr i8, ptr %30, i32 480
  %32 = load volatile i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %30, i32 -16
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  br i1 %1, label %47, label %39

39:                                               ; preds = %38
  %40 = load i32, ptr @pm_async_enabled, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 11, i32 1
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 11, i32 5
  tail call void @wait_for_completion(ptr noundef %48) #9
  br label %49

49:                                               ; preds = %47, %42, %39, %34, %29
  %50 = load volatile ptr, ptr %30, align 8
  %51 = icmp eq ptr %50, %26
  br i1 %51, label %52, label %29

52:                                               ; preds = %49, %24
  tail call void @device_links_read_unlock(i32 noundef %25) #9
  %53 = load i16, ptr %3, align 4
  %54 = and i16 %53, 4
  %55 = icmp ne i16 %54, 0
  br label %56

56:                                               ; preds = %52, %7
  %57 = phi i1 [ %55, %52 ], [ false, %7 ]
  ret i1 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dpm_run_callback(ptr noundef %0, ptr noundef %1, [1 x i32] %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %4
  %7 = extractvalue [1 x i32] %2, 0
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_start, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = tail call ptr @llvm.thread.pointer() #9
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %22 = tail call i32 @__traceiter_device_pm_callback_start(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %7) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %23

23:                                               ; preds = %21, %10, %6
  %24 = tail call i32 %0(ptr noundef %1) #9
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_end, i32 0, i32 1), align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = tail call ptr @llvm.thread.pointer() #9
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = lshr i32 %30, 5
  %32 = getelementptr i32, ptr @__cpu_online_mask, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %30, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %27
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %39 = tail call i32 @__traceiter_device_pm_callback_end(ptr noundef null, ptr noundef %1, i32 noundef %24) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %40

40:                                               ; preds = %38, %27, %23
  %41 = icmp eq i32 %24, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.dpm_run_callback, ptr noundef nonnull %0, i32 noundef %24) #10
  br label %44

44:                                               ; preds = %42, %40, %4
  %45 = phi i32 [ 0, %4 ], [ 0, %40 ], [ %24, %42 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_links_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_read_unlock(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_device_pm_callback_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_device_pm_callback_end(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_suspend_noirq(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr @pm_transition.0, align 4
  %4 = insertvalue [1 x i32] undef, i32 %3, 0
  %5 = tail call fastcc i32 @__device_suspend_noirq(ptr noundef %0, [1 x i32] %4, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %16 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %15
  %17 = tail call i32 @strlcpy(ptr noundef %16, ptr noundef %14, i32 noundef 40) #9
  %18 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %19 = add i32 %18, 1
  %20 = srem i32 %19, 2
  store i32 %20, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %21 = load i32, ptr @pm_transition.0, align 4
  switch i32 %21, label %29 [
    i32 2, label %30
    i32 16, label %22
    i32 1, label %23
    i32 8, label %24
    i32 4, label %25
    i32 32, label %26
    i32 64, label %27
    i32 128, label %28
  ]

22:                                               ; preds = %13
  br label %30

23:                                               ; preds = %13
  br label %30

24:                                               ; preds = %13
  br label %30

25:                                               ; preds = %13
  br label %30

26:                                               ; preds = %13
  br label %30

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  br label %30

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %13
  %31 = phi ptr [ @.str.48, %29 ], [ @.str.47, %28 ], [ @.str.46, %27 ], [ @.str.45, %26 ], [ @.str.44, %25 ], [ @.str.43, %24 ], [ @.str.42, %23 ], [ @.str.41, %22 ], [ @.str.40, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %31, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %32

32:                                               ; preds = %30, %2
  tail call void @put_device(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__device_suspend_noirq(ptr noundef %0, [1 x i32] %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %4, align 1
  %6 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @dpm_wait_fn) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %7 = call i32 @device_links_read_lock() #9
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %34, label %11

11:                                               ; preds = %31, %3
  %12 = phi ptr [ %32, %31 ], [ %9, %3 ]
  %13 = getelementptr i8, ptr %12, i32 492
  %14 = load volatile i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  br i1 %2, label %29, label %21

21:                                               ; preds = %20
  %22 = load i32, ptr @pm_async_enabled, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 5
  call void @wait_for_completion(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %29, %24, %21, %16, %11
  %32 = load volatile ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %34, label %11

34:                                               ; preds = %31, %3
  call void @device_links_read_unlock(i32 noundef %7) #9
  %35 = load i32, ptr @async_error, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %184

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %184

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 512
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %184

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = extractvalue [1 x i32] %1, 0
  switch i32 %52, label %104 [
    i32 2, label %53
    i32 16, label %55
  ]

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.dev_pm_ops, ptr %49, i32 0, i32 14
  br label %99

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.dev_pm_ops, ptr %49, i32 0, i32 15
  br label %99

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.device_type, ptr %59, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = extractvalue [1 x i32] %1, 0
  switch i32 %66, label %104 [
    i32 2, label %67
    i32 16, label %69
  ]

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.dev_pm_ops, ptr %63, i32 0, i32 14
  br label %99

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dev_pm_ops, ptr %63, i32 0, i32 15
  br label %99

71:                                               ; preds = %61, %57
  %72 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.class, ptr %73, i32 0, i32 13
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = extractvalue [1 x i32] %1, 0
  switch i32 %80, label %104 [
    i32 2, label %81
    i32 16, label %83
  ]

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.dev_pm_ops, ptr %77, i32 0, i32 14
  br label %99

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.dev_pm_ops, ptr %77, i32 0, i32 15
  br label %99

85:                                               ; preds = %75, %71
  %86 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.bus_type, ptr %87, i32 0, i32 18
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %104, label %93

93:                                               ; preds = %89
  %94 = extractvalue [1 x i32] %1, 0
  switch i32 %94, label %104 [
    i32 2, label %95
    i32 16, label %97
  ]

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.dev_pm_ops, ptr %91, i32 0, i32 14
  br label %99

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.dev_pm_ops, ptr %91, i32 0, i32 15
  br label %99

99:                                               ; preds = %97, %95, %83, %81, %69, %67, %55, %53
  %100 = phi ptr [ %56, %55 ], [ %54, %53 ], [ %70, %69 ], [ %68, %67 ], [ %84, %83 ], [ %82, %81 ], [ %98, %97 ], [ %96, %95 ]
  %101 = phi ptr [ @.str.28, %55 ], [ @.str.28, %53 ], [ @.str.29, %69 ], [ @.str.29, %67 ], [ @.str.30, %83 ], [ @.str.30, %81 ], [ @.str.31, %97 ], [ @.str.31, %95 ]
  %102 = load ptr, ptr %100, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %131

104:                                              ; preds = %99, %93, %89, %85, %79, %65, %51
  %105 = phi ptr [ %101, %99 ], [ @.str.31, %93 ], [ @.str.30, %79 ], [ @.str.29, %65 ], [ @.str.28, %51 ], [ null, %85 ], [ null, %89 ]
  %106 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %139, label %114

114:                                              ; preds = %110, %104
  %115 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %116 = load ptr, ptr %115, align 8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %131, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.device_driver, ptr %116, i32 0, i32 16
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %131, label %122

122:                                              ; preds = %118
  %123 = extractvalue [1 x i32] %1, 0
  switch i32 %123, label %131 [
    i32 2, label %124
    i32 16, label %126
  ]

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.dev_pm_ops, ptr %120, i32 0, i32 14
  br label %128

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.dev_pm_ops, ptr %120, i32 0, i32 15
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi ptr [ %127, %126 ], [ %125, %124 ]
  %130 = load ptr, ptr %129, align 4
  br label %131

131:                                              ; preds = %128, %122, %118, %114, %99
  %132 = phi ptr [ %102, %99 ], [ null, %118 ], [ null, %114 ], [ null, %122 ], [ %130, %128 ]
  %133 = phi ptr [ %101, %99 ], [ %105, %118 ], [ %105, %114 ], [ @.str.32, %122 ], [ @.str.32, %128 ]
  %134 = call fastcc i32 @dpm_run_callback(ptr noundef %132, ptr noundef %0, [1 x i32] %1, ptr noundef %133)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i16, ptr %43, align 4
  br label %139

138:                                              ; preds = %131
  store i32 %134, ptr @async_error, align 4
  br label %184

139:                                              ; preds = %136, %110
  %140 = phi i16 [ %137, %136 ], [ %44, %110 ]
  %141 = or i16 %140, 32
  store i16 %141, ptr %43, align 4
  %142 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  %143 = load volatile i32, ptr %142, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %154, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %147 = load i32, ptr %146, align 8
  %148 = and i32 %147, 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %145
  %151 = load i8, ptr %38, align 4
  %152 = and i8 %151, 16
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150, %145, %139
  %155 = load i8, ptr %38, align 4
  %156 = or i8 %155, 8
  store i8 %156, ptr %38, align 4
  br label %157

157:                                              ; preds = %154, %150
  %158 = phi i8 [ %156, %154 ], [ %151, %150 ]
  %159 = and i8 %158, 8
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %184, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.device, ptr %163, i32 0, i32 11, i32 7
  %167 = load i8, ptr %166, align 4
  %168 = or i8 %167, 8
  store i8 %168, ptr %166, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = call i32 @device_links_read_lock() #9
  %171 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %172 = load volatile ptr, ptr %171, align 8
  %173 = icmp eq ptr %172, %171
  br i1 %173, label %183, label %174

174:                                              ; preds = %174, %169
  %175 = phi ptr [ %181, %174 ], [ %172, %169 ]
  %176 = getelementptr i8, ptr %175, i32 -16
  %177 = load ptr, ptr %176, align 8
  %178 = getelementptr inbounds %struct.device, ptr %177, i32 0, i32 11, i32 7
  %179 = load i8, ptr %178, align 4
  %180 = or i8 %179, 8
  store i8 %180, ptr %178, align 4
  %181 = load volatile ptr, ptr %175, align 8
  %182 = icmp eq ptr %181, %171
  br i1 %182, label %183, label %174

183:                                              ; preds = %174, %169
  call void @device_links_read_unlock(i32 noundef %170) #9
  br label %184

184:                                              ; preds = %183, %157, %138, %42, %37, %34
  %185 = phi i32 [ 0, %34 ], [ 0, %37 ], [ 0, %42 ], [ %134, %138 ], [ 0, %183 ], [ 0, %157 ]
  %186 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  call void @complete_all(ptr noundef %186) #9
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpm_wait_fn(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !range !23
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32, ptr @pm_async_enabled, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %4
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  tail call void @wait_for_completion(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %15, %10, %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_suspend_late(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr @pm_transition.0, align 4
  %4 = insertvalue [1 x i32] undef, i32 %3, 0
  %5 = tail call fastcc i32 @__device_suspend_late(ptr noundef %0, [1 x i32] %4, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %16 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %15
  %17 = tail call i32 @strlcpy(ptr noundef %16, ptr noundef %14, i32 noundef 40) #9
  %18 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %19 = add i32 %18, 1
  %20 = srem i32 %19, 2
  store i32 %20, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %21 = load i32, ptr @pm_transition.0, align 4
  switch i32 %21, label %29 [
    i32 2, label %30
    i32 16, label %22
    i32 1, label %23
    i32 8, label %24
    i32 4, label %25
    i32 32, label %26
    i32 64, label %27
    i32 128, label %28
  ]

22:                                               ; preds = %13
  br label %30

23:                                               ; preds = %13
  br label %30

24:                                               ; preds = %13
  br label %30

25:                                               ; preds = %13
  br label %30

26:                                               ; preds = %13
  br label %30

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  br label %30

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %13
  %31 = phi ptr [ @.str.48, %29 ], [ @.str.47, %28 ], [ @.str.46, %27 ], [ @.str.45, %26 ], [ @.str.44, %25 ], [ @.str.43, %24 ], [ @.str.42, %23 ], [ @.str.41, %22 ], [ @.str.40, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %31, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %32

32:                                               ; preds = %30, %2
  tail call void @put_device(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__device_suspend_late(ptr noundef %0, [1 x i32] %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %4, align 1
  %6 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @dpm_wait_fn) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %7 = call i32 @device_links_read_lock() #9
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %34, label %11

11:                                               ; preds = %31, %3
  %12 = phi ptr [ %32, %31 ], [ %9, %3 ]
  %13 = getelementptr i8, ptr %12, i32 492
  %14 = load volatile i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  br i1 %2, label %29, label %21

21:                                               ; preds = %20
  %22 = load i32, ptr @pm_async_enabled, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 5
  call void @wait_for_completion(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %29, %24, %21, %16, %11
  %32 = load volatile ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %34, label %11

34:                                               ; preds = %31, %3
  call void @device_links_read_unlock(i32 noundef %7) #9
  %35 = load i32, ptr @async_error, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %145

37:                                               ; preds = %34
  %38 = call zeroext i1 @pm_wakeup_pending() #9
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  store i32 -16, ptr @async_error, align 4
  br label %145

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %42 = load i8, ptr %41, align 4
  %43 = and i8 %42, 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %145

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %47 = load i16, ptr %46, align 4
  %48 = and i16 %47, 512
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %145

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = extractvalue [1 x i32] %1, 0
  switch i32 %55, label %107 [
    i32 2, label %56
    i32 16, label %58
  ]

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.dev_pm_ops, ptr %52, i32 0, i32 8
  br label %102

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dev_pm_ops, ptr %52, i32 0, i32 9
  br label %102

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.device_type, ptr %62, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = extractvalue [1 x i32] %1, 0
  switch i32 %69, label %107 [
    i32 2, label %70
    i32 16, label %72
  ]

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.dev_pm_ops, ptr %66, i32 0, i32 8
  br label %102

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.dev_pm_ops, ptr %66, i32 0, i32 9
  br label %102

74:                                               ; preds = %64, %60
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.class, ptr %76, i32 0, i32 13
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = extractvalue [1 x i32] %1, 0
  switch i32 %83, label %107 [
    i32 2, label %84
    i32 16, label %86
  ]

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.dev_pm_ops, ptr %80, i32 0, i32 8
  br label %102

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.dev_pm_ops, ptr %80, i32 0, i32 9
  br label %102

88:                                               ; preds = %78, %74
  %89 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.bus_type, ptr %90, i32 0, i32 18
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %107, label %96

96:                                               ; preds = %92
  %97 = extractvalue [1 x i32] %1, 0
  switch i32 %97, label %107 [
    i32 2, label %98
    i32 16, label %100
  ]

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 8
  br label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.dev_pm_ops, ptr %94, i32 0, i32 9
  br label %102

102:                                              ; preds = %100, %98, %86, %84, %72, %70, %58, %56
  %103 = phi ptr [ %59, %58 ], [ %57, %56 ], [ %73, %72 ], [ %71, %70 ], [ %87, %86 ], [ %85, %84 ], [ %101, %100 ], [ %99, %98 ]
  %104 = phi ptr [ @.str.62, %58 ], [ @.str.62, %56 ], [ @.str.63, %72 ], [ @.str.63, %70 ], [ @.str.64, %86 ], [ @.str.64, %84 ], [ @.str.65, %100 ], [ @.str.65, %98 ]
  %105 = load ptr, ptr %103, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %134

107:                                              ; preds = %102, %96, %92, %88, %82, %68, %54
  %108 = phi ptr [ %104, %102 ], [ @.str.65, %96 ], [ @.str.64, %82 ], [ @.str.63, %68 ], [ @.str.62, %54 ], [ null, %88 ], [ null, %92 ]
  %109 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %142, label %117

117:                                              ; preds = %113, %107
  %118 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %119 = load ptr, ptr %118, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %134, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.device_driver, ptr %119, i32 0, i32 16
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %121
  %126 = extractvalue [1 x i32] %1, 0
  switch i32 %126, label %134 [
    i32 2, label %127
    i32 16, label %129
  ]

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.dev_pm_ops, ptr %123, i32 0, i32 8
  br label %131

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.dev_pm_ops, ptr %123, i32 0, i32 9
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi ptr [ %130, %129 ], [ %128, %127 ]
  %133 = load ptr, ptr %132, align 4
  br label %134

134:                                              ; preds = %131, %125, %121, %117, %102
  %135 = phi ptr [ %105, %102 ], [ null, %121 ], [ null, %117 ], [ null, %125 ], [ %133, %131 ]
  %136 = phi ptr [ %104, %102 ], [ %108, %121 ], [ %108, %117 ], [ @.str.66, %125 ], [ @.str.66, %131 ]
  %137 = call fastcc i32 @dpm_run_callback(ptr noundef %135, ptr noundef %0, [1 x i32] %1, ptr noundef %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  store i32 %137, ptr @async_error, align 4
  br label %145

140:                                              ; preds = %134
  call fastcc void @dpm_propagate_wakeup_to_parent(ptr noundef %0)
  %141 = load i16, ptr %46, align 4
  br label %142

142:                                              ; preds = %140, %113
  %143 = phi i16 [ %47, %113 ], [ %141, %140 ]
  %144 = or i16 %143, 64
  store i16 %144, ptr %46, align 4
  br label %145

145:                                              ; preds = %142, %139, %45, %40, %39, %34
  %146 = phi i32 [ 0, %34 ], [ 0, %39 ], [ 0, %40 ], [ 0, %45 ], [ %137, %139 ], [ 0, %142 ]
  %147 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  call void @complete_all(ptr noundef %147) #9
  ret i32 %146
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_wakeup_pending() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dpm_propagate_wakeup_to_parent(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 15
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 256
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 7
  %18 = load i8, ptr %17, align 4
  %19 = or i8 %18, 1
  store i8 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %11, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %21 = load i16, ptr %6, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_suspend(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i32, ptr @pm_transition.0, align 4
  %4 = insertvalue [1 x i32] undef, i32 %3, 0
  %5 = tail call fastcc i32 @__device_suspend(ptr noundef %0, [1 x i32] %4, i1 noundef zeroext true)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %16 = getelementptr %struct.suspend_stats, ptr @suspend_stats, i32 0, i32 11, i32 %15
  %17 = tail call i32 @strlcpy(ptr noundef %16, ptr noundef %14, i32 noundef 40) #9
  %18 = load i32, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %19 = add i32 %18, 1
  %20 = srem i32 %19, 2
  store i32 %20, ptr getelementptr inbounds (%struct.suspend_stats, ptr @suspend_stats, i32 0, i32 10), align 4
  %21 = load i32, ptr @pm_transition.0, align 4
  switch i32 %21, label %29 [
    i32 2, label %30
    i32 16, label %22
    i32 1, label %23
    i32 8, label %24
    i32 4, label %25
    i32 32, label %26
    i32 64, label %27
    i32 128, label %28
  ]

22:                                               ; preds = %13
  br label %30

23:                                               ; preds = %13
  br label %30

24:                                               ; preds = %13
  br label %30

25:                                               ; preds = %13
  br label %30

26:                                               ; preds = %13
  br label %30

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  br label %30

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22, %13
  %31 = phi ptr [ @.str.48, %29 ], [ @.str.47, %28 ], [ @.str.46, %27 ], [ @.str.45, %26 ], [ @.str.44, %25 ], [ @.str.43, %24 ], [ @.str.42, %23 ], [ @.str.41, %22 ], [ @.str.40, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull %31, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %32

32:                                               ; preds = %30, %2
  tail call void @put_device(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__device_suspend(ptr noundef %0, [1 x i32] %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  %5 = zext i1 %2 to i8
  store i8 %5, ptr %4, align 1
  %6 = call i32 @device_for_each_child(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @dpm_wait_fn) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  %7 = call i32 @device_links_read_lock() #9
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %34, label %11

11:                                               ; preds = %31, %3
  %12 = phi ptr [ %32, %31 ], [ %9, %3 ]
  %13 = getelementptr i8, ptr %12, i32 492
  %14 = load volatile i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  br i1 %2, label %29, label %21

21:                                               ; preds = %20
  %22 = load i32, ptr @pm_async_enabled, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 5
  call void @wait_for_completion(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %29, %24, %21, %16, %11
  %32 = load volatile ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, %8
  br i1 %33, label %34, label %11

34:                                               ; preds = %31, %3
  call void @device_links_read_unlock(i32 noundef %7) #9
  %35 = load i32, ptr @async_error, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, -513
  store i16 %40, ptr %38, align 4
  br label %253

41:                                               ; preds = %34
  %42 = call i32 @pm_runtime_barrier(ptr noundef %0) #9
  %43 = call zeroext i1 @pm_wakeup_pending() #9
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, -513
  store i16 %47, ptr %45, align 4
  store i32 -16, ptr @async_error, align 4
  br label %253

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 7
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %253

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %60 = load ptr, ptr %59, align 8
  %61 = icmp ne ptr %60, null
  %62 = and i8 %50, 1
  %63 = icmp ne i8 %62, 0
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %68, label %70

65:                                               ; preds = %53
  %66 = and i8 %50, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65, %58
  %69 = and i16 %55, -513
  store i16 %69, ptr %54, align 4
  br label %70

70:                                               ; preds = %68, %65, %58
  %71 = phi i16 [ %55, %58 ], [ %69, %68 ], [ %55, %65 ]
  %72 = and i16 %71, 512
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #9
  %79 = load i32, ptr %75, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %253, label %81

81:                                               ; preds = %78
  call void @pm_runtime_enable(ptr noundef %0) #9
  %82 = load i16, ptr %54, align 4
  %83 = load i8, ptr %49, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = phi i8 [ %83, %81 ], [ %50, %74 ]
  %86 = phi i16 [ %82, %81 ], [ %71, %74 ]
  %87 = and i16 %86, -513
  store i16 %87, ptr %54, align 4
  br label %88

88:                                               ; preds = %84, %70
  %89 = phi i8 [ %85, %84 ], [ %50, %70 ]
  %90 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 8
  %94 = and i8 %89, -25
  %95 = or i8 %94, 16
  %96 = or i8 %93, %95
  %97 = xor i8 %96, 8
  store i8 %97, ptr %49, align 4
  %98 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %98) #9
  %99 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 12
  %100 = load ptr, ptr %99, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %88
  %103 = extractvalue [1 x i32] %1, 0
  switch i32 %103, label %161 [
    i32 2, label %104
    i32 16, label %106
  ]

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.dev_pm_ops, ptr %100, i32 0, i32 2
  br label %156

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.dev_pm_ops, ptr %100, i32 0, i32 3
  br label %156

108:                                              ; preds = %88
  %109 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %122, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.device_type, ptr %110, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %112
  %117 = extractvalue [1 x i32] %1, 0
  switch i32 %117, label %161 [
    i32 2, label %118
    i32 16, label %120
  ]

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.dev_pm_ops, ptr %114, i32 0, i32 2
  br label %156

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.dev_pm_ops, ptr %114, i32 0, i32 3
  br label %156

122:                                              ; preds = %112, %108
  %123 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %136, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.class, ptr %124, i32 0, i32 13
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = extractvalue [1 x i32] %1, 0
  switch i32 %131, label %161 [
    i32 2, label %132
    i32 16, label %134
  ]

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.dev_pm_ops, ptr %128, i32 0, i32 2
  br label %156

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.dev_pm_ops, ptr %128, i32 0, i32 3
  br label %156

136:                                              ; preds = %126, %122
  %137 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %161, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.bus_type, ptr %138, i32 0, i32 18
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = extractvalue [1 x i32] %1, 0
  switch i32 %145, label %161 [
    i32 2, label %146
    i32 16, label %148
  ]

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.dev_pm_ops, ptr %142, i32 0, i32 2
  br label %156

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.dev_pm_ops, ptr %142, i32 0, i32 3
  br label %156

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.bus_type, ptr %138, i32 0, i32 14
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = call fastcc i32 @legacy_suspend(ptr noundef %0, [1 x i32] %1, ptr noundef nonnull %152)
  br label %183

156:                                              ; preds = %148, %146, %134, %132, %120, %118, %106, %104
  %157 = phi ptr [ %107, %106 ], [ %105, %104 ], [ %121, %120 ], [ %119, %118 ], [ %135, %134 ], [ %133, %132 ], [ %149, %148 ], [ %147, %146 ]
  %158 = phi ptr [ @.str.49, %106 ], [ @.str.49, %104 ], [ @.str.50, %120 ], [ @.str.50, %118 ], [ @.str.51, %134 ], [ @.str.51, %132 ], [ @.str.52, %148 ], [ @.str.52, %146 ]
  %159 = load ptr, ptr %157, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %179

161:                                              ; preds = %156, %150, %144, %136, %130, %116, %102
  %162 = phi ptr [ %158, %156 ], [ @.str.52, %144 ], [ @.str.51, %130 ], [ @.str.50, %116 ], [ @.str.49, %102 ], [ null, %136 ], [ null, %150 ]
  %163 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %164 = load ptr, ptr %163, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %179, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.device_driver, ptr %164, i32 0, i32 16
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %179, label %170

170:                                              ; preds = %166
  %171 = extractvalue [1 x i32] %1, 0
  switch i32 %171, label %179 [
    i32 2, label %172
    i32 16, label %174
  ]

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 2
  br label %176

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.dev_pm_ops, ptr %168, i32 0, i32 3
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi ptr [ %175, %174 ], [ %173, %172 ]
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %170, %166, %161, %156
  %180 = phi ptr [ %159, %156 ], [ null, %166 ], [ null, %161 ], [ null, %170 ], [ %178, %176 ]
  %181 = phi ptr [ %158, %156 ], [ %162, %166 ], [ %162, %161 ], [ @.str.54, %170 ], [ @.str.54, %176 ]
  %182 = call fastcc i32 @dpm_run_callback(ptr noundef %180, ptr noundef %0, [1 x i32] %1, ptr noundef %181)
  br label %183

183:                                              ; preds = %179, %154
  %184 = phi i32 [ %182, %179 ], [ %155, %154 ]
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %252

186:                                              ; preds = %183
  %187 = load i16, ptr %54, align 4
  %188 = or i16 %187, 16
  store i16 %188, ptr %54, align 4
  %189 = and i16 %187, 1
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %193 = load ptr, ptr %192, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load i8, ptr %49, align 4
  %197 = or i8 %196, 1
  store i8 %197, ptr %49, align 4
  br label %198

198:                                              ; preds = %195, %191, %186
  %199 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %231, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.device, ptr %200, i32 0, i32 11, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %203) #9
  %204 = load i8, ptr %49, align 4
  %205 = and i8 %204, 1
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.device, ptr %200, i32 0, i32 11, i32 15
  %209 = load i16, ptr %208, align 8
  %210 = and i16 %209, 256
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %207
  %213 = getelementptr inbounds %struct.device, ptr %200, i32 0, i32 11, i32 7
  %214 = load i8, ptr %213, align 4
  %215 = or i8 %214, 1
  store i8 %215, ptr %213, align 4
  br label %216

216:                                              ; preds = %212, %207, %202
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %217 = load i16, ptr %203, align 4
  %218 = add i16 %217, 1
  store i16 %218, ptr %203, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %219 = load ptr, ptr %199, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %231, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.device, ptr %219, i32 0, i32 11, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %222) #9
  %223 = load ptr, ptr %199, align 4
  %224 = getelementptr inbounds %struct.device, ptr %223, i32 0, i32 11, i32 1
  %225 = load i16, ptr %224, align 4
  %226 = and i16 %225, -513
  store i16 %226, ptr %224, align 4
  %227 = load ptr, ptr %199, align 4
  %228 = getelementptr inbounds %struct.device, ptr %227, i32 0, i32 11, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %229 = load i16, ptr %228, align 4
  %230 = add i16 %229, 1
  store i16 %230, ptr %228, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %231

231:                                              ; preds = %221, %216, %198
  %232 = call i32 @device_links_read_lock() #9
  %233 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %234 = load volatile ptr, ptr %233, align 8
  %235 = icmp eq ptr %234, %233
  br i1 %235, label %251, label %236

236:                                              ; preds = %236, %231
  %237 = phi ptr [ %249, %236 ], [ %234, %231 ]
  %238 = getelementptr i8, ptr %237, i32 -16
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr inbounds %struct.device, ptr %239, i32 0, i32 11, i32 3
  call void @_raw_spin_lock_irq(ptr noundef %240) #9
  %241 = load ptr, ptr %238, align 8
  %242 = getelementptr inbounds %struct.device, ptr %241, i32 0, i32 11, i32 1
  %243 = load i16, ptr %242, align 4
  %244 = and i16 %243, -513
  store i16 %244, ptr %242, align 4
  %245 = load ptr, ptr %238, align 8
  %246 = getelementptr inbounds %struct.device, ptr %245, i32 0, i32 11, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %247 = load i16, ptr %246, align 4
  %248 = add i16 %247, 1
  store i16 %248, ptr %246, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %249 = load volatile ptr, ptr %237, align 8
  %250 = icmp eq ptr %249, %233
  br i1 %250, label %251, label %236

251:                                              ; preds = %236, %231
  call void @device_links_read_unlock(i32 noundef %232) #9
  call void @mutex_unlock(ptr noundef %98) #9
  br label %253

252:                                              ; preds = %183
  call void @mutex_unlock(ptr noundef %98) #9
  store i32 %184, ptr @async_error, align 4
  br label %253

253:                                              ; preds = %252, %251, %78, %48, %44, %37
  %254 = phi i32 [ %184, %252 ], [ 0, %251 ], [ 0, %37 ], [ 0, %44 ], [ 0, %48 ], [ 0, %78 ]
  %255 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 5
  call void @complete_all(ptr noundef %255) #9
  ret i32 %254
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_barrier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @legacy_suspend(ptr noundef %0, [1 x i32] %1, ptr noundef %2) unnamed_addr #0 {
  %4 = extractvalue [1 x i32] %1, 0
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_start, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #9
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %19 = tail call i32 @__traceiter_device_pm_callback_start(ptr noundef null, ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %4) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !18
  br label %20

20:                                               ; preds = %18, %7, %3
  %21 = tail call i32 %2(ptr noundef %0, [1 x i32] %1) #9
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_device_pm_callback_end, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = tail call ptr @llvm.thread.pointer() #9
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %36 = tail call i32 @__traceiter_device_pm_callback_end(ptr noundef null, ptr noundef %0, i32 noundef %21) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !20
  br label %37

37:                                               ; preds = %35, %24, %20
  %38 = icmp eq i32 %21, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.legacy_suspend, ptr noundef %2, i32 noundef %21) #10
  br label %41

41:                                               ; preds = %39, %37
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!8 = !{i64 2149259117}
!9 = !{i64 2149254941}
!10 = !{i64 2149255016, i64 2149255043, i64 2149255090, i64 2149255112, i64 2149255140, i64 2149255160}
!11 = !{i64 651168}
!12 = !{i64 2149283261}
!13 = !{i64 2154378069}
!14 = !{i64 2154378245}
!15 = !{i64 1181683, i64 1181710, i64 1181732, i64 1181760}
!16 = !{i64 1182091, i64 1182118, i64 1182151, i64 1182172, i64 1182199, i64 1182225}
!17 = !{i64 2154340494}
!18 = !{i64 2154340690}
!19 = !{i64 2154357403}
!20 = !{i64 2154357579}
!21 = !{i64 622176, i64 2148123742, i64 2148123768, i64 2148123815, i64 2148123837, i64 2148123865, i64 2148123885}
!22 = !{i64 2148187004, i64 2148187030, i64 2148187059, i64 2148187093, i64 2148187124, i64 2148187147}
!23 = !{i8 0, i8 2}
