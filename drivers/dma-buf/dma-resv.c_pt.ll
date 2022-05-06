; ModuleID = '/llk/IR/drivers/dma-buf/dma-resv.c_pt.bc'
source_filename = "../drivers/dma-buf/dma-resv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reservation_ww_class:\09\09\09\09\09"
module asm "\09.asciz \09\22reservation_ww_class\22\09\09\09\09\09"
module asm "__kstrtabns_reservation_ww_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_init\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_fini\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_fini:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_reserve_shared:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_reserve_shared\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_reserve_shared:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_add_shared_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_add_shared_fence\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_add_shared_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_add_excl_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_add_excl_fence\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_add_excl_fence:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_iter_first_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_iter_first_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_iter_first_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_iter_next_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_iter_next_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_iter_next_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_iter_first:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_iter_first\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_iter_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_iter_next\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_iter_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_copy_fences:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_copy_fences\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_copy_fences:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_get_fences:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_get_fences\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_get_fences:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_wait_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_wait_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_test_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_test_signaled\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_test_signaled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dma_resv_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22dma_resv_describe\22\09\09\09\09\09"
module asm "__kstrtabns_dma_resv_describe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.59, i64, i64, i32, %struct.kref, i32 }
%union.anon.59 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_resv_list = type { %struct.callback_head, i32, i32, [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }

@.str = private unnamed_addr constant [29 x i8] c"reservation_ww_class_acquire\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"reservation_ww_class_mutex\00", align 1
@reservation_ww_class = dso_local global %struct.ww_class { %struct.atomic_t zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, ptr @.str, ptr @.str.1, i32 1 }, align 4
@__kstrtab_reservation_ww_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_reservation_ww_class = external dso_local constant [0 x i8], align 1
@__ksymtab_reservation_ww_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reservation_ww_class to i32), ptr @__kstrtab_reservation_ww_class, ptr @__kstrtabns_reservation_ww_class }, section "___ksymtab+reservation_ww_class", align 4
@__kstrtab_dma_resv_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_init to i32), ptr @__kstrtab_dma_resv_init, ptr @__kstrtabns_dma_resv_init }, section "___ksymtab+dma_resv_init", align 4
@__kstrtab_dma_resv_fini = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_fini = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_fini = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_fini to i32), ptr @__kstrtab_dma_resv_fini, ptr @__kstrtabns_dma_resv_fini }, section "___ksymtab+dma_resv_fini", align 4
@__kstrtab_dma_resv_reserve_shared = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_reserve_shared = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_reserve_shared = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_reserve_shared to i32), ptr @__kstrtab_dma_resv_reserve_shared, ptr @__kstrtabns_dma_resv_reserve_shared }, section "___ksymtab+dma_resv_reserve_shared", align 4
@__kstrtab_dma_resv_add_shared_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_add_shared_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_add_shared_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_add_shared_fence to i32), ptr @__kstrtab_dma_resv_add_shared_fence, ptr @__kstrtabns_dma_resv_add_shared_fence }, section "___ksymtab+dma_resv_add_shared_fence", align 4
@__kstrtab_dma_resv_add_excl_fence = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_add_excl_fence = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_add_excl_fence = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_add_excl_fence to i32), ptr @__kstrtab_dma_resv_add_excl_fence, ptr @__kstrtabns_dma_resv_add_excl_fence }, section "___ksymtab+dma_resv_add_excl_fence", align 4
@__kstrtab_dma_resv_iter_first_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_iter_first_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_iter_first_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_iter_first_unlocked to i32), ptr @__kstrtab_dma_resv_iter_first_unlocked, ptr @__kstrtabns_dma_resv_iter_first_unlocked }, section "___ksymtab+dma_resv_iter_first_unlocked", align 4
@__kstrtab_dma_resv_iter_next_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_iter_next_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_iter_next_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_iter_next_unlocked to i32), ptr @__kstrtab_dma_resv_iter_next_unlocked, ptr @__kstrtabns_dma_resv_iter_next_unlocked }, section "___ksymtab+dma_resv_iter_next_unlocked", align 4
@__kstrtab_dma_resv_iter_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_iter_first = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_iter_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_iter_first to i32), ptr @__kstrtab_dma_resv_iter_first, ptr @__kstrtabns_dma_resv_iter_first }, section "___ksymtab_gpl+dma_resv_iter_first", align 4
@__kstrtab_dma_resv_iter_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_iter_next = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_iter_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_iter_next to i32), ptr @__kstrtab_dma_resv_iter_next, ptr @__kstrtabns_dma_resv_iter_next }, section "___ksymtab_gpl+dma_resv_iter_next", align 4
@__kstrtab_dma_resv_copy_fences = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_copy_fences = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_copy_fences = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_copy_fences to i32), ptr @__kstrtab_dma_resv_copy_fences, ptr @__kstrtabns_dma_resv_copy_fences }, section "___ksymtab+dma_resv_copy_fences", align 4
@__kstrtab_dma_resv_get_fences = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_get_fences = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_get_fences = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_get_fences to i32), ptr @__kstrtab_dma_resv_get_fences, ptr @__kstrtabns_dma_resv_get_fences }, section "___ksymtab_gpl+dma_resv_get_fences", align 4
@__kstrtab_dma_resv_wait_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_wait_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_wait_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_wait_timeout to i32), ptr @__kstrtab_dma_resv_wait_timeout, ptr @__kstrtabns_dma_resv_wait_timeout }, section "___ksymtab_gpl+dma_resv_wait_timeout", align 4
@__kstrtab_dma_resv_test_signaled = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_test_signaled = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_test_signaled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_test_signaled to i32), ptr @__kstrtab_dma_resv_test_signaled, ptr @__kstrtabns_dma_resv_test_signaled }, section "___ksymtab_gpl+dma_resv_test_signaled", align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"\09%s fence:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Exclusive\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Shared\00", align 1
@__kstrtab_dma_resv_describe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dma_resv_describe = external dso_local constant [0 x i8], align 1
@__ksymtab_dma_resv_describe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dma_resv_describe to i32), ptr @__kstrtab_dma_resv_describe, ptr @__kstrtabns_dma_resv_describe }, section "___ksymtab_gpl+dma_resv_describe", align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_dma_resv_add_excl_fence, ptr @__ksymtab_dma_resv_add_shared_fence, ptr @__ksymtab_dma_resv_copy_fences, ptr @__ksymtab_dma_resv_describe, ptr @__ksymtab_dma_resv_fini, ptr @__ksymtab_dma_resv_get_fences, ptr @__ksymtab_dma_resv_init, ptr @__ksymtab_dma_resv_iter_first, ptr @__ksymtab_dma_resv_iter_first_unlocked, ptr @__ksymtab_dma_resv_iter_next, ptr @__ksymtab_dma_resv_iter_next_unlocked, ptr @__ksymtab_dma_resv_reserve_shared, ptr @__ksymtab_dma_resv_test_signaled, ptr @__ksymtab_dma_resv_wait_timeout, ptr @__ksymtab_reservation_ww_class], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_resv_init(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef %0, ptr noundef %2, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3)) #9
  %3 = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 1
  store ptr null, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 3
  store volatile ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 2
  store volatile ptr null, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_resv_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dma_fence, ptr %3, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #9, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #9, !srcloc !10
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #9
  br label %14

13:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %6) #9
  br label %14

14:                                               ; preds = %13, %12, %10, %1
  %15 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dma_resv_list, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %36, %18
  %23 = phi i32 [ %37, %36 ], [ 0, %18 ]
  %24 = getelementptr %struct.dma_resv_list, ptr %16, i32 0, i32 3, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dma_fence, ptr %25, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #9, !srcloc !9
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 1, ptr elementtype(i32) %28) #9, !srcloc !10
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34, !prof !11

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %28, i32 noundef 3) #9
  br label %36

35:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %28) #9
  br label %36

36:                                               ; preds = %35, %34, %32, %22
  %37 = add nuw i32 %23, 1
  %38 = load i32, ptr %19, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %22, label %40

40:                                               ; preds = %36, %18
  tail call void @kvfree_call_rcu(ptr noundef nonnull %16, ptr noundef null) #9
  br label %41

41:                                               ; preds = %40, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_resv_reserve_shared(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %1
  %14 = icmp ugt i32 %13, %8
  br i1 %14, label %15, label %99

15:                                               ; preds = %10
  %16 = shl i32 %8, 1
  %17 = tail call i32 @llvm.umax.i32(i32 %13, i32 %16)
  br label %26

18:                                               ; preds = %6, %2
  %19 = add i32 %1, -1
  %20 = icmp eq i32 %19, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 false) #9, !range !13
  %22 = sub nuw nsw i32 32, %21
  %23 = shl nuw i32 1, %22
  %24 = call i32 @llvm.umax.i32(i32 %23, i32 4)
  %25 = select i1 %20, i32 4, i32 %24
  br label %26

26:                                               ; preds = %18, %15
  %27 = phi i32 [ %17, %15 ], [ %25, %18 ]
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #9
  %29 = extractvalue { i32, i1 } %28, 1
  %30 = extractvalue { i32, i1 } %28, 0
  %31 = tail call i32 @llvm.uadd.sat.i32(i32 %30, i32 16) #9
  %32 = select i1 %29, i32 -1, i32 %31
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3264) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %99, label %35

35:                                               ; preds = %26
  %36 = tail call i32 @ksize(ptr noundef nonnull %33) #9
  %37 = add i32 %36, -16
  %38 = lshr i32 %37, 2
  %39 = getelementptr inbounds %struct.dma_resv_list, ptr %33, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 1
  br label %41

41:                                               ; preds = %71, %35
  %42 = phi i32 [ %73, %71 ], [ %27, %35 ]
  %43 = phi i32 [ %74, %71 ], [ 0, %35 ]
  %44 = phi i32 [ %76, %71 ], [ 0, %35 ]
  br i1 %5, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %40, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ 0, %41 ]
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = getelementptr %struct.dma_resv_list, ptr %4, i32 0, i32 3, i32 %44
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.dma_fence, ptr %52, i32 0, i32 5
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.dma_fence, ptr %52, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_fence_ops, ptr %59, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = tail call zeroext i1 %61(ptr noundef %52) #9
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = tail call i32 @dma_fence_signal(ptr noundef %52) #9
  br label %67

67:                                               ; preds = %65, %50
  %68 = add i32 %42, -1
  br label %71

69:                                               ; preds = %63, %57
  %70 = add i32 %43, 1
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %43, %69 ], [ %68, %67 ]
  %73 = phi i32 [ %42, %69 ], [ %68, %67 ]
  %74 = phi i32 [ %70, %69 ], [ %43, %67 ]
  %75 = getelementptr %struct.dma_resv_list, ptr %33, i32 0, i32 3, i32 %72
  store volatile ptr %52, ptr %75, align 4
  %76 = add nuw i32 %44, 1
  br label %41

77:                                               ; preds = %47
  %78 = getelementptr inbounds %struct.dma_resv_list, ptr %33, i32 0, i32 1
  store i32 %43, ptr %78, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  store volatile ptr %33, ptr %3, align 4
  br i1 %5, label %99, label %79

79:                                               ; preds = %77
  %80 = icmp ult i32 %42, %27
  br i1 %80, label %81, label %98

81:                                               ; preds = %95, %79
  %82 = phi i32 [ %96, %95 ], [ %42, %79 ]
  %83 = getelementptr %struct.dma_resv_list, ptr %33, i32 0, i32 3, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %95, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.dma_fence, ptr %84, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #9, !srcloc !9
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #9, !srcloc !10
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = icmp sgt i32 %89, 0
  br i1 %92, label %95, label %93, !prof !11

93:                                               ; preds = %91
  tail call void @refcount_warn_saturate(ptr noundef %87, i32 noundef 3) #9
  br label %95

94:                                               ; preds = %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %87) #9
  br label %95

95:                                               ; preds = %94, %93, %91, %81
  %96 = add i32 %82, 1
  %97 = icmp eq i32 %96, %27
  br i1 %97, label %98, label %81

98:                                               ; preds = %95, %79
  tail call void @kvfree_call_rcu(ptr noundef nonnull %4, ptr noundef null) #9
  br label %99

99:                                               ; preds = %98, %77, %26, %10
  %100 = phi i32 [ 0, %98 ], [ 0, %10 ], [ 0, %77 ], [ -12, %26 ]
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_resv_add_shared_fence(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #9, !srcloc !9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #9, !srcloc !15
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9, !prof !16

9:                                                ; preds = %4
  %10 = add i32 %7, 1
  %11 = or i32 %10, %7
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %15, label %13, !prof !11

13:                                               ; preds = %9, %4
  %14 = phi i32 [ 2, %4 ], [ 1, %9 ]
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef %14) #9
  br label %15

15:                                               ; preds = %13, %9, %2
  %16 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 3
  %17 = load volatile ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_resv_list, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !17
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !18
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 3
  br label %26

