; ModuleID = '/llk/IR/lib/rhashtable.c_pt.bc'
source_filename = "../lib/rhashtable.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_insert_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_insert_slow\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_insert_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_walk_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_walk_enter\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_walk_enter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_walk_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_walk_exit\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_walk_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_walk_start_check:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_walk_start_check\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_walk_start_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_walk_next:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_walk_next\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_walk_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_walk_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_walk_peek\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_walk_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_walk_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_walk_stop\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_walk_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_init\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhltable_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rhltable_init\22\09\09\09\09\09"
module asm "__kstrtabns_rhltable_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_free_and_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_free_and_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_free_and_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rhashtable_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22rhashtable_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_rhashtable_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___rht_bucket_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22__rht_bucket_nested\22\09\09\09\09\09"
module asm "__kstrtabns___rht_bucket_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rht_bucket_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22rht_bucket_nested\22\09\09\09\09\09"
module asm "__kstrtabns_rht_bucket_nested:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rht_bucket_nested_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22rht_bucket_nested_insert\22\09\09\09\09\09"
module asm "__kstrtabns_rht_bucket_nested_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.lockdep_map = type {}
%union.nested_table = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }

@__kstrtab_rhashtable_insert_slow = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_insert_slow = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_insert_slow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_insert_slow to i32), ptr @__kstrtab_rhashtable_insert_slow, ptr @__kstrtabns_rhashtable_insert_slow }, section "___ksymtab_gpl+rhashtable_insert_slow", align 4
@__kstrtab_rhashtable_walk_enter = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_walk_enter = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_walk_enter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_walk_enter to i32), ptr @__kstrtab_rhashtable_walk_enter, ptr @__kstrtabns_rhashtable_walk_enter }, section "___ksymtab_gpl+rhashtable_walk_enter", align 4
@__kstrtab_rhashtable_walk_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_walk_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_walk_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_walk_exit to i32), ptr @__kstrtab_rhashtable_walk_exit, ptr @__kstrtabns_rhashtable_walk_exit }, section "___ksymtab_gpl+rhashtable_walk_exit", align 4
@__kstrtab_rhashtable_walk_start_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_walk_start_check = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_walk_start_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_walk_start_check to i32), ptr @__kstrtab_rhashtable_walk_start_check, ptr @__kstrtabns_rhashtable_walk_start_check }, section "___ksymtab_gpl+rhashtable_walk_start_check", align 4
@__kstrtab_rhashtable_walk_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_walk_next = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_walk_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_walk_next to i32), ptr @__kstrtab_rhashtable_walk_next, ptr @__kstrtabns_rhashtable_walk_next }, section "___ksymtab_gpl+rhashtable_walk_next", align 4
@__kstrtab_rhashtable_walk_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_walk_peek = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_walk_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_walk_peek to i32), ptr @__kstrtab_rhashtable_walk_peek, ptr @__kstrtabns_rhashtable_walk_peek }, section "___ksymtab_gpl+rhashtable_walk_peek", align 4
@__kstrtab_rhashtable_walk_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_walk_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_walk_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_walk_stop to i32), ptr @__kstrtab_rhashtable_walk_stop, ptr @__kstrtabns_rhashtable_walk_stop }, section "___ksymtab_gpl+rhashtable_walk_stop", align 4
@rhashtable_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&ht->mutex\00", align 1
@__kstrtab_rhashtable_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_init to i32), ptr @__kstrtab_rhashtable_init, ptr @__kstrtabns_rhashtable_init }, section "___ksymtab_gpl+rhashtable_init", align 4
@__kstrtab_rhltable_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhltable_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rhltable_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhltable_init to i32), ptr @__kstrtab_rhltable_init, ptr @__kstrtabns_rhltable_init }, section "___ksymtab_gpl+rhltable_init", align 4
@__kstrtab_rhashtable_free_and_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_free_and_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_free_and_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_free_and_destroy to i32), ptr @__kstrtab_rhashtable_free_and_destroy, ptr @__kstrtabns_rhashtable_free_and_destroy }, section "___ksymtab_gpl+rhashtable_free_and_destroy", align 4
@__kstrtab_rhashtable_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_rhashtable_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_rhashtable_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rhashtable_destroy to i32), ptr @__kstrtab_rhashtable_destroy, ptr @__kstrtabns_rhashtable_destroy }, section "___ksymtab_gpl+rhashtable_destroy", align 4
@__kstrtab___rht_bucket_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns___rht_bucket_nested = external dso_local constant [0 x i8], align 1
@__ksymtab___rht_bucket_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__rht_bucket_nested to i32), ptr @__kstrtab___rht_bucket_nested, ptr @__kstrtabns___rht_bucket_nested }, section "___ksymtab_gpl+__rht_bucket_nested", align 4
@rht_bucket_nested.rhnull = internal global ptr null, align 4
@__kstrtab_rht_bucket_nested = external dso_local constant [0 x i8], align 1
@__kstrtabns_rht_bucket_nested = external dso_local constant [0 x i8], align 1
@__ksymtab_rht_bucket_nested = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rht_bucket_nested to i32), ptr @__kstrtab_rht_bucket_nested, ptr @__kstrtabns_rht_bucket_nested }, section "___ksymtab_gpl+rht_bucket_nested", align 4
@__kstrtab_rht_bucket_nested_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns_rht_bucket_nested_insert = external dso_local constant [0 x i8], align 1
@__ksymtab_rht_bucket_nested_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rht_bucket_nested_insert to i32), ptr @__kstrtab_rht_bucket_nested_insert, ptr @__kstrtabns_rht_bucket_nested_insert }, section "___ksymtab_gpl+rht_bucket_nested_insert", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_head_after_call_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"include/linux/rcupdate.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab___rht_bucket_nested, ptr @__ksymtab_rhashtable_destroy, ptr @__ksymtab_rhashtable_free_and_destroy, ptr @__ksymtab_rhashtable_init, ptr @__ksymtab_rhashtable_insert_slow, ptr @__ksymtab_rhashtable_walk_enter, ptr @__ksymtab_rhashtable_walk_exit, ptr @__ksymtab_rhashtable_walk_next, ptr @__ksymtab_rhashtable_walk_peek, ptr @__ksymtab_rhashtable_walk_start_check, ptr @__ksymtab_rhashtable_walk_stop, ptr @__ksymtab_rhltable_init, ptr @__ksymtab_rht_bucket_nested, ptr @__ksymtab_rht_bucket_nested_insert], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rhashtable_insert_slow(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.rhashtable_compare_arg, align 8
  %5 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 4
  %7 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 7
  %8 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 8
  %9 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 9
  %10 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 3
  %11 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 2
  %12 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %4, i32 0, i32 1
  %14 = icmp eq ptr %1, null
  %15 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.rhlist_head, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %2 to i32
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = or i32 %17, 1
  %21 = select i1 %19, i32 %20, i32 1
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8
  %24 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5
  br label %26

26:                                               ; preds = %314, %3
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %27 = load volatile ptr, ptr %0, align 4
  br label %28

28:                                               ; preds = %250, %26
  %29 = phi ptr [ %27, %26 ], [ %251, %250 ]
  %30 = load i32, ptr %8, align 4
  %31 = load i16, ptr %10, align 2
  %32 = zext i16 %31 to i32
  %33 = sub nsw i32 0, %32
  %34 = getelementptr i8, ptr %2, i32 %33
  %35 = icmp eq i32 %30, 0
  br i1 %35, label %43, label %36, !prof !9

36:                                               ; preds = %28
  %37 = load i32, ptr %5, align 4
  %38 = lshr i32 %37, 16
  %39 = inttoptr i32 %30 to ptr
  %40 = getelementptr inbounds %struct.bucket_table, ptr %29, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = call i32 %39(ptr noundef %34, i32 noundef %38, i32 noundef %41) #14
  br label %53

43:                                               ; preds = %28
  %44 = load i32, ptr %7, align 4
  %45 = inttoptr i32 %44 to ptr
  %46 = getelementptr inbounds %struct.bucket_table, ptr %29, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = load i32, ptr %11, align 4
  %49 = and i32 %48, 65535
  %50 = getelementptr i8, ptr %34, i32 %49
  %51 = load i32, ptr %12, align 4
  %52 = call i32 %45(ptr noundef %50, i32 noundef %51, i32 noundef %47) #14
  br label %53

53:                                               ; preds = %43, %36
  %54 = phi i32 [ %42, %36 ], [ %52, %43 ]
  %55 = load i32, ptr %29, align 64
  %56 = add i32 %55, -1
  %57 = and i32 %56, %54
  %58 = getelementptr inbounds %struct.bucket_table, ptr %29, i32 0, i32 5
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  %61 = getelementptr inbounds %struct.bucket_table, ptr %29, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %60, label %97, label %64

64:                                               ; preds = %53
  br i1 %63, label %95, label %65, !prof !10

65:                                               ; preds = %64
  %66 = shl nsw i32 -1, %62
  %67 = xor i32 %66, -1
  %68 = and i32 %57, %67
  %69 = lshr i32 %55, %62
  %70 = getelementptr inbounds %struct.bucket_table, ptr %29, i32 0, i32 8
  %71 = load ptr, ptr %70, align 64
  %72 = getelementptr %union.nested_table, ptr %71, i32 %68
  %73 = lshr i32 %57, %62
  %74 = load volatile ptr, ptr %72, align 4
  %75 = icmp ne ptr %74, null
  %76 = icmp ugt i32 %69, 1024
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %90

78:                                               ; preds = %78, %65
  %79 = phi ptr [ %86, %78 ], [ %74, %65 ]
  %80 = phi i32 [ %84, %78 ], [ %69, %65 ]
  %81 = phi i32 [ %85, %78 ], [ %73, %65 ]
  %82 = and i32 %81, 1023
  %83 = getelementptr %union.nested_table, ptr %79, i32 %82
  %84 = lshr i32 %80, 10
  %85 = lshr i32 %81, 10
  %86 = load volatile ptr, ptr %83, align 4
  %87 = icmp ne ptr %86, null
  %88 = icmp ugt i32 %80, 1049599
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %78, label %90

90:                                               ; preds = %78, %65
  %91 = phi i32 [ %73, %65 ], [ %85, %78 ]
  %92 = phi ptr [ %74, %65 ], [ %86, %78 ]
  %93 = phi i1 [ %75, %65 ], [ %87, %78 ]
  %94 = getelementptr %union.nested_table, ptr %92, i32 %91
  br i1 %93, label %102, label %245

95:                                               ; preds = %64
  %96 = getelementptr %struct.bucket_table, ptr %29, i32 0, i32 8, i32 %57
  br label %102

97:                                               ; preds = %53
  br i1 %63, label %100, label %98, !prof !10

98:                                               ; preds = %97
  %99 = call ptr @rht_bucket_nested_insert(ptr undef, ptr noundef %29, i32 noundef %57) #14
  br label %102

