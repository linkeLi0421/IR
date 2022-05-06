; ModuleID = '/llk/IR/crypto/rng.c_pt.bc'
source_filename = "../crypto/rng.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_default_rng\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_rng_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_rng_reset\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_rng_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_rng\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_get_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_get_default_rng\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_get_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_put_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_put_default_rng\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_put_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_del_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_del_default_rng\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_del_default_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_rng\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_rng\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_rng:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_rngs:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_rngs\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_rngs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_rngs:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_rngs\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_rngs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.rng_alg = type { ptr, ptr, ptr, i32, [48 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_report_rng = type { [64 x i8], i32 }

@crypto_default_rng = dso_local global ptr null, align 4
@__kstrtab_crypto_default_rng = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_default_rng = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_default_rng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_default_rng to i32), ptr @__kstrtab_crypto_default_rng, ptr @__kstrtabns_crypto_default_rng }, section "___ksymtab_gpl+crypto_default_rng", align 4
@__kstrtab_crypto_rng_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_rng_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_rng_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_rng_reset to i32), ptr @__kstrtab_crypto_rng_reset, ptr @__kstrtabns_crypto_rng_reset }, section "___ksymtab_gpl+crypto_rng_reset", align 4
@crypto_rng_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_rng_init_tfm, ptr @crypto_rng_show, ptr @crypto_rng_report, ptr null, i32 12, i32 -16, i32 15, i32 0 }, align 4
@__kstrtab_crypto_alloc_rng = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_rng = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_rng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_rng to i32), ptr @__kstrtab_crypto_alloc_rng, ptr @__kstrtabns_crypto_alloc_rng }, section "___ksymtab_gpl+crypto_alloc_rng", align 4
@crypto_default_rng_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_default_rng_lock, i64 12), ptr getelementptr (i8, ptr @crypto_default_rng_lock, i64 12) } }, align 4
@.str = private unnamed_addr constant [7 x i8] c"stdrng\00", align 1
@crypto_default_rng_refcnt = internal unnamed_addr global i32 0, align 4
@__kstrtab_crypto_get_default_rng = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_get_default_rng = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_get_default_rng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_get_default_rng to i32), ptr @__kstrtab_crypto_get_default_rng, ptr @__kstrtabns_crypto_get_default_rng }, section "___ksymtab_gpl+crypto_get_default_rng", align 4
@__kstrtab_crypto_put_default_rng = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_put_default_rng = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_put_default_rng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_put_default_rng to i32), ptr @__kstrtab_crypto_put_default_rng, ptr @__kstrtabns_crypto_put_default_rng }, section "___ksymtab_gpl+crypto_put_default_rng", align 4
@__kstrtab_crypto_del_default_rng = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_del_default_rng = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_del_default_rng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_del_default_rng to i32), ptr @__kstrtab_crypto_del_default_rng, ptr @__kstrtabns_crypto_del_default_rng }, section "___ksymtab_gpl+crypto_del_default_rng", align 4
@__kstrtab_crypto_register_rng = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_rng = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_rng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_rng to i32), ptr @__kstrtab_crypto_register_rng, ptr @__kstrtabns_crypto_register_rng }, section "___ksymtab_gpl+crypto_register_rng", align 4
@__kstrtab_crypto_unregister_rng = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_rng = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_rng = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_rng to i32), ptr @__kstrtab_crypto_unregister_rng, ptr @__kstrtabns_crypto_unregister_rng }, section "___ksymtab_gpl+crypto_unregister_rng", align 4
@__kstrtab_crypto_register_rngs = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_rngs = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_rngs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_rngs to i32), ptr @__kstrtab_crypto_register_rngs, ptr @__kstrtabns_crypto_register_rngs }, section "___ksymtab_gpl+crypto_register_rngs", align 4
@__kstrtab_crypto_unregister_rngs = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_rngs = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_rngs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_rngs to i32), ptr @__kstrtab_crypto_unregister_rngs, ptr @__kstrtabns_crypto_unregister_rngs }, section "___ksymtab_gpl+crypto_unregister_rngs", align 4
@__UNIQUE_ID_file263 = internal constant [20 x i8] c"rng.file=crypto/rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [16 x i8] c"rng.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [40 x i8] c"rng.description=Random Number Generator\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"type         : rng\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"seedsize     : %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rng\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__ksymtab_crypto_alloc_rng, ptr @__ksymtab_crypto_default_rng, ptr @__ksymtab_crypto_del_default_rng, ptr @__ksymtab_crypto_get_default_rng, ptr @__ksymtab_crypto_put_default_rng, ptr @__ksymtab_crypto_register_rng, ptr @__ksymtab_crypto_register_rngs, ptr @__ksymtab_crypto_rng_reset, ptr @__ksymtab_crypto_unregister_rng, ptr @__ksymtab_crypto_unregister_rngs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_rng_reset(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp ne i32 %2, 0
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @wait_for_random_bytes() #7
  tail call void @get_random_bytes(ptr noundef nonnull %8, i32 noundef %2) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10, %3
  %14 = phi ptr [ %1, %3 ], [ %8, %10 ]
  %15 = phi ptr [ null, %3 ], [ %8, %10 ]
  %16 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 -60
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %14, i32 noundef %2) #7
  br label %21