26:                                               ; preds = %49, %24
  %27 = phi i32 [ 0, %24 ], [ %50, %49 ]
  %28 = getelementptr %struct.dma_resv_list, ptr %17, i32 0, i32 3, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 3
  %31 = load i64, ptr %30, align 8
  %32 = load i64, ptr %25, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %60, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 5
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.dma_fence, ptr %29, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_fence_ops, ptr %41, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = tail call zeroext i1 %43(ptr noundef %29) #9
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = tail call i32 @dma_fence_signal(ptr noundef %29) #9
  br label %60

49:                                               ; preds = %45, %39
  %50 = add nuw i32 %27, 1
  %51 = icmp eq i32 %50, %19
  br i1 %51, label %52, label %26

52:                                               ; preds = %49, %15
  %53 = load i32, ptr %18, align 4
  %54 = getelementptr inbounds %struct.dma_resv_list, ptr %17, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %58, label %57, !prof !11

57:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma-buf/dma-resv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 273, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

58:                                               ; preds = %52
  %59 = add i32 %19, 1
  br label %60

60:                                               ; preds = %58, %47, %34, %26
  %61 = phi i32 [ %19, %58 ], [ %27, %47 ], [ %27, %26 ], [ %27, %34 ]
  %62 = phi ptr [ null, %58 ], [ %29, %47 ], [ %29, %26 ], [ %29, %34 ]
  %63 = phi i32 [ %59, %58 ], [ %19, %47 ], [ %19, %26 ], [ %19, %34 ]
  %64 = getelementptr %struct.dma_resv_list, ptr %17, i32 0, i32 3, i32 %61
  store volatile ptr %1, ptr %64, align 4
  store volatile i32 %63, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !21
  %65 = load i32, ptr %20, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !22
  %67 = icmp eq ptr %62, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #9, !srcloc !9
  %70 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #9, !srcloc !10
  %71 = extractvalue { i32, i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = icmp sgt i32 %71, 0
  br i1 %74, label %77, label %75, !prof !11

75:                                               ; preds = %73
  tail call void @refcount_warn_saturate(ptr noundef %69, i32 noundef 3) #9
  br label %77

76:                                               ; preds = %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %69) #9
  br label %77

77:                                               ; preds = %76, %75, %73, %60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_resv_add_excl_fence(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_resv_list, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i32 [ %10, %8 ], [ 0, %2 ]
  %13 = icmp eq ptr %1, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #9, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #9, !srcloc !15
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !16

19:                                               ; preds = %14
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %19, %14
  %24 = phi i32 [ 2, %14 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef %24) #9
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !18
  store volatile ptr %1, ptr %3, align 4
  br i1 %7, label %31, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dma_resv_list, ptr %6, i32 0, i32 1
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %25
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !21
  %32 = load i32, ptr %26, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !24
  %34 = icmp eq i32 %12, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %50, %31
  %36 = phi i32 [ %37, %50 ], [ %12, %31 ]
  %37 = add i32 %36, -1
  %38 = getelementptr %struct.dma_resv_list, ptr %6, i32 0, i32 3, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dma_fence, ptr %39, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %42) #9, !srcloc !9
  %43 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %42, ptr %42, i32 1, ptr elementtype(i32) %42) #9, !srcloc !10
  %44 = extractvalue { i32, i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = icmp sgt i32 %44, 0
  br i1 %47, label %50, label %48, !prof !11

48:                                               ; preds = %46
  tail call void @refcount_warn_saturate(ptr noundef %42, i32 noundef 3) #9
  br label %50

49:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %42) #9
  br label %50

50:                                               ; preds = %49, %48, %46, %35
  %51 = icmp eq i32 %37, 0
  br i1 %51, label %52, label %35

52:                                               ; preds = %50, %31
  %53 = icmp eq ptr %4, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #9, !srcloc !9
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 1, ptr elementtype(i32) %55) #9, !srcloc !10
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = icmp sgt i32 %57, 0
  br i1 %60, label %63, label %61, !prof !11

61:                                               ; preds = %59
  tail call void @refcount_warn_saturate(ptr noundef %55, i32 noundef 3) #9
  br label %63

62:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %55) #9
  br label %63

63:                                               ; preds = %62, %61, %59, %52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_resv_iter_first_unlocked(ptr nocapture noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %2 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 7
  br label %8

8:                                                ; preds = %33, %1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.dma_resv, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.dma_resv, ptr %15, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %8
  %21 = phi i32 [ %11, %8 ], [ %17, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %21, ptr %2, align 4
  store i32 -1, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %22 = load i8, ptr %5, align 4, !range !29
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.dma_resv, ptr %25, i32 0, i32 3
  %27 = load volatile ptr, ptr %26, align 4
  store ptr %27, ptr %6, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dma_resv_list, ptr %27, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %4, align 4
  br label %33

32:                                               ; preds = %20
  store ptr null, ptr %6, align 4
  br label %33

33:                                               ; preds = %32, %29, %24
  store i8 1, ptr %7, align 4
  tail call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef %0)
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.dma_resv, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %37 = load volatile i32, ptr %35, align 4
  %38 = icmp eq i32 %37, %36
  br i1 %38, label %39, label %8

39:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %40 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dma_resv_iter_walk_unlocked(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.dma_resv, ptr %2, i32 0, i32 2
  br label %8

8:                                                ; preds = %69, %1
  %9 = load ptr, ptr %3, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #9, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #9, !srcloc !10
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !11

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #9
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %12) #9
  br label %20

20:                                               ; preds = %19, %18, %16, %8
  %21 = load i32, ptr %4, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load volatile ptr, ptr %7, align 4
  store ptr %24, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %37

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %6, align 4
  %31 = icmp ult i32 %21, %30
  br i1 %31, label %33, label %32

32:                                               ; preds = %29, %26
  store ptr null, ptr %3, align 4
  br label %80

33:                                               ; preds = %29
  %34 = add nuw i32 %21, 1
  store i32 %34, ptr %4, align 4
  %35 = getelementptr %struct.dma_resv_list, ptr %27, i32 0, i32 3, i32 %21
  %36 = load volatile ptr, ptr %35, align 4
  store ptr %36, ptr %3, align 4
  br label %37

37:                                               ; preds = %33, %23
  %38 = phi ptr [ %24, %23 ], [ %36, %33 ]
  %39 = getelementptr inbounds %struct.dma_fence, ptr %38, i32 0, i32 6
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %52, %37
  %43 = phi i32 [ %50, %52 ], [ %40, %37 ]
  %44 = add i32 %43, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #9, !srcloc !9
  br label %45

45:                                               ; preds = %45, %42
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 %43, i32 %44, ptr elementtype(i32) %39) #9, !srcloc !32
  %47 = extractvalue { i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %45

49:                                               ; preds = %45
  %50 = extractvalue { i32, i32 } %46, 1
  %51 = icmp eq i32 %50, %43
  br i1 %51, label %54, label %52, !prof !11

52:                                               ; preds = %49
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %54, label %42

54:                                               ; preds = %52, %49, %37
  %55 = phi i32 [ 0, %37 ], [ 0, %52 ], [ %43, %49 ]
  %56 = add i32 %55, 1
  %57 = or i32 %56, %55
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %60, label %59, !prof !11

59:                                               ; preds = %54
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef 0) #9
  br label %60