100:                                              ; preds = %97
  %101 = getelementptr %struct.bucket_table, ptr %29, i32 0, i32 8, i32 %57
  br label %102

102:                                              ; preds = %100, %98, %95, %90
  %103 = phi ptr [ %96, %95 ], [ %99, %98 ], [ %101, %100 ], [ %94, %90 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %245, label %105

105:                                              ; preds = %102
  %106 = tail call ptr @llvm.thread.pointer() #14
  %107 = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 1
  %108 = load volatile i32, ptr %107, align 4
  %109 = add i32 %108, 512
  store volatile i32 %109, ptr %107, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %110

110:                                              ; preds = %124, %105
  %111 = load volatile i32, ptr %103, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119, !prof !13

114:                                              ; preds = %110
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %103) #14, !srcloc !14
  %115 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %103, ptr nonnull %103, i32 1, ptr nonnull elementtype(i32) %103) #14, !srcloc !15
  %116 = extractvalue { i32, i32, i32 } %115, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119, !prof !10

119:                                              ; preds = %114, %110
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %120

120:                                              ; preds = %120, %119
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !19
  %121 = load volatile i32, ptr %103, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %120

124:                                              ; preds = %120
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  br label %110

125:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %13, align 4
  %126 = load ptr, ptr %103, align 4
  %127 = ptrtoint ptr %126 to i32
  %128 = and i32 %127, -2
  %129 = icmp eq i32 %128, 0
  %130 = ptrtoint ptr %103 to i32
  %131 = or i32 %130, 1
  %132 = select i1 %129, i32 %131, i32 %128
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %180

135:                                              ; preds = %125
  %136 = inttoptr i32 %132 to ptr
  br label %137

137:                                              ; preds = %172, %135
  %138 = phi ptr [ null, %135 ], [ %139, %172 ]
  %139 = phi ptr [ %136, %135 ], [ %173, %172 ]
  %140 = phi i32 [ 16, %135 ], [ %141, %172 ]
  %141 = add i32 %140, -1
  br i1 %14, label %172, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %9, align 4
  %144 = icmp eq ptr %143, null
  %145 = load i16, ptr %10, align 2
  %146 = zext i16 %145 to i32
  %147 = sub nsw i32 0, %146
  %148 = getelementptr i8, ptr %139, i32 %147
  br i1 %144, label %152, label %149

149:                                              ; preds = %142
  %150 = call i32 %143(ptr noundef nonnull %4, ptr noundef %148) #14
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %164, label %172

152:                                              ; preds = %142
  %153 = load ptr, ptr %4, align 8
  %154 = getelementptr inbounds %struct.rhashtable, ptr %153, i32 0, i32 3, i32 2
  %155 = load i16, ptr %154, align 4
  %156 = zext i16 %155 to i32
  %157 = getelementptr i8, ptr %148, i32 %156
  %158 = load ptr, ptr %13, align 4
  %159 = getelementptr inbounds %struct.rhashtable, ptr %153, i32 0, i32 3, i32 1
  %160 = load i16, ptr %159, align 2
  %161 = zext i16 %160 to i32
  %162 = call i32 @bcmp(ptr %157, ptr %158, i32 %161) #14
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %152, %149
  %165 = load i8, ptr %15, align 4, !range !21
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %164
  store volatile ptr %139, ptr %16, align 4
  %168 = load ptr, ptr %139, align 4
  store volatile ptr %168, ptr %2, align 4
  %169 = icmp eq ptr %138, null
  call void asm sideeffect "dmb ish", "~{memory}"() #14
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  store volatile ptr %2, ptr %138, align 4
  br label %180

171:                                              ; preds = %167
  store volatile ptr %22, ptr %103, align 4
  br label %180

172:                                              ; preds = %152, %149, %137
  %173 = load ptr, ptr %139, align 4
  %174 = ptrtoint ptr %173 to i32
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %137, label %177

177:                                              ; preds = %172
  %178 = icmp slt i32 %141, 1
  %179 = select i1 %178, ptr inttoptr (i32 -11 to ptr), ptr inttoptr (i32 -2 to ptr)
  br label %180

180:                                              ; preds = %177, %171, %170, %125
  %181 = phi ptr [ %179, %177 ], [ inttoptr (i32 -2 to ptr), %125 ], [ null, %170 ], [ null, %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %190

182:                                              ; preds = %164
  %183 = load i16, ptr %10, align 2
  %184 = zext i16 %183 to i32
  %185 = sub nsw i32 0, %184
  %186 = getelementptr i8, ptr %139, i32 %185
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %187 = icmp eq ptr %186, null
  %188 = icmp ugt ptr %186, inttoptr (i32 -4096 to ptr)
  %189 = or i1 %187, %188
  br i1 %189, label %190, label %238

190:                                              ; preds = %182, %180
  %191 = phi ptr [ %181, %180 ], [ %186, %182 ]
  %192 = ptrtoint ptr %191 to i32
  switch i32 %192, label %238 [
    i32 -11, label %196
    i32 -2, label %193
  ]

193:                                              ; preds = %190
  %194 = load volatile ptr, ptr %58, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %200, label %238

196:                                              ; preds = %190
  %197 = load volatile ptr, ptr %58, align 4
  %198 = icmp eq ptr %197, null
  %199 = select i1 %198, ptr %191, ptr %197
  br label %238

200:                                              ; preds = %193
  %201 = load volatile i32, ptr %23, align 4
  %202 = load i32, ptr %24, align 4
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %204, label %238, !prof !10

204:                                              ; preds = %200
  %205 = load volatile i32, ptr %23, align 4
  %206 = load i32, ptr %29, align 64
  %207 = icmp ugt i32 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i32, ptr %6, align 4
  %210 = icmp eq i32 %209, 0
  %211 = icmp ult i32 %206, %209
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %238, label %213, !prof !9

213:                                              ; preds = %208, %204
  %214 = load ptr, ptr %103, align 4
  %215 = ptrtoint ptr %214 to i32
  %216 = and i32 %215, -2
  %217 = icmp eq i32 %216, 0
  %218 = select i1 %217, i32 %131, i32 %216
  %219 = inttoptr i32 %218 to ptr
  store volatile ptr %219, ptr %2, align 4
  %220 = load i8, ptr %15, align 4, !range !21
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %213
  store volatile ptr null, ptr %16, align 4
  br label %223

223:                                              ; preds = %222, %213
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  store volatile ptr %22, ptr %103, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #14, !srcloc !14
  %224 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #14, !srcloc !23
  %225 = load volatile i32, ptr %23, align 4
  %226 = load i32, ptr %29, align 64
  %227 = lshr i32 %226, 2
  %228 = mul nuw i32 %227, 3
  %229 = icmp ugt i32 %225, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %223
  %231 = load i32, ptr %6, align 4
  %232 = icmp eq i32 %231, 0
  %233 = icmp ult i32 %226, %231
  %234 = select i1 %232, i1 true, i1 %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load ptr, ptr @system_wq, align 4
  %237 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %236, ptr noundef %25) #14
  br label %238

238:                                              ; preds = %235, %230, %223, %208, %200, %196, %193, %190, %182
  %239 = phi ptr [ %191, %193 ], [ %191, %235 ], [ %191, %230 ], [ %186, %182 ], [ %191, %200 ], [ %191, %208 ], [ %191, %223 ], [ %191, %190 ], [ %191, %196 ]
  %240 = phi ptr [ %194, %193 ], [ null, %235 ], [ null, %230 ], [ inttoptr (i32 -17 to ptr), %182 ], [ inttoptr (i32 -7 to ptr), %200 ], [ inttoptr (i32 -11 to ptr), %208 ], [ null, %223 ], [ %191, %190 ], [ %199, %196 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %103) #14, !srcloc !14
  %241 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %103, ptr nonnull %103, i32 1, ptr nonnull elementtype(i32) %103) #14, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  call fastcc void @local_bh_enable() #14
  %242 = icmp eq ptr %240, null
  %243 = icmp ugt ptr %240, inttoptr (i32 -4096 to ptr)
  %244 = or i1 %242, %243
  br i1 %244, label %252, label %250

245:                                              ; preds = %102, %90
  %246 = load volatile ptr, ptr %58, align 4
  %247 = icmp eq ptr %246, null
  %248 = icmp ugt ptr %246, inttoptr (i32 -4096 to ptr)
  %249 = or i1 %247, %248
  br i1 %249, label %256, label %250

250:                                              ; preds = %245, %238
  %251 = phi ptr [ %240, %238 ], [ %246, %245 ]
  br label %28

252:                                              ; preds = %238
  %253 = icmp eq ptr %240, inttoptr (i32 -17 to ptr)
  %254 = select i1 %253, ptr %239, ptr %240
  %255 = icmp eq ptr %254, inttoptr (i32 -11 to ptr)
  br i1 %255, label %256, label %315

256:                                              ; preds = %252, %245
  %257 = load volatile ptr, ptr %0, align 4
  %258 = load i32, ptr %29, align 64
  %259 = load volatile i32, ptr %23, align 4
  %260 = lshr i32 %258, 2
  %261 = mul nuw i32 %260, 3
  %262 = icmp ugt i32 %259, %261
  br i1 %262, label %263, label %270

263:                                              ; preds = %256
  %264 = load i32, ptr %6, align 4
  %265 = icmp eq i32 %264, 0
  %266 = icmp ult i32 %258, %264
  %267 = select i1 %265, i1 true, i1 %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = shl i32 %258, 1
  br label %275

270:                                              ; preds = %263, %256
  %271 = icmp eq ptr %257, %29
  br i1 %271, label %275, label %272

272:                                              ; preds = %270
  %273 = load volatile ptr, ptr %58, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %315, label %314

275:                                              ; preds = %270, %268
  %276 = phi i32 [ %269, %268 ], [ %258, %270 ]
  %277 = call fastcc ptr @bucket_table_alloc(i32 noundef %276, i32 noundef 10784) #14
  %278 = icmp eq ptr %277, null
  br i1 %278, label %308, label %279

279:                                              ; preds = %275
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %280 = ptrtoint ptr %277 to i32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #14, !srcloc !14
  br label %281

281:                                              ; preds = %281, %279
  %282 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %58, i32 0, i32 %280) #14, !srcloc !28
  %283 = extractvalue { i32, i32 } %282, 0
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %281

285:                                              ; preds = %281
  %286 = extractvalue { i32, i32 } %282, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %305, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.bucket_table, ptr %277, i32 0, i32 1
  %290 = load i32, ptr %289, align 4
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %288
  %293 = load i32, ptr %277, align 64
  %294 = lshr i32 %293, %290
  %295 = getelementptr inbounds %struct.bucket_table, ptr %277, i32 0, i32 8
  %296 = load ptr, ptr %295, align 64
  br label %297

