; ModuleID = '/llk/IR/crypto/acompress.c_pt.bc'
source_filename = "../crypto/acompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_acomp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_acomp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_acomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_alloc_acomp_node:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_alloc_acomp_node\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_alloc_acomp_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acomp_request_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22acomp_request_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_acomp_request_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_acomp_request_free:\09\09\09\09\09"
module asm "\09.asciz \09\22acomp_request_free\22\09\09\09\09\09"
module asm "__kstrtabns_acomp_request_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_acomp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_acomp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_acomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_acomp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_acomp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_acomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_acomps:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_acomps\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_acomps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_acomps:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_acomps\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_acomps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.crypto_acomp = type { ptr, ptr, ptr, i32, [48 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.acomp_req = type { %struct.crypto_async_request, ptr, ptr, i32, i32, i32, [20 x i8], [0 x ptr] }
%struct.acomp_alg = type { ptr, ptr, ptr, ptr, ptr, i32, [40 x i8], %struct.crypto_alg }
%struct.crypto_report_acomp = type { [64 x i8] }

@crypto_acomp_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_acomp_extsize, ptr null, ptr @crypto_acomp_init_tfm, ptr @crypto_acomp_show, ptr @crypto_acomp_report, ptr null, i32 10, i32 -16, i32 14, i32 64 }, align 4
@__kstrtab_crypto_alloc_acomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_acomp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_acomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_acomp to i32), ptr @__kstrtab_crypto_alloc_acomp, ptr @__kstrtabns_crypto_alloc_acomp }, section "___ksymtab_gpl+crypto_alloc_acomp", align 4
@__kstrtab_crypto_alloc_acomp_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_alloc_acomp_node = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_alloc_acomp_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_alloc_acomp_node to i32), ptr @__kstrtab_crypto_alloc_acomp_node, ptr @__kstrtabns_crypto_alloc_acomp_node }, section "___ksymtab_gpl+crypto_alloc_acomp_node", align 4
@__kstrtab_acomp_request_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_acomp_request_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_acomp_request_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acomp_request_alloc to i32), ptr @__kstrtab_acomp_request_alloc, ptr @__kstrtabns_acomp_request_alloc }, section "___ksymtab_gpl+acomp_request_alloc", align 4
@__kstrtab_acomp_request_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_acomp_request_free = external dso_local constant [0 x i8], align 1
@__ksymtab_acomp_request_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @acomp_request_free to i32), ptr @__kstrtab_acomp_request_free, ptr @__kstrtabns_acomp_request_free }, section "___ksymtab_gpl+acomp_request_free", align 4
@__kstrtab_crypto_register_acomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_acomp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_acomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_acomp to i32), ptr @__kstrtab_crypto_register_acomp, ptr @__kstrtabns_crypto_register_acomp }, section "___ksymtab_gpl+crypto_register_acomp", align 4
@__kstrtab_crypto_unregister_acomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_acomp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_acomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_acomp to i32), ptr @__kstrtab_crypto_unregister_acomp, ptr @__kstrtabns_crypto_unregister_acomp }, section "___ksymtab_gpl+crypto_unregister_acomp", align 4
@__kstrtab_crypto_register_acomps = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_acomps = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_acomps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_acomps to i32), ptr @__kstrtab_crypto_register_acomps, ptr @__kstrtabns_crypto_register_acomps }, section "___ksymtab_gpl+crypto_register_acomps", align 4
@__kstrtab_crypto_unregister_acomps = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_acomps = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_acomps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_acomps to i32), ptr @__kstrtab_crypto_unregister_acomps, ptr @__kstrtabns_crypto_unregister_acomps }, section "___ksymtab_gpl+crypto_unregister_acomps", align 4
@__UNIQUE_ID_file263 = internal constant [46 x i8] c"crypto_acompress.file=crypto/crypto_acompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license264 = internal constant [29 x i8] c"crypto_acompress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [59 x i8] c"crypto_acompress.description=Asynchronous compression type\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [22 x i8] c"type         : acomp\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"acomp\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file263, ptr @__UNIQUE_ID_license264, ptr @__ksymtab_acomp_request_alloc, ptr @__ksymtab_acomp_request_free, ptr @__ksymtab_crypto_alloc_acomp, ptr @__ksymtab_crypto_alloc_acomp_node, ptr @__ksymtab_crypto_register_acomp, ptr @__ksymtab_crypto_register_acomps, ptr @__ksymtab_crypto_unregister_acomp, ptr @__ksymtab_crypto_unregister_acomps], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_acomp(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_acomp_type, i32 noundef %1, i32 noundef %2, i32 noundef -1) #5
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_alloc_acomp_node(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @crypto_alloc_tfm_node(ptr noundef %0, ptr noundef nonnull @crypto_acomp_type, i32 noundef %1, i32 noundef %2, i32 noundef %3) #5
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_tfm_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @acomp_request_alloc(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_acomp, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 64
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !8

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.crypto_acomp, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.crypto_async_request, ptr %5, i32 0, i32 3
  store ptr %8, ptr %9, align 16
  %10 = getelementptr inbounds %struct.crypto_acomp, ptr %0, i32 0, i32 5, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, @crypto_acomp_type
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call ptr @crypto_acomp_scomp_alloc_ctx(ptr noundef nonnull %5) #5
  br label %17

17:                                               ; preds = %15, %7, %1
  %18 = phi ptr [ %16, %15 ], [ %5, %7 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_acomp_scomp_alloc_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @acomp_request_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @crypto_acomp_type
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @crypto_acomp_scomp_free_ctx(ptr noundef %0) #5
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %3, i32 -56
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void %17(ptr noundef %19) #5
  store ptr null, ptr %18, align 4
  br label %20

20:                                               ; preds = %15, %10
  tail call void @kfree_sensitive(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_acomp_scomp_free_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_acomp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.acomp_alg, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.acomp_alg, ptr %0, i32 0, i32 7, i32 10
  store ptr @crypto_acomp_type, ptr %3, align 8
  %4 = getelementptr inbounds %struct.acomp_alg, ptr %0, i32 0, i32 7, i32 2
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, -16
  %7 = or i32 %6, 10
  store i32 %7, ptr %4, align 16
  %8 = tail call i32 @crypto_register_alg(ptr noundef %2) #5
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_acomp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.acomp_alg, ptr %0, i32 0, i32 7
  tail call void @crypto_unregister_alg(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_acomps(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %16, %2
  %5 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %6 = getelementptr %struct.acomp_alg, ptr %0, i32 %5, i32 7
  %7 = getelementptr %struct.acomp_alg, ptr %0, i32 %5, i32 7, i32 10
  store ptr @crypto_acomp_type, ptr %7, align 8
  %8 = getelementptr %struct.acomp_alg, ptr %0, i32 %5, i32 7, i32 2
  %9 = load i32, ptr %8, align 16
  %10 = and i32 %9, -16
  %11 = or i32 %10, 10
  store i32 %11, ptr %8, align 16
  %12 = tail call i32 @crypto_register_alg(ptr noundef %6) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %24, label %19

16:                                               ; preds = %4
  %17 = add nuw nsw i32 %5, 1
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %24, label %4

19:                                               ; preds = %19, %14
  %20 = phi i32 [ %21, %19 ], [ %5, %14 ]
  %21 = add nsw i32 %20, -1
  %22 = getelementptr %struct.acomp_alg, ptr %0, i32 %21, i32 7
  tail call void @crypto_unregister_alg(ptr noundef %22) #5
  %23 = icmp sgt i32 %20, 1
  br i1 %23, label %19, label %24

24:                                               ; preds = %19, %16, %14, %2
  %25 = phi i32 [ %12, %14 ], [ 0, %2 ], [ %12, %19 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_acomps(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.acomp_alg, ptr %0, i32 %6, i32 7
  tail call void @crypto_unregister_alg(ptr noundef %7) #5
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_acomp_extsize(ptr noundef %0) #0 {
  %2 = tail call i32 @crypto_alg_extsize(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.crypto_alg, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @crypto_acomp_type
  %6 = add i32 %2, 4
  %7 = select i1 %5, i32 %2, i32 %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_acomp_init_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.crypto_alg, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, @crypto_acomp_type
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @crypto_init_scomp_ops_async(ptr noundef %0) #5
  br label %33

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %4, i32 -64
  %12 = load ptr, ptr %11, align 64
  store ptr %12, ptr %2, align 64
  %13 = getelementptr i8, ptr %4, i32 -60
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %0, i32 -60
  store ptr %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %4, i32 -56
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %0, i32 -56
  store ptr %17, ptr %18, align 8
  %19 = getelementptr i8, ptr %4, i32 -44
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 -52
  store i32 %20, ptr %21, align 4
  %22 = getelementptr i8, ptr %4, i32 -48
  %23 = load ptr, ptr %22, align 16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %10
  %26 = getelementptr i8, ptr %0, i32 8
  store ptr @crypto_acomp_exit_tfm, ptr %26, align 8
  br label %27

27:                                               ; preds = %25, %10
  %28 = getelementptr i8, ptr %4, i32 -52
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 %29(ptr noundef %2) #5
  br label %33

33:                                               ; preds = %31, %27, %8
  %34 = phi i32 [ %9, %8 ], [ %32, %31 ], [ 0, %27 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_acomp_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_acomp_report(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.crypto_report_acomp, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 64) #5
  %5 = call i32 @nla_put(ptr noundef %0, i32 noundef 11, i32 noundef 64, ptr noundef nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_init_scomp_ops_async(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_acomp_exit_tfm(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -64
  %3 = getelementptr i8, ptr %0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -48
  %6 = load ptr, ptr %5, align 16
  tail call void %6(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