60:                                               ; preds = %59, %54
  %61 = icmp eq i32 %55, 0
  %62 = select i1 %61, ptr null, ptr %38
  store ptr %62, ptr %3, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 5
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %78, %64, %23
  br label %8

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.dma_fence, ptr %62, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.dma_fence_ops, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = tail call zeroext i1 %74(ptr noundef nonnull %62) #9
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = tail call i32 @dma_fence_signal(ptr noundef nonnull %62) #9
  br label %69

80:                                               ; preds = %76, %70, %60, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dma_resv_iter_next_unlocked(ptr nocapture noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %2 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 7
  store i8 0, ptr %2, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_resv, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %7 = load volatile i32, ptr %4, align 4
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %40, label %9

9:                                                ; preds = %40, %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.dma_resv, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %15, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.dma_resv, ptr %16, i32 0, i32 1
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %9
  %22 = phi i32 [ %12, %9 ], [ %18, %15 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %22, ptr %5, align 4
  %23 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 4
  store i32 -1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 6
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 1
  %26 = load i8, ptr %25, align 4, !range !29
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.dma_resv, ptr %29, i32 0, i32 3
  %31 = load volatile ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.dma_resv_list, ptr %31, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %24, align 4
  br label %39

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5
  store ptr null, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %34, %28
  store i8 1, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %1
  tail call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef %0)
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.dma_resv, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %44 = load volatile i32, ptr %42, align 4
  %45 = icmp eq i32 %44, %43
  br i1 %45, label %46, label %9

46:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %47 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  ret ptr %48
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @dma_resv_iter_first(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 4
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4, !range !29
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %0, align 4
  br i1 %5, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dma_resv, ptr %6, i32 0, i32 3
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_resv, ptr %6, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %28

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.dma_resv, ptr %6, i32 0, i32 2
  %17 = load volatile ptr, ptr %16, align 4
  br label %28

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 7
  store i8 0, ptr %19, align 4
  %20 = icmp eq ptr %9, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.dma_resv_list, ptr %9, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  store i32 1, ptr %2, align 4
  %26 = getelementptr %struct.dma_resv_list, ptr %9, i32 0, i32 3, i32 0
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21, %18, %14, %7
  %29 = phi ptr [ %12, %7 ], [ %27, %25 ], [ null, %21 ], [ null, %18 ], [ %17, %14 ]
  %30 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 7
  store i8 1, ptr %30, align 4
  ret ptr %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @dma_resv_iter_next(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 7
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dma_resv_iter, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = add nuw i32 %8, 1
  store i32 %13, ptr %7, align 4
  %14 = getelementptr %struct.dma_resv_list, ptr %4, i32 0, i32 3, i32 %8
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %12, %6, %1
  %17 = phi ptr [ %15, %12 ], [ null, %6 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_resv_copy_fences(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.dma_resv_iter, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 28, i1 false), !annotation !33
  store ptr %1, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 1
  store i8 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %7 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 3
  %8 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 4
  %9 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 6
  %10 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 5
  %11 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 7
  br label %12

12:                                               ; preds = %34, %2
  %13 = phi ptr [ %35, %34 ], [ %1, %2 ]
  %14 = getelementptr inbounds %struct.dma_resv, ptr %13, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %18, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %18

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %15, %12 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %23, ptr %7, align 4
  store i32 -1, ptr %8, align 4
  store i32 0, ptr %9, align 4
  %24 = load i8, ptr %5, align 4, !range !29
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dma_resv, ptr %13, i32 0, i32 3
  %28 = load volatile ptr, ptr %27, align 4
  store ptr %28, ptr %10, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dma_resv_list, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %9, align 4
  br label %34

33:                                               ; preds = %22
  store ptr null, ptr %10, align 4
  br label %34

34:                                               ; preds = %33, %30, %26
  store i8 1, ptr %11, align 4
  call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef nonnull %3) #9
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.dma_resv, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %38 = load volatile i32, ptr %36, align 4
  %39 = icmp eq i32 %38, %37
  br i1 %39, label %40, label %12

40:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %41 = load ptr, ptr %6, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %177, label %43

43:                                               ; preds = %174, %40
  %44 = phi i32 [ %171, %174 ], [ %37, %40 ]
  %45 = phi ptr [ %169, %174 ], [ %35, %40 ]
  %46 = phi ptr [ %117, %174 ], [ null, %40 ]
  %47 = phi ptr [ %175, %174 ], [ %41, %40 ]
  %48 = phi ptr [ %141, %174 ], [ null, %40 ]
  %49 = load i8, ptr %11, align 4, !range !29
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %115, label %51

51:                                               ; preds = %43
  %52 = icmp eq ptr %46, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.dma_resv_list, ptr %46, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %71, %53
  %58 = phi i32 [ %72, %71 ], [ 0, %53 ]
  %59 = getelementptr %struct.dma_resv_list, ptr %46, i32 0, i32 3, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.dma_fence, ptr %60, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #9, !srcloc !9
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #9, !srcloc !10
  %65 = extractvalue { i32, i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = icmp sgt i32 %65, 0
  br i1 %68, label %71, label %69, !prof !11

69:                                               ; preds = %67
  tail call void @refcount_warn_saturate(ptr noundef %63, i32 noundef 3) #9
  br label %71

70:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %63) #9
  br label %71

71:                                               ; preds = %70, %69, %67, %57
  %72 = add nuw i32 %58, 1
  %73 = load i32, ptr %54, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %57, label %75

75:                                               ; preds = %71, %53
  tail call void @kvfree_call_rcu(ptr noundef nonnull %46, ptr noundef null) #9
  br label %76

76:                                               ; preds = %75, %51
  %77 = icmp eq ptr %48, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.dma_fence, ptr %48, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #9, !srcloc !9
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 1, ptr elementtype(i32) %79) #9, !srcloc !10
  %81 = extractvalue { i32, i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = icmp sgt i32 %81, 0
  br i1 %84, label %87, label %85, !prof !11

85:                                               ; preds = %83
  tail call void @refcount_warn_saturate(ptr noundef %79, i32 noundef 3) #9
  br label %87

86:                                               ; preds = %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %79) #9
  br label %87

87:                                               ; preds = %86, %85, %83, %76
  %88 = load i32, ptr %9, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %115, label %90

90:                                               ; preds = %87
  %91 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %88, i32 4) #9
  %92 = extractvalue { i32, i1 } %91, 1
  %93 = extractvalue { i32, i1 } %91, 0
  %94 = tail call i32 @llvm.uadd.sat.i32(i32 %93, i32 16) #9
  %95 = select i1 %92, i32 -1, i32 %94
  %96 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %95, i32 noundef 3264) #10
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %90
  %99 = icmp eq ptr %47, null
  br i1 %99, label %224, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %101) #9, !srcloc !9
  %102 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %101, ptr %101, i32 1, ptr elementtype(i32) %101) #9, !srcloc !10
  %103 = extractvalue { i32, i32, i32 } %102, 0
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = icmp sgt i32 %103, 0
  br i1 %106, label %224, label %107, !prof !11