297:                                              ; preds = %297, %292
  %298 = phi i32 [ 0, %292 ], [ %300, %297 ]
  %299 = getelementptr %union.nested_table, ptr %296, i32 %298
  call fastcc void @nested_table_free(ptr noundef %299, i32 noundef %294) #14
  %300 = add i32 %298, 1
  %301 = lshr i32 %300, %290
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %297, label %303

303:                                              ; preds = %297
  call void @kfree(ptr noundef %296) #14
  br label %304

304:                                              ; preds = %303, %288
  call void @kvfree(ptr noundef nonnull %277) #14
  br label %314

305:                                              ; preds = %285
  %306 = load ptr, ptr @system_wq, align 4
  %307 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %306, ptr noundef %25) #14
  br label %314

308:                                              ; preds = %275
  %309 = load volatile ptr, ptr %58, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %314, !prof !30

311:                                              ; preds = %308
  %312 = load ptr, ptr @system_wq, align 4
  %313 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %312, ptr noundef %25) #14
  br label %315

314:                                              ; preds = %308, %305, %304, %272
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  br label %26

315:                                              ; preds = %311, %272, %252
  %316 = phi ptr [ inttoptr (i32 -12 to ptr), %311 ], [ inttoptr (i32 -16 to ptr), %272 ], [ %254, %252 ]
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  ret ptr %316
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rhashtable_walk_enter(ptr noundef %0, ptr noundef %1) #0 {
  store ptr %0, ptr %1, align 4
  %3 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 4
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 5
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 6
  store i8 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %7) #14
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 3, i32 1
  store ptr %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %9, ptr %13, align 4
  store ptr %12, ptr %9, align 4
  %14 = getelementptr inbounds %struct.rhashtable_iter, ptr %1, i32 0, i32 3, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store volatile ptr %9, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %15 = load i16, ptr %7, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rhashtable_walk_exit(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.rhashtable, ptr %2, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  br label %13

13:                                               ; preds = %7, %1
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.rhashtable, ptr %14, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rhashtable_walk_start_check(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.rhashtable, ptr %2, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !21
  %5 = icmp eq i8 %4, 0
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !8
  %6 = getelementptr inbounds %struct.rhashtable, ptr %2, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %6) #14
  %7 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  br label %16

16:                                               ; preds = %10, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %17 = load i16, ptr %6, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %19 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 6
  %20 = load i8, ptr %19, align 4, !range !21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %124

22:                                               ; preds = %16
  %23 = load ptr, ptr %7, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load volatile ptr, ptr %2, align 4
  store ptr %26, ptr %7, align 4
  %27 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 4
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 5
  store i32 0, ptr %28, align 4
  br label %124

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = xor i1 %5, true
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %73, label %35

35:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.bucket_table, ptr %36, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !10

42:                                               ; preds = %35
  %43 = tail call ptr @rht_bucket_nested(ptr noundef %36, i32 noundef %38) #14
  br label %46

44:                                               ; preds = %35
  %45 = getelementptr %struct.bucket_table, ptr %36, i32 0, i32 8, i32 %38
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ]
  %48 = load volatile ptr, ptr %47, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = and i32 %49, -2
  %51 = icmp eq i32 %50, 0
  %52 = ptrtoint ptr %47 to i32
  %53 = or i32 %52, 1
  %54 = select i1 %51, i32 %53, i32 %50
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %46
  %58 = inttoptr i32 %54 to ptr
  %59 = load ptr, ptr %30, align 4
  br label %60

60:                                               ; preds = %67, %57
  %61 = phi ptr [ %58, %57 ], [ %68, %67 ]
  %62 = phi i32 [ 0, %57 ], [ %63, %67 ]
  %63 = add i32 %62, 1
  %64 = icmp eq ptr %61, %59
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 5
  store i32 %63, ptr %66, align 4
  br label %124

67:                                               ; preds = %60
  %68 = load volatile ptr, ptr %61, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %60, label %72

72:                                               ; preds = %67, %46
  store ptr null, ptr %30, align 4
  br label %124

73:                                               ; preds = %29
  %74 = select i1 %32, i1 true, i1 %5
  br i1 %74, label %124, label %75

75:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !37
  %76 = load ptr, ptr %7, align 4
  %77 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.bucket_table, ptr %76, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !10

82:                                               ; preds = %75
  %83 = tail call ptr @rht_bucket_nested(ptr noundef %76, i32 noundef %78) #14
  br label %86

84:                                               ; preds = %75
  %85 = getelementptr %struct.bucket_table, ptr %76, i32 0, i32 8, i32 %78
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi ptr [ %83, %82 ], [ %85, %84 ]
  %88 = load volatile ptr, ptr %87, align 4
  %89 = ptrtoint ptr %88 to i32
  %90 = and i32 %89, -2
  %91 = icmp eq i32 %90, 0
  %92 = ptrtoint ptr %87 to i32
  %93 = or i32 %92, 1
  %94 = select i1 %91, i32 %93, i32 %90
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %86
  %98 = inttoptr i32 %94 to ptr
  %99 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 2
  br label %100

100:                                              ; preds = %117, %97
  %101 = phi ptr [ %98, %97 ], [ %119, %117 ]
  %102 = phi i32 [ 0, %97 ], [ %118, %117 ]
  %103 = icmp eq ptr %101, null
  br i1 %103, label %117, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %99, align 4
  br label %106

106:                                              ; preds = %113, %104
  %107 = phi ptr [ %101, %104 ], [ %115, %113 ]
  %108 = phi i32 [ %102, %104 ], [ %109, %113 ]
  %109 = add i32 %108, 1
  %110 = icmp eq ptr %107, %105
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  store ptr %101, ptr %30, align 4
  %112 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 5
  store i32 %109, ptr %112, align 4
  br label %124

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.rhlist_head, ptr %107, i32 0, i32 1
  %115 = load volatile ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %106

117:                                              ; preds = %113, %100
  %118 = phi i32 [ %102, %100 ], [ %109, %113 ]
  %119 = load volatile ptr, ptr %101, align 4
  %120 = ptrtoint ptr %119 to i32
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %100, label %123

123:                                              ; preds = %117, %86
  store ptr null, ptr %30, align 4
  br label %124

124:                                              ; preds = %123, %111, %73, %72, %65, %25, %16
  %125 = phi i32 [ -11, %25 ], [ 0, %16 ], [ 0, %73 ], [ 0, %65 ], [ 0, %72 ], [ 0, %111 ], [ 0, %123 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rhashtable_walk_next(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rhashtable, ptr %4, i32 0, i32 4
  %8 = load i8, ptr %7, align 4, !range !21
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq ptr %6, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %1
  br i1 %9, label %16, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.rhlist_head, ptr %3, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %11
  %17 = load volatile ptr, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %6, %12 ], [ %17, %16 ]
  %20 = phi ptr [ %14, %12 ], [ %17, %16 ]
  %21 = ptrtoint ptr %19 to i32
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 5
  br i1 %23, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, ptr %24, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %24, align 4
  store ptr %19, ptr %5, align 4
  store ptr %20, ptr %2, align 4
  %28 = select i1 %9, ptr %19, ptr %20
  %29 = getelementptr inbounds %struct.rhashtable, ptr %4, i32 0, i32 3, i32 3
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 0, %31
  %33 = getelementptr i8, ptr %28, i32 %32
  br label %40

34:                                               ; preds = %18
  store i32 0, ptr %24, align 4
  %35 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %1
  %39 = tail call fastcc ptr @__rhashtable_walk_find_next(ptr noundef %0)
  br label %40

40:                                               ; preds = %38, %25
  %41 = phi ptr [ %39, %38 ], [ %33, %25 ]
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_walk_find_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.rhashtable, ptr %6, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !21
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq ptr %3, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %3, align 64
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %84

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 5
  %19 = getelementptr inbounds %struct.bucket_table, ptr %3, i32 0, i32 1
  %20 = load i32, ptr %18, align 4
  br label %21

21:                                               ; preds = %78, %17
  %22 = phi i32 [ %20, %17 ], [ 0, %78 ]
  %23 = phi ptr [ %5, %17 ], [ %79, %78 ]
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !38
  %24 = load i32, ptr %13, align 4
  %25 = load i32, ptr %19, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !10

27:                                               ; preds = %21
  %28 = tail call ptr @rht_bucket_nested(ptr noundef nonnull %3, i32 noundef %24) #14
  br label %31

29:                                               ; preds = %21
  %30 = getelementptr %struct.bucket_table, ptr %3, i32 0, i32 8, i32 %24
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ]
  %33 = load volatile ptr, ptr %32, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = and i32 %34, -2
  %36 = icmp eq i32 %35, 0
  %37 = ptrtoint ptr %32 to i32
  %38 = or i32 %37, 1
  %39 = select i1 %36, i32 %38, i32 %35
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %31
  %43 = inttoptr i32 %39 to ptr
  br label %44

44:                                               ; preds = %61, %42
  %45 = phi ptr [ %63, %61 ], [ %23, %42 ]
  %46 = phi ptr [ %64, %61 ], [ %43, %42 ]
  %47 = phi i32 [ %62, %61 ], [ %22, %42 ]
  br i1 %10, label %57, label %48

48:                                               ; preds = %52, %44
  %49 = phi i32 [ %53, %52 ], [ %47, %44 ]
  %50 = phi ptr [ %55, %52 ], [ %46, %44 ]
  %51 = icmp eq i32 %49, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %48
  %53 = add i32 %49, -1
  %54 = getelementptr inbounds %struct.rhlist_head, ptr %50, i32 0, i32 1
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %48

57:                                               ; preds = %44
  %58 = icmp eq i32 %47, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %57
  %60 = add i32 %47, -1
  br label %61

61:                                               ; preds = %59, %52
  %62 = phi i32 [ %60, %59 ], [ %53, %52 ]
  %63 = phi ptr [ %45, %59 ], [ null, %52 ]
  %64 = load volatile ptr, ptr %46, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %44, label %78

68:                                               ; preds = %57, %48
  %69 = phi ptr [ %50, %48 ], [ %46, %57 ]
  %70 = phi ptr [ %50, %48 ], [ %45, %57 ]
  %71 = load i32, ptr %18, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %18, align 4
  store ptr %46, ptr %7, align 4
  store ptr %70, ptr %4, align 4
  %73 = getelementptr inbounds %struct.rhashtable, ptr %6, i32 0, i32 3, i32 3
  %74 = load i16, ptr %73, align 2
  %75 = zext i16 %74 to i32
  %76 = sub nsw i32 0, %75
  %77 = getelementptr i8, ptr %69, i32 %76
  br label %92

78:                                               ; preds = %61, %31
  %79 = phi ptr [ %23, %31 ], [ %63, %61 ]
  store i32 0, ptr %18, align 4
  %80 = load i32, ptr %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %13, align 4
  %82 = load i32, ptr %3, align 64
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %21, label %84

