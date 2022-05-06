; ModuleID = '/llk/IR/drivers/base/power/qos.c_pt.bc'
source_filename = "../drivers/base/power/qos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_flags\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_add_request\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_add_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_update_request\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_update_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_remove_request\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_remove_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_add_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_add_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_remove_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_remove_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_add_ancestor_request:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_add_ancestor_request\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_add_ancestor_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_expose_latency_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_expose_latency_limit\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_expose_latency_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_hide_latency_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_hide_latency_limit\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_hide_latency_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_expose_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_expose_flags\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_expose_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_hide_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_hide_flags\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_hide_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_update_user_latency_tolerance:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_update_user_latency_tolerance\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_update_user_latency_tolerance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_expose_latency_tolerance:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_expose_latency_tolerance\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_expose_latency_tolerance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_pm_qos_hide_latency_tolerance:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_pm_qos_hide_latency_tolerance\22\09\09\09\09\09"
module asm "__kstrtabns_dev_pm_qos_hide_latency_tolerance:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
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
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, ptr, ptr, ptr }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.89, ptr }
%union.anon.89 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_dev_pm_qos_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_flags to i32), ptr @__kstrtab_dev_pm_qos_flags, ptr @__kstrtabns_dev_pm_qos_flags }, section "___ksymtab_gpl+dev_pm_qos_flags", align 4
@.str = private unnamed_addr constant [25 x i8] c"drivers/base/power/qos.c\00", align 1
@dev_pm_qos_sysfs_mtx = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dev_pm_qos_sysfs_mtx, i64 12), ptr getelementptr (i8, ptr @dev_pm_qos_sysfs_mtx, i64 12) } }, align 4
@dev_pm_qos_mtx = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @dev_pm_qos_mtx, i64 12), ptr getelementptr (i8, ptr @dev_pm_qos_mtx, i64 12) } }, align 4
@__kstrtab_dev_pm_qos_add_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_add_request = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_add_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_add_request to i32), ptr @__kstrtab_dev_pm_qos_add_request, ptr @__kstrtabns_dev_pm_qos_add_request }, section "___ksymtab_gpl+dev_pm_qos_add_request", align 4
@__kstrtab_dev_pm_qos_update_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_update_request = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_update_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_update_request to i32), ptr @__kstrtab_dev_pm_qos_update_request, ptr @__kstrtabns_dev_pm_qos_update_request }, section "___ksymtab_gpl+dev_pm_qos_update_request", align 4
@__kstrtab_dev_pm_qos_remove_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_remove_request = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_remove_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_remove_request to i32), ptr @__kstrtab_dev_pm_qos_remove_request, ptr @__kstrtabns_dev_pm_qos_remove_request }, section "___ksymtab_gpl+dev_pm_qos_remove_request", align 4
@__kstrtab_dev_pm_qos_add_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_add_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_add_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_add_notifier to i32), ptr @__kstrtab_dev_pm_qos_add_notifier, ptr @__kstrtabns_dev_pm_qos_add_notifier }, section "___ksymtab_gpl+dev_pm_qos_add_notifier", align 4
@__kstrtab_dev_pm_qos_remove_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_remove_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_remove_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_remove_notifier to i32), ptr @__kstrtab_dev_pm_qos_remove_notifier, ptr @__kstrtabns_dev_pm_qos_remove_notifier }, section "___ksymtab_gpl+dev_pm_qos_remove_notifier", align 4
@__kstrtab_dev_pm_qos_add_ancestor_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_add_ancestor_request = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_add_ancestor_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_add_ancestor_request to i32), ptr @__kstrtab_dev_pm_qos_add_ancestor_request, ptr @__kstrtabns_dev_pm_qos_add_ancestor_request }, section "___ksymtab_gpl+dev_pm_qos_add_ancestor_request", align 4
@__kstrtab_dev_pm_qos_expose_latency_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_expose_latency_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_expose_latency_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_expose_latency_limit to i32), ptr @__kstrtab_dev_pm_qos_expose_latency_limit, ptr @__kstrtabns_dev_pm_qos_expose_latency_limit }, section "___ksymtab_gpl+dev_pm_qos_expose_latency_limit", align 4
@__kstrtab_dev_pm_qos_hide_latency_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_hide_latency_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_hide_latency_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_hide_latency_limit to i32), ptr @__kstrtab_dev_pm_qos_hide_latency_limit, ptr @__kstrtabns_dev_pm_qos_hide_latency_limit }, section "___ksymtab_gpl+dev_pm_qos_hide_latency_limit", align 4
@__kstrtab_dev_pm_qos_expose_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_expose_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_expose_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_expose_flags to i32), ptr @__kstrtab_dev_pm_qos_expose_flags, ptr @__kstrtabns_dev_pm_qos_expose_flags }, section "___ksymtab_gpl+dev_pm_qos_expose_flags", align 4
@__kstrtab_dev_pm_qos_hide_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_hide_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_hide_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_hide_flags to i32), ptr @__kstrtab_dev_pm_qos_hide_flags, ptr @__kstrtabns_dev_pm_qos_hide_flags }, section "___ksymtab_gpl+dev_pm_qos_hide_flags", align 4
@__kstrtab_dev_pm_qos_update_user_latency_tolerance = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_update_user_latency_tolerance = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_update_user_latency_tolerance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_update_user_latency_tolerance to i32), ptr @__kstrtab_dev_pm_qos_update_user_latency_tolerance, ptr @__kstrtabns_dev_pm_qos_update_user_latency_tolerance }, section "___ksymtab_gpl+dev_pm_qos_update_user_latency_tolerance", align 4
@__kstrtab_dev_pm_qos_expose_latency_tolerance = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_expose_latency_tolerance = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_expose_latency_tolerance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_expose_latency_tolerance to i32), ptr @__kstrtab_dev_pm_qos_expose_latency_tolerance, ptr @__kstrtabns_dev_pm_qos_expose_latency_tolerance }, section "___ksymtab_gpl+dev_pm_qos_expose_latency_tolerance", align 4
@__kstrtab_dev_pm_qos_hide_latency_tolerance = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_pm_qos_hide_latency_tolerance = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_pm_qos_hide_latency_tolerance = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_pm_qos_hide_latency_tolerance to i32), ptr @__kstrtab_dev_pm_qos_hide_latency_tolerance, ptr @__kstrtabns_dev_pm_qos_hide_latency_tolerance }, section "___ksymtab_gpl+dev_pm_qos_hide_latency_tolerance", align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s() called for already added request\0A\00", align 1
@__func__.__dev_pm_qos_add_request = private unnamed_addr constant [25 x i8] c"__dev_pm_qos_add_request\00", align 1
@__tracepoint_dev_pm_qos_add_request = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"%s() called for unknown object\0A\00", align 1
@__func__.__dev_pm_qos_update_request = private unnamed_addr constant [28 x i8] c"__dev_pm_qos_update_request\00", align 1
@__tracepoint_dev_pm_qos_update_request = external dso_local global %struct.tracepoint, align 4
@__func__.__dev_pm_qos_remove_request = private unnamed_addr constant [28 x i8] c"__dev_pm_qos_remove_request\00", align 1
@__tracepoint_dev_pm_qos_remove_request = external dso_local global %struct.tracepoint, align 4
@dev_pm_qos_constraints_allocate.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"&(n)->rwsem\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_dev_pm_qos_add_ancestor_request, ptr @__ksymtab_dev_pm_qos_add_notifier, ptr @__ksymtab_dev_pm_qos_add_request, ptr @__ksymtab_dev_pm_qos_expose_flags, ptr @__ksymtab_dev_pm_qos_expose_latency_limit, ptr @__ksymtab_dev_pm_qos_expose_latency_tolerance, ptr @__ksymtab_dev_pm_qos_flags, ptr @__ksymtab_dev_pm_qos_hide_flags, ptr @__ksymtab_dev_pm_qos_hide_latency_limit, ptr @__ksymtab_dev_pm_qos_hide_latency_tolerance, ptr @__ksymtab_dev_pm_qos_remove_notifier, ptr @__ksymtab_dev_pm_qos_remove_request, ptr @__ksymtab_dev_pm_qos_update_request, ptr @__ksymtab_dev_pm_qos_update_user_latency_tolerance], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__dev_pm_qos_flags(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dev_pm_qos, ptr %4, i32 0, i32 3
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dev_pm_qos, ptr %4, i32 0, i32 3, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %15, %1
  %19 = select i1 %18, i32 2, i32 1
  br label %20

