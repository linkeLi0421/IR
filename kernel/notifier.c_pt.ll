; ModuleID = '/llk/IR/kernel/notifier.c_pt.bc'
source_filename = "../kernel/notifier.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atomic_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22atomic_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_atomic_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_call_chain_robust\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blocking_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22blocking_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_blocking_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_call_chain_robust\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_call_chain_robust:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_raw_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22raw_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_raw_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_notifier_chain_register\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_notifier_chain_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_notifier_chain_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_notifier_chain_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_srcu_init_notifier_head:\09\09\09\09\09"
module asm "\09.asciz \09\22srcu_init_notifier_head\22\09\09\09\09\09"
module asm "__kstrtabns_srcu_init_notifier_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_die_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_die_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_die_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.die_args = type { ptr, ptr, i32, i32, i32 }

@reboot_notifier_list = dso_local global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @reboot_notifier_list, i64 16), ptr getelementptr (i8, ptr @reboot_notifier_list, i64 16) } }, ptr null }, align 4
@__kstrtab_atomic_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_notifier_chain_register to i32), ptr @__kstrtab_atomic_notifier_chain_register, ptr @__kstrtabns_atomic_notifier_chain_register }, section "___ksymtab_gpl+atomic_notifier_chain_register", align 4
@__kstrtab_atomic_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_notifier_chain_unregister to i32), ptr @__kstrtab_atomic_notifier_chain_unregister, ptr @__kstrtabns_atomic_notifier_chain_unregister }, section "___ksymtab_gpl+atomic_notifier_chain_unregister", align 4
@__kstrtab_atomic_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_atomic_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_atomic_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atomic_notifier_call_chain to i32), ptr @__kstrtab_atomic_notifier_call_chain, ptr @__kstrtabns_atomic_notifier_call_chain }, section "___ksymtab_gpl+atomic_notifier_call_chain", align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_blocking_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_chain_register to i32), ptr @__kstrtab_blocking_notifier_chain_register, ptr @__kstrtabns_blocking_notifier_chain_register }, section "___ksymtab_gpl+blocking_notifier_chain_register", align 4
@__kstrtab_blocking_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_chain_unregister to i32), ptr @__kstrtab_blocking_notifier_chain_unregister, ptr @__kstrtabns_blocking_notifier_chain_unregister }, section "___ksymtab_gpl+blocking_notifier_chain_unregister", align 4
@__kstrtab_blocking_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_call_chain_robust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_call_chain_robust to i32), ptr @__kstrtab_blocking_notifier_call_chain_robust, ptr @__kstrtabns_blocking_notifier_call_chain_robust }, section "___ksymtab_gpl+blocking_notifier_call_chain_robust", align 4
@__kstrtab_blocking_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_blocking_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_blocking_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blocking_notifier_call_chain to i32), ptr @__kstrtab_blocking_notifier_call_chain, ptr @__kstrtabns_blocking_notifier_call_chain }, section "___ksymtab_gpl+blocking_notifier_call_chain", align 4
@__kstrtab_raw_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_chain_register to i32), ptr @__kstrtab_raw_notifier_chain_register, ptr @__kstrtabns_raw_notifier_chain_register }, section "___ksymtab_gpl+raw_notifier_chain_register", align 4
@__kstrtab_raw_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_chain_unregister to i32), ptr @__kstrtab_raw_notifier_chain_unregister, ptr @__kstrtabns_raw_notifier_chain_unregister }, section "___ksymtab_gpl+raw_notifier_chain_unregister", align 4
@__kstrtab_raw_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_call_chain_robust = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_call_chain_robust = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_call_chain_robust to i32), ptr @__kstrtab_raw_notifier_call_chain_robust, ptr @__kstrtabns_raw_notifier_call_chain_robust }, section "___ksymtab_gpl+raw_notifier_call_chain_robust", align 4
@__kstrtab_raw_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_raw_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_raw_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @raw_notifier_call_chain to i32), ptr @__kstrtab_raw_notifier_call_chain, ptr @__kstrtabns_raw_notifier_call_chain }, section "___ksymtab_gpl+raw_notifier_call_chain", align 4
@__kstrtab_srcu_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_notifier_chain_register = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_notifier_chain_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_notifier_chain_register to i32), ptr @__kstrtab_srcu_notifier_chain_register, ptr @__kstrtabns_srcu_notifier_chain_register }, section "___ksymtab_gpl+srcu_notifier_chain_register", align 4
@__kstrtab_srcu_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_notifier_chain_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_notifier_chain_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_notifier_chain_unregister to i32), ptr @__kstrtab_srcu_notifier_chain_unregister, ptr @__kstrtabns_srcu_notifier_chain_unregister }, section "___ksymtab_gpl+srcu_notifier_chain_unregister", align 4
@__kstrtab_srcu_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_notifier_call_chain to i32), ptr @__kstrtab_srcu_notifier_call_chain, ptr @__kstrtabns_srcu_notifier_call_chain }, section "___ksymtab_gpl+srcu_notifier_call_chain", align 4
@srcu_init_notifier_head.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&nh->mutex\00", align 1
@__kstrtab_srcu_init_notifier_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_srcu_init_notifier_head = external dso_local constant [0 x i8], align 1
@__ksymtab_srcu_init_notifier_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @srcu_init_notifier_head to i32), ptr @__kstrtab_srcu_init_notifier_head, ptr @__kstrtabns_srcu_init_notifier_head }, section "___ksymtab_gpl+srcu_init_notifier_head", align 4
@die_chain = internal global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_register_die_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_die_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_die_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_die_notifier to i32), ptr @__kstrtab_register_die_notifier, ptr @__kstrtabns_register_die_notifier }, section "___ksymtab_gpl+register_die_notifier", align 4
@__kstrtab_unregister_die_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_die_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_die_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_die_notifier to i32), ptr @__kstrtab_unregister_die_notifier, ptr @__kstrtabns_unregister_die_notifier }, section "___ksymtab_gpl+unregister_die_notifier", align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"kernel/notifier.c\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"notifier callback %ps already registered\00", align 1
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_atomic_notifier_call_chain, ptr @__ksymtab_atomic_notifier_chain_register, ptr @__ksymtab_atomic_notifier_chain_unregister, ptr @__ksymtab_blocking_notifier_call_chain, ptr @__ksymtab_blocking_notifier_call_chain_robust, ptr @__ksymtab_blocking_notifier_chain_register, ptr @__ksymtab_blocking_notifier_chain_unregister, ptr @__ksymtab_raw_notifier_call_chain, ptr @__ksymtab_raw_notifier_call_chain_robust, ptr @__ksymtab_raw_notifier_chain_register, ptr @__ksymtab_raw_notifier_chain_unregister, ptr @__ksymtab_register_die_notifier, ptr @__ksymtab_srcu_init_notifier_head, ptr @__ksymtab_srcu_notifier_call_chain, ptr @__ksymtab_srcu_notifier_chain_register, ptr @__ksymtab_srcu_notifier_chain_unregister, ptr @__ksymtab_unregister_die_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atomic_notifier_chain_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #3
  %4 = getelementptr inbounds %struct.atomic_notifier_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 2
  br label %9