84:                                               ; preds = %78, %12
  store ptr null, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !39
  %85 = getelementptr inbounds %struct.bucket_table, ptr %3, i32 0, i32 5
  %86 = load volatile ptr, ptr %85, align 4
  store ptr %86, ptr %2, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  store i32 0, ptr %13, align 4
  %89 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 5
  store i32 0, ptr %89, align 4
  br label %92

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 6
  store i8 1, ptr %91, align 4
  br label %92

92:                                               ; preds = %90, %88, %68, %1
  %93 = phi ptr [ %77, %68 ], [ inttoptr (i32 -11 to ptr), %88 ], [ null, %90 ], [ null, %1 ]
  ret ptr %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rhashtable_walk_peek(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rhashtable, ptr %6, i32 0, i32 4
  %10 = load i8, ptr %9, align 4, !range !21
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr %3, ptr %8
  %13 = getelementptr inbounds %struct.rhashtable, ptr %6, i32 0, i32 3, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 0, %15
  %17 = getelementptr i8, ptr %12, i32 %16
  br label %26

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = add i32 %20, -1
  store i32 %23, ptr %19, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = tail call fastcc ptr @__rhashtable_walk_find_next(ptr noundef %0)
  br label %26

26:                                               ; preds = %24, %5
  %27 = phi ptr [ %17, %5 ], [ %25, %24 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rhashtable_walk_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.rhashtable, ptr %7, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %8) #14
  %9 = getelementptr inbounds %struct.bucket_table, ptr %4, i32 0, i32 4, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @bucket_table_free_rcu
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = icmp ne ptr %10, inttoptr (i32 -1 to ptr)
  %14 = load i1, ptr @rcu_head_after_call_rcu.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %19, !prof !9

17:                                               ; preds = %12
  store i1 true, ptr @rcu_head_after_call_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1007, i32 noundef 9, ptr noundef null) #14
  br label %19

18:                                               ; preds = %6
  store ptr null, ptr %3, align 4
  br label %24

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds %struct.bucket_table, ptr %4, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %2, ptr %22, align 4
  store ptr %21, ptr %2, align 4
  %23 = getelementptr inbounds %struct.rhashtable_iter, ptr %0, i32 0, i32 3, i32 0, i32 1
  store ptr %20, ptr %23, align 4
  store volatile ptr %2, ptr %20, align 4
  br label %24

24:                                               ; preds = %19, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %25 = load i16, ptr %8, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  br label %27

27:                                               ; preds = %24, %1
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bucket_table_free_rcu(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 64
  %8 = lshr i32 %7, %4
  %9 = getelementptr i8, ptr %0, i32 44
  %10 = load ptr, ptr %9, align 64
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ 0, %6 ], [ %14, %11 ]
  %13 = getelementptr %union.nested_table, ptr %10, i32 %12
  tail call fastcc void @nested_table_free(ptr noundef %13, i32 noundef %8) #14
  %14 = add i32 %12, 1
  %15 = lshr i32 %14, %4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %11, label %17

17:                                               ; preds = %11
  tail call void @kfree(ptr noundef %10) #14
  br label %18

18:                                               ; preds = %17, %1
  tail call void @kvfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rhashtable_init(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rhashtable_params, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds %struct.rhashtable_params, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %5, label %9, label %10

9:                                                ; preds = %2
  br i1 %8, label %108, label %11

10:                                               ; preds = %2
  br i1 %8, label %15, label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct.rhashtable_params, ptr %1, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %108, label %15

15:                                               ; preds = %11, %10
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(88) %0, i8 0, i32 88, i1 false)
  %16 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @rhashtable_init.__key) #14
  %17 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 7
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(28) %18, ptr noundef align 4 dereferenceable(28) %1, i32 28, i1 false)
  %19 = getelementptr inbounds %struct.rhashtable_params, ptr %1, i32 0, i32 5
  %20 = load i16, ptr %19, align 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %15
  %23 = zext i16 %20 to i32
  %24 = add nsw i32 %23, -1
  %25 = icmp eq i32 %24, 0
  %26 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 false) #14, !range !40
  %27 = sub nuw nsw i32 32, %26
  %28 = shl nuw i32 1, %27
  %29 = trunc i32 %28 to i16
  %30 = select i1 %25, i16 1, i16 %29
  %31 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 5
  store i16 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %22, %15
  %33 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 2
  store i32 -2147483648, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rhashtable_params, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 true) #14, !range !40
  %39 = lshr i32 -2147483648, %38
  %40 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 4
  store i32 %39, ptr %40, align 4
  %41 = icmp ult i32 %39, 1073741824
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = shl nuw nsw i32 %39, 1
  store i32 %43, ptr %33, align 4
  br label %44

44:                                               ; preds = %42, %37, %32
  %45 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 5
  %46 = load i16, ptr %45, align 4
  %47 = tail call i16 @llvm.umax.i16(i16 %46, i16 4)
  store i16 %47, ptr %45, align 4
  %48 = load i16, ptr %18, align 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = zext i16 %48 to i32
  %52 = shl nuw nsw i32 %51, 2
  %53 = udiv i32 %52, 3
  %54 = add nsw i32 %53, -1
  %55 = icmp eq i32 %54, 0
  %56 = tail call i32 @llvm.ctlz.i32(i32 %54, i1 false) #14, !range !40
  %57 = sub nuw nsw i32 32, %56
  %58 = shl nuw i32 1, %57
  %59 = select i1 %55, i32 1, i32 %58
  %60 = zext i16 %47 to i32
  %61 = tail call i32 @llvm.umax.i32(i32 %59, i32 %60) #14
  br label %65

62:                                               ; preds = %44
  %63 = call i16 @llvm.umax.i16(i16 %46, i16 64)
  %64 = zext i16 %63 to i32
  br label %65

65:                                               ; preds = %62, %50
  %66 = phi i32 [ %61, %50 ], [ %64, %62 ]
  %67 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 1
  %68 = load i16, ptr %67, align 2
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 1
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.rhashtable_params, ptr %1, i32 0, i32 7
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 7
  store ptr @jhash, ptr %75, align 4
  %76 = and i32 %69, 3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = lshr i32 %69, 2
  store i32 %79, ptr %70, align 4
  store ptr @rhashtable_jhash2, ptr %75, align 4
  br label %80

80:                                               ; preds = %78, %74, %65
  %81 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %66, i32 4) #14
  %82 = extractvalue { i32, i1 } %81, 1
  %83 = extractvalue { i32, i1 } %81, 0
  %84 = tail call i32 @llvm.uadd.sat.i32(i32 %83, i32 64) #14
  %85 = select i1 %82, i32 -1, i32 %84
  %86 = tail call noalias ptr @kvmalloc_node(i32 noundef %85, i32 noundef 3520, i32 noundef -1) #15
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  store i32 %66, ptr %86, align 64
  %89 = getelementptr inbounds %struct.bucket_table, ptr %86, i32 0, i32 4, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %89, align 4
  %90 = getelementptr inbounds %struct.bucket_table, ptr %86, i32 0, i32 3
  store volatile ptr %90, ptr %90, align 4
  %91 = getelementptr inbounds %struct.bucket_table, ptr %86, i32 0, i32 3, i32 1
  store ptr %90, ptr %91, align 4
  %92 = tail call i32 @get_random_u32() #14
  %93 = getelementptr inbounds %struct.bucket_table, ptr %86, i32 0, i32 2
  store i32 %92, ptr %93, align 8
  %94 = getelementptr i8, ptr %86, i32 64
  %95 = shl nuw i32 %66, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %94, i8 0, i32 %95, i1 false) #14
  br label %101

96:                                               ; preds = %80
  %97 = load i16, ptr %45, align 4
  %98 = tail call i16 @llvm.umax.i16(i16 %97, i16 4)
  %99 = zext i16 %98 to i32
  %100 = tail call fastcc ptr @bucket_table_alloc(i32 noundef %99, i32 noundef 36032)
  br label %101

101:                                              ; preds = %96, %88
  %102 = phi ptr [ %100, %96 ], [ %86, %88 ]
  %103 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 8
  store volatile i32 0, ptr %103, align 4
  store volatile ptr %102, ptr %0, align 4
  %104 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5
  store i32 -32, ptr %104, align 4
  %105 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5, i32 1
  store volatile ptr %105, ptr %105, align 4
  %106 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5, i32 1, i32 1
  store ptr %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5, i32 2
  store ptr @rht_deferred_worker, ptr %107, align 4
  br label %108

108:                                              ; preds = %101, %11, %9
  %109 = phi i32 [ 0, %101 ], [ -22, %11 ], [ -22, %9 ]
  ret i32 %109
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @jhash(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = add i32 %1, -559038737
  %5 = add i32 %4, %2
  %6 = icmp ugt i32 %1, 12
  br i1 %6, label %7, label %48

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %46, %7 ], [ %0, %3 ]
  %9 = phi i32 [ %43, %7 ], [ %5, %3 ]
  %10 = phi i32 [ %44, %7 ], [ %5, %3 ]
  %11 = phi i32 [ %40, %7 ], [ %5, %3 ]
  %12 = phi i32 [ %45, %7 ], [ %1, %3 ]
  %13 = load i32, ptr %8, align 1
  %14 = add i32 %13, %11
  %15 = getelementptr i8, ptr %8, i32 4
  %16 = load i32, ptr %15, align 1
  %17 = add i32 %16, %10
  %18 = getelementptr i8, ptr %8, i32 8
  %19 = load i32, ptr %18, align 1
  %20 = add i32 %19, %9
  %21 = sub i32 %14, %20
  %22 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 4) #14
  %23 = xor i32 %21, %22
  %24 = add i32 %20, %17
  %25 = sub i32 %17, %23
  %26 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 6) #14
  %27 = xor i32 %25, %26
  %28 = add i32 %23, %24
  %29 = sub i32 %24, %27
  %30 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 8) #14
  %31 = xor i32 %29, %30
  %32 = add i32 %27, %28
  %33 = sub i32 %28, %31
  %34 = tail call i32 @llvm.fshl.i32(i32 %31, i32 %31, i32 16) #14
  %35 = xor i32 %33, %34
  %36 = add i32 %31, %32
  %37 = sub i32 %32, %35
  %38 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 19) #14
  %39 = xor i32 %37, %38
  %40 = add i32 %35, %36
  %41 = sub i32 %36, %39
  %42 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 4) #14
  %43 = xor i32 %41, %42
  %44 = add i32 %39, %40
  %45 = add i32 %12, -12
  %46 = getelementptr i8, ptr %8, i32 12
  %47 = icmp ugt i32 %45, 12
  br i1 %47, label %7, label %48