107:                                              ; preds = %105
  tail call void @refcount_warn_saturate(ptr noundef %101, i32 noundef 3) #9
  br label %224

108:                                              ; preds = %100
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %101) #9
  br label %224

109:                                              ; preds = %90
  %110 = tail call i32 @ksize(ptr noundef nonnull %96) #9
  %111 = add i32 %110, -16
  %112 = lshr i32 %111, 2
  %113 = getelementptr inbounds %struct.dma_resv_list, ptr %96, i32 0, i32 2
  store i32 %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.dma_resv_list, ptr %96, i32 0, i32 1
  store i32 0, ptr %114, align 8
  br label %115

115:                                              ; preds = %109, %87, %43
  %116 = phi ptr [ %48, %43 ], [ null, %87 ], [ null, %109 ]
  %117 = phi ptr [ %46, %43 ], [ null, %87 ], [ %96, %109 ]
  %118 = getelementptr inbounds %struct.dma_fence, ptr %47, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #9, !srcloc !9
  %119 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #9, !srcloc !15
  %120 = extractvalue { i32, i32, i32 } %119, 0
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %126, label %122, !prof !16

122:                                              ; preds = %115
  %123 = add i32 %120, 1
  %124 = or i32 %123, %120
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %128, label %126, !prof !11

126:                                              ; preds = %122, %115
  %127 = phi i32 [ 2, %115 ], [ 1, %122 ]
  tail call void @refcount_warn_saturate(ptr noundef %118, i32 noundef %127) #9
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32, ptr %8, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.dma_resv_list, ptr %117, i32 0, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %132, align 4
  %135 = getelementptr %struct.dma_resv_list, ptr %117, i32 0, i32 3, i32 %133
  store volatile ptr %47, ptr %135, align 4
  %136 = load ptr, ptr %3, align 4
  %137 = load i32, ptr %7, align 4
  br label %138

138:                                              ; preds = %131, %128
  %139 = phi i32 [ %137, %131 ], [ %44, %128 ]
  %140 = phi ptr [ %136, %131 ], [ %45, %128 ]
  %141 = phi ptr [ %116, %131 ], [ %47, %128 ]
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  store i8 0, ptr %11, align 4
  %142 = getelementptr inbounds %struct.dma_resv, ptr %140, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %143 = load volatile i32, ptr %142, align 4
  %144 = icmp eq i32 %143, %139
  br i1 %144, label %168, label %145

145:                                              ; preds = %168, %138
  %146 = phi ptr [ %169, %168 ], [ %140, %138 ]
  %147 = getelementptr inbounds %struct.dma_resv, ptr %146, i32 0, i32 1
  %148 = load volatile i32, ptr %147, align 4
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %151, %145
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %152 = load volatile i32, ptr %147, align 4
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %151

155:                                              ; preds = %151, %145
  %156 = phi i32 [ %148, %145 ], [ %152, %151 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %156, ptr %7, align 4
  store i32 -1, ptr %8, align 4
  store i32 0, ptr %9, align 4
  %157 = load i8, ptr %5, align 4, !range !29
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.dma_resv, ptr %146, i32 0, i32 3
  %161 = load volatile ptr, ptr %160, align 4
  store ptr %161, ptr %10, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %167, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.dma_resv_list, ptr %161, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  store i32 %165, ptr %9, align 4
  br label %167

166:                                              ; preds = %155
  store ptr null, ptr %10, align 4
  br label %167

167:                                              ; preds = %166, %163, %159
  store i8 1, ptr %11, align 4
  br label %168

168:                                              ; preds = %167, %138
  call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef nonnull %3) #9
  %169 = load ptr, ptr %3, align 4
  %170 = getelementptr inbounds %struct.dma_resv, ptr %169, i32 0, i32 1
  %171 = load i32, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %172 = load volatile i32, ptr %170, align 4
  %173 = icmp eq i32 %172, %171
  br i1 %173, label %174, label %145

174:                                              ; preds = %168
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %175 = load ptr, ptr %6, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %43

177:                                              ; preds = %174, %40
  %178 = phi ptr [ null, %40 ], [ %141, %174 ]
  %179 = phi ptr [ null, %40 ], [ %117, %174 ]
  %180 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %181 = load i32, ptr %180, align 4
  %182 = add i32 %181, 1
  store i32 %182, ptr %180, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !18
  %183 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !35
  store volatile ptr %178, ptr %183, align 4
  %185 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !36
  store volatile ptr %179, ptr %185, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #9, !srcloc !21
  %187 = load i32, ptr %180, align 4
  %188 = add i32 %187, 1
  store i32 %188, ptr %180, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !37
  %189 = icmp eq ptr %186, null
  br i1 %189, label %213, label %190

190:                                              ; preds = %177
  %191 = getelementptr inbounds %struct.dma_resv_list, ptr %186, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %212, label %194

194:                                              ; preds = %208, %190
  %195 = phi i32 [ %209, %208 ], [ 0, %190 ]
  %196 = getelementptr %struct.dma_resv_list, ptr %186, i32 0, i32 3, i32 %195
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %208, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.dma_fence, ptr %197, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %200) #9, !srcloc !9
  %201 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %200, ptr %200, i32 1, ptr elementtype(i32) %200) #9, !srcloc !10
  %202 = extractvalue { i32, i32, i32 } %201, 0
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = icmp sgt i32 %202, 0
  br i1 %205, label %208, label %206, !prof !11