21:                                               ; preds = %13, %10
  %22 = phi ptr [ %8, %10 ], [ %15, %13 ]
  %23 = phi i32 [ %11, %10 ], [ %20, %13 ]
  tail call void @kfree_sensitive(ptr noundef %22) #7
  br label %24

24:                                               ; preds = %21, %7
  %25 = phi i32 [ %23, %21 ], [ -12, %7 ]
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_rng(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_rng_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #7
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_get_default_rng() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @crypto_default_rng_lock) #7
  %1 = load ptr, ptr @crypto_default_rng, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef nonnull @.str, ptr noundef nonnull @crypto_rng_type, i32 noundef 0, i32 noundef 0, i32 noundef -1) #7
  %5 = ptrtoint ptr %4 to i32
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %35, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -52
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %7
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @wait_for_random_bytes() #7
  tail call void @get_random_bytes(ptr noundef nonnull %14, i32 noundef %11) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 4
  br label %22

21:                                               ; preds = %16
  tail call void @kfree_sensitive(ptr noundef nonnull %14) #7
  br label %29

22:                                               ; preds = %19, %7
  %23 = phi ptr [ %9, %7 ], [ %20, %19 ]
  %24 = phi ptr [ null, %7 ], [ %14, %19 ]
  %25 = getelementptr i8, ptr %23, i32 -60
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %4, ptr noundef %24, i32 noundef %11) #7
  tail call void @kfree_sensitive(ptr noundef %24) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22, %21, %13
  %30 = phi i32 [ %27, %22 ], [ %17, %21 ], [ -12, %13 ]
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %4) #7
  br label %35

31:                                               ; preds = %22
  store ptr %4, ptr @crypto_default_rng, align 4
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i32, ptr @crypto_default_rng_refcnt, align 4
  %34 = add i32 %33, 1
  store i32 %34, ptr @crypto_default_rng_refcnt, align 4
  br label %35

35:                                               ; preds = %32, %29, %3
  %36 = phi i32 [ 0, %32 ], [ %5, %3 ], [ %30, %29 ]
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_default_rng_lock) #7
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_put_default_rng() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @crypto_default_rng_lock) #7
  %1 = load i32, ptr @crypto_default_rng_refcnt, align 4
  %2 = add i32 %1, -1
  store i32 %2, ptr @crypto_default_rng_refcnt, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_default_rng_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_del_default_rng() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @crypto_default_rng_lock) #7
  %1 = load i32, ptr @crypto_default_rng_refcnt, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @crypto_default_rng, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %4) #7
  store ptr null, ptr @crypto_default_rng, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ -16, %0 ], [ 0, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_default_rng_lock) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_rng(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 512
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 10
  store ptr @crypto_rng_type, ptr %7, align 8
  %8 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5, i32 2
  %9 = load i32, ptr %8, align 16
  %10 = and i32 %9, -16
  %11 = or i32 %10, 12
  store i32 %11, ptr %8, align 16
  %12 = tail call i32 @crypto_register_alg(ptr noundef %6) #7
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i32 [ %12, %5 ], [ -22, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_rng(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rng_alg, ptr %0, i32 0, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_rngs(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %21, %2
  %5 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %6 = getelementptr %struct.rng_alg, ptr %0, i32 %5, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 512
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = getelementptr %struct.rng_alg, ptr %0, i32 %5, i32 5
  %11 = getelementptr %struct.rng_alg, ptr %0, i32 %5, i32 5, i32 10
  store ptr @crypto_rng_type, ptr %11, align 8
  %12 = getelementptr %struct.rng_alg, ptr %0, i32 %5, i32 5, i32 2
  %13 = load i32, ptr %12, align 16
  %14 = and i32 %13, -16
  %15 = or i32 %14, 12
  store i32 %15, ptr %12, align 16
  %16 = tail call i32 @crypto_register_alg(ptr noundef %10) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %9, %4
  %19 = phi i32 [ %16, %9 ], [ -22, %4 ]
  %20 = icmp eq i32 %5, 0
  br i1 %20, label %29, label %24

21:                                               ; preds = %9
  %22 = add nuw nsw i32 %5, 1
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %29, label %4

24:                                               ; preds = %24, %18
  %25 = phi i32 [ %26, %24 ], [ %5, %18 ]
  %26 = add nsw i32 %25, -1
  %27 = getelementptr %struct.rng_alg, ptr %0, i32 %26, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %27) #7
  %28 = icmp sgt i32 %25, 1
  br i1 %28, label %24, label %29

29:                                               ; preds = %24, %21, %18, %2
  %30 = phi i32 [ %19, %18 ], [ 0, %2 ], [ %19, %24 ], [ 0, %21 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_rngs(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.rng_alg, ptr %0, i32 %6, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %7) #7
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @crypto_rng_init_tfm(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_rng_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1) #7
  %3 = getelementptr i8, ptr %1, i32 -52
  %4 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_rng_report(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.crypto_report_rng, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %3, i8 0, i64 68, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, i32 noundef 64) #7
  %5 = getelementptr i8, ptr %1, i32 -52
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.crypto_report_rng, ptr %3, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = call i32 @nla_put(ptr noundef %0, i32 noundef 7, i32 noundef 68, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %3) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind }

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