48:                                               ; preds = %7, %3
  %49 = phi i32 [ %1, %3 ], [ %45, %7 ]
  %50 = phi i32 [ %5, %3 ], [ %40, %7 ]
  %51 = phi i32 [ %5, %3 ], [ %44, %7 ]
  %52 = phi i32 [ %5, %3 ], [ %43, %7 ]
  %53 = phi ptr [ %0, %3 ], [ %46, %7 ]
  switch i32 %49, label %164 [
    i32 12, label %54
    i32 11, label %60
    i32 10, label %67
    i32 9, label %74
    i32 8, label %80
    i32 7, label %87
    i32 6, label %95
    i32 5, label %103
    i32 4, label %110
    i32 3, label %118
    i32 2, label %127
    i32 1, label %136
  ]

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %53, i32 11
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw i32 %57, 24
  %59 = add i32 %58, %52
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i32 [ %52, %48 ], [ %59, %54 ]
  %62 = getelementptr i8, ptr %53, i32 10
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 16
  %66 = add i32 %65, %61
  br label %67

67:                                               ; preds = %60, %48
  %68 = phi i32 [ %52, %48 ], [ %66, %60 ]
  %69 = getelementptr i8, ptr %53, i32 9
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = add i32 %72, %68
  br label %74

74:                                               ; preds = %67, %48
  %75 = phi i32 [ %52, %48 ], [ %73, %67 ]
  %76 = getelementptr i8, ptr %53, i32 8
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add i32 %75, %78
  br label %80

80:                                               ; preds = %74, %48
  %81 = phi i32 [ %52, %48 ], [ %79, %74 ]
  %82 = getelementptr i8, ptr %53, i32 7
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw i32 %84, 24
  %86 = add i32 %85, %51
  br label %87

87:                                               ; preds = %80, %48
  %88 = phi i32 [ %51, %48 ], [ %86, %80 ]
  %89 = phi i32 [ %52, %48 ], [ %81, %80 ]
  %90 = getelementptr i8, ptr %53, i32 6
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 16
  %94 = add i32 %93, %88
  br label %95

95:                                               ; preds = %87, %48
  %96 = phi i32 [ %51, %48 ], [ %94, %87 ]
  %97 = phi i32 [ %52, %48 ], [ %89, %87 ]
  %98 = getelementptr i8, ptr %53, i32 5
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = add i32 %101, %96
  br label %103

103:                                              ; preds = %95, %48
  %104 = phi i32 [ %51, %48 ], [ %102, %95 ]
  %105 = phi i32 [ %52, %48 ], [ %97, %95 ]
  %106 = getelementptr i8, ptr %53, i32 4
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add i32 %104, %108
  br label %110

110:                                              ; preds = %103, %48
  %111 = phi i32 [ %51, %48 ], [ %109, %103 ]
  %112 = phi i32 [ %52, %48 ], [ %105, %103 ]
  %113 = getelementptr i8, ptr %53, i32 3
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl nuw i32 %115, 24
  %117 = add i32 %116, %50
  br label %118

118:                                              ; preds = %110, %48
  %119 = phi i32 [ %50, %48 ], [ %117, %110 ]
  %120 = phi i32 [ %51, %48 ], [ %111, %110 ]
  %121 = phi i32 [ %52, %48 ], [ %112, %110 ]
  %122 = getelementptr i8, ptr %53, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 16
  %126 = add i32 %125, %119
  br label %127

127:                                              ; preds = %118, %48
  %128 = phi i32 [ %50, %48 ], [ %126, %118 ]
  %129 = phi i32 [ %51, %48 ], [ %120, %118 ]
  %130 = phi i32 [ %52, %48 ], [ %121, %118 ]
  %131 = getelementptr i8, ptr %53, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = shl nuw nsw i32 %133, 8
  %135 = add i32 %134, %128
  br label %136

136:                                              ; preds = %127, %48
  %137 = phi i32 [ %50, %48 ], [ %135, %127 ]
  %138 = phi i32 [ %51, %48 ], [ %129, %127 ]
  %139 = phi i32 [ %52, %48 ], [ %130, %127 ]
  %140 = load i8, ptr %53, align 1
  %141 = zext i8 %140 to i32
  %142 = add i32 %137, %141
  %143 = xor i32 %139, %138
  %144 = tail call i32 @llvm.fshl.i32(i32 %138, i32 %138, i32 14) #14
  %145 = sub i32 %143, %144
  %146 = xor i32 %142, %145
  %147 = tail call i32 @llvm.fshl.i32(i32 %145, i32 %145, i32 11) #14
  %148 = sub i32 %146, %147
  %149 = xor i32 %148, %138
  %150 = tail call i32 @llvm.fshl.i32(i32 %148, i32 %148, i32 25) #14
  %151 = sub i32 %149, %150
  %152 = xor i32 %151, %145
  %153 = tail call i32 @llvm.fshl.i32(i32 %151, i32 %151, i32 16) #14
  %154 = sub i32 %152, %153
  %155 = xor i32 %154, %148
  %156 = tail call i32 @llvm.fshl.i32(i32 %154, i32 %154, i32 4) #14
  %157 = sub i32 %155, %156
  %158 = xor i32 %157, %151
  %159 = tail call i32 @llvm.fshl.i32(i32 %157, i32 %157, i32 14) #14
  %160 = sub i32 %158, %159
  %161 = xor i32 %160, %154
  %162 = tail call i32 @llvm.fshl.i32(i32 %160, i32 %160, i32 24) #14
  %163 = sub i32 %161, %162
  br label %164

164:                                              ; preds = %136, %48
  %165 = phi i32 [ %52, %48 ], [ %163, %136 ]
  ret i32 %165
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @rhashtable_jhash2(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = shl i32 %1, 2
  %5 = add i32 %4, -559038737
  %6 = add i32 %5, %2
  %7 = icmp ugt i32 %1, 3
  br i1 %7, label %8, label %49

8:                                                ; preds = %8, %3
  %9 = phi i32 [ %44, %8 ], [ %6, %3 ]
  %10 = phi i32 [ %45, %8 ], [ %6, %3 ]
  %11 = phi i32 [ %41, %8 ], [ %6, %3 ]
  %12 = phi ptr [ %47, %8 ], [ %0, %3 ]
  %13 = phi i32 [ %46, %8 ], [ %1, %3 ]
  %14 = load i32, ptr %12, align 4
  %15 = add i32 %14, %11
  %16 = getelementptr i32, ptr %12, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %10
  %19 = getelementptr i32, ptr %12, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %9
  %22 = sub i32 %15, %21
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 4) #14
  %24 = xor i32 %22, %23
  %25 = add i32 %21, %18
  %26 = sub i32 %18, %24
  %27 = tail call i32 @llvm.fshl.i32(i32 %24, i32 %24, i32 6) #14
  %28 = xor i32 %26, %27
  %29 = add i32 %24, %25
  %30 = sub i32 %25, %28
  %31 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 8) #14
  %32 = xor i32 %30, %31
  %33 = add i32 %28, %29
  %34 = sub i32 %29, %32
  %35 = tail call i32 @llvm.fshl.i32(i32 %32, i32 %32, i32 16) #14
  %36 = xor i32 %34, %35
  %37 = add i32 %32, %33
  %38 = sub i32 %33, %36
  %39 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 19) #14
  %40 = xor i32 %38, %39
  %41 = add i32 %36, %37
  %42 = sub i32 %37, %40
  %43 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 4) #14
  %44 = xor i32 %42, %43
  %45 = add i32 %40, %41
  %46 = add i32 %13, -3
  %47 = getelementptr i32, ptr %12, i32 3
  %48 = icmp ugt i32 %46, 3
  br i1 %48, label %8, label %49

49:                                               ; preds = %8, %3
  %50 = phi i32 [ %1, %3 ], [ %46, %8 ]
  %51 = phi ptr [ %0, %3 ], [ %47, %8 ]
  %52 = phi i32 [ %6, %3 ], [ %41, %8 ]
  %53 = phi i32 [ %6, %3 ], [ %45, %8 ]
  %54 = phi i32 [ %6, %3 ], [ %44, %8 ]
  switch i32 %50, label %90 [
    i32 3, label %55
    i32 2, label %59
    i32 1, label %64
  ]

55:                                               ; preds = %49
  %56 = getelementptr i32, ptr %51, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %54
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i32 [ %54, %49 ], [ %58, %55 ]
  %61 = getelementptr i32, ptr %51, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %53
  br label %64

64:                                               ; preds = %59, %49
  %65 = phi i32 [ %53, %49 ], [ %63, %59 ]
  %66 = phi i32 [ %54, %49 ], [ %60, %59 ]
  %67 = load i32, ptr %51, align 4
  %68 = add i32 %67, %52
  %69 = xor i32 %66, %65
  %70 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 14) #14
  %71 = sub i32 %69, %70
  %72 = xor i32 %68, %71
  %73 = tail call i32 @llvm.fshl.i32(i32 %71, i32 %71, i32 11) #14
  %74 = sub i32 %72, %73
  %75 = xor i32 %74, %65
  %76 = tail call i32 @llvm.fshl.i32(i32 %74, i32 %74, i32 25) #14
  %77 = sub i32 %75, %76
  %78 = xor i32 %77, %71
  %79 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 16) #14
  %80 = sub i32 %78, %79
  %81 = xor i32 %80, %74
  %82 = tail call i32 @llvm.fshl.i32(i32 %80, i32 %80, i32 4) #14
  %83 = sub i32 %81, %82
  %84 = xor i32 %83, %77
  %85 = tail call i32 @llvm.fshl.i32(i32 %83, i32 %83, i32 14) #14
  %86 = sub i32 %84, %85
  %87 = xor i32 %86, %80
  %88 = tail call i32 @llvm.fshl.i32(i32 %86, i32 %86, i32 24) #14
  %89 = sub i32 %87, %88
  br label %90

90:                                               ; preds = %64, %49
  %91 = phi i32 [ %54, %49 ], [ %89, %64 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @bucket_table_alloc(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %0, i32 4) #14
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 64) #14
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = or i32 %1, 256
  %9 = tail call noalias ptr @kvmalloc_node(i32 noundef %7, i32 noundef %8, i32 noundef -1) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  %12 = and i32 %1, -32769
  %13 = icmp eq i32 %12, 3264
  %14 = icmp ult i32 %0, 2048
  %15 = or i1 %14, %13
  br i1 %15, label %68, label %16

16:                                               ; preds = %11
  %17 = and i32 %1, 17
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %16
  %20 = and i32 %1, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 2
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i32 [ 0, %16 ], [ %22, %19 ]
  %25 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %24, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef %8, i32 noundef 68) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %68, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.bucket_table, ptr %27, i32 0, i32 8
  %31 = load volatile ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %35 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 2848, i32 noundef 4096) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  %36 = ptrtoint ptr %35 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #14, !srcloc !14
  br label %37