206:                                              ; preds = %204
  tail call void @refcount_warn_saturate(ptr noundef %200, i32 noundef 3) #9
  br label %208

207:                                              ; preds = %199
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %200) #9
  br label %208

208:                                              ; preds = %207, %206, %204, %194
  %209 = add nuw i32 %195, 1
  %210 = load i32, ptr %191, align 4
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %194, label %212

212:                                              ; preds = %208, %190
  tail call void @kvfree_call_rcu(ptr noundef nonnull %186, ptr noundef null) #9
  br label %213

213:                                              ; preds = %212, %177
  %214 = icmp eq ptr %184, null
  br i1 %214, label %224, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.dma_fence, ptr %184, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %216) #9, !srcloc !9
  %217 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %216, ptr %216, i32 1, ptr elementtype(i32) %216) #9, !srcloc !10
  %218 = extractvalue { i32, i32, i32 } %217, 0
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %223, label %220

220:                                              ; preds = %215
  %221 = icmp sgt i32 %218, 0
  br i1 %221, label %224, label %222, !prof !11

222:                                              ; preds = %220
  tail call void @refcount_warn_saturate(ptr noundef %216, i32 noundef 3) #9
  br label %224

223:                                              ; preds = %215
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %216) #9
  br label %224

224:                                              ; preds = %223, %222, %220, %213, %108, %107, %105, %98
  %225 = phi i32 [ -12, %98 ], [ -12, %105 ], [ -12, %107 ], [ -12, %108 ], [ 0, %213 ], [ 0, %220 ], [ 0, %222 ], [ 0, %223 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i32 %225
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_resv_get_fences(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca %struct.dma_resv_iter, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 28, i1 false), !annotation !33
  store i32 0, ptr %2, align 4
  store ptr null, ptr %3, align 4
  %7 = icmp ne ptr %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store ptr null, ptr %1, align 4
  br label %9

9:                                                ; preds = %8, %4
  store ptr %0, ptr %5, align 4
  %10 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 1
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 2
  store ptr null, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %12 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 4
  %14 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 6
  %15 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 5
  %16 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 7
  br label %17

17:                                               ; preds = %39, %9
  %18 = phi ptr [ %40, %39 ], [ %0, %9 ]
  %19 = getelementptr inbounds %struct.dma_resv, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %24 = load volatile i32, ptr %19, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %17
  %28 = phi i32 [ %20, %17 ], [ %24, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %28, ptr %12, align 4
  store i32 -1, ptr %13, align 4
  store i32 0, ptr %14, align 4
  %29 = load i8, ptr %10, align 4, !range !29
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dma_resv, ptr %18, i32 0, i32 3
  %33 = load volatile ptr, ptr %32, align 4
  store ptr %33, ptr %15, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dma_resv_list, ptr %33, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %14, align 4
  br label %39

38:                                               ; preds = %27
  store ptr null, ptr %15, align 4
  br label %39

39:                                               ; preds = %38, %35, %31
  store i8 1, ptr %16, align 4
  call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef nonnull %5) #9
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.dma_resv, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %43 = load volatile i32, ptr %41, align 4
  %44 = icmp eq i32 %43, %42
  br i1 %44, label %45, label %17

45:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %46 = load ptr, ptr %11, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %176, label %48

48:                                               ; preds = %45
  %49 = xor i1 %7, true
  %50 = zext i1 %49 to i32
  br label %51

51:                                               ; preds = %173, %48
  %52 = phi i32 [ %42, %48 ], [ %170, %173 ]
  %53 = phi ptr [ %40, %48 ], [ %168, %173 ]
  %54 = phi ptr [ %46, %48 ], [ %174, %173 ]
  %55 = load i8, ptr %16, align 4, !range !29
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %119, label %57

57:                                               ; preds = %51
  %58 = load i32, ptr %2, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %78, %57
  %61 = phi i32 [ %79, %78 ], [ %58, %57 ]
  %62 = load ptr, ptr %3, align 4
  %63 = add i32 %61, -1
  store i32 %63, ptr %2, align 4
  %64 = getelementptr ptr, ptr %62, i32 %63
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.dma_fence, ptr %65, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %68) #9, !srcloc !9
  %69 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %68, ptr %68, i32 1, ptr elementtype(i32) %68) #9, !srcloc !10
  %70 = extractvalue { i32, i32, i32 } %69, 0
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = icmp sgt i32 %70, 0
  br i1 %73, label %76, label %74, !prof !11

74:                                               ; preds = %72
  tail call void @refcount_warn_saturate(ptr noundef %68, i32 noundef 3) #9
  br label %76

75:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %68) #9
  br label %76

76:                                               ; preds = %75, %74, %72
  %77 = load i32, ptr %2, align 4
  br label %78

78:                                               ; preds = %76, %60
  %79 = phi i32 [ %77, %76 ], [ %63, %60 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %60

81:                                               ; preds = %78, %57
  br i1 %7, label %82, label %94

82:                                               ; preds = %81
  %83 = load ptr, ptr %1, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.dma_fence, ptr %83, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #9, !srcloc !9
  %87 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #9, !srcloc !10
  %88 = extractvalue { i32, i32, i32 } %87, 0
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = icmp sgt i32 %88, 0
  br i1 %91, label %94, label %92, !prof !11

92:                                               ; preds = %90
  tail call void @refcount_warn_saturate(ptr noundef %86, i32 noundef 3) #9
  br label %94

93:                                               ; preds = %85
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %86) #9
  br label %94

94:                                               ; preds = %93, %92, %90, %82, %81
  %95 = load i32, ptr %14, align 4
  %96 = add i32 %95, %50
  %97 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %96, i32 4) #9
  %98 = extractvalue { i32, i1 } %97, 1
  br i1 %98, label %103, label %99, !prof !16

99:                                               ; preds = %94
  %100 = load ptr, ptr %3, align 4
  %101 = extractvalue { i32, i1 } %97, 0
  %102 = tail call noalias ptr @krealloc(ptr noundef %100, i32 noundef %101, i32 noundef 3264) #11
  br label %103