20:                                               ; preds = %17, %12, %8, %2
  %21 = phi i32 [ %19, %17 ], [ -1, %2 ], [ -1, %8 ], [ 0, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_flags(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dev_pm_qos, ptr %6, i32 0, i32 3
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dev_pm_qos, ptr %6, i32 0, i32 3, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = icmp eq i32 %17, %1
  %21 = select i1 %20, i32 2, i32 1
  br label %22

22:                                               ; preds = %19, %14, %10, %2
  %23 = phi i32 [ %21, %19 ], [ -1, %2 ], [ -1, %10 ], [ 0, %14 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #6
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__dev_pm_qos_resume_latency(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @pm_qos_read_value(ptr noundef nonnull %3) #6
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 2147483647, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_read_value(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #6
  switch i32 %1, label %27 [
    i32 1, label %7
    i32 3, label %13
    i32 4, label %20
  ]

7:                                                ; preds = %2
  %8 = icmp eq ptr %4, null
  %9 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %10 = or i1 %8, %9
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @pm_qos_read_value(ptr noundef nonnull %4) #6
  br label %28

13:                                               ; preds = %2
  %14 = icmp eq ptr %4, null
  %15 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %16 = or i1 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dev_pm_qos, ptr %4, i32 0, i32 2
  %19 = tail call i32 @freq_qos_read_value(ptr noundef %18, i32 noundef 1) #6
  br label %28

20:                                               ; preds = %2
  %21 = icmp eq ptr %4, null
  %22 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dev_pm_qos, ptr %4, i32 0, i32 2
  %26 = tail call i32 @freq_qos_read_value(ptr noundef %25, i32 noundef 2) #6
  br label %28

27:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #6
  br label %28

28:                                               ; preds = %27, %24, %20, %17, %13, %11, %7
  %29 = phi i32 [ 0, %27 ], [ %12, %11 ], [ 2147483647, %7 ], [ %19, %17 ], [ 0, %13 ], [ %26, %24 ], [ 2147483647, %20 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #6
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_qos_read_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_read_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_qos_constraints_destroy(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  tail call void @pm_qos_sysfs_remove_resume_latency(ptr noundef %0) #6
  tail call void @pm_qos_sysfs_remove_flags(ptr noundef %0) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  store ptr null, ptr %8, align 4
  %12 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %9) #6
  tail call void @kfree(ptr noundef nonnull %9) #6
  %13 = load ptr, ptr %2, align 8
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi ptr [ %3, %1 ], [ %3, %7 ], [ %13, %11 ]
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.dev_pm_qos, ptr %15, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  store ptr null, ptr %20, align 4
  %24 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %21) #6
  tail call void @kfree(ptr noundef nonnull %21) #6
  %25 = load ptr, ptr %2, align 8
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi ptr [ %15, %14 ], [ %25, %23 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %85, label %29

29:                                               ; preds = %26, %19
  %30 = phi ptr [ %27, %26 ], [ %15, %19 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %39, label %33

33:                                               ; preds = %33, %29
  %34 = phi ptr [ %36, %33 ], [ %31, %29 ]
  %35 = getelementptr i8, ptr %34, i32 -16
  %36 = load ptr, ptr %34, align 4
  %37 = tail call fastcc i32 @apply_constraint(ptr noundef %35, i32 noundef 2, i32 noundef -1)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %35, i8 0, i32 36, i1 false)
  %38 = icmp eq ptr %36, %30
  br i1 %38, label %39, label %33

39:                                               ; preds = %33, %29
  %40 = getelementptr inbounds %struct.dev_pm_qos, ptr %30, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %49, label %43

43:                                               ; preds = %43, %39
  %44 = phi ptr [ %46, %43 ], [ %41, %39 ]
  %45 = getelementptr i8, ptr %44, i32 -16
  %46 = load ptr, ptr %44, align 4
  %47 = tail call fastcc i32 @apply_constraint(ptr noundef %45, i32 noundef 2, i32 noundef -1)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %45, i8 0, i32 36, i1 false)
  %48 = icmp eq ptr %46, %40
  br i1 %48, label %49, label %43

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %struct.dev_pm_qos, ptr %30, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %59, label %53

53:                                               ; preds = %53, %49
  %54 = phi ptr [ %56, %53 ], [ %51, %49 ]
  %55 = getelementptr i8, ptr %54, i32 -20
  %56 = load ptr, ptr %54, align 4
  %57 = tail call fastcc i32 @apply_constraint(ptr noundef %55, i32 noundef 2, i32 noundef 0)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %55, i8 0, i32 36, i1 false)
  %58 = icmp eq ptr %56, %50
  br i1 %58, label %59, label %53

59:                                               ; preds = %53, %49
  %60 = getelementptr inbounds %struct.dev_pm_qos, ptr %30, i32 0, i32 2, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %69, label %63

63:                                               ; preds = %63, %59
  %64 = phi ptr [ %66, %63 ], [ %61, %59 ]
  %65 = getelementptr i8, ptr %64, i32 -20
  %66 = load ptr, ptr %64, align 4
  %67 = tail call fastcc i32 @apply_constraint(ptr noundef %65, i32 noundef 2, i32 noundef 2147483647)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %65, i8 0, i32 36, i1 false)
  %68 = icmp eq ptr %66, %60
  br i1 %68, label %69, label %63

69:                                               ; preds = %63, %59
  %70 = getelementptr inbounds %struct.dev_pm_qos, ptr %30, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %79, label %73

73:                                               ; preds = %73, %69
  %74 = phi ptr [ %76, %73 ], [ %71, %69 ]
  %75 = getelementptr i8, ptr %74, i32 -4
  %76 = load ptr, ptr %74, align 4
  %77 = tail call fastcc i32 @apply_constraint(ptr noundef %75, i32 noundef 2, i32 noundef -1)
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %75, i8 0, i32 36, i1 false)
  %78 = icmp eq ptr %76, %70
  br i1 %78, label %79, label %73

79:                                               ; preds = %73, %69
  %80 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %80) #6
  store ptr inttoptr (i32 -19 to ptr), ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %81 = load i16, ptr %80, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %80, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %83 = getelementptr inbounds %struct.pm_qos_constraints, ptr %30, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  tail call void @kfree(ptr noundef %84) #6
  tail call void @kfree(ptr noundef nonnull %30) #6
  br label %85

85:                                               ; preds = %79, %26
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_qos_sysfs_remove_resume_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_qos_sysfs_remove_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @apply_constraint(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 28
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %0, align 4
  switch i32 %8, label %36 [
    i32 1, label %9
    i32 2, label %18
    i32 3, label %28
    i32 4, label %28
    i32 5, label %31
  ]

9:                                                ; preds = %3
  %10 = icmp ne i32 %1, 2
  %11 = icmp slt i32 %2, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %14, !prof !13

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 9, ptr noundef null) #6
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ 0, %13 ], [ %2, %9 ]
  %16 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 1
  %17 = tail call i32 @pm_qos_update_target(ptr noundef %7, ptr noundef %16, i32 noundef %1, i32 noundef %15) #6
  br label %36

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.dev_pm_qos, ptr %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 1
  %21 = tail call i32 @pm_qos_update_target(ptr noundef %19, ptr noundef %20, i32 noundef %1, i32 noundef %2) #6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @pm_qos_read_value(ptr noundef %19) #6
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 11, i32 27
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %25, i32 noundef %24) #6
  br label %36