37:                                               ; preds = %37, %33
  %38 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %30, i32 0, i32 %36) #14, !srcloc !28
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37
  %42 = extractvalue { i32, i32 } %38, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !42
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  tail call void @kfree(ptr noundef %35) #14
  %45 = load volatile ptr, ptr %30, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi ptr [ %45, %44 ], [ %35, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @kfree(ptr noundef nonnull %27) #14
  br label %68

50:                                               ; preds = %46, %29
  %51 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #14, !range !40
  %52 = sub nsw i32 30, %51
  %53 = urem i32 %52, 10
  %54 = add nuw nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.bucket_table, ptr %27, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %50, %2
  %57 = phi ptr [ %27, %50 ], [ %9, %2 ]
  %58 = phi i32 [ 0, %50 ], [ %0, %2 ]
  store i32 %0, ptr %57, align 64
  %59 = getelementptr inbounds %struct.bucket_table, ptr %57, i32 0, i32 4, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %59, align 4
  %60 = getelementptr inbounds %struct.bucket_table, ptr %57, i32 0, i32 3
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.bucket_table, ptr %57, i32 0, i32 3, i32 1
  store ptr %60, ptr %61, align 4
  %62 = tail call i32 @get_random_u32() #14
  %63 = getelementptr inbounds %struct.bucket_table, ptr %57, i32 0, i32 2
  store i32 %62, ptr %63, align 8
  %64 = icmp eq i32 %58, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %56
  %66 = getelementptr i8, ptr %57, i32 64
  %67 = shl nuw i32 %58, 2
  call void @llvm.memset.p0.i32(ptr align 4 %66, i8 0, i32 %67, i1 false)
  br label %68

68:                                               ; preds = %65, %56, %49, %23, %11
  %69 = phi ptr [ null, %11 ], [ null, %49 ], [ null, %23 ], [ %57, %56 ], [ %57, %65 ]
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rht_deferred_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  %3 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = load ptr, ptr %2, align 4
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %4, %1 ], [ %8, %5 ]
  %7 = getelementptr inbounds %struct.bucket_table, ptr %6, i32 0, i32 5
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5

10:                                               ; preds = %5
  %11 = getelementptr i8, ptr %0, i32 40
  %12 = load volatile i32, ptr %11, align 4
  %13 = load i32, ptr %6, align 64
  %14 = lshr i32 %13, 2
  %15 = mul nuw i32 %14, 3
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %0, i32 -24
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = icmp ult i32 %13, %19
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = shl i32 %13, 1
  %25 = tail call fastcc i32 @rhashtable_rehash_alloc(ptr noundef %6, i32 noundef %24)
  br label %69

26:                                               ; preds = %17, %10
  %27 = getelementptr i8, ptr %0, i32 -18
  %28 = load i8, ptr %27, align 2, !range !21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %26
  %31 = load volatile i32, ptr %11, align 4
  %32 = mul i32 %13, 3
  %33 = udiv i32 %32, 10
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %0, i32 -20
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = icmp ugt i32 %13, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load volatile i32, ptr %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = mul i32 %41, 3
  %45 = lshr i32 %44, 1
  %46 = add nsw i32 %45, -1
  %47 = icmp eq i32 %46, 0
  %48 = tail call i32 @llvm.ctlz.i32(i32 %46, i1 false) #14, !range !40
  %49 = sub nuw nsw i32 32, %48
  %50 = shl nuw i32 1, %49
  %51 = select i1 %47, i32 1, i32 %50
  br label %52

52:                                               ; preds = %43, %40
  %53 = phi i32 [ 0, %40 ], [ %51, %43 ]
  %54 = tail call i32 @llvm.umax.i32(i32 %53, i32 %38) #14
  %55 = load i32, ptr %4, align 64
  %56 = icmp ugt i32 %55, %54
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.bucket_table, ptr %4, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = tail call fastcc i32 @rhashtable_rehash_alloc(ptr noundef %4, i32 noundef %54) #14
  br label %69

63:                                               ; preds = %35, %30, %26
  %64 = getelementptr inbounds %struct.bucket_table, ptr %6, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = tail call fastcc i32 @rhashtable_rehash_alloc(ptr noundef %6, i32 noundef %13)
  br label %69

69:                                               ; preds = %67, %61, %23
  %70 = phi i32 [ %25, %23 ], [ %68, %67 ], [ %62, %61 ]
  switch i32 %70, label %71 [
    i32 -17, label %72
    i32 0, label %72
  ]

71:                                               ; preds = %69
  tail call void @mutex_unlock(ptr noundef %3) #14
  br label %276

72:                                               ; preds = %69, %69, %63, %57, %52
  %73 = phi i32 [ %70, %69 ], [ %70, %69 ], [ -17, %57 ], [ 0, %52 ], [ 0, %63 ]
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds %struct.bucket_table, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %271, label %78

78:                                               ; preds = %72
  %79 = load i32, ptr %74, align 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %253, label %81

81:                                               ; preds = %78
  %82 = getelementptr i8, ptr %0, i32 -32
  %83 = getelementptr i8, ptr %0, i32 -16
  %84 = getelementptr i8, ptr %0, i32 -12
  %85 = getelementptr i8, ptr %0, i32 -26
  %86 = getelementptr i8, ptr %0, i32 -28
  %87 = getelementptr i8, ptr %0, i32 -40
  br label %88

88:                                               ; preds = %251, %81
  %89 = phi ptr [ %74, %81 ], [ %252, %251 ]
  %90 = phi i32 [ 0, %81 ], [ %248, %251 ]
  %91 = getelementptr inbounds %struct.bucket_table, ptr %89, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %125, label %94, !prof !10

94:                                               ; preds = %88
  %95 = shl nsw i32 -1, %92
  %96 = xor i32 %95, -1
  %97 = and i32 %90, %96
  %98 = load i32, ptr %89, align 64
  %99 = lshr i32 %98, %92
  %100 = getelementptr inbounds %struct.bucket_table, ptr %89, i32 0, i32 8
  %101 = load ptr, ptr %100, align 64
  %102 = getelementptr %union.nested_table, ptr %101, i32 %97
  %103 = lshr i32 %90, %92
  %104 = load volatile ptr, ptr %102, align 4
  %105 = icmp ne ptr %104, null
  %106 = icmp ugt i32 %99, 1024
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %120

108:                                              ; preds = %108, %94
  %109 = phi ptr [ %116, %108 ], [ %104, %94 ]
  %110 = phi i32 [ %114, %108 ], [ %99, %94 ]
  %111 = phi i32 [ %115, %108 ], [ %103, %94 ]
  %112 = and i32 %111, 1023
  %113 = getelementptr %union.nested_table, ptr %109, i32 %112
  %114 = lshr i32 %110, 10
  %115 = lshr i32 %111, 10
  %116 = load volatile ptr, ptr %113, align 4
  %117 = icmp ne ptr %116, null
  %118 = icmp ugt i32 %110, 1049599
  %119 = select i1 %117, i1 %118, i1 false
  br i1 %119, label %108, label %120

120:                                              ; preds = %108, %94
  %121 = phi i32 [ %103, %94 ], [ %115, %108 ]
  %122 = phi ptr [ %104, %94 ], [ %116, %108 ]
  %123 = phi i1 [ %105, %94 ], [ %117, %108 ]
  %124 = getelementptr %union.nested_table, ptr %122, i32 %121
  br i1 %123, label %127, label %246

125:                                              ; preds = %88
  %126 = getelementptr %struct.bucket_table, ptr %89, i32 0, i32 8, i32 %90
  br label %127

127:                                              ; preds = %125, %120
  %128 = phi ptr [ %126, %125 ], [ %124, %120 ]
  %129 = icmp eq ptr %128, null
  br i1 %129, label %246, label %130

130:                                              ; preds = %127
  %131 = tail call ptr @llvm.thread.pointer() #14
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %133 = load volatile i32, ptr %132, align 4
  %134 = add i32 %133, 512
  store volatile i32 %134, ptr %132, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %135

135:                                              ; preds = %152, %130
  %136 = load volatile i32, ptr %128, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %147, !prof !13

139:                                              ; preds = %135
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %128) #14, !srcloc !14
  %140 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %128, ptr nonnull %128, i32 1, ptr nonnull elementtype(i32) %128) #14, !srcloc !15
  %141 = extractvalue { i32, i32, i32 } %140, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %142 = and i32 %141, 1
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147, !prof !10

144:                                              ; preds = %139
  %145 = ptrtoint ptr %128 to i32
  %146 = or i32 %145, 1
  br label %153

147:                                              ; preds = %139, %135
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %148

148:                                              ; preds = %148, %147
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !19
  %149 = load volatile i32, ptr %128, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %148

152:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  br label %135

153:                                              ; preds = %242, %144
  %154 = load ptr, ptr %2, align 4
  br label %155

155:                                              ; preds = %155, %153
  %156 = phi ptr [ %154, %153 ], [ %158, %155 ]
  %157 = getelementptr inbounds %struct.bucket_table, ptr %156, i32 0, i32 5
  %158 = load volatile ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %155

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.bucket_table, ptr %156, i32 0, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %243

164:                                              ; preds = %160
  %165 = load ptr, ptr %128, align 4
  %166 = ptrtoint ptr %165 to i32
  %167 = and i32 %166, -2
  %168 = icmp eq i32 %167, 0
  %169 = select i1 %168, i32 %146, i32 %167
  %170 = and i32 %169, 1
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %243

172:                                              ; preds = %164
  %173 = inttoptr i32 %169 to ptr
  br label %174

174:                                              ; preds = %174, %172
  %175 = phi ptr [ %176, %174 ], [ null, %172 ]
  %176 = phi ptr [ %177, %174 ], [ %173, %172 ]
  %177 = load ptr, ptr %176, align 4
  %178 = ptrtoint ptr %177 to i32
  %179 = and i32 %178, 1
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %174, label %181

181:                                              ; preds = %174
  %182 = load i32, ptr %84, align 4
  %183 = load i16, ptr %85, align 2
  %184 = zext i16 %183 to i32
  %185 = sub nsw i32 0, %184
  %186 = getelementptr i8, ptr %176, i32 %185
  %187 = icmp eq i32 %182, 0
  br i1 %187, label %195, label %188, !prof !9

188:                                              ; preds = %181
  %189 = load i32, ptr %82, align 4
  %190 = lshr i32 %189, 16
  %191 = inttoptr i32 %182 to ptr
  %192 = getelementptr inbounds %struct.bucket_table, ptr %156, i32 0, i32 2
  %193 = load i32, ptr %192, align 8
  %194 = tail call i32 %191(ptr noundef %186, i32 noundef %190, i32 noundef %193) #14
  br label %205

195:                                              ; preds = %181
  %196 = load i32, ptr %83, align 4
  %197 = inttoptr i32 %196 to ptr
  %198 = getelementptr inbounds %struct.bucket_table, ptr %156, i32 0, i32 2
  %199 = load i32, ptr %198, align 8
  %200 = load i32, ptr %86, align 4
  %201 = and i32 %200, 65535
  %202 = getelementptr i8, ptr %186, i32 %201
  %203 = load i32, ptr %87, align 4
  %204 = tail call i32 %197(ptr noundef %202, i32 noundef %203, i32 noundef %199) #14
  br label %205

