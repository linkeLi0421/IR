; ModuleID = '/llk/IR/crypto/scompress.c_pt.bc'
source_filename = "../crypto/scompress.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_scomp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_scomp\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_scomp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_register_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_register_scomps\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_register_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_unregister_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_unregister_scomps\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_unregister_scomps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.scomp_scratch = type { %struct.spinlock, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [48 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.acomp_req = type { %struct.crypto_async_request, ptr, ptr, i32, i32, i32, [20 x i8], [0 x ptr] }
%struct.scomp_alg = type { ptr, ptr, ptr, ptr, [48 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.88, ptr, ptr, ptr, ptr, [48 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.88 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%struct.crypto_report_comp = type { [64 x i8] }

@crypto_scomp_type = internal constant %struct.crypto_type { ptr null, ptr @crypto_alg_extsize, ptr null, ptr @crypto_scomp_init_tfm, ptr @crypto_scomp_show, ptr @crypto_scomp_report, ptr null, i32 11, i32 -16, i32 15, i32 0 }, align 4
@__kstrtab_crypto_register_scomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_scomp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_scomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_scomp to i32), ptr @__kstrtab_crypto_register_scomp, ptr @__kstrtabns_crypto_register_scomp }, section "___ksymtab_gpl+crypto_register_scomp", align 4
@__kstrtab_crypto_unregister_scomp = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_scomp = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_scomp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_scomp to i32), ptr @__kstrtab_crypto_unregister_scomp, ptr @__kstrtabns_crypto_unregister_scomp }, section "___ksymtab_gpl+crypto_unregister_scomp", align 4
@__kstrtab_crypto_register_scomps = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_register_scomps = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_register_scomps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_register_scomps to i32), ptr @__kstrtab_crypto_register_scomps, ptr @__kstrtabns_crypto_register_scomps }, section "___ksymtab_gpl+crypto_register_scomps", align 4
@__kstrtab_crypto_unregister_scomps = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_unregister_scomps = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_unregister_scomps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_unregister_scomps to i32), ptr @__kstrtab_crypto_unregister_scomps, ptr @__kstrtabns_crypto_unregister_scomps }, section "___ksymtab_gpl+crypto_unregister_scomps", align 4
@__UNIQUE_ID_file264 = internal constant [46 x i8] c"crypto_acompress.file=crypto/crypto_acompress\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [29 x i8] c"crypto_acompress.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [58 x i8] c"crypto_acompress.description=Synchronous compression type\00", section ".modinfo", align 1
@scomp_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scomp_lock, i64 12), ptr getelementptr (i8, ptr @scomp_lock, i64 12) } }, align 4
@scomp_scratch_users = internal unnamed_addr global i32 0, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@scomp_scratch = internal global %struct.scomp_scratch zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str = private unnamed_addr constant [22 x i8] c"type         : scomp\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"scomp\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__ksymtab_crypto_register_scomp, ptr @__ksymtab_crypto_register_scomps, ptr @__ksymtab_crypto_unregister_scomp, ptr @__ksymtab_crypto_unregister_scomps], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_init_scomp_ops_async(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %6 = tail call ptr @crypto_mod_get(ptr noundef %3) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @crypto_create_tfm_node(ptr noundef %3, ptr noundef nonnull @crypto_scomp_type, i32 noundef -1) #7
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @crypto_mod_put(ptr noundef %3) #7
  %12 = ptrtoint ptr %9 to i32
  br label %18

13:                                               ; preds = %8
  store ptr %9, ptr %5, align 4
  %14 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 2
  store ptr @crypto_exit_scomp_ops_async, ptr %14, align 8
  store ptr @scomp_acomp_compress, ptr %4, align 64
  %15 = getelementptr i8, ptr %0, i32 -60
  store ptr @scomp_acomp_decompress, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 -56
  store ptr @sgl_free, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 -52
  store i32 4, ptr %17, align 4
  br label %18

18:                                               ; preds = %13, %11, %1
  %19 = phi i32 [ %12, %11 ], [ 0, %13 ], [ -11, %1 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_mod_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_exit_scomp_ops_async(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.crypto_tfm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %3) #7
  tail call void @mutex_lock(ptr noundef nonnull @scomp_lock) #7
  %4 = load i32, ptr @scomp_scratch_users, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr @scomp_scratch_users, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %11, %7
  %12 = phi i32 [ %21, %11 ], [ %8, %7 ]
  %13 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, ptrtoint (ptr @scomp_scratch to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.scomp_scratch, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @vfree(ptr noundef %18) #7
  %19 = getelementptr inbounds %struct.scomp_scratch, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void @vfree(ptr noundef %20) #7
  store ptr null, ptr %17, align 4
  store ptr null, ptr %19, align 4
  %21 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #8
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %11, label %24

24:                                               ; preds = %11, %7, %1
  tail call void @mutex_unlock(ptr noundef nonnull @scomp_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scomp_acomp_compress(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @scomp_acomp_comp_decomp(ptr noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scomp_acomp_decompress(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @scomp_acomp_comp_decomp(ptr noundef %0, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sgl_free(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @crypto_acomp_scomp_alloc_ctx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 16
  %4 = getelementptr inbounds %struct.crypto_tfm, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -64
  %9 = load ptr, ptr %8, align 64
  %10 = tail call ptr %9(ptr noundef %5) #7
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void @kfree(ptr noundef %0) #7
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 7
  store ptr %10, ptr %14, align 64
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi ptr [ null, %12 ], [ %0, %13 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_acomp_scomp_free_ctx(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = getelementptr inbounds %struct.crypto_tfm, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -60
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %9, ptr noundef nonnull %3) #7
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_scomp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scomp_alg, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.scomp_alg, ptr %0, i32 0, i32 5, i32 10
  store ptr @crypto_scomp_type, ptr %3, align 8
  %4 = getelementptr inbounds %struct.scomp_alg, ptr %0, i32 0, i32 5, i32 2
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, -16
  %7 = or i32 %6, 11
  store i32 %7, ptr %4, align 16
  %8 = tail call i32 @crypto_register_alg(ptr noundef %2) #7
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_scomp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scomp_alg, ptr %0, i32 0, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_alg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crypto_register_scomps(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %24

4:                                                ; preds = %16, %2
  %5 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %6 = getelementptr %struct.scomp_alg, ptr %0, i32 %5, i32 5
  %7 = getelementptr %struct.scomp_alg, ptr %0, i32 %5, i32 5, i32 10
  store ptr @crypto_scomp_type, ptr %7, align 8
  %8 = getelementptr %struct.scomp_alg, ptr %0, i32 %5, i32 5, i32 2
  %9 = load i32, ptr %8, align 16
  %10 = and i32 %9, -16
  %11 = or i32 %10, 11
  store i32 %11, ptr %8, align 16
  %12 = tail call i32 @crypto_register_alg(ptr noundef %6) #7
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
  %22 = getelementptr %struct.scomp_alg, ptr %0, i32 %21, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %22) #7
  %23 = icmp sgt i32 %20, 1
  br i1 %23, label %19, label %24

24:                                               ; preds = %19, %16, %14, %2
  %25 = phi i32 [ %12, %14 ], [ 0, %2 ], [ %12, %19 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @crypto_unregister_scomps(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.scomp_alg, ptr %0, i32 %6, i32 5
  tail call void @crypto_unregister_alg(ptr noundef %7) #7
  %8 = add nsw i32 %6, -1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %5, label %10

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_create_tfm_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scomp_acomp_comp_decomp(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.crypto_async_request, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr i8, ptr %4, i32 64
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 32
  %14 = add i32 %13, -131073
  %15 = icmp ult i32 %14, -131072
  br i1 %15, label %69, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp ne ptr %18, null
  %20 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %69, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.acomp_req, ptr %0, i32 0, i32 4
  %26 = add i32 %21, -131073
  %27 = icmp ult i32 %26, -131072
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 131072, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %24
  %30 = tail call i32 @llvm.read_register.i32(metadata !0) #7
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %31) #4, !srcloc !9
  %33 = add i32 %32, ptrtoint (ptr @scomp_scratch to i32)
  %34 = inttoptr i32 %33 to ptr
  tail call void @_raw_spin_lock(ptr noundef %34) #7
  %35 = getelementptr inbounds %struct.scomp_scratch, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %8, align 8
  %38 = load i32, ptr %12, align 32
  tail call void @scatterwalk_map_and_copy(ptr noundef %36, ptr noundef %37, i32 noundef 0, i32 noundef %38, i32 noundef 0) #7
  %39 = icmp eq i32 %1, 0
  %40 = load ptr, ptr %35, align 4
  %41 = load i32, ptr %12, align 32
  %42 = getelementptr inbounds %struct.scomp_scratch, ptr %34, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = select i1 %39, i32 -52, i32 -56
  %48 = getelementptr i8, ptr %46, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %6, ptr noundef %40, i32 noundef %41, ptr noundef %43, ptr noundef %25, ptr noundef %44) #7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %29
  %53 = load ptr, ptr %17, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, ptr %25, align 4
  %57 = zext i32 %56 to i64
  %58 = tail call ptr @sgl_alloc(i64 noundef %57, i32 noundef 2592, ptr noundef null) #7
  store ptr %58, ptr %17, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %55, %52
  %61 = phi ptr [ %58, %55 ], [ %53, %52 ]
  %62 = getelementptr inbounds %struct.scomp_scratch, ptr %34, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = load i32, ptr %25, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %63, ptr noundef nonnull %61, i32 noundef 0, i32 noundef %64, i32 noundef 1) #7
  br label %65

65:                                               ; preds = %60, %55, %29
  %66 = phi i32 [ %50, %29 ], [ 0, %60 ], [ -12, %55 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %67 = load i16, ptr %34, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %69

69:                                               ; preds = %65, %16, %11, %2
  %70 = phi i32 [ %66, %65 ], [ -22, %11 ], [ -22, %2 ], [ -22, %16 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sgl_alloc(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_alg_extsize(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_scomp_init_tfm(ptr nocapture noundef readnone %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @scomp_lock) #7
  %2 = load i32, ptr @scomp_scratch_users, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @scomp_scratch_users, align 4
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %21, %5
  %10 = phi i32 [ %23, %21 ], [ %6, %5 ]
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, ptrtoint (ptr @scomp_scratch to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call noalias ptr @vmalloc_node(i32 noundef 131072, i32 noundef 0) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.scomp_scratch, ptr %14, i32 0, i32 1
  store ptr %15, ptr %18, align 4
  %19 = tail call noalias ptr @vmalloc_node(i32 noundef 131072, i32 noundef 0) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.scomp_scratch, ptr %14, i32 0, i32 2
  store ptr %19, ptr %22, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #8
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %9, label %43

26:                                               ; preds = %17, %9
  %27 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %30, %26
  %31 = phi i32 [ %40, %30 ], [ %27, %26 ]
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, ptrtoint (ptr @scomp_scratch to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.scomp_scratch, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @vfree(ptr noundef %37) #7
  %38 = getelementptr inbounds %struct.scomp_scratch, ptr %35, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void @vfree(ptr noundef %39) #7
  store ptr null, ptr %36, align 4
  store ptr null, ptr %38, align 4
  %40 = tail call i32 @cpumask_next(i32 noundef %31, ptr noundef nonnull @__cpu_possible_mask) #8
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %30, label %43

43:                                               ; preds = %30, %26, %21, %5, %1
  %44 = phi i32 [ 0, %1 ], [ -12, %26 ], [ 0, %5 ], [ -12, %30 ], [ 0, %21 ]
  tail call void @mutex_unlock(ptr noundef nonnull @scomp_lock) #7
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @crypto_scomp_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crypto_scomp_report(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.crypto_report_comp, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %4 = call i32 @strscpy(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 64) #7
  %5 = call i32 @nla_put(ptr noundef %0, i32 noundef 6, i32 noundef 64, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 330844}
!10 = !{i64 2148931285}
!11 = !{i64 2148927109}
!12 = !{i64 2148927184, i64 2148927211, i64 2148927258, i64 2148927280, i64 2148927308, i64 2148927328}
!13 = !{i64 2148954288}