9:                                                ; preds = %20, %7
  %10 = phi ptr [ %5, %7 ], [ %22, %20 ]
  %11 = phi ptr [ %4, %7 ], [ %21, %20 ]
  %12 = icmp eq ptr %10, %1
  br i1 %12, label %13, label %15, !prof !8

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %14) #3
  br label %28

15:                                               ; preds = %9
  %16 = load i32, ptr %8, align 4
  %17 = getelementptr inbounds %struct.notifier_block, ptr %10, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.notifier_block, ptr %10, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %9

24:                                               ; preds = %20, %15, %2
  %25 = phi ptr [ %4, %2 ], [ %21, %20 ], [ %11, %15 ]
  %26 = phi ptr [ null, %2 ], [ null, %20 ], [ %10, %15 ]
  %27 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  store volatile ptr %1, ptr %25, align 4
  br label %28

28:                                               ; preds = %24, %13
  %29 = phi i32 [ -17, %13 ], [ 0, %24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #3
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @notifier_chain_register(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %18, %5
  %8 = phi ptr [ %3, %5 ], [ %20, %18 ]
  %9 = phi ptr [ %0, %5 ], [ %19, %18 ]
  %10 = icmp eq ptr %8, %1
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %12) #3
  br label %26

13:                                               ; preds = %7
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7

22:                                               ; preds = %18, %13, %2
  %23 = phi ptr [ %0, %2 ], [ %9, %13 ], [ %19, %18 ]
  %24 = phi ptr [ null, %2 ], [ %8, %13 ], [ null, %18 ]
  %25 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  store volatile ptr %1, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi i32 [ -17, %11 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atomic_notifier_chain_unregister(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #3
  %4 = getelementptr inbounds %struct.atomic_notifier_head, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, %1
  br i1 %8, label %18, label %9

9:                                                ; preds = %14, %7
  %10 = phi ptr [ %12, %14 ], [ %5, %7 ]
  %11 = getelementptr inbounds %struct.notifier_block, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = icmp eq ptr %12, %1
  br i1 %15, label %16, label %9

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.notifier_block, ptr %10, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi ptr [ %4, %7 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  store volatile ptr %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %18, %9, %2
  %23 = phi i32 [ 0, %18 ], [ -2, %2 ], [ -2, %9 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %3) #3
  tail call void @synchronize_rcu() #3
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atomic_notifier_call_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %4 = getelementptr inbounds %struct.atomic_notifier_head, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %12

7:                                                ; preds = %12
  %8 = add i32 %13, -1
  %9 = icmp ne ptr %16, null
  %10 = icmp ne i32 %8, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %21

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %8, %7 ], [ -1, %3 ]
  %14 = phi ptr [ %16, %7 ], [ %5, %3 ]
  %15 = getelementptr inbounds %struct.notifier_block, ptr %14, i32 0, i32 1
  %16 = load volatile ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = tail call i32 %17(ptr noundef nonnull %14, i32 noundef %1, ptr noundef %2) #3
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %7, label %21

21:                                               ; preds = %12, %7, %3
  %22 = phi i32 [ 0, %3 ], [ %18, %12 ], [ %18, %7 ]
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_chain_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @system_state, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.blocking_notifier_head, ptr %0, i32 0, i32 1
  %7 = tail call fastcc i32 @notifier_chain_register(ptr noundef %6, ptr noundef %1)
  br label %35

8:                                                ; preds = %2
  tail call void @down_write(ptr noundef %0) #3
  %9 = getelementptr inbounds %struct.blocking_notifier_head, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 2
  br label %14

14:                                               ; preds = %25, %12
  %15 = phi ptr [ %10, %12 ], [ %27, %25 ]
  %16 = phi ptr [ %9, %12 ], [ %26, %25 ]
  %17 = icmp eq ptr %15, %1
  br i1 %17, label %18, label %20, !prof !8

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %19) #3
  br label %33

20:                                               ; preds = %14
  %21 = load i32, ptr %13, align 4
  %22 = getelementptr inbounds %struct.notifier_block, ptr %15, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.notifier_block, ptr %15, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %14

29:                                               ; preds = %25, %20, %8
  %30 = phi ptr [ %9, %8 ], [ %26, %25 ], [ %16, %20 ]
  %31 = phi ptr [ null, %8 ], [ null, %25 ], [ %15, %20 ]
  %32 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  store volatile ptr %1, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i32 [ -17, %18 ], [ 0, %29 ]
  tail call void @up_write(ptr noundef %0) #3
  br label %35

35:                                               ; preds = %33, %5
  %36 = phi i32 [ %7, %5 ], [ %34, %33 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_chain_unregister(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = load i32, ptr @system_state, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %24, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.blocking_notifier_head, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %7, %1
  br i1 %10, label %20, label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ %14, %16 ], [ %7, %9 ]
  %13 = getelementptr inbounds %struct.notifier_block, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %14, %1
  br i1 %17, label %18, label %11

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.notifier_block, ptr %12, i32 0, i32 1
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %6, %9 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  store volatile ptr %23, ptr %21, align 4
  br label %45

24:                                               ; preds = %2
  tail call void @down_write(ptr noundef %0) #3
  %25 = getelementptr inbounds %struct.blocking_notifier_head, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %26, %1
  br i1 %29, label %39, label %30

30:                                               ; preds = %35, %28
  %31 = phi ptr [ %33, %35 ], [ %26, %28 ]
  %32 = getelementptr inbounds %struct.notifier_block, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = icmp eq ptr %33, %1
  br i1 %36, label %37, label %30

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.notifier_block, ptr %31, i32 0, i32 1
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi ptr [ %25, %28 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  store volatile ptr %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %30, %24
  %44 = phi i32 [ 0, %39 ], [ -2, %24 ], [ -2, %30 ]
  tail call void @up_write(ptr noundef %0) #3
  br label %45

45:                                               ; preds = %43, %20, %11, %5
  %46 = phi i32 [ %44, %43 ], [ 0, %20 ], [ -2, %5 ], [ -2, %11 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_call_chain_robust(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.blocking_notifier_head, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %8

8:                                                ; preds = %4
  tail call void @down_read(ptr noundef %0) #3
  %9 = load volatile ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %17

11:                                               ; preds = %17
  %12 = add nuw i32 %18, 1
  %13 = add i32 %19, -1
  %14 = icmp ne ptr %22, null
  %15 = icmp ne i32 %13, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %46

17:                                               ; preds = %11, %8
  %18 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %19 = phi i32 [ %13, %11 ], [ -1, %8 ]
  %20 = phi ptr [ %22, %11 ], [ %9, %8 ]
  %21 = getelementptr inbounds %struct.notifier_block, ptr %20, i32 0, i32 1
  %22 = load volatile ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = tail call i32 %23(ptr noundef nonnull %20, i32 noundef %1, ptr noundef %3) #3
  %25 = and i32 %24, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %11, label %27

27:                                               ; preds = %17
  %28 = load volatile ptr, ptr %5, align 4
  %29 = icmp ne ptr %28, null
  %30 = icmp ne i32 %18, 0
  %31 = and i1 %30, %29
  br i1 %31, label %37, label %46

32:                                               ; preds = %37
  %33 = add i32 %38, -1
  %34 = icmp ne ptr %41, null
  %35 = icmp ne i32 %33, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %46

37:                                               ; preds = %32, %27
  %38 = phi i32 [ %33, %32 ], [ %18, %27 ]
  %39 = phi ptr [ %41, %32 ], [ %28, %27 ]
  %40 = getelementptr inbounds %struct.notifier_block, ptr %39, i32 0, i32 1
  %41 = load volatile ptr, ptr %40, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = tail call i32 %42(ptr noundef nonnull %39, i32 noundef %2, ptr noundef %3) #3
  %44 = and i32 %43, 32768
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %32, label %46

46:                                               ; preds = %37, %32, %27, %11, %8
  %47 = phi i32 [ %24, %27 ], [ 0, %8 ], [ %24, %37 ], [ %24, %32 ], [ %24, %11 ]
  tail call void @up_read(ptr noundef %0) #3
  br label %48

48:                                               ; preds = %46, %4
  %49 = phi i32 [ %47, %46 ], [ 0, %4 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @blocking_notifier_call_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blocking_notifier_head, ptr %0, i32 0, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  tail call void @down_read(ptr noundef %0) #3
  %8 = load volatile ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %15

10:                                               ; preds = %15
  %11 = add i32 %16, -1
  %12 = icmp ne ptr %19, null
  %13 = icmp ne i32 %11, 0
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %24

15:                                               ; preds = %10, %7
  %16 = phi i32 [ %11, %10 ], [ -1, %7 ]
  %17 = phi ptr [ %19, %10 ], [ %8, %7 ]
  %18 = getelementptr inbounds %struct.notifier_block, ptr %17, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i32 %20(ptr noundef nonnull %17, i32 noundef %1, ptr noundef %2) #3
  %22 = and i32 %21, 32768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %10, label %24

24:                                               ; preds = %15, %10, %7
  %25 = phi i32 [ 0, %7 ], [ %21, %15 ], [ %21, %10 ]
  tail call void @up_read(ptr noundef %0) #3
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i32 [ %25, %24 ], [ 0, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_chain_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 2
  br label %7

7:                                                ; preds = %18, %5
  %8 = phi ptr [ %3, %5 ], [ %20, %18 ]
  %9 = phi ptr [ %0, %5 ], [ %19, %18 ]
  %10 = icmp eq ptr %8, %1
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %12) #3
  br label %26

13:                                               ; preds = %7
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7

22:                                               ; preds = %18, %13, %2
  %23 = phi ptr [ %0, %2 ], [ %19, %18 ], [ %9, %13 ]
  %24 = phi ptr [ null, %2 ], [ null, %18 ], [ %8, %13 ]
  %25 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  store volatile ptr %1, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi i32 [ -17, %11 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_chain_unregister(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %12, %5
  %8 = phi ptr [ %10, %12 ], [ %3, %5 ]
  %9 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %10, %1
  br i1 %13, label %14, label %7

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 1
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %0, %5 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  store volatile ptr %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %7, %2
  %21 = phi i32 [ 0, %16 ], [ -2, %2 ], [ -2, %7 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_call_chain_robust(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %13

7:                                                ; preds = %13
  %8 = add nuw i32 %14, 1
  %9 = add i32 %15, -1
  %10 = icmp ne ptr %18, null
  %11 = icmp ne i32 %9, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %42

13:                                               ; preds = %7, %4
  %14 = phi i32 [ %8, %7 ], [ 0, %4 ]
  %15 = phi i32 [ %9, %7 ], [ -1, %4 ]
  %16 = phi ptr [ %18, %7 ], [ %5, %4 ]
  %17 = getelementptr inbounds %struct.notifier_block, ptr %16, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 %19(ptr noundef nonnull %16, i32 noundef %1, ptr noundef %3) #3
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %7, label %23

23:                                               ; preds = %13
  %24 = load volatile ptr, ptr %0, align 4
  %25 = icmp ne ptr %24, null
  %26 = icmp ne i32 %14, 0
  %27 = and i1 %26, %25
  br i1 %27, label %33, label %42

28:                                               ; preds = %33
  %29 = add i32 %34, -1
  %30 = icmp ne ptr %37, null
  %31 = icmp ne i32 %29, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %42

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %29, %28 ], [ %14, %23 ]
  %35 = phi ptr [ %37, %28 ], [ %24, %23 ]
  %36 = getelementptr inbounds %struct.notifier_block, ptr %35, i32 0, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = load ptr, ptr %35, align 4
  %39 = tail call i32 %38(ptr noundef nonnull %35, i32 noundef %2, ptr noundef %3) #3
  %40 = and i32 %39, 32768
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %28, label %42

42:                                               ; preds = %33, %28, %23, %7, %4
  %43 = phi i32 [ %20, %23 ], [ 0, %4 ], [ %20, %33 ], [ %20, %28 ], [ %20, %7 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @raw_notifier_call_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %11

6:                                                ; preds = %11
  %7 = add i32 %12, -1
  %8 = icmp ne ptr %15, null
  %9 = icmp ne i32 %7, 0
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %11, label %20

11:                                               ; preds = %6, %3
  %12 = phi i32 [ %7, %6 ], [ -1, %3 ]
  %13 = phi ptr [ %15, %6 ], [ %4, %3 ]
  %14 = getelementptr inbounds %struct.notifier_block, ptr %13, i32 0, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = load ptr, ptr %13, align 4
  %17 = tail call i32 %16(ptr noundef nonnull %13, i32 noundef %1, ptr noundef %2) #3
  %18 = and i32 %17, 32768
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %6, label %20

20:                                               ; preds = %11, %6, %3
  %21 = phi i32 [ 0, %3 ], [ %17, %11 ], [ %17, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @srcu_notifier_chain_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @system_state, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 2
  %7 = tail call fastcc i32 @notifier_chain_register(ptr noundef %6, ptr noundef %1)
  br label %35

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef %0) #3
  %9 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 2
  br label %14

14:                                               ; preds = %25, %12
  %15 = phi ptr [ %10, %12 ], [ %27, %25 ]
  %16 = phi ptr [ %9, %12 ], [ %26, %25 ]
  %17 = icmp eq ptr %15, %1
  br i1 %17, label %18, label %20, !prof !8

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %19) #3
  br label %33

20:                                               ; preds = %14
  %21 = load i32, ptr %13, align 4
  %22 = getelementptr inbounds %struct.notifier_block, ptr %15, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.notifier_block, ptr %15, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %14

29:                                               ; preds = %25, %20, %8
  %30 = phi ptr [ %9, %8 ], [ %26, %25 ], [ %16, %20 ]
  %31 = phi ptr [ null, %8 ], [ null, %25 ], [ %15, %20 ]
  %32 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  store volatile ptr %1, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %18
  %34 = phi i32 [ -17, %18 ], [ 0, %29 ]
  tail call void @mutex_unlock(ptr noundef %0) #3
  br label %35

35:                                               ; preds = %33, %5
  %36 = phi i32 [ %7, %5 ], [ %34, %33 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @srcu_notifier_chain_unregister(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = load i32, ptr @system_state, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %24, !prof !8

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %7, %1
  br i1 %10, label %20, label %11

11:                                               ; preds = %16, %9
  %12 = phi ptr [ %14, %16 ], [ %7, %9 ]
  %13 = getelementptr inbounds %struct.notifier_block, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %14, %1
  br i1 %17, label %18, label %11

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.notifier_block, ptr %12, i32 0, i32 1
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %6, %9 ], [ %19, %18 ]
  %22 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  store volatile ptr %23, ptr %21, align 4
  br label %46

24:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef %0) #3
  %25 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %26, %1
  br i1 %29, label %39, label %30

30:                                               ; preds = %35, %28
  %31 = phi ptr [ %33, %35 ], [ %26, %28 ]
  %32 = getelementptr inbounds %struct.notifier_block, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = icmp eq ptr %33, %1
  br i1 %36, label %37, label %30

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.notifier_block, ptr %31, i32 0, i32 1
  br label %39

39:                                               ; preds = %37, %28
  %40 = phi ptr [ %25, %28 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.notifier_block, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  store volatile ptr %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %39, %30, %24
  %44 = phi i32 [ 0, %39 ], [ -2, %24 ], [ -2, %30 ]
  tail call void @mutex_unlock(ptr noundef %0) #3
  %45 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 1
  tail call void @synchronize_srcu(ptr noundef %45) #3
  br label %46

46:                                               ; preds = %43, %20, %11, %5
  %47 = phi i32 [ %44, %43 ], [ 0, %20 ], [ -2, %5 ], [ -2, %11 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @srcu_notifier_call_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 1
  %5 = tail call i32 @__srcu_read_lock(ptr noundef %4) #3
  %6 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 2
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %14

9:                                                ; preds = %14
  %10 = add i32 %15, -1
  %11 = icmp ne ptr %18, null
  %12 = icmp ne i32 %10, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %23

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %10, %9 ], [ -1, %3 ]
  %16 = phi ptr [ %18, %9 ], [ %7, %3 ]
  %17 = getelementptr inbounds %struct.notifier_block, ptr %16, i32 0, i32 1
  %18 = load volatile ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 %19(ptr noundef nonnull %16, i32 noundef %1, ptr noundef %2) #3
  %21 = and i32 %20, 32768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %9, label %23

23:                                               ; preds = %14, %9, %3
  %24 = phi i32 [ 0, %3 ], [ %20, %14 ], [ %20, %9 ]
  %25 = icmp ugt i32 %5, 1
  %26 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !8

29:                                               ; preds = %23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef null) #3
  br label %30

30:                                               ; preds = %29, %23
  tail call void @__srcu_read_unlock(ptr noundef %4, i32 noundef %5) #3
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @srcu_init_notifier_head(ptr noundef %0) #0 {
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @srcu_init_notifier_head.__key) #3
  %2 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 1
  %3 = tail call i32 @init_srcu_struct(ptr noundef %2) #3
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/notifier.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 508, 0\0A.popsection", ""() #3, !srcloc !13
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.srcu_notifier_head, ptr %0, i32 0, i32 2
  store ptr null, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_srcu_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @notify_die(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.die_args, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #3
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.die_args, ptr %7, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.die_args, ptr %7, i32 0, i32 2
  store i32 %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.die_args, ptr %7, i32 0, i32 3
  store i32 %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.die_args, ptr %7, i32 0, i32 4
  store i32 %5, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %12 = load volatile ptr, ptr getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %19

14:                                               ; preds = %19
  %15 = add i32 %20, -1
  %16 = icmp ne ptr %23, null
  %17 = icmp ne i32 %15, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %28

19:                                               ; preds = %14, %6
  %20 = phi i32 [ %15, %14 ], [ -1, %6 ]
  %21 = phi ptr [ %23, %14 ], [ %12, %6 ]
  %22 = getelementptr inbounds %struct.notifier_block, ptr %21, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = call i32 %24(ptr noundef nonnull %21, i32 noundef %0, ptr noundef nonnull %7) #3
  %26 = and i32 %25, 32768
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %19, %14, %6
  %29 = phi i32 [ 0, %6 ], [ %25, %19 ], [ %25, %14 ]
  call void asm sideeffect "", "~{memory}"() #3, !srcloc !12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #3
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_die_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @die_chain) #3
  %3 = load ptr, ptr getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.notifier_block, ptr %0, i32 0, i32 2
  br label %7

7:                                                ; preds = %18, %5
  %8 = phi ptr [ %3, %5 ], [ %20, %18 ]
  %9 = phi ptr [ getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), %5 ], [ %19, %18 ]
  %10 = icmp eq ptr %8, %0
  br i1 %10, label %11, label %13, !prof !8

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %12) #3
  br label %26

13:                                               ; preds = %7
  %14 = load i32, ptr %6, align 4
  %15 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7

22:                                               ; preds = %18, %13, %1
  %23 = phi ptr [ getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), %1 ], [ %9, %13 ], [ %19, %18 ]
  %24 = phi ptr [ null, %1 ], [ %8, %13 ], [ null, %18 ]
  %25 = getelementptr inbounds %struct.notifier_block, ptr %0, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  store volatile ptr %0, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %11
  %27 = phi i32 [ -17, %11 ], [ 0, %22 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @die_chain, i32 noundef %2) #3
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_die_notifier(ptr noundef readonly %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @die_chain) #3
  %3 = load ptr, ptr getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = icmp eq ptr %3, %0
  br i1 %6, label %16, label %7

7:                                                ; preds = %12, %5
  %8 = phi ptr [ %10, %12 ], [ %3, %5 ]
  %9 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %10, %0
  br i1 %13, label %14, label %7

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.notifier_block, ptr %8, i32 0, i32 1
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ getelementptr inbounds (%struct.atomic_notifier_head, ptr @die_chain, i32 0, i32 1), %5 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.notifier_block, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  store volatile ptr %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %16, %7, %1
  %21 = phi i32 [ 0, %16 ], [ -2, %1 ], [ -2, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @die_chain, i32 noundef %2) #3
  tail call void @synchronize_rcu() #3
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152721469}
!10 = !{i64 2152728158}
!11 = !{i64 2148977583}
!12 = !{i64 2148977800}
!13 = !{i64 2152770087, i64 2152770569, i64 2152770124, i64 2152770180, i64 2152770214, i64 2152770238, i64 2152770279, i64 2152770300, i64 2152770328, i64 2152770362}