205:                                              ; preds = %195, %188
  %206 = phi i32 [ %194, %188 ], [ %204, %195 ]
  %207 = load i32, ptr %156, align 64
  %208 = add i32 %207, -1
  %209 = and i32 %208, %206
  %210 = getelementptr %struct.bucket_table, ptr %156, i32 0, i32 8, i32 %209
  %211 = load volatile i32, ptr %132, align 4
  %212 = add i32 %211, 512
  store volatile i32 %212, ptr %132, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  br label %213

213:                                              ; preds = %227, %205
  %214 = load volatile i32, ptr %210, align 4
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222, !prof !13

217:                                              ; preds = %213
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %210) #14, !srcloc !14
  %218 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %210, ptr %210, i32 1, ptr elementtype(i32) %210) #14, !srcloc !15
  %219 = extractvalue { i32, i32, i32 } %218, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !16
  %220 = and i32 %219, 1
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222, !prof !10

222:                                              ; preds = %217, %213
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %223

223:                                              ; preds = %223, %222
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !18
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !19
  %224 = load volatile i32, ptr %210, align 4
  %225 = and i32 %224, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %223

227:                                              ; preds = %223
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !20
  br label %213

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.bucket_table, ptr %156, i32 0, i32 8
  %230 = getelementptr ptr, ptr %229, i32 %209
  %231 = load ptr, ptr %230, align 4
  %232 = ptrtoint ptr %231 to i32
  %233 = and i32 %232, -2
  %234 = icmp eq i32 %233, 0
  %235 = ptrtoint ptr %230 to i32
  %236 = or i32 %235, 1
  %237 = select i1 %234, i32 %236, i32 %233
  %238 = inttoptr i32 %237 to ptr
  store volatile ptr %238, ptr %176, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !43
  store volatile ptr %176, ptr %210, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !44
  tail call fastcc void @local_bh_enable() #14
  %239 = icmp eq ptr %175, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14
  br i1 %239, label %241, label %240

240:                                              ; preds = %228
  store volatile ptr %177, ptr %175, align 4
  br label %242

241:                                              ; preds = %228
  store volatile ptr inttoptr (i32 1 to ptr), ptr %128, align 4
  br label %242

242:                                              ; preds = %241, %240
  br label %153

243:                                              ; preds = %164, %160
  %244 = phi i32 [ -11, %160 ], [ 0, %164 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %128) #14, !srcloc !14
  %245 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %128, ptr nonnull %128, i32 1, ptr nonnull elementtype(i32) %128) #14, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  tail call fastcc void @local_bh_enable() #14
  br i1 %163, label %246, label %271

246:                                              ; preds = %243, %127, %120
  %247 = tail call i32 @__cond_resched() #14
  %248 = add nuw i32 %90, 1
  %249 = load i32, ptr %74, align 64
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = load ptr, ptr %2, align 4
  br label %88

253:                                              ; preds = %246, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !45
  store volatile ptr %76, ptr %2, align 4
  %254 = getelementptr i8, ptr %0, i32 36
  tail call void @_raw_spin_lock(ptr noundef %254) #14
  %255 = getelementptr inbounds %struct.bucket_table, ptr %74, i32 0, i32 3
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, %255
  br i1 %257, label %263, label %258

258:                                              ; preds = %258, %253
  %259 = phi ptr [ %261, %258 ], [ %256, %253 ]
  %260 = getelementptr inbounds %struct.rhashtable_walker, ptr %259, i32 0, i32 1
  store ptr null, ptr %260, align 4
  %261 = load ptr, ptr %259, align 4
  %262 = icmp eq ptr %261, %255
  br i1 %262, label %263, label %258

263:                                              ; preds = %258, %253
  %264 = getelementptr inbounds %struct.bucket_table, ptr %74, i32 0, i32 4
  tail call void @call_rcu(ptr noundef %264, ptr noundef nonnull @bucket_table_free_rcu) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %265 = load i16, ptr %254, align 4
  %266 = add i16 %265, 1
  store i16 %266, ptr %254, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !33
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %267 = getelementptr inbounds %struct.bucket_table, ptr %76, i32 0, i32 5
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  %270 = select i1 %269, i32 0, i32 -11
  br label %271

271:                                              ; preds = %263, %243, %72
  %272 = phi i32 [ %270, %263 ], [ 0, %72 ], [ %244, %243 ]
  %273 = icmp eq i32 %73, 0
  %274 = select i1 %273, i32 %272, i32 %73
  tail call void @mutex_unlock(ptr noundef %3) #14
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %271, %71
  %277 = load ptr, ptr @system_wq, align 4
  %278 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %277, ptr noundef %0) #14
  br label %279

279:                                              ; preds = %276, %271
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rhltable_init(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i32 @rhashtable_init(ptr noundef %0, ptr noundef %1)
  %4 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 4
  store i8 1, ptr %4, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rhashtable_free_and_destroy(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 5
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #14
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 4
  %10 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 3
  br label %11

11:                                               ; preds = %121, %3
  %12 = phi ptr [ %7, %3 ], [ %105, %121 ]
  br i1 %8, label %103, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %12, align 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %103, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bucket_table, ptr %12, i32 0, i32 1
  %18 = getelementptr inbounds %struct.bucket_table, ptr %12, i32 0, i32 8
  br label %19

19:                                               ; preds = %99, %16
  %20 = phi i32 [ 0, %16 ], [ %100, %99 ]
  %21 = tail call i32 @__cond_resched() #14
  %22 = load i32, ptr %17, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %61, label %24, !prof !10

24:                                               ; preds = %19
  %25 = load ptr, ptr @rht_bucket_nested.rhnull, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store ptr null, ptr @rht_bucket_nested.rhnull, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = shl nsw i32 -1, %22
  %30 = xor i32 %29, -1
  %31 = and i32 %20, %30
  %32 = load i32, ptr %12, align 64
  %33 = lshr i32 %32, %22
  %34 = load ptr, ptr %18, align 64
  %35 = getelementptr %union.nested_table, ptr %34, i32 %31
  %36 = lshr i32 %20, %22
  %37 = load volatile ptr, ptr %35, align 4
  %38 = icmp ne ptr %37, null
  %39 = icmp ugt i32 %33, 1024
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %53

41:                                               ; preds = %41, %28
  %42 = phi ptr [ %49, %41 ], [ %37, %28 ]
  %43 = phi i32 [ %47, %41 ], [ %33, %28 ]
  %44 = phi i32 [ %48, %41 ], [ %36, %28 ]
  %45 = and i32 %44, 1023
  %46 = getelementptr %union.nested_table, ptr %42, i32 %45
  %47 = lshr i32 %43, 10
  %48 = lshr i32 %44, 10
  %49 = load volatile ptr, ptr %46, align 4
  %50 = icmp ne ptr %49, null
  %51 = icmp ugt i32 %43, 1049599
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %41, label %53

53:                                               ; preds = %41, %28
  %54 = phi i32 [ %36, %28 ], [ %48, %41 ]
  %55 = phi ptr [ %37, %28 ], [ %49, %41 ]
  %56 = phi i1 [ %38, %28 ], [ %50, %41 ]
  %57 = getelementptr %union.nested_table, ptr %55, i32 %54
  %58 = select i1 %56, ptr %57, ptr null
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr @rht_bucket_nested.rhnull, ptr %58
  br label %63

61:                                               ; preds = %19
  %62 = getelementptr %struct.bucket_table, ptr %12, i32 0, i32 8, i32 %20
  br label %63

63:                                               ; preds = %61, %53
  %64 = phi ptr [ %60, %53 ], [ %62, %61 ]
  %65 = load ptr, ptr %64, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = and i32 %66, -2
  %68 = icmp eq i32 %67, 0
  %69 = ptrtoint ptr %64 to i32
  %70 = or i32 %69, 1
  %71 = select i1 %68, i32 %70, i32 %67
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %63
  %75 = inttoptr i32 %71 to ptr
  br label %76

76:                                               ; preds = %95, %74
  %77 = phi ptr [ %78, %95 ], [ %75, %74 ]
  %78 = load ptr, ptr %77, align 4
  %79 = load i8, ptr %9, align 4, !range !21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i16, ptr %10, align 2
  %83 = zext i16 %82 to i32
  %84 = sub nsw i32 0, %83
  %85 = getelementptr i8, ptr %77, i32 %84
  tail call void %1(ptr noundef %85, ptr noundef %2) #14
  br label %95

86:                                               ; preds = %86, %76
  %87 = phi ptr [ %89, %86 ], [ %77, %76 ]
  %88 = getelementptr inbounds %struct.rhlist_head, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load i16, ptr %10, align 2
  %91 = zext i16 %90 to i32
  %92 = sub nsw i32 0, %91
  %93 = getelementptr i8, ptr %87, i32 %92
  tail call void %1(ptr noundef %93, ptr noundef %2) #14
  %94 = icmp eq ptr %89, null
  br i1 %94, label %95, label %86

95:                                               ; preds = %86, %81
  %96 = ptrtoint ptr %78 to i32
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %76, label %99

99:                                               ; preds = %95, %63
  %100 = add nuw i32 %20, 1
  %101 = load i32, ptr %12, align 64
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %19, label %103

103:                                              ; preds = %99, %13, %11
  %104 = getelementptr inbounds %struct.bucket_table, ptr %12, i32 0, i32 5
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.bucket_table, ptr %12, i32 0, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr %12, align 64
  %111 = lshr i32 %110, %107
  %112 = getelementptr inbounds %struct.bucket_table, ptr %12, i32 0, i32 8
  %113 = load ptr, ptr %112, align 64
  br label %114

114:                                              ; preds = %114, %109
  %115 = phi i32 [ 0, %109 ], [ %117, %114 ]
  %116 = getelementptr %union.nested_table, ptr %113, i32 %115
  tail call fastcc void @nested_table_free(ptr noundef %116, i32 noundef %111) #14
  %117 = add i32 %115, 1
  %118 = lshr i32 %117, %107
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %114, label %120

120:                                              ; preds = %114
  tail call void @kfree(ptr noundef %113) #14
  br label %121

121:                                              ; preds = %120, %103
  tail call void @kvfree(ptr noundef %12) #14
  %122 = icmp eq ptr %105, null
  br i1 %122, label %123, label %11

123:                                              ; preds = %121
  tail call void @mutex_unlock(ptr noundef %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rhashtable_destroy(ptr noundef %0) #0 {
  tail call void @rhashtable_free_and_destroy(ptr noundef %0, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__rht_bucket_nested(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = shl nsw i32 -1, %4
  %6 = xor i32 %5, -1
  %7 = and i32 %6, %1
  %8 = load i32, ptr %0, align 64
  %9 = lshr i32 %8, %4
  %10 = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr %union.nested_table, ptr %11, i32 %7
  %13 = lshr i32 %1, %4
  %14 = load volatile ptr, ptr %12, align 4
  %15 = icmp ne ptr %14, null
  %16 = icmp ugt i32 %9, 1024
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %30

18:                                               ; preds = %18, %2
  %19 = phi ptr [ %26, %18 ], [ %14, %2 ]
  %20 = phi i32 [ %24, %18 ], [ %9, %2 ]
  %21 = phi i32 [ %25, %18 ], [ %13, %2 ]
  %22 = and i32 %21, 1023
  %23 = getelementptr %union.nested_table, ptr %19, i32 %22
  %24 = lshr i32 %20, 10
  %25 = lshr i32 %21, 10
  %26 = load volatile ptr, ptr %23, align 4
  %27 = icmp ne ptr %26, null
  %28 = icmp ugt i32 %20, 1049599
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %18, label %30

30:                                               ; preds = %18, %2
  %31 = phi i32 [ %13, %2 ], [ %25, %18 ]
  %32 = phi ptr [ %14, %2 ], [ %26, %18 ]
  %33 = phi i1 [ %15, %2 ], [ %27, %18 ]
  %34 = getelementptr %union.nested_table, ptr %32, i32 %31
  %35 = select i1 %33, ptr %34, ptr null
  ret ptr %35
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rht_bucket_nested(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = load ptr, ptr @rht_bucket_nested.rhnull, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store ptr null, ptr @rht_bucket_nested.rhnull, align 4
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = shl nsw i32 -1, %8
  %10 = xor i32 %9, -1
  %11 = and i32 %10, %1
  %12 = load i32, ptr %0, align 64
  %13 = lshr i32 %12, %8
  %14 = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr %union.nested_table, ptr %15, i32 %11
  %17 = lshr i32 %1, %8
  %18 = load volatile ptr, ptr %16, align 4
  %19 = icmp ne ptr %18, null
  %20 = icmp ugt i32 %13, 1024
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %34

22:                                               ; preds = %22, %6
  %23 = phi ptr [ %30, %22 ], [ %18, %6 ]
  %24 = phi i32 [ %28, %22 ], [ %13, %6 ]
  %25 = phi i32 [ %29, %22 ], [ %17, %6 ]
  %26 = and i32 %25, 1023
  %27 = getelementptr %union.nested_table, ptr %23, i32 %26
  %28 = lshr i32 %24, 10
  %29 = lshr i32 %25, 10
  %30 = load volatile ptr, ptr %27, align 4
  %31 = icmp ne ptr %30, null
  %32 = icmp ugt i32 %24, 1049599
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %22, label %34

34:                                               ; preds = %22, %6
  %35 = phi i32 [ %17, %6 ], [ %29, %22 ]
  %36 = phi ptr [ %18, %6 ], [ %30, %22 ]
  %37 = phi i1 [ %19, %6 ], [ %31, %22 ]
  %38 = getelementptr %union.nested_table, ptr %36, i32 %35
  %39 = select i1 %37, ptr %38, ptr null
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @rht_bucket_nested.rhnull, ptr %39
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rht_bucket_nested_insert(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = shl nsw i32 -1, %5
  %7 = xor i32 %6, -1
  %8 = and i32 %7, %2
  %9 = load i32, ptr %1, align 64
  %10 = lshr i32 %9, %5
  %11 = getelementptr inbounds %struct.bucket_table, ptr %1, i32 0, i32 8
  %12 = load ptr, ptr %11, align 64
  %13 = lshr i32 %2, %5
  %14 = getelementptr %union.nested_table, ptr %12, i32 %8
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = icmp ult i32 %10, 1025
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 4096) #16
  %21 = icmp ne ptr %20, null
  %22 = and i1 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4096) %20, i8 0, i32 4096, i1 false) #14
  br label %24

24:                                               ; preds = %23, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  %25 = ptrtoint ptr %20 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #14, !srcloc !14
  br label %26

26:                                               ; preds = %26, %24
  %27 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 0, i32 %25) #14, !srcloc !28
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26
  %31 = extractvalue { i32, i32 } %27, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !42
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  tail call void @kfree(ptr noundef %20) #14
  %34 = load volatile ptr, ptr %14, align 4
  br label %35

35:                                               ; preds = %33, %30, %3
  %36 = phi ptr [ %34, %33 ], [ %15, %3 ], [ %20, %30 ]
  %37 = icmp ne ptr %36, null
  %38 = icmp ugt i32 %10, 1024
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %73

40:                                               ; preds = %68, %35
  %41 = phi ptr [ %69, %68 ], [ %36, %35 ]
  %42 = phi i32 [ %45, %68 ], [ %10, %35 ]
  %43 = phi i32 [ %46, %68 ], [ %13, %35 ]
  %44 = and i32 %43, 1023
  %45 = lshr i32 %42, 10
  %46 = lshr i32 %43, 10
  %47 = getelementptr %union.nested_table, ptr %41, i32 %44
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %40
  %51 = icmp ult i32 %42, 1049600
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 2848, i32 noundef 4096) #16
  %54 = icmp ne ptr %53, null
  %55 = and i1 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(4096) %53, i8 0, i32 4096, i1 false) #14
  br label %57

57:                                               ; preds = %56, %50
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  %58 = ptrtoint ptr %53 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #14, !srcloc !14
  br label %59

59:                                               ; preds = %59, %57
  %60 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %47, i32 0, i32 %58) #14, !srcloc !28
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %59