103:                                              ; preds = %99, %94
  %104 = phi ptr [ %102, %99 ], [ null, %94 ]
  store ptr %104, ptr %3, align 4
  %105 = icmp ne i32 %96, 0
  %106 = icmp eq ptr %104, null
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = icmp eq ptr %54, null
  br i1 %109, label %176, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.dma_fence, ptr %54, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %111) #9, !srcloc !9
  %112 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %111, ptr %111, i32 1, ptr elementtype(i32) %111) #9, !srcloc !10
  %113 = extractvalue { i32, i32, i32 } %112, 0
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %118, label %115

115:                                              ; preds = %110
  %116 = icmp sgt i32 %113, 0
  br i1 %116, label %176, label %117, !prof !11

117:                                              ; preds = %115
  tail call void @refcount_warn_saturate(ptr noundef %111, i32 noundef 3) #9
  br label %176

118:                                              ; preds = %110
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %111) #9
  br label %176

119:                                              ; preds = %103, %51
  %120 = getelementptr inbounds %struct.dma_fence, ptr %54, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %120) #9, !srcloc !9
  %121 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %120, ptr %120, i32 1, ptr elementtype(i32) %120) #9, !srcloc !15
  %122 = extractvalue { i32, i32, i32 } %121, 0
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124, !prof !16

124:                                              ; preds = %119
  %125 = add i32 %122, 1
  %126 = or i32 %125, %122
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %130, label %128, !prof !11

128:                                              ; preds = %124, %119
  %129 = phi i32 [ 2, %119 ], [ 1, %124 ]
  tail call void @refcount_warn_saturate(ptr noundef %120, i32 noundef %129) #9
  br label %130

130:                                              ; preds = %128, %124
  %131 = load i32, ptr %13, align 4
  %132 = icmp eq i32 %131, 0
  %133 = and i1 %7, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %3, align 4
  %136 = load i32, ptr %2, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %2, align 4
  %138 = getelementptr ptr, ptr %135, i32 %136
  br label %139

139:                                              ; preds = %134, %130
  %140 = phi ptr [ %138, %134 ], [ %1, %130 ]
  store ptr %54, ptr %140, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  store i8 0, ptr %16, align 4
  %141 = getelementptr inbounds %struct.dma_resv, ptr %53, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %142 = load volatile i32, ptr %141, align 4
  %143 = icmp eq i32 %142, %52
  br i1 %143, label %167, label %144

144:                                              ; preds = %167, %139
  %145 = phi ptr [ %168, %167 ], [ %53, %139 ]
  %146 = getelementptr inbounds %struct.dma_resv, ptr %145, i32 0, i32 1
  %147 = load volatile i32, ptr %146, align 4
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %150, %144
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %151 = load volatile i32, ptr %146, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %150

154:                                              ; preds = %150, %144
  %155 = phi i32 [ %147, %144 ], [ %151, %150 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %155, ptr %12, align 4
  store i32 -1, ptr %13, align 4
  store i32 0, ptr %14, align 4
  %156 = load i8, ptr %10, align 4, !range !29
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.dma_resv, ptr %145, i32 0, i32 3
  %160 = load volatile ptr, ptr %159, align 4
  store ptr %160, ptr %15, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.dma_resv_list, ptr %160, i32 0, i32 1
  %164 = load i32, ptr %163, align 4
  store i32 %164, ptr %14, align 4
  br label %166

165:                                              ; preds = %154
  store ptr null, ptr %15, align 4
  br label %166

166:                                              ; preds = %165, %162, %158
  store i8 1, ptr %16, align 4
  br label %167

167:                                              ; preds = %166, %139
  call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef nonnull %5) #9
  %168 = load ptr, ptr %5, align 4
  %169 = getelementptr inbounds %struct.dma_resv, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %171 = load volatile i32, ptr %169, align 4
  %172 = icmp eq i32 %171, %170
  br i1 %172, label %173, label %144

173:                                              ; preds = %167
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %174 = load ptr, ptr %11, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %51

176:                                              ; preds = %173, %118, %117, %115, %108, %45
  %177 = phi i32 [ -12, %108 ], [ -12, %115 ], [ -12, %117 ], [ -12, %118 ], [ 0, %45 ], [ 0, %173 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dma_resv_wait_timeout(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.dma_resv_iter, align 4
  %6 = icmp eq i32 %3, 0
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 28, i1 false), !annotation !33
  %8 = zext i1 %1 to i8
  store ptr %0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 1
  store i8 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %11 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 3
  %12 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 4
  %13 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 6
  %14 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 5
  %15 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 7
  br label %16

16:                                               ; preds = %38, %4
  %17 = phi ptr [ %39, %38 ], [ %0, %4 ]
  %18 = getelementptr inbounds %struct.dma_resv, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %23 = load volatile i32, ptr %18, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %19, %16 ], [ %23, %22 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %27, ptr %11, align 4
  store i32 -1, ptr %12, align 4
  store i32 0, ptr %13, align 4
  %28 = load i8, ptr %9, align 4, !range !29
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dma_resv, ptr %17, i32 0, i32 3
  %32 = load volatile ptr, ptr %31, align 4
  store ptr %32, ptr %14, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dma_resv_list, ptr %32, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %13, align 4
  br label %38

37:                                               ; preds = %26
  store ptr null, ptr %14, align 4
  br label %38

38:                                               ; preds = %37, %34, %30
  store i8 1, ptr %15, align 4
  call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef nonnull %5) #9
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.dma_resv, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %42 = load volatile i32, ptr %40, align 4
  %43 = icmp eq i32 %42, %41
  br i1 %43, label %44, label %16

44:                                               ; preds = %38
  %45 = select i1 %6, i32 1, i32 %3
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %46 = load ptr, ptr %10, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %100, label %48

48:                                               ; preds = %97, %44
  %49 = phi i32 [ %94, %97 ], [ %41, %44 ]
  %50 = phi ptr [ %92, %97 ], [ %39, %44 ]
  %51 = phi ptr [ %98, %97 ], [ %46, %44 ]
  %52 = phi i32 [ %53, %97 ], [ %45, %44 ]
  %53 = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %51, i1 noundef zeroext %2, i32 noundef %52) #9
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.dma_fence, ptr %51, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #9, !srcloc !9
  %57 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 1, ptr elementtype(i32) %56) #9, !srcloc !10
  %58 = extractvalue { i32, i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = icmp sgt i32 %58, 0
  br i1 %61, label %100, label %62, !prof !11

62:                                               ; preds = %60
  tail call void @refcount_warn_saturate(ptr noundef %56, i32 noundef 3) #9
  br label %100

63:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %56) #9
  br label %100

64:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  store i8 0, ptr %15, align 4
  %65 = getelementptr inbounds %struct.dma_resv, ptr %50, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %66 = load volatile i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %49
  br i1 %67, label %91, label %68