28:                                               ; preds = %3, %3
  %29 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 1
  %30 = tail call i32 @freq_qos_apply(ptr noundef %29, i32 noundef %1, i32 noundef %2) #6
  br label %36

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.dev_pm_qos, ptr %7, i32 0, i32 3
  %33 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 1
  %34 = tail call zeroext i1 @pm_qos_update_flags(ptr noundef %32, ptr noundef %33, i32 noundef %1, i32 noundef %2) #6
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %31, %28, %23, %18, %14, %3
  %37 = phi i32 [ %35, %31 ], [ %30, %28 ], [ %21, %23 ], [ 0, %18 ], [ %17, %14 ], [ -22, %3 ]
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_add_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %5 = tail call fastcc i32 @__dev_pm_qos_add_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dev_pm_qos_add_request(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %66

8:                                                ; preds = %4
  %9 = icmp eq i32 %2, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %66, label %14

14:                                               ; preds = %10, %8
  %15 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !14

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__dev_pm_qos_add_request) #6
  br label %66

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = icmp eq ptr %21, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = tail call fastcc i32 @dev_pm_qos_constraints_allocate(ptr noundef nonnull %0)
  br label %27

27:                                               ; preds = %25, %23, %19
  %28 = phi i32 [ 0, %23 ], [ %26, %25 ], [ -19, %19 ]
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %33, %32 ], [ %30, %27 ]
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_pm_qos_add_request, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = tail call ptr @llvm.thread.pointer() #6
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !15
  %50 = tail call i32 @__traceiter_dev_pm_qos_add_request(ptr noundef null, ptr noundef %35, i32 noundef %2, i32 noundef %3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !16
  br label %51

51:                                               ; preds = %49, %38, %34
  %52 = icmp eq i32 %28, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  store ptr %0, ptr %15, align 4
  store i32 %2, ptr %1, align 4
  switch i32 %2, label %64 [
    i32 3, label %54
    i32 4, label %59
  ]

54:                                               ; preds = %53
  %55 = load ptr, ptr %20, align 8
  %56 = getelementptr inbounds %struct.dev_pm_qos, ptr %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %1, i32 0, i32 1
  %58 = tail call i32 @freq_qos_add_request(ptr noundef %56, ptr noundef %57, i32 noundef 1, i32 noundef %3) #6
  br label %66

59:                                               ; preds = %53
  %60 = load ptr, ptr %20, align 8
  %61 = getelementptr inbounds %struct.dev_pm_qos, ptr %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %1, i32 0, i32 1
  %63 = tail call i32 @freq_qos_add_request(ptr noundef %61, ptr noundef %62, i32 noundef 2, i32 noundef %3) #6
  br label %66

64:                                               ; preds = %53
  %65 = tail call fastcc i32 @apply_constraint(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %3)
  br label %66

66:                                               ; preds = %64, %59, %54, %51, %18, %10, %4
  %67 = phi i32 [ -22, %18 ], [ -22, %10 ], [ -22, %4 ], [ %28, %51 ], [ %58, %54 ], [ %63, %59 ], [ %65, %64 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_update_request(ptr noundef %0, i32 noundef %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %3 = tail call fastcc i32 @__dev_pm_qos_update_request(ptr noundef %0, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dev_pm_qos_update_request(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %52, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !13

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 415, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__dev_pm_qos_update_request) #6
  br label %52

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 28
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %52, label %15

15:                                               ; preds = %9
  %16 = load i32, ptr %0, align 4
  switch i32 %16, label %52 [
    i32 1, label %17
    i32 2, label %17
    i32 3, label %19
    i32 4, label %19
    i32 5, label %21
  ]

17:                                               ; preds = %15, %15
  %18 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 1
  br label %23

19:                                               ; preds = %15, %15
  %20 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 1, i32 0, i32 1
  br label %23

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 1, i32 0, i32 1, i32 1
  br label %23

23:                                               ; preds = %21, %19, %17
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %18, %17 ]
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %30, %29 ], [ %27, %23 ]
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_pm_qos_update_request, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = tail call ptr @llvm.thread.pointer() #6
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %47 = tail call i32 @__traceiter_dev_pm_qos_update_request(ptr noundef null, ptr noundef %32, i32 noundef %16, i32 noundef %1) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !18
  br label %48

48:                                               ; preds = %46, %35, %31
  %49 = icmp eq i32 %25, %1
  br i1 %49, label %52, label %50

50:                                               ; preds = %48
  %51 = tail call fastcc i32 @apply_constraint(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1)
  br label %52

52:                                               ; preds = %50, %48, %15, %9, %8, %2
  %53 = phi i32 [ -22, %8 ], [ -22, %2 ], [ -19, %9 ], [ -22, %15 ], [ %51, %50 ], [ 0, %48 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_remove_request(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %2 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__dev_pm_qos_remove_request(ptr noundef %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !13

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 482, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.__dev_pm_qos_remove_request) #6
  br label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 28
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %40, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = load i32, ptr %0, align 4
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dev_pm_qos_remove_request, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = tail call ptr @llvm.thread.pointer() #6
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !19
  %37 = tail call i32 @__traceiter_dev_pm_qos_remove_request(ptr noundef null, ptr noundef %21, i32 noundef %22, i32 noundef -1) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !20
  br label %38

38:                                               ; preds = %36, %25, %20
  %39 = tail call fastcc i32 @apply_constraint(ptr noundef nonnull %0, i32 noundef 2, i32 noundef -1)
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %0, i8 0, i32 36, i1 false)
  br label %40

40:                                               ; preds = %38, %8, %7, %1
  %41 = phi i32 [ -22, %7 ], [ %39, %38 ], [ -22, %1 ], [ -19, %8 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_add_notifier(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call fastcc i32 @dev_pm_qos_constraints_allocate(ptr noundef %0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %9, %7
  switch i32 %2, label %26 [
    i32 1, label %13
    i32 3, label %18
    i32 4, label %22
  ]

13:                                               ; preds = %12
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.pm_qos_constraints, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @blocking_notifier_chain_register(ptr noundef %16, ptr noundef %1) #6
  br label %27

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.dev_pm_qos, ptr %19, i32 0, i32 2
  %21 = tail call i32 @freq_qos_add_notifier(ptr noundef %20, i32 noundef 1, ptr noundef %1) #6
  br label %27

22:                                               ; preds = %12
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.dev_pm_qos, ptr %23, i32 0, i32 2
  %25 = tail call i32 @freq_qos_add_notifier(ptr noundef %24, i32 noundef 2, ptr noundef %1) #6
  br label %27

26:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #6
  br label %27

27:                                               ; preds = %26, %22, %18, %13, %9, %3
  %28 = phi i32 [ %10, %9 ], [ -22, %26 ], [ %25, %22 ], [ %21, %18 ], [ %17, %13 ], [ -19, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dev_pm_qos_constraints_allocate(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 192) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #6
  br label %31

10:                                               ; preds = %5
  store volatile ptr %3, ptr %3, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pm_qos_constraints, ptr %3, i32 0, i32 1
  store i32 2147483647, ptr %12, align 8
  %13 = getelementptr inbounds %struct.pm_qos_constraints, ptr %3, i32 0, i32 2
  store i32 2147483647, ptr %13, align 4
  %14 = getelementptr inbounds %struct.pm_qos_constraints, ptr %3, i32 0, i32 3
  store i32 2147483647, ptr %14, align 8
  %15 = getelementptr inbounds %struct.pm_qos_constraints, ptr %3, i32 0, i32 4
  store i32 2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pm_qos_constraints, ptr %3, i32 0, i32 5
  store ptr %7, ptr %16, align 8
  tail call void @__init_rwsem(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @dev_pm_qos_constraints_allocate.__key) #6
  %17 = getelementptr inbounds %struct.blocking_notifier_head, ptr %7, i32 0, i32 1
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 1
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 1, i32 1
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 1, i32 2
  store i32 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 1, i32 3
  store i32 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 1, i32 4
  store i32 2, ptr %23, align 8
  %24 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 2
  tail call void @freq_constraints_init(ptr noundef %24) #6
  %25 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 3
  store volatile ptr %25, ptr %25, align 8
  %26 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 3, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %27) #6
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  store ptr %3, ptr %28, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  %29 = load i16, ptr %27, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  br label %31

31:                                               ; preds = %10, %9, %1
  %32 = phi i32 [ 0, %10 ], [ -12, %9 ], [ -12, %1 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_remove_notifier(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  switch i32 %2, label %20 [
    i32 1, label %10
    i32 3, label %14
    i32 4, label %17
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.pm_qos_constraints, ptr %5, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %12, ptr noundef %1) #6
  br label %21

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dev_pm_qos, ptr %5, i32 0, i32 2
  %16 = tail call i32 @freq_qos_remove_notifier(ptr noundef %15, i32 noundef 1, ptr noundef %1) #6
  br label %21

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.dev_pm_qos, ptr %5, i32 0, i32 2
  %19 = tail call i32 @freq_qos_remove_notifier(ptr noundef %18, i32 noundef 2, ptr noundef %1) #6
  br label %21

20:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 611, i32 noundef 9, ptr noundef null) #6
  br label %21

21:                                               ; preds = %20, %17, %14, %10, %3
  %22 = phi i32 [ 0, %3 ], [ -22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %10 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_add_ancestor_request(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  switch i32 %2, label %34 [
    i32 1, label %9
    i32 2, label %7
  ]

7:                                                ; preds = %4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %34, label %21

9:                                                ; preds = %4
  %10 = icmp eq ptr %6, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %17, %9
  %12 = phi ptr [ %19, %17 ], [ %6, %9 ]
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 11, i32 15
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 256
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %11

21:                                               ; preds = %26, %7
  %22 = phi ptr [ %28, %26 ], [ %6, %7 ]
  %23 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 11, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %21

30:                                               ; preds = %21, %11
  %31 = phi ptr [ %12, %11 ], [ %22, %21 ]
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %32 = tail call fastcc i32 @__dev_pm_qos_add_request(ptr noundef nonnull %31, ptr noundef %1, i32 noundef %2, i32 noundef %3) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26, %17, %9, %7, %4
  %35 = phi i32 [ %32, %30 ], [ -19, %4 ], [ -19, %9 ], [ -19, %7 ], [ -19, %17 ], [ -19, %26 ]
  %36 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %1, i32 0, i32 2
  store ptr null, ptr %36, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = phi i32 [ %35, %34 ], [ %32, %30 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_expose_latency_limit(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  %7 = icmp slt i32 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %42, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 36) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %14 = tail call fastcc i32 @__dev_pm_qos_add_request(ptr noundef %0, ptr noundef nonnull %11, i32 noundef 1, i32 noundef %1) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #6
  br label %42

17:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.dev_pm_qos, ptr %19, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %17
  %28 = phi i32 [ -17, %23 ], [ -19, %17 ]
  %29 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %11)
  tail call void @kfree(ptr noundef nonnull %11) #6
  br label %38

30:                                               ; preds = %23
  store ptr %11, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %31 = tail call i32 @pm_qos_sysfs_add_resume_latency(ptr noundef %0) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %34 = load ptr, ptr %18, align 8
  %35 = getelementptr inbounds %struct.dev_pm_qos, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  store ptr null, ptr %35, align 4
  %37 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef %36) #6
  tail call void @kfree(ptr noundef %36) #6
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i32 [ %31, %33 ], [ %28, %27 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i32 [ 0, %30 ], [ %39, %38 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  br label %42

42:                                               ; preds = %40, %16, %9, %2
  %43 = phi i32 [ %14, %16 ], [ %41, %40 ], [ -22, %2 ], [ -12, %9 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_qos_sysfs_add_resume_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_qos_hide_latency_limit(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  tail call void @pm_qos_sysfs_remove_resume_latency(ptr noundef %0) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  store ptr null, ptr %8, align 4
  %12 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %9) #6
  tail call void @kfree(ptr noundef nonnull %9) #6
  br label %13

13:                                               ; preds = %11, %7, %1
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_expose_flags(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 36) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %12 = tail call fastcc i32 @__dev_pm_qos_add_request(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 5, i32 noundef %1) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #6
  br label %42

15:                                               ; preds = %11
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %21 = or i1 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.dev_pm_qos, ptr %18, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %15
  %27 = phi i32 [ -17, %22 ], [ -19, %15 ]
  %28 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %9)
  tail call void @kfree(ptr noundef nonnull %9) #6
  br label %37

29:                                               ; preds = %22
  store ptr %9, ptr %23, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %30 = tail call i32 @pm_qos_sysfs_add_flags(ptr noundef %0) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %33 = load ptr, ptr %17, align 8
  %34 = getelementptr inbounds %struct.dev_pm_qos, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  store ptr null, ptr %34, align 4
  %36 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef %35) #6
  tail call void @kfree(ptr noundef %35) #6
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32 [ %30, %32 ], [ %27, %26 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi i32 [ 0, %29 ], [ %38, %37 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  %41 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #6
  br label %42

42:                                               ; preds = %39, %14, %7, %2
  %43 = phi i32 [ %12, %14 ], [ %40, %39 ], [ -22, %2 ], [ -12, %7 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_qos_sysfs_add_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_qos_hide_flags(ptr noundef %0) #1 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  tail call void @pm_qos_sysfs_remove_flags(ptr noundef %0) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dev_pm_qos, ptr %4, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store ptr null, ptr %9, align 4
  %13 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %10) #6
  tail call void @kfree(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %12, %8, %1
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_update_flags(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dev_pm_qos, ptr %6, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %12, i32 0, i32 1, i32 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, %1
  %18 = xor i32 %1, -1
  %19 = and i32 %16, %18
  %20 = select i1 %2, i32 %17, i32 %19
  %21 = tail call fastcc i32 @__dev_pm_qos_update_request(ptr noundef nonnull %12, i32 noundef %20)
  br label %22

22:                                               ; preds = %14, %10, %3
  %23 = phi i32 [ %21, %14 ], [ -22, %10 ], [ -22, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %24 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #6
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_get_user_latency_tolerance(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dev_pm_qos, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dev_pm_qos_request, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi i32 [ %13, %11 ], [ -1, %7 ], [ -1, %1 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_update_user_latency_tolerance(ptr noundef %0, i32 noundef %1) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dev_pm_qos, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %8, %2
  %13 = icmp slt i32 %1, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %15 = icmp eq i32 %1, -1
  %16 = select i1 %15, i32 0, i32 -22
  br label %34

17:                                               ; preds = %12
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 36) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc i32 @__dev_pm_qos_add_request(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 2, i32 noundef %1)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @kfree(ptr noundef nonnull %19) #6
  br label %34

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.dev_pm_qos, ptr %26, i32 0, i32 5
  store ptr %19, ptr %27, align 4
  br label %34

28:                                               ; preds = %8
  %29 = icmp slt i32 %1, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  store ptr null, ptr %9, align 4
  %31 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %10) #6
  tail call void @kfree(ptr noundef nonnull %10) #6
  br label %34

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @__dev_pm_qos_update_request(ptr noundef nonnull %10, i32 noundef %1)
  br label %34

34:                                               ; preds = %32, %30, %25, %24, %17, %14
  %35 = phi i32 [ 0, %30 ], [ %33, %32 ], [ %16, %14 ], [ %22, %24 ], [ %22, %25 ], [ -12, %17 ]
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_pm_qos_expose_latency_tolerance(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  %6 = tail call i32 @pm_qos_sysfs_add_latency_tolerance(ptr noundef %0) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_qos_sysfs_add_latency_tolerance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dev_pm_qos_hide_latency_tolerance(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  tail call void @pm_qos_sysfs_remove_latency_tolerance(ptr noundef %0) #6
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_sysfs_mtx) #6
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #6
  tail call void @mutex_lock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dev_pm_qos, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  store ptr null, ptr %9, align 4
  %13 = tail call fastcc i32 @__dev_pm_qos_remove_request(ptr noundef nonnull %10) #6
  tail call void @kfree(ptr noundef nonnull %10) #6
  br label %14

14:                                               ; preds = %12, %8, %1
  tail call void @mutex_unlock(ptr noundef nonnull @dev_pm_qos_mtx) #6
  %15 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_qos_sysfs_remove_latency_tolerance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_qos_update_target(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_apply(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pm_qos_update_flags(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dev_pm_qos_update_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dev_pm_qos_remove_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @freq_constraints_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{i64 2148896774}
!9 = !{i64 2148892598}
!10 = !{i64 2148892673, i64 2148892700, i64 2148892747, i64 2148892769, i64 2148892797, i64 2148892817}
!11 = !{i64 628819}
!12 = !{i64 2148920918}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2154187650}
!16 = !{i64 2154187848}
!17 = !{i64 2154205224}
!18 = !{i64 2154205428}
!19 = !{i64 2154222960}
!20 = !{i64 2154223164}