63:                                               ; preds = %59
  %64 = extractvalue { i32, i32 } %60, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !42
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  tail call void @kfree(ptr noundef %53) #14
  %67 = load volatile ptr, ptr %47, align 4
  br label %68

68:                                               ; preds = %66, %63, %40
  %69 = phi ptr [ %67, %66 ], [ %48, %40 ], [ %53, %63 ]
  %70 = icmp ne ptr %69, null
  %71 = icmp ugt i32 %42, 1049599
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %40, label %73

73:                                               ; preds = %68, %35
  %74 = phi i32 [ %13, %35 ], [ %46, %68 ]
  %75 = phi ptr [ %36, %35 ], [ %69, %68 ]
  %76 = phi i1 [ %37, %35 ], [ %70, %68 ]
  %77 = getelementptr %union.nested_table, ptr %75, i32 %74
  %78 = select i1 %76, ptr %77, ptr null
  ret ptr %78
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #9 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_rehash_alloc(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #14
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 64) #14
  %7 = select i1 %4, i32 -1, i32 %6
  %8 = tail call noalias ptr @kvmalloc_node(i32 noundef %7, i32 noundef 3520, i32 noundef -1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %48, label %10

10:                                               ; preds = %2
  store i32 %1, ptr %8, align 64
  %11 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 4, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4
  %12 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 3
  store volatile ptr %12, ptr %12, align 4
  %13 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 4
  %14 = tail call i32 @get_random_u32() #14
  %15 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %8, i32 64
  %19 = shl nuw i32 %1, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %18, i8 0, i32 %19, i1 false) #14
  br label %20

20:                                               ; preds = %17, %10
  %21 = getelementptr inbounds %struct.bucket_table, ptr %0, i32 0, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !27
  %22 = ptrtoint ptr %8 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #14, !srcloc !14
  br label %23

23:                                               ; preds = %23, %20
  %24 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %21, i32 0, i32 %22) #14, !srcloc !28
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23
  %28 = extractvalue { i32, i32 } %24, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 -17
  br i1 %29, label %48, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %8, align 64
  %37 = lshr i32 %36, %33
  %38 = getelementptr inbounds %struct.bucket_table, ptr %8, i32 0, i32 8
  %39 = load ptr, ptr %38, align 64
  br label %40

40:                                               ; preds = %40, %35
  %41 = phi i32 [ 0, %35 ], [ %43, %40 ]
  %42 = getelementptr %union.nested_table, ptr %39, i32 %41
  tail call fastcc void @nested_table_free(ptr noundef %42, i32 noundef %37) #14
  %43 = add i32 %41, 1
  %44 = lshr i32 %43, %33
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %40, label %46

46:                                               ; preds = %40
  tail call void @kfree(ptr noundef %39) #14
  br label %47

47:                                               ; preds = %46, %31
  tail call void @kvfree(ptr noundef nonnull %8) #14
  br label %48

48:                                               ; preds = %47, %27, %2
  %49 = phi i32 [ %30, %47 ], [ 0, %27 ], [ -12, %2 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nested_table_free(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = icmp ugt i32 %1, 1024
  br i1 %6, label %7, label %14

7:                                                ; preds = %5
  %8 = lshr i32 %1, 10
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %12, %9 ]
  %11 = getelementptr %union.nested_table, ptr %3, i32 %10
  tail call fastcc void @nested_table_free(ptr noundef %11, i32 noundef %8)
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, 1024
  br i1 %13, label %14, label %9

14:                                               ; preds = %9, %5
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %15

15:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

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
!8 = !{i64 2148967034}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148812304}
!12 = !{i64 2150759791}
!13 = !{!"branch_weights", i32 2146410443, i32 1073205}
!14 = !{i64 274979, i64 2147776545, i64 2147776571, i64 2147776618, i64 2147776640, i64 2147776668, i64 2147776688}
!15 = !{i64 2147858708, i64 2147858740, i64 2147858769, i64 2147858803, i64 2147858834, i64 2147858857}
!16 = !{i64 2147960024}
!17 = !{i64 2150759902}
!18 = !{i64 2150760131}
!19 = !{i64 2150759973}
!20 = !{i64 2150760213}
!21 = !{i8 0, i8 2}
!22 = !{i64 2152180104}
!23 = !{i64 2147850246, i64 2147850272, i64 2147850301, i64 2147850335, i64 2147850366, i64 2147850389}
!24 = !{i64 2147958989}
!25 = !{i64 2147857167, i64 2147857199, i64 2147857228, i64 2147857262, i64 2147857293, i64 2147857316}
!26 = !{i64 2150760774}
!27 = !{i64 2152318708}
!28 = !{i64 360234, i64 360255, i64 360278, i64 360297, i64 360316}
!29 = !{i64 2152319099}
!30 = !{!"branch_weights", i32 1, i32 4001}
!31 = !{i64 2148967251}
!32 = !{i64 2149193233}
!33 = !{i64 2149189057}
!34 = !{i64 2149189132, i64 2149189159, i64 2149189206, i64 2149189228, i64 2149189256, i64 2149189276}
!35 = !{i64 2149216236}
!36 = !{i64 2152392072}
!37 = !{i64 2152395481}
!38 = !{i64 2152405199}
!39 = !{i64 2152413318}
!40 = !{i32 0, i32 33}
!41 = !{i64 2152296906}
!42 = !{i64 2152297294}
!43 = !{i64 2152187115}
!44 = !{i64 2152189339}
!45 = !{i64 2152324990}