68:                                               ; preds = %91, %64
  %69 = phi ptr [ %92, %91 ], [ %50, %64 ]
  %70 = getelementptr inbounds %struct.dma_resv, ptr %69, i32 0, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %74, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %75 = load volatile i32, ptr %70, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74, %68
  %79 = phi i32 [ %71, %68 ], [ %75, %74 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %79, ptr %11, align 4
  store i32 -1, ptr %12, align 4
  store i32 0, ptr %13, align 4
  %80 = load i8, ptr %9, align 4, !range !29
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.dma_resv, ptr %69, i32 0, i32 3
  %84 = load volatile ptr, ptr %83, align 4
  store ptr %84, ptr %14, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.dma_resv_list, ptr %84, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %13, align 4
  br label %90

89:                                               ; preds = %78
  store ptr null, ptr %14, align 4
  br label %90

90:                                               ; preds = %89, %86, %82
  store i8 1, ptr %15, align 4
  br label %91

91:                                               ; preds = %90, %64
  call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef nonnull %5) #9
  %92 = load ptr, ptr %5, align 4
  %93 = getelementptr inbounds %struct.dma_resv, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %95 = load volatile i32, ptr %93, align 4
  %96 = icmp eq i32 %95, %94
  br i1 %96, label %97, label %68

97:                                               ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %98 = load ptr, ptr %10, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %48

100:                                              ; preds = %97, %63, %62, %60, %44
  %101 = phi i32 [ %53, %60 ], [ %53, %62 ], [ %53, %63 ], [ %45, %44 ], [ %53, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dma_resv_test_signaled(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.dma_resv_iter, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 28, i1 false), !annotation !33
  %5 = zext i1 %1 to i8
  store ptr %0, ptr %3, align 4
  %6 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 1
  store i8 %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !25
  %8 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 3
  %9 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 4
  %10 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 6
  %11 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 5
  %12 = getelementptr inbounds %struct.dma_resv_iter, ptr %3, i32 0, i32 7
  br label %13

13:                                               ; preds = %35, %2
  %14 = phi ptr [ %36, %35 ], [ %0, %2 ]
  %15 = getelementptr inbounds %struct.dma_resv, ptr %14, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %20 = load volatile i32, ptr %15, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19, %13
  %24 = phi i32 [ %16, %13 ], [ %20, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  store i32 %24, ptr %8, align 4
  store i32 -1, ptr %9, align 4
  store i32 0, ptr %10, align 4
  %25 = load i8, ptr %6, align 4, !range !29
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dma_resv, ptr %14, i32 0, i32 3
  %29 = load volatile ptr, ptr %28, align 4
  store ptr %29, ptr %11, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.dma_resv_list, ptr %29, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %10, align 4
  br label %35

34:                                               ; preds = %23
  store ptr null, ptr %11, align 4
  br label %35

35:                                               ; preds = %34, %31, %27
  store i8 1, ptr %12, align 4
  call fastcc void @dma_resv_iter_walk_unlocked(ptr noundef nonnull %3) #9
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.dma_resv, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %39 = load volatile i32, ptr %37, align 4
  %40 = icmp eq i32 %39, %38
  br i1 %40, label %41, label %13

41:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %42 = load ptr, ptr %7, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.dma_fence, ptr %42, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %45) #9, !srcloc !9
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %45, ptr %45, i32 1, ptr elementtype(i32) %45) #9, !srcloc !10
  %47 = extractvalue { i32, i32, i32 } %46, 0
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %49
  tail call void @refcount_warn_saturate(ptr noundef %45, i32 noundef 3) #9
  br label %53

52:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void @dma_fence_release(ptr noundef %45) #9
  br label %53

53:                                               ; preds = %52, %51, %49, %41
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  ret i1 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dma_resv_describe(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_resv, ptr %0, i32 0, i32 2
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.dma_resv_list, ptr %4, i32 0, i32 3, i32 0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %14, %2
  %19 = phi ptr [ %16, %14 ], [ %6, %2 ]
  %20 = phi i32 [ 1, %14 ], [ 0, %2 ]
  %21 = icmp eq ptr %4, null
  %22 = getelementptr inbounds %struct.dma_resv_list, ptr %4, i32 0, i32 1
  br label %23

23:                                               ; preds = %31, %18
  %24 = phi ptr [ %19, %18 ], [ %34, %31 ]
  %25 = phi i32 [ %20, %18 ], [ %32, %31 ]
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.3, ptr @.str.4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %27) #9
  tail call void @dma_fence_describe(ptr noundef nonnull %24, ptr noundef %1) #9
  br i1 %21, label %36, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %22, align 4
  %30 = icmp ult i32 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = add nuw i32 %25, 1
  %33 = getelementptr %struct.dma_resv_list, ptr %4, i32 0, i32 3, i32 %25
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %23

36:                                               ; preds = %31, %28, %23, %14, %10, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_describe(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(1) }

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
!8 = !{i64 2148236680}
!9 = !{i64 632817, i64 2148122788, i64 2148122814, i64 2148122861, i64 2148122883, i64 2148122911, i64 2148122931}
!10 = !{i64 2148138815, i64 2148138847, i64 2148138876, i64 2148138910, i64 2148138941, i64 2148138964}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149030068}
!13 = !{i32 0, i32 33}
!14 = !{i64 2152224290}
!15 = !{i64 2148136458, i64 2148136490, i64 2148136519, i64 2148136553, i64 2148136584, i64 2148136607}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2152233631}
!18 = !{i64 2149643157}
!19 = !{i64 2152235612, i64 2152236103, i64 2152235649, i64 2152235705, i64 2152235739, i64 2152235763, i64 2152235804, i64 2152235825, i64 2152235853, i64 2152235887}
!20 = !{i64 2152241254}
!21 = !{i64 2149643458}
!22 = !{i64 2152243916}
!23 = !{i64 2152252235}
!24 = !{i64 2152258445}
!25 = !{i64 2149179712}
!26 = !{i64 2152262357}
!27 = !{i64 2152262199}
!28 = !{i64 2152262501}
!29 = !{i8 0, i8 2}
!30 = !{i64 2149642858}
!31 = !{i64 2149179929}
!32 = !{i64 618880, i64 618904, i64 618925, i64 618942, i64 618959}
!33 = !{!"auto-init"}
!34 = !{i64 2152286848}
!35 = !{i64 2152298246}
!36 = !{i64 2152306732}
!37 = !{i64 2152311840}
