; ModuleID = '/llk/IR/lib/mpi/ec.c_pt.bc'
source_filename = "../lib/mpi/ec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_point_new:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_point_new\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_point_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_point_release:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_point_release\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_point_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_point_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_point_init\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_point_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_point_free_parts:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_point_free_parts\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_point_free_parts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_ec_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_ec_init\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_ec_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_ec_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_ec_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_ec_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_ec_get_affine:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_ec_get_affine\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_ec_get_affine:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_ec_add_points:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_ec_add_points\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_ec_add_points:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_ec_mul_point:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_ec_mul_point\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_ec_mul_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_ec_curve_point:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_ec_curve_point\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_ec_curve_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.field_table = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gcry_mpi_point = type { ptr, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }
%struct.mpi_ec_ctx = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.anon, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { %struct.anon.0, i32, ptr, ptr, [11 x ptr] }
%struct.anon.0 = type { i8, [3 x i8] }

@__kstrtab_mpi_point_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_point_new = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_point_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_point_new to i32), ptr @__kstrtab_mpi_point_new, ptr @__kstrtabns_mpi_point_new }, section "___ksymtab_gpl+mpi_point_new", align 4
@__kstrtab_mpi_point_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_point_release = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_point_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_point_release to i32), ptr @__kstrtab_mpi_point_release, ptr @__kstrtabns_mpi_point_release }, section "___ksymtab_gpl+mpi_point_release", align 4
@__kstrtab_mpi_point_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_point_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_point_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_point_init to i32), ptr @__kstrtab_mpi_point_init, ptr @__kstrtabns_mpi_point_init }, section "___ksymtab_gpl+mpi_point_init", align 4
@__kstrtab_mpi_point_free_parts = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_point_free_parts = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_point_free_parts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_point_free_parts to i32), ptr @__kstrtab_mpi_point_free_parts, ptr @__kstrtabns_mpi_point_free_parts }, section "___ksymtab_gpl+mpi_point_free_parts", align 4
@field_table = internal unnamed_addr constant [3 x %struct.field_table] [%struct.field_table { ptr @.str.15, ptr @ec_addm_25519, ptr @ec_subm_25519, ptr @ec_mulm_25519, ptr @ec_mul2_25519, ptr @ec_pow2_25519 }, %struct.field_table { ptr @.str.16, ptr @ec_addm_448, ptr @ec_subm_448, ptr @ec_mulm_448, ptr @ec_mul2_448, ptr @ec_pow2_448 }, %struct.field_table zeroinitializer], align 4
@__kstrtab_mpi_ec_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_ec_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_ec_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_ec_init to i32), ptr @__kstrtab_mpi_ec_init, ptr @__kstrtabns_mpi_ec_init }, section "___ksymtab_gpl+mpi_ec_init", align 4
@__kstrtab_mpi_ec_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_ec_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_ec_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_ec_deinit to i32), ptr @__kstrtab_mpi_ec_deinit, ptr @__kstrtabns_mpi_ec_deinit }, section "___ksymtab_gpl+mpi_ec_deinit", align 4
@.str = private unnamed_addr constant [51 x i8] c"\013%s: Getting Y-coordinate on %s is not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mpi_ec_get_affine\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Montgomery\00", align 1
@__kstrtab_mpi_ec_get_affine = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_ec_get_affine = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_ec_get_affine = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_ec_get_affine to i32), ptr @__kstrtab_mpi_ec_get_affine, ptr @__kstrtabns_mpi_ec_get_affine }, section "___ksymtab_gpl+mpi_ec_get_affine", align 4
@__kstrtab_mpi_ec_add_points = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_ec_add_points = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_ec_add_points = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_ec_add_points to i32), ptr @__kstrtab_mpi_ec_add_points, ptr @__kstrtabns_mpi_ec_add_points }, section "___ksymtab_gpl+mpi_ec_add_points", align 4
@__kstrtab_mpi_ec_mul_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_ec_mul_point = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_ec_mul_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_ec_mul_point to i32), ptr @__kstrtab_mpi_ec_mul_point, ptr @__kstrtabns_mpi_ec_mul_point }, section "___ksymtab_gpl+mpi_ec_mul_point", align 4
@__kstrtab_mpi_ec_curve_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_ec_curve_point = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_ec_curve_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_ec_curve_point to i32), ptr @__kstrtab_mpi_ec_curve_point, ptr @__kstrtabns_mpi_ec_curve_point }, section "___ksymtab_gpl+mpi_ec_curve_point", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [67 x i8] c"0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffed\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"0x00b8495f16056286fdb1329ceb8d09da6ac49ff1fae35616aeb8413b7c7aebe0\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"0x57119fd0dd4e22d8868e1c58c45c44045bef839c55b1d0b1248c50a3bc959c5f\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffee\00", align 1
@.str.10 = private unnamed_addr constant [115 x i8] c"0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffff\00", align 1
@.str.11 = private unnamed_addr constant [115 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.12 = private unnamed_addr constant [115 x i8] c"0x0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.13 = private unnamed_addr constant [115 x i8] c"0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffefffffffffffffffffffffffffffffffffffffffffffffffffffffffe\00", align 1
@.str.14 = private unnamed_addr constant [115 x i8] c"0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED\00", align 1
@.str.16 = private unnamed_addr constant [115 x i8] c"0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"addm_25519: different sizes\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"subm_25519: different sizes\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"mulm_25519: different sizes\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"addm_448: different sizes\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"subm_448: different sizes\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"mulm_448: different sizes\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\013ec_invm: inverse does not exist:\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"\013%s: %s not yet supported\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"mpi_ec_add_points\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"mpi_ec_dup_point\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_mpi_ec_add_points, ptr @__ksymtab_mpi_ec_curve_point, ptr @__ksymtab_mpi_ec_deinit, ptr @__ksymtab_mpi_ec_get_affine, ptr @__ksymtab_mpi_ec_init, ptr @__ksymtab_mpi_ec_mul_point, ptr @__ksymtab_mpi_point_free_parts, ptr @__ksymtab_mpi_point_init, ptr @__ksymtab_mpi_point_new, ptr @__ksymtab_mpi_point_release], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @mpi_point_new(i32 %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 12) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %6, ptr %3, align 8
  %7 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %8 = getelementptr inbounds %struct.gcry_mpi_point, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %10 = getelementptr inbounds %struct.gcry_mpi_point, ptr %3, i32 0, i32 2
  store ptr %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_point_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %2, ptr %0, align 4
  %3 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %4 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  store ptr %5, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_point_release(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  tail call void @mpi_free(ptr noundef %4) #9
  store ptr null, ptr %0, align 4
  %5 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @mpi_free(ptr noundef %6) #9
  store ptr null, ptr %5, align 4
  %7 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void @mpi_free(ptr noundef %8) #9
  store ptr null, ptr %7, align 4
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_point_free_parts(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @mpi_free(ptr noundef %2) #9
  store ptr null, ptr %0, align 4
  %3 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @mpi_free(ptr noundef %4) #9
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @mpi_free(ptr noundef %6) #9
  store ptr null, ptr %5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_ec_init(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @mpi_resize(ptr noundef %5, i32 noundef %13) #9
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %12, align 4
  %20 = tail call i32 @mpihelp_sub_n(ptr noundef %16, ptr noundef %18, ptr noundef %16, i32 noundef %19) #9
  %21 = load i32, ptr %12, align 4
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  store i32 0, ptr %8, align 4
  br label %23

23:                                               ; preds = %11, %7
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @mpi_resize(ptr noundef %6, i32 noundef %29) #9
  %31 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %28, align 4
  %36 = tail call i32 @mpihelp_sub_n(ptr noundef %32, ptr noundef %34, ptr noundef %32, i32 noundef %35) #9
  %37 = load i32, ptr %28, align 4
  %38 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  store i32 0, ptr %24, align 4
  br label %39

39:                                               ; preds = %27, %23
  store i32 %1, ptr %0, align 4
  %40 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 1
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 2
  store i32 %3, ptr %41, align 4
  %42 = icmp eq i32 %2, 1
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @mpi_get_nbits(ptr noundef %4) #9
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ 256, %39 ]
  %47 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = tail call ptr @mpi_copy(ptr noundef %4) #9
  %49 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 4
  store ptr %48, ptr %49, align 4
  %50 = tail call ptr @mpi_copy(ptr noundef %5) #9
  %51 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 5
  store ptr %50, ptr %51, align 4
  %52 = tail call ptr @mpi_copy(ptr noundef %6) #9
  %53 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 6
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 3
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, -4
  store i8 %57, ptr %55, align 4
  %58 = icmp eq i32 %1, 1
  br i1 %58, label %93, label %59

59:                                               ; preds = %45
  %60 = load ptr, ptr %49, align 4
  %61 = tail call ptr @mpi_alloc_like(ptr noundef %60) #9
  %62 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 0
  store ptr %61, ptr %62, align 4
  %63 = load ptr, ptr %49, align 4
  %64 = tail call ptr @mpi_alloc_like(ptr noundef %63) #9
  %65 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 1
  store ptr %64, ptr %65, align 4
  %66 = load ptr, ptr %49, align 4
  %67 = tail call ptr @mpi_alloc_like(ptr noundef %66) #9
  %68 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 2
  store ptr %67, ptr %68, align 4
  %69 = load ptr, ptr %49, align 4
  %70 = tail call ptr @mpi_alloc_like(ptr noundef %69) #9
  %71 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 3
  store ptr %70, ptr %71, align 4
  %72 = load ptr, ptr %49, align 4
  %73 = tail call ptr @mpi_alloc_like(ptr noundef %72) #9
  %74 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 4
  store ptr %73, ptr %74, align 4
  %75 = load ptr, ptr %49, align 4
  %76 = tail call ptr @mpi_alloc_like(ptr noundef %75) #9
  %77 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 5
  store ptr %76, ptr %77, align 4
  %78 = load ptr, ptr %49, align 4
  %79 = tail call ptr @mpi_alloc_like(ptr noundef %78) #9
  %80 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 6
  store ptr %79, ptr %80, align 4
  %81 = load ptr, ptr %49, align 4
  %82 = tail call ptr @mpi_alloc_like(ptr noundef %81) #9
  %83 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 7
  store ptr %82, ptr %83, align 4
  %84 = load ptr, ptr %49, align 4
  %85 = tail call ptr @mpi_alloc_like(ptr noundef %84) #9
  %86 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 8
  store ptr %85, ptr %86, align 4
  %87 = load ptr, ptr %49, align 4
  %88 = tail call ptr @mpi_alloc_like(ptr noundef %87) #9
  %89 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 9
  store ptr %88, ptr %89, align 4
  %90 = load ptr, ptr %49, align 4
  %91 = tail call ptr @mpi_alloc_like(ptr noundef %90) #9
  %92 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 10
  store ptr %91, ptr %92, align 4
  br label %129

93:                                               ; preds = %45
  %94 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.3) #9
  %95 = load ptr, ptr %49, align 4
  %96 = tail call i32 @mpi_cmp(ptr noundef %95, ptr noundef %94) #9
  %97 = icmp eq i32 %96, 0
  tail call void @mpi_free(ptr noundef %94) #9
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.3) #9
  %100 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 0
  store ptr %99, ptr %100, align 4
  %101 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.4) #9
  %102 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 1
  store ptr %101, ptr %102, align 4
  %103 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.5) #9
  %104 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 2
  store ptr %103, ptr %104, align 4
  %105 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.6) #9
  %106 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 3
  store ptr %105, ptr %106, align 4
  %107 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.7) #9
  %108 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 4
  store ptr %107, ptr %108, align 4
  %109 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.8) #9
  %110 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 5
  store ptr %109, ptr %110, align 4
  %111 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.9) #9
  %112 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 6
  store ptr %111, ptr %112, align 4
  br label %113

113:                                              ; preds = %98, %93
  %114 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.10) #9
  %115 = load ptr, ptr %49, align 4
  %116 = tail call i32 @mpi_cmp(ptr noundef %115, ptr noundef %114) #9
  %117 = icmp eq i32 %116, 0
  tail call void @mpi_free(ptr noundef %114) #9
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.10) #9
  %120 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 0
  store ptr %119, ptr %120, align 4
  %121 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.11) #9
  %122 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 1
  store ptr %121, ptr %122, align 4
  %123 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.12) #9
  %124 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 2
  store ptr %123, ptr %124, align 4
  %125 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.13) #9
  %126 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 3
  store ptr %125, ptr %126, align 4
  %127 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.14) #9
  %128 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 4
  store ptr %127, ptr %128, align 4
  br label %129

129:                                              ; preds = %118, %113, %59
  %130 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 14
  store ptr @ec_addm, ptr %130, align 4
  %131 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 15
  store ptr @ec_subm, ptr %131, align 4
  %132 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 16
  store ptr @ec_mulm, ptr %132, align 4
  %133 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 18
  store ptr @ec_mul2, ptr %133, align 4
  %134 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 17
  store ptr @ec_pow2, ptr %134, align 4
  %135 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.15) #9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %268, label %137

137:                                              ; preds = %129
  %138 = tail call i32 @mpi_cmp(ptr noundef %4, ptr noundef nonnull %135) #9
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %261

140:                                              ; preds = %264, %137
  %141 = phi i32 [ 0, %137 ], [ 1, %264 ]
  %142 = phi ptr [ %135, %137 ], [ %262, %264 ]
  %143 = getelementptr [3 x %struct.field_table], ptr @field_table, i32 0, i32 %141, i32 1
  %144 = load ptr, ptr %143, align 4
  store ptr %144, ptr %130, align 4
  %145 = getelementptr [3 x %struct.field_table], ptr @field_table, i32 0, i32 %141, i32 2
  %146 = load ptr, ptr %145, align 4
  store ptr %146, ptr %131, align 4
  %147 = getelementptr [3 x %struct.field_table], ptr @field_table, i32 0, i32 %141, i32 3
  %148 = load ptr, ptr %147, align 4
  store ptr %148, ptr %132, align 4
  %149 = getelementptr [3 x %struct.field_table], ptr @field_table, i32 0, i32 %141, i32 4
  %150 = load ptr, ptr %149, align 4
  store ptr %150, ptr %133, align 4
  %151 = getelementptr [3 x %struct.field_table], ptr @field_table, i32 0, i32 %141, i32 5
  %152 = load ptr, ptr %151, align 4
  store ptr %152, ptr %134, align 4
  tail call void @mpi_free(ptr noundef nonnull %142) #9
  %153 = load ptr, ptr %51, align 4
  %154 = load ptr, ptr %49, align 4
  %155 = getelementptr inbounds %struct.gcry_mpi, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = tail call i32 @mpi_resize(ptr noundef %153, i32 noundef %156) #9
  %158 = load ptr, ptr %49, align 4
  %159 = getelementptr inbounds %struct.gcry_mpi, ptr %158, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = load ptr, ptr %51, align 4
  %162 = getelementptr inbounds %struct.gcry_mpi, ptr %161, i32 0, i32 1
  store i32 %160, ptr %162, align 4
  %163 = load ptr, ptr %53, align 4
  %164 = load ptr, ptr %49, align 4
  %165 = getelementptr inbounds %struct.gcry_mpi, ptr %164, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = tail call i32 @mpi_resize(ptr noundef %163, i32 noundef %166) #9
  %168 = load ptr, ptr %49, align 4
  %169 = getelementptr inbounds %struct.gcry_mpi, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 4
  %171 = load ptr, ptr %53, align 4
  %172 = getelementptr inbounds %struct.gcry_mpi, ptr %171, i32 0, i32 1
  store i32 %170, ptr %172, align 4
  %173 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 0
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %268, label %176

176:                                              ; preds = %140
  %177 = load ptr, ptr %49, align 4
  %178 = getelementptr inbounds %struct.gcry_mpi, ptr %177, i32 0, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = getelementptr inbounds %struct.gcry_mpi, ptr %174, i32 0, i32 1
  store i32 %179, ptr %180, align 4
  %181 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %268, label %184

184:                                              ; preds = %176
  %185 = load ptr, ptr %49, align 4
  %186 = getelementptr inbounds %struct.gcry_mpi, ptr %185, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = getelementptr inbounds %struct.gcry_mpi, ptr %182, i32 0, i32 1
  store i32 %187, ptr %188, align 4
  %189 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %268, label %192

192:                                              ; preds = %184
  %193 = load ptr, ptr %49, align 4
  %194 = getelementptr inbounds %struct.gcry_mpi, ptr %193, i32 0, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds %struct.gcry_mpi, ptr %190, i32 0, i32 1
  store i32 %195, ptr %196, align 4
  %197 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %268, label %200

200:                                              ; preds = %192
  %201 = load ptr, ptr %49, align 4
  %202 = getelementptr inbounds %struct.gcry_mpi, ptr %201, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds %struct.gcry_mpi, ptr %198, i32 0, i32 1
  store i32 %203, ptr %204, align 4
  %205 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 4
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %268, label %208

208:                                              ; preds = %200
  %209 = load ptr, ptr %49, align 4
  %210 = getelementptr inbounds %struct.gcry_mpi, ptr %209, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds %struct.gcry_mpi, ptr %206, i32 0, i32 1
  store i32 %211, ptr %212, align 4
  %213 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 5
  %214 = load ptr, ptr %213, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %268, label %216

216:                                              ; preds = %208
  %217 = load ptr, ptr %49, align 4
  %218 = getelementptr inbounds %struct.gcry_mpi, ptr %217, i32 0, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds %struct.gcry_mpi, ptr %214, i32 0, i32 1
  store i32 %219, ptr %220, align 4
  %221 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 6
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %268, label %224

224:                                              ; preds = %216
  %225 = load ptr, ptr %49, align 4
  %226 = getelementptr inbounds %struct.gcry_mpi, ptr %225, i32 0, i32 1
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr inbounds %struct.gcry_mpi, ptr %222, i32 0, i32 1
  store i32 %227, ptr %228, align 4
  %229 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 7
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %268, label %232

232:                                              ; preds = %224
  %233 = load ptr, ptr %49, align 4
  %234 = getelementptr inbounds %struct.gcry_mpi, ptr %233, i32 0, i32 1
  %235 = load i32, ptr %234, align 4
  %236 = getelementptr inbounds %struct.gcry_mpi, ptr %230, i32 0, i32 1
  store i32 %235, ptr %236, align 4
  %237 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 8
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %268, label %240

240:                                              ; preds = %232
  %241 = load ptr, ptr %49, align 4
  %242 = getelementptr inbounds %struct.gcry_mpi, ptr %241, i32 0, i32 1
  %243 = load i32, ptr %242, align 4
  %244 = getelementptr inbounds %struct.gcry_mpi, ptr %238, i32 0, i32 1
  store i32 %243, ptr %244, align 4
  %245 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 9
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %268, label %248

248:                                              ; preds = %240
  %249 = load ptr, ptr %49, align 4
  %250 = getelementptr inbounds %struct.gcry_mpi, ptr %249, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = getelementptr inbounds %struct.gcry_mpi, ptr %246, i32 0, i32 1
  store i32 %251, ptr %252, align 4
  %253 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 10
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %268, label %256

256:                                              ; preds = %248
  %257 = load ptr, ptr %49, align 4
  %258 = getelementptr inbounds %struct.gcry_mpi, ptr %257, i32 0, i32 1
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr inbounds %struct.gcry_mpi, ptr %254, i32 0, i32 1
  store i32 %259, ptr %260, align 4
  br label %268

261:                                              ; preds = %137
  tail call void @mpi_free(ptr noundef nonnull %135) #9
  %262 = tail call ptr @mpi_scanval(ptr noundef nonnull @.str.16) #9
  %263 = icmp eq ptr %262, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %261
  %265 = tail call i32 @mpi_cmp(ptr noundef %4, ptr noundef nonnull %262) #9
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %140, label %267

267:                                              ; preds = %264
  tail call void @mpi_free(ptr noundef nonnull %262) #9
  br label %268

268:                                              ; preds = %267, %261, %256, %248, %240, %232, %224, %216, %208, %200, %192, %184, %176, %140, %129
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_get_nbits(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_scanval(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_like(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_addm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  tail call void @mpi_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %5 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @mpi_mod_barrett(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6) #9
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @mpi_mod(ptr noundef %0, ptr noundef %0, ptr noundef %11) #9
  br label %12

12:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_subm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  tail call void @mpi_sub(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  br label %10

10:                                               ; preds = %10, %8
  %11 = load ptr, ptr %9, align 4
  tail call void @mpi_add(ptr noundef %0, ptr noundef %0, ptr noundef %11) #9
  %12 = load i32, ptr %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_mulm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  tail call void @mpi_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  %5 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @mpi_mod_barrett(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %6) #9
  br label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @mpi_mod(ptr noundef %0, ptr noundef %0, ptr noundef %11) #9
  br label %12

12:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_mul2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @mpi_lshift(ptr noundef %0, ptr noundef %1, i32 noundef 1) #9
  %4 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @mpi_mod_barrett(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %5) #9
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @mpi_mod(ptr noundef %0, ptr noundef %0, ptr noundef %10) #9
  br label %11

11:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_pow2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @mpi_mul(ptr noundef %0, ptr noundef %1, ptr noundef %1) #9
  %4 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @mpi_mod_barrett(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %5) #9
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  tail call void @mpi_mod(ptr noundef %0, ptr noundef %0, ptr noundef %10) #9
  br label %11

11:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_ec_deinit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @mpi_barrett_free(ptr noundef %3) #9
  %4 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @mpi_free(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @mpi_free(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @mpi_free(ptr noundef %9) #9
  %10 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %11, align 4
  tail call void @mpi_free(ptr noundef %14) #9
  store ptr null, ptr %11, align 4
  %15 = getelementptr inbounds %struct.gcry_mpi_point, ptr %11, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @mpi_free(ptr noundef %16) #9
  store ptr null, ptr %15, align 4
  %17 = getelementptr inbounds %struct.gcry_mpi_point, ptr %11, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @mpi_free(ptr noundef %18) #9
  store ptr null, ptr %17, align 4
  tail call void @kfree(ptr noundef nonnull %11) #9
  br label %19

19:                                               ; preds = %13, %1
  %20 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  tail call void @mpi_free(ptr noundef %21) #9
  %22 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %23, align 4
  tail call void @mpi_free(ptr noundef %26) #9
  store ptr null, ptr %23, align 4
  %27 = getelementptr inbounds %struct.gcry_mpi_point, ptr %23, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @mpi_free(ptr noundef %28) #9
  store ptr null, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gcry_mpi_point, ptr %23, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void @mpi_free(ptr noundef %30) #9
  store ptr null, ptr %29, align 4
  tail call void @kfree(ptr noundef nonnull %23) #9
  br label %31

31:                                               ; preds = %25, %19
  %32 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  tail call void @mpi_free(ptr noundef %33) #9
  %34 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 2
  %35 = load ptr, ptr %34, align 4
  tail call void @mpi_free(ptr noundef %35) #9
  %36 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 0
  %37 = load ptr, ptr %36, align 4
  tail call void @mpi_free(ptr noundef %37) #9
  %38 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void @mpi_free(ptr noundef %39) #9
  %40 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void @mpi_free(ptr noundef %41) #9
  %42 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 3
  %43 = load ptr, ptr %42, align 4
  tail call void @mpi_free(ptr noundef %43) #9
  %44 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 4
  %45 = load ptr, ptr %44, align 4
  tail call void @mpi_free(ptr noundef %45) #9
  %46 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void @mpi_free(ptr noundef %47) #9
  %48 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 6
  %49 = load ptr, ptr %48, align 4
  tail call void @mpi_free(ptr noundef %49) #9
  %50 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 7
  %51 = load ptr, ptr %50, align 4
  tail call void @mpi_free(ptr noundef %51) #9
  %52 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 8
  %53 = load ptr, ptr %52, align 4
  tail call void @mpi_free(ptr noundef %53) #9
  %54 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 9
  %55 = load ptr, ptr %54, align 4
  tail call void @mpi_free(ptr noundef %55) #9
  %56 = getelementptr %struct.mpi_ec_ctx, ptr %0, i32 0, i32 13, i32 4, i32 10
  %57 = load ptr, ptr %56, align 4
  tail call void @mpi_free(ptr noundef %57) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_barrett_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_ec_get_affine(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mpi_cmp_ui(ptr noundef %6, i32 noundef 0) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %112, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %3, align 4
  switch i32 %10, label %112 [
    i32 0, label %11
    i32 1, label %56
    i32 2, label %65
  ]

11:                                               ; preds = %9
  %12 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %13 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @mpi_invm(ptr noundef %12, ptr noundef %14, ptr noundef %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %21

21:                                               ; preds = %19, %11
  tail call void @mpi_mul(ptr noundef %13, ptr noundef %12, ptr noundef %12) #9
  %22 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @mpi_mod_barrett(ptr noundef %13, ptr noundef %13, ptr noundef nonnull %23) #9
  br label %28

26:                                               ; preds = %21
  %27 = load ptr, ptr %15, align 4
  tail call void @mpi_mod(ptr noundef %13, ptr noundef %13, ptr noundef %27) #9
  br label %28

28:                                               ; preds = %26, %25
  %29 = icmp eq ptr %0, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %2, align 4
  tail call void @mpi_mul(ptr noundef nonnull %0, ptr noundef %31, ptr noundef %13) #9
  %32 = load ptr, ptr %22, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @mpi_mod_barrett(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %32) #9
  br label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %15, align 4
  tail call void @mpi_mod(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %36) #9
  br label %37

37:                                               ; preds = %35, %34, %28
  %38 = icmp eq ptr %1, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  tail call void @mpi_mul(ptr noundef %40, ptr noundef %13, ptr noundef %12) #9
  %41 = load ptr, ptr %22, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @mpi_mod_barrett(ptr noundef %40, ptr noundef %40, ptr noundef nonnull %41) #9
  br label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %15, align 4
  tail call void @mpi_mod(ptr noundef %40, ptr noundef %40, ptr noundef %45) #9
  br label %46

46:                                               ; preds = %44, %43
  %47 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @mpi_mul(ptr noundef nonnull %1, ptr noundef %48, ptr noundef %40) #9
  %49 = load ptr, ptr %22, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @mpi_mod_barrett(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %49) #9
  br label %54

52:                                               ; preds = %46
  %53 = load ptr, ptr %15, align 4
  tail call void @mpi_mod(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef %53) #9
  br label %54

54:                                               ; preds = %52, %51
  tail call void @mpi_free(ptr noundef %40) #9
  br label %55

55:                                               ; preds = %54, %37
  tail call void @mpi_free(ptr noundef %13) #9
  tail call void @mpi_free(ptr noundef %12) #9
  br label %112

56:                                               ; preds = %9
  %57 = icmp eq ptr %0, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %2, align 4
  %60 = tail call ptr @mpi_set(ptr noundef nonnull %0, ptr noundef %59) #9
  br label %61

61:                                               ; preds = %58, %56
  %62 = icmp eq ptr %1, null
  br i1 %62, label %112, label %63

63:                                               ; preds = %61
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  br label %112

65:                                               ; preds = %9
  %66 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @mpi_invm(ptr noundef %66, ptr noundef %67, ptr noundef %69) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %74

74:                                               ; preds = %72, %65
  %75 = load ptr, ptr %68, align 4
  %76 = getelementptr inbounds %struct.gcry_mpi, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = tail call i32 @mpi_resize(ptr noundef %66, i32 noundef %77) #9
  %79 = load ptr, ptr %68, align 4
  %80 = getelementptr inbounds %struct.gcry_mpi, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.gcry_mpi, ptr %66, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  %83 = icmp eq ptr %0, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %74
  %85 = load ptr, ptr %68, align 4
  %86 = getelementptr inbounds %struct.gcry_mpi, ptr %85, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = tail call i32 @mpi_resize(ptr noundef nonnull %0, i32 noundef %87) #9
  %89 = load ptr, ptr %68, align 4
  %90 = getelementptr inbounds %struct.gcry_mpi, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 16
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %2, align 4
  tail call void %94(ptr noundef nonnull %0, ptr noundef %95, ptr noundef %66, ptr noundef %3) #9
  br label %96

96:                                               ; preds = %84, %74
  %97 = icmp eq ptr %1, null
  br i1 %97, label %111, label %98

98:                                               ; preds = %96
  %99 = load ptr, ptr %68, align 4
  %100 = getelementptr inbounds %struct.gcry_mpi, ptr %99, i32 0, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = tail call i32 @mpi_resize(ptr noundef nonnull %1, i32 noundef %101) #9
  %103 = load ptr, ptr %68, align 4
  %104 = getelementptr inbounds %struct.gcry_mpi, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 16
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  tail call void %108(ptr noundef nonnull %1, ptr noundef %110, ptr noundef %66, ptr noundef %3) #9
  br label %111

111:                                              ; preds = %98, %96
  tail call void @mpi_free(ptr noundef %66) #9
  br label %112

112:                                              ; preds = %111, %63, %61, %55, %9, %4
  %113 = phi i32 [ 0, %111 ], [ -1, %63 ], [ 0, %55 ], [ -1, %4 ], [ 0, %61 ], [ -1, %9 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_ec_add_points(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %3, align 4
  switch i32 %5, label %476 [
    i32 0, label %6
    i32 1, label %350
    i32 2, label %352
  ]

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = tail call i32 @mpi_cmp(ptr noundef %7, ptr noundef %8) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @mpi_cmp(ptr noundef %13, ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @mpi_cmp(ptr noundef %20, ptr noundef %22) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  tail call fastcc void @mpi_ec_dup_point(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9
  br label %476

26:                                               ; preds = %18, %11, %6
  %27 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @mpi_cmp_ui(ptr noundef %28, i32 noundef 0) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = tail call ptr @mpi_set(ptr noundef %32, ptr noundef %33) #9
  %35 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr @mpi_set(ptr noundef %36, ptr noundef %38) #9
  %40 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr @mpi_set(ptr noundef %41, ptr noundef %43) #9
  br label %476

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @mpi_cmp_ui(ptr noundef %47, i32 noundef 0) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load ptr, ptr %0, align 4
  %52 = load ptr, ptr %1, align 4
  %53 = tail call ptr @mpi_set(ptr noundef %51, ptr noundef %52) #9
  %54 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = tail call ptr @mpi_set(ptr noundef %55, ptr noundef %57) #9
  %59 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %27, align 4
  %62 = tail call ptr @mpi_set(ptr noundef %60, ptr noundef %61) #9
  br label %476

63:                                               ; preds = %45
  %64 = load ptr, ptr %27, align 4
  %65 = tail call i32 @mpi_cmp_ui(ptr noundef %64, i32 noundef 1) #9
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %46, align 4
  %68 = tail call i32 @mpi_cmp_ui(ptr noundef %67, i32 noundef 1) #9
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4
  %71 = load ptr, ptr %70, align 4
  br i1 %69, label %72, label %75

72:                                               ; preds = %63
  %73 = load ptr, ptr %1, align 4
  %74 = tail call ptr @mpi_set(ptr noundef %71, ptr noundef %73) #9
  br label %93

75:                                               ; preds = %63
  %76 = load ptr, ptr %46, align 4
  tail call void @mpi_mul(ptr noundef %71, ptr noundef %76, ptr noundef %76) #9
  %77 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call void @mpi_mod_barrett(ptr noundef %71, ptr noundef %71, ptr noundef nonnull %78) #9
  br label %84

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  tail call void @mpi_mod(ptr noundef %71, ptr noundef %71, ptr noundef %83) #9
  br label %84

84:                                               ; preds = %81, %80
  %85 = load ptr, ptr %70, align 4
  %86 = load ptr, ptr %1, align 4
  tail call void @mpi_mul(ptr noundef %85, ptr noundef %85, ptr noundef %86) #9
  %87 = load ptr, ptr %77, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  tail call void @mpi_mod_barrett(ptr noundef %85, ptr noundef %85, ptr noundef nonnull %87) #9
  br label %93

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  tail call void @mpi_mod(ptr noundef %85, ptr noundef %85, ptr noundef %92) #9
  br label %93

93:                                               ; preds = %90, %89, %72
  %94 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 1
  %95 = load ptr, ptr %94, align 4
  br i1 %66, label %96, label %99

96:                                               ; preds = %93
  %97 = load ptr, ptr %2, align 4
  %98 = tail call ptr @mpi_set(ptr noundef %95, ptr noundef %97) #9
  br label %117

99:                                               ; preds = %93
  %100 = load ptr, ptr %27, align 4
  tail call void @mpi_mul(ptr noundef %95, ptr noundef %100, ptr noundef %100) #9
  %101 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  tail call void @mpi_mod_barrett(ptr noundef %95, ptr noundef %95, ptr noundef nonnull %102) #9
  br label %108

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  tail call void @mpi_mod(ptr noundef %95, ptr noundef %95, ptr noundef %107) #9
  br label %108

108:                                              ; preds = %105, %104
  %109 = load ptr, ptr %94, align 4
  %110 = load ptr, ptr %2, align 4
  tail call void @mpi_mul(ptr noundef %109, ptr noundef %109, ptr noundef %110) #9
  %111 = load ptr, ptr %101, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  tail call void @mpi_mod_barrett(ptr noundef %109, ptr noundef %109, ptr noundef nonnull %111) #9
  br label %117

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  tail call void @mpi_mod(ptr noundef %109, ptr noundef %109, ptr noundef %116) #9
  br label %117

117:                                              ; preds = %114, %113, %96
  %118 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = load ptr, ptr %70, align 4
  %121 = load ptr, ptr %94, align 4
  tail call void @mpi_sub(ptr noundef %119, ptr noundef %120, ptr noundef %121) #9
  %122 = getelementptr inbounds %struct.gcry_mpi, ptr %119, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  br label %127

127:                                              ; preds = %127, %125
  %128 = load ptr, ptr %126, align 4
  tail call void @mpi_add(ptr noundef %119, ptr noundef %119, ptr noundef %128) #9
  %129 = load i32, ptr %122, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %127

131:                                              ; preds = %127, %117
  %132 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 3
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %46, align 4
  %135 = tail call ptr @mpi_const(i32 noundef 3) #9
  %136 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %137 = load ptr, ptr %136, align 4
  %138 = tail call i32 @mpi_powm(ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef %137) #9
  %139 = load ptr, ptr %132, align 4
  %140 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  tail call void @mpi_mul(ptr noundef %139, ptr noundef %139, ptr noundef %141) #9
  %142 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %131
  tail call void @mpi_mod_barrett(ptr noundef %139, ptr noundef %139, ptr noundef nonnull %143) #9
  br label %148

146:                                              ; preds = %131
  %147 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %139, ptr noundef %139, ptr noundef %147) #9
  br label %148

148:                                              ; preds = %146, %145
  %149 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 4
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %27, align 4
  %152 = tail call ptr @mpi_const(i32 noundef 3) #9
  %153 = load ptr, ptr %136, align 4
  %154 = tail call i32 @mpi_powm(ptr noundef %150, ptr noundef %151, ptr noundef %152, ptr noundef %153) #9
  %155 = load ptr, ptr %149, align 4
  %156 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  tail call void @mpi_mul(ptr noundef %155, ptr noundef %155, ptr noundef %157) #9
  %158 = load ptr, ptr %142, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %148
  tail call void @mpi_mod_barrett(ptr noundef %155, ptr noundef %155, ptr noundef nonnull %158) #9
  br label %163

161:                                              ; preds = %148
  %162 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %155, ptr noundef %155, ptr noundef %162) #9
  br label %163

163:                                              ; preds = %161, %160
  %164 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %132, align 4
  %167 = load ptr, ptr %149, align 4
  tail call void @mpi_sub(ptr noundef %165, ptr noundef %166, ptr noundef %167) #9
  %168 = getelementptr inbounds %struct.gcry_mpi, ptr %165, i32 0, i32 3
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %171, %163
  %172 = load ptr, ptr %136, align 4
  tail call void @mpi_add(ptr noundef %165, ptr noundef %165, ptr noundef %172) #9
  %173 = load i32, ptr %168, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %171

175:                                              ; preds = %171, %163
  %176 = load ptr, ptr %118, align 4
  %177 = tail call i32 @mpi_cmp_ui(ptr noundef %176, i32 noundef 0) #9
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %175
  %180 = load ptr, ptr %164, align 4
  %181 = tail call i32 @mpi_cmp_ui(ptr noundef %180, i32 noundef 0) #9
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  tail call fastcc void @mpi_ec_dup_point(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9
  br label %476

184:                                              ; preds = %179
  %185 = load ptr, ptr %0, align 4
  %186 = tail call ptr @mpi_set_ui(ptr noundef %185, i32 noundef 1) #9
  %187 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = tail call ptr @mpi_set_ui(ptr noundef %188, i32 noundef 1) #9
  %190 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %191 = load ptr, ptr %190, align 4
  %192 = tail call ptr @mpi_set_ui(ptr noundef %191, i32 noundef 0) #9
  br label %476

193:                                              ; preds = %175
  %194 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 6
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %70, align 4
  %197 = load ptr, ptr %94, align 4
  tail call void @mpi_add(ptr noundef %195, ptr noundef %196, ptr noundef %197) #9
  %198 = load ptr, ptr %142, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %193
  tail call void @mpi_mod_barrett(ptr noundef %195, ptr noundef %195, ptr noundef nonnull %198) #9
  br label %203

201:                                              ; preds = %193
  %202 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %195, ptr noundef %195, ptr noundef %202) #9
  br label %203

203:                                              ; preds = %201, %200
  %204 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 7
  %205 = load ptr, ptr %204, align 4
  %206 = load ptr, ptr %132, align 4
  %207 = load ptr, ptr %149, align 4
  tail call void @mpi_add(ptr noundef %205, ptr noundef %206, ptr noundef %207) #9
  %208 = load ptr, ptr %142, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %203
  tail call void @mpi_mod_barrett(ptr noundef %205, ptr noundef %205, ptr noundef nonnull %208) #9
  br label %213

211:                                              ; preds = %203
  %212 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %205, ptr noundef %205, ptr noundef %212) #9
  br label %213

213:                                              ; preds = %211, %210
  %214 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = load ptr, ptr %27, align 4
  %217 = load ptr, ptr %46, align 4
  tail call void @mpi_mul(ptr noundef %215, ptr noundef %216, ptr noundef %217) #9
  %218 = load ptr, ptr %142, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %213
  tail call void @mpi_mod_barrett(ptr noundef %215, ptr noundef %215, ptr noundef nonnull %218) #9
  br label %223

221:                                              ; preds = %213
  %222 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %215, ptr noundef %215, ptr noundef %222) #9
  br label %223

223:                                              ; preds = %221, %220
  %224 = load ptr, ptr %214, align 4
  %225 = load ptr, ptr %118, align 4
  tail call void @mpi_mul(ptr noundef %224, ptr noundef %224, ptr noundef %225) #9
  %226 = load ptr, ptr %142, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %223
  tail call void @mpi_mod_barrett(ptr noundef %224, ptr noundef %224, ptr noundef nonnull %226) #9
  br label %231

229:                                              ; preds = %223
  %230 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %224, ptr noundef %224, ptr noundef %230) #9
  br label %231

231:                                              ; preds = %229, %228
  %232 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 9
  %233 = load ptr, ptr %232, align 4
  %234 = load ptr, ptr %164, align 4
  tail call void @mpi_mul(ptr noundef %233, ptr noundef %234, ptr noundef %234) #9
  %235 = load ptr, ptr %142, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %231
  tail call void @mpi_mod_barrett(ptr noundef %233, ptr noundef %233, ptr noundef nonnull %235) #9
  br label %240

238:                                              ; preds = %231
  %239 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %233, ptr noundef %233, ptr noundef %239) #9
  br label %240

240:                                              ; preds = %238, %237
  %241 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 10
  %242 = load ptr, ptr %241, align 4
  %243 = load ptr, ptr %118, align 4
  tail call void @mpi_mul(ptr noundef %242, ptr noundef %243, ptr noundef %243) #9
  %244 = load ptr, ptr %142, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %240
  tail call void @mpi_mod_barrett(ptr noundef %242, ptr noundef %242, ptr noundef nonnull %244) #9
  br label %249

247:                                              ; preds = %240
  %248 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %242, ptr noundef %242, ptr noundef %248) #9
  br label %249

249:                                              ; preds = %247, %246
  %250 = load ptr, ptr %241, align 4
  %251 = load ptr, ptr %194, align 4
  tail call void @mpi_mul(ptr noundef %250, ptr noundef %250, ptr noundef %251) #9
  %252 = load ptr, ptr %142, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %249
  tail call void @mpi_mod_barrett(ptr noundef %250, ptr noundef %250, ptr noundef nonnull %252) #9
  br label %257

255:                                              ; preds = %249
  %256 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %250, ptr noundef %250, ptr noundef %256) #9
  br label %257

257:                                              ; preds = %255, %254
  %258 = load ptr, ptr %0, align 4
  %259 = load ptr, ptr %232, align 4
  %260 = load ptr, ptr %241, align 4
  tail call void @mpi_sub(ptr noundef %258, ptr noundef %259, ptr noundef %260) #9
  %261 = getelementptr inbounds %struct.gcry_mpi, ptr %258, i32 0, i32 3
  %262 = load i32, ptr %261, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %264, %257
  %265 = load ptr, ptr %136, align 4
  tail call void @mpi_add(ptr noundef %258, ptr noundef %258, ptr noundef %265) #9
  %266 = load i32, ptr %261, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %264

268:                                              ; preds = %264, %257
  %269 = load ptr, ptr %232, align 4
  %270 = load ptr, ptr %0, align 4
  tail call void @mpi_lshift(ptr noundef %269, ptr noundef %270, i32 noundef 1) #9
  %271 = load ptr, ptr %142, align 4
  %272 = icmp eq ptr %271, null
  br i1 %272, label %274, label %273

273:                                              ; preds = %268
  tail call void @mpi_mod_barrett(ptr noundef %269, ptr noundef %269, ptr noundef nonnull %271) #9
  br label %276

274:                                              ; preds = %268
  %275 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %269, ptr noundef %269, ptr noundef %275) #9
  br label %276

276:                                              ; preds = %274, %273
  %277 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 8
  %278 = load ptr, ptr %277, align 4
  %279 = load ptr, ptr %241, align 4
  %280 = load ptr, ptr %232, align 4
  tail call void @mpi_sub(ptr noundef %278, ptr noundef %279, ptr noundef %280) #9
  %281 = getelementptr inbounds %struct.gcry_mpi, ptr %278, i32 0, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %284, %276
  %285 = load ptr, ptr %136, align 4
  tail call void @mpi_add(ptr noundef %278, ptr noundef %278, ptr noundef %285) #9
  %286 = load i32, ptr %281, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %284

288:                                              ; preds = %284, %276
  %289 = load ptr, ptr %277, align 4
  %290 = load ptr, ptr %164, align 4
  tail call void @mpi_mul(ptr noundef %289, ptr noundef %289, ptr noundef %290) #9
  %291 = load ptr, ptr %142, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %294, label %293

293:                                              ; preds = %288
  tail call void @mpi_mod_barrett(ptr noundef %289, ptr noundef %289, ptr noundef nonnull %291) #9
  br label %296

294:                                              ; preds = %288
  %295 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %289, ptr noundef %289, ptr noundef %295) #9
  br label %296

296:                                              ; preds = %294, %293
  %297 = load ptr, ptr %232, align 4
  %298 = load ptr, ptr %118, align 4
  %299 = tail call ptr @mpi_const(i32 noundef 3) #9
  %300 = load ptr, ptr %136, align 4
  %301 = tail call i32 @mpi_powm(ptr noundef %297, ptr noundef %298, ptr noundef %299, ptr noundef %300) #9
  %302 = load ptr, ptr %232, align 4
  %303 = load ptr, ptr %204, align 4
  tail call void @mpi_mul(ptr noundef %302, ptr noundef %302, ptr noundef %303) #9
  %304 = load ptr, ptr %142, align 4
  %305 = icmp eq ptr %304, null
  br i1 %305, label %307, label %306

306:                                              ; preds = %296
  tail call void @mpi_mod_barrett(ptr noundef %302, ptr noundef %302, ptr noundef nonnull %304) #9
  br label %309

307:                                              ; preds = %296
  %308 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %302, ptr noundef %302, ptr noundef %308) #9
  br label %309

309:                                              ; preds = %307, %306
  %310 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %311 = load ptr, ptr %310, align 4
  %312 = load ptr, ptr %277, align 4
  %313 = load ptr, ptr %232, align 4
  tail call void @mpi_sub(ptr noundef %311, ptr noundef %312, ptr noundef %313) #9
  %314 = getelementptr inbounds %struct.gcry_mpi, ptr %311, i32 0, i32 3
  %315 = load i32, ptr %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %321, label %317

317:                                              ; preds = %317, %309
  %318 = load ptr, ptr %136, align 4
  tail call void @mpi_add(ptr noundef %311, ptr noundef %311, ptr noundef %318) #9
  %319 = load i32, ptr %314, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %317

321:                                              ; preds = %317, %309
  %322 = load ptr, ptr %310, align 4
  %323 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13
  %324 = load i8, ptr %323, align 4
  %325 = and i8 %324, 2
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %327, label %342

327:                                              ; preds = %321
  %328 = or i8 %324, 2
  store i8 %328, ptr %323, align 4
  %329 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 2
  %330 = load ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  %333 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %333, ptr %329, align 4
  br label %334

334:                                              ; preds = %332, %327
  %335 = phi ptr [ %333, %332 ], [ %330, %327 ]
  %336 = tail call ptr @mpi_const(i32 noundef 2) #9
  %337 = load ptr, ptr %136, align 4
  %338 = tail call i32 @mpi_invm(ptr noundef %335, ptr noundef %336, ptr noundef %337) #9
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %334
  %341 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %342

342:                                              ; preds = %340, %334, %321
  %343 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 2
  %344 = load ptr, ptr %343, align 4
  tail call void @mpi_mul(ptr noundef %322, ptr noundef %322, ptr noundef %344) #9
  %345 = load ptr, ptr %142, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %348, label %347

347:                                              ; preds = %342
  tail call void @mpi_mod_barrett(ptr noundef %322, ptr noundef %322, ptr noundef nonnull %345) #9
  br label %476

348:                                              ; preds = %342
  %349 = load ptr, ptr %136, align 4
  tail call void @mpi_mod(ptr noundef %322, ptr noundef %322, ptr noundef %349) #9
  br label %476

350:                                              ; preds = %4
  %351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.2) #10
  br label %476

352:                                              ; preds = %4
  %353 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %354 = load ptr, ptr %353, align 4
  %355 = getelementptr inbounds %struct.gcry_mpi, ptr %354, i32 0, i32 1
  %356 = load i32, ptr %355, align 4
  %357 = load ptr, ptr %0, align 4
  %358 = tail call i32 @mpi_resize(ptr noundef %357, i32 noundef %356) #9
  %359 = load ptr, ptr %0, align 4
  %360 = getelementptr inbounds %struct.gcry_mpi, ptr %359, i32 0, i32 1
  store i32 %356, ptr %360, align 4
  %361 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %362 = load ptr, ptr %361, align 4
  %363 = tail call i32 @mpi_resize(ptr noundef %362, i32 noundef %356) #9
  %364 = load ptr, ptr %361, align 4
  %365 = getelementptr inbounds %struct.gcry_mpi, ptr %364, i32 0, i32 1
  store i32 %356, ptr %365, align 4
  %366 = load i32, ptr %3, align 4
  %367 = icmp eq i32 %366, 1
  br i1 %367, label %374, label %368

368:                                              ; preds = %352
  %369 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %370 = load ptr, ptr %369, align 4
  %371 = tail call i32 @mpi_resize(ptr noundef %370, i32 noundef %356) #9
  %372 = load ptr, ptr %369, align 4
  %373 = getelementptr inbounds %struct.gcry_mpi, ptr %372, i32 0, i32 1
  store i32 %356, ptr %373, align 4
  br label %374

374:                                              ; preds = %368, %352
  %375 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 16
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 2
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2
  %382 = load ptr, ptr %381, align 4
  tail call void %376(ptr noundef %378, ptr noundef %380, ptr noundef %382, ptr noundef %3) #9
  %383 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 17
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 1
  %386 = load ptr, ptr %385, align 4
  %387 = load ptr, ptr %377, align 4
  tail call void %384(ptr noundef %386, ptr noundef %387, ptr noundef %3) #9
  %388 = load ptr, ptr %375, align 4
  %389 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 2
  %390 = load ptr, ptr %389, align 4
  %391 = load ptr, ptr %1, align 4
  %392 = load ptr, ptr %2, align 4
  tail call void %388(ptr noundef %390, ptr noundef %391, ptr noundef %392, ptr noundef %3) #9
  %393 = load ptr, ptr %375, align 4
  %394 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 3
  %395 = load ptr, ptr %394, align 4
  %396 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  %398 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %399 = load ptr, ptr %398, align 4
  tail call void %393(ptr noundef %395, ptr noundef %397, ptr noundef %399, ptr noundef %3) #9
  %400 = load ptr, ptr %375, align 4
  %401 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 4
  %402 = load ptr, ptr %401, align 4
  %403 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 6
  %404 = load ptr, ptr %403, align 4
  %405 = load ptr, ptr %389, align 4
  tail call void %400(ptr noundef %402, ptr noundef %404, ptr noundef %405, ptr noundef %3) #9
  %406 = load ptr, ptr %375, align 4
  %407 = load ptr, ptr %401, align 4
  %408 = load ptr, ptr %394, align 4
  tail call void %406(ptr noundef %407, ptr noundef %407, ptr noundef %408, ptr noundef %3) #9
  %409 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 15
  %410 = load ptr, ptr %409, align 4
  %411 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 5
  %412 = load ptr, ptr %411, align 4
  %413 = load ptr, ptr %385, align 4
  %414 = load ptr, ptr %401, align 4
  tail call void %410(ptr noundef %412, ptr noundef %413, ptr noundef %414, ptr noundef %3) #9
  %415 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 14
  %416 = load ptr, ptr %415, align 4
  %417 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 6
  %418 = load ptr, ptr %417, align 4
  %419 = load ptr, ptr %385, align 4
  %420 = load ptr, ptr %401, align 4
  tail call void %416(ptr noundef %418, ptr noundef %419, ptr noundef %420, ptr noundef %3) #9
  %421 = load ptr, ptr %415, align 4
  %422 = getelementptr %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 4, i32 7
  %423 = load ptr, ptr %422, align 4
  %424 = load ptr, ptr %1, align 4
  %425 = load ptr, ptr %396, align 4
  tail call void %421(ptr noundef %423, ptr noundef %424, ptr noundef %425, ptr noundef %3) #9
  %426 = load ptr, ptr %415, align 4
  %427 = load ptr, ptr %0, align 4
  %428 = load ptr, ptr %2, align 4
  %429 = load ptr, ptr %398, align 4
  tail call void %426(ptr noundef %427, ptr noundef %428, ptr noundef %429, ptr noundef %3) #9
  %430 = load ptr, ptr %375, align 4
  %431 = load ptr, ptr %0, align 4
  %432 = load ptr, ptr %422, align 4
  tail call void %430(ptr noundef %431, ptr noundef %431, ptr noundef %432, ptr noundef %3) #9
  %433 = load ptr, ptr %409, align 4
  %434 = load ptr, ptr %0, align 4
  %435 = load ptr, ptr %389, align 4
  tail call void %433(ptr noundef %434, ptr noundef %434, ptr noundef %435, ptr noundef %3) #9
  %436 = load ptr, ptr %409, align 4
  %437 = load ptr, ptr %0, align 4
  %438 = load ptr, ptr %394, align 4
  tail call void %436(ptr noundef %437, ptr noundef %437, ptr noundef %438, ptr noundef %3) #9
  %439 = load ptr, ptr %375, align 4
  %440 = load ptr, ptr %0, align 4
  %441 = load ptr, ptr %411, align 4
  tail call void %439(ptr noundef %440, ptr noundef %440, ptr noundef %441, ptr noundef %3) #9
  %442 = load ptr, ptr %375, align 4
  %443 = load ptr, ptr %0, align 4
  %444 = load ptr, ptr %377, align 4
  tail call void %442(ptr noundef %443, ptr noundef %443, ptr noundef %444, ptr noundef %3) #9
  %445 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 1
  %446 = load i32, ptr %445, align 4
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %448, label %454

448:                                              ; preds = %374
  %449 = load ptr, ptr %415, align 4
  %450 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %451 = load ptr, ptr %450, align 4
  %452 = load ptr, ptr %394, align 4
  %453 = load ptr, ptr %389, align 4
  tail call void %449(ptr noundef %451, ptr noundef %452, ptr noundef %453, ptr noundef %3) #9
  br label %464

454:                                              ; preds = %374
  %455 = load ptr, ptr %375, align 4
  %456 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %457 = load ptr, ptr %456, align 4
  %458 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 5
  %459 = load ptr, ptr %458, align 4
  %460 = load ptr, ptr %389, align 4
  tail call void %455(ptr noundef %457, ptr noundef %459, ptr noundef %460, ptr noundef %3) #9
  %461 = load ptr, ptr %409, align 4
  %462 = load ptr, ptr %456, align 4
  %463 = load ptr, ptr %394, align 4
  tail call void %461(ptr noundef %462, ptr noundef %463, ptr noundef %462, ptr noundef %3) #9
  br label %464

464:                                              ; preds = %454, %448
  %465 = load ptr, ptr %375, align 4
  %466 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %467 = load ptr, ptr %466, align 4
  %468 = load ptr, ptr %417, align 4
  tail call void %465(ptr noundef %467, ptr noundef %467, ptr noundef %468, ptr noundef %3) #9
  %469 = load ptr, ptr %375, align 4
  %470 = load ptr, ptr %466, align 4
  %471 = load ptr, ptr %377, align 4
  tail call void %469(ptr noundef %470, ptr noundef %470, ptr noundef %471, ptr noundef %3) #9
  %472 = load ptr, ptr %375, align 4
  %473 = load ptr, ptr %361, align 4
  %474 = load ptr, ptr %411, align 4
  %475 = load ptr, ptr %417, align 4
  tail call void %472(ptr noundef %473, ptr noundef %474, ptr noundef %475, ptr noundef %3) #9
  br label %476

476:                                              ; preds = %464, %350, %348, %347, %184, %183, %50, %31, %25, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_ec_mul_point(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = alloca %struct.gcry_mpi_point, align 4
  %6 = alloca %struct.gcry_mpi_point, align 4
  %7 = alloca %struct.gcry_mpi_point, align 4
  %8 = alloca %struct.gcry_mpi_point, align 4
  %9 = alloca %struct.gcry_mpi_point, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %7, i8 0, i32 12, i1 false), !annotation !8
  %10 = load i32, ptr %3, align 4
  switch i32 %10, label %338 [
    i32 2, label %11
    i32 1, label %99
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @mpi_cmp(ptr noundef %1, ptr noundef %13) #9
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %12, align 4
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %17, %16 ], [ %1, %11 ]
  %20 = tail call i32 @mpi_get_nbits(ptr noundef %19) #9
  %21 = load ptr, ptr %0, align 4
  %22 = tail call ptr @mpi_set_ui(ptr noundef %21, i32 noundef 0) #9
  %23 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @mpi_set_ui(ptr noundef %24, i32 noundef 1) #9
  %26 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = tail call ptr @mpi_set_ui(ptr noundef %27, i32 noundef 1) #9
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load ptr, ptr %2, align 4
  %33 = tail call i32 @mpi_resize(ptr noundef %32, i32 noundef %31) #9
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.gcry_mpi, ptr %34, i32 0, i32 1
  store i32 %31, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @mpi_resize(ptr noundef %37, i32 noundef %31) #9
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.gcry_mpi, ptr %39, i32 0, i32 1
  store i32 %31, ptr %40, align 4
  %41 = load i32, ptr %3, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %49, label %43

43:                                               ; preds = %18
  %44 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @mpi_resize(ptr noundef %45, i32 noundef %31) #9
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.gcry_mpi, ptr %47, i32 0, i32 1
  store i32 %31, ptr %48, align 4
  br label %49

49:                                               ; preds = %43, %18
  %50 = load ptr, ptr %12, align 4
  %51 = getelementptr inbounds %struct.gcry_mpi, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = load ptr, ptr %0, align 4
  %54 = tail call i32 @mpi_resize(ptr noundef %53, i32 noundef %52) #9
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.gcry_mpi, ptr %55, i32 0, i32 1
  store i32 %52, ptr %56, align 4
  %57 = load ptr, ptr %26, align 4
  %58 = tail call i32 @mpi_resize(ptr noundef %57, i32 noundef %52) #9
  %59 = load ptr, ptr %26, align 4
  %60 = getelementptr inbounds %struct.gcry_mpi, ptr %59, i32 0, i32 1
  store i32 %52, ptr %60, align 4
  %61 = load i32, ptr %3, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %68, label %63

63:                                               ; preds = %49
  %64 = load ptr, ptr %23, align 4
  %65 = tail call i32 @mpi_resize(ptr noundef %64, i32 noundef %52) #9
  %66 = load ptr, ptr %23, align 4
  %67 = getelementptr inbounds %struct.gcry_mpi, ptr %66, i32 0, i32 1
  store i32 %52, ptr %67, align 4
  br label %68

68:                                               ; preds = %63, %49
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr inbounds %struct.gcry_mpi, ptr %69, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %2, align 4
  %73 = tail call i32 @mpi_resize(ptr noundef %72, i32 noundef %71) #9
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr inbounds %struct.gcry_mpi, ptr %74, i32 0, i32 1
  store i32 %71, ptr %75, align 4
  %76 = load ptr, ptr %36, align 4
  %77 = tail call i32 @mpi_resize(ptr noundef %76, i32 noundef %71) #9
  %78 = load ptr, ptr %36, align 4
  %79 = getelementptr inbounds %struct.gcry_mpi, ptr %78, i32 0, i32 1
  store i32 %71, ptr %79, align 4
  %80 = load i32, ptr %3, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %88, label %82

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @mpi_resize(ptr noundef %84, i32 noundef %71) #9
  %86 = load ptr, ptr %83, align 4
  %87 = getelementptr inbounds %struct.gcry_mpi, ptr %86, i32 0, i32 1
  store i32 %71, ptr %87, align 4
  br label %88

88:                                               ; preds = %82, %68
  %89 = add i32 %20, -1
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %497

91:                                               ; preds = %96, %88
  %92 = phi i32 [ %97, %96 ], [ %89, %88 ]
  tail call fastcc void @mpi_ec_dup_point(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  %93 = tail call i32 @mpi_test_bit(ptr noundef %1, i32 noundef %92) #9
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @mpi_ec_add_points(ptr noundef %0, ptr noundef %0, ptr noundef %2, ptr noundef %3)
  br label %96

96:                                               ; preds = %95, %91
  %97 = add i32 %92, -1
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %91, label %497

99:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %100 = tail call i32 @mpi_get_nbits(ptr noundef %1) #9
  %101 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %101, ptr %5, align 4
  %102 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %103 = getelementptr inbounds %struct.gcry_mpi_point, ptr %5, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  %104 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %105 = getelementptr inbounds %struct.gcry_mpi_point, ptr %5, i32 0, i32 2
  store ptr %104, ptr %105, align 4
  %106 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %107 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %108 = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  %109 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %110 = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 2
  store ptr %109, ptr %110, align 4
  %111 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %111, ptr %8, align 4
  %112 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %113 = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 1
  store ptr %112, ptr %113, align 4
  %114 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %115 = getelementptr inbounds %struct.gcry_mpi_point, ptr %8, i32 0, i32 2
  store ptr %114, ptr %115, align 4
  %116 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %116, ptr %9, align 4
  %117 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %118 = getelementptr inbounds %struct.gcry_mpi_point, ptr %9, i32 0, i32 1
  store ptr %117, ptr %118, align 4
  %119 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %120 = getelementptr inbounds %struct.gcry_mpi_point, ptr %9, i32 0, i32 2
  store ptr %119, ptr %120, align 4
  %121 = tail call ptr @mpi_set_ui(ptr noundef %101, i32 noundef 1) #9
  tail call void @mpi_free(ptr noundef %106) #9
  %122 = load ptr, ptr %2, align 4
  %123 = tail call ptr @mpi_copy(ptr noundef %122) #9
  store ptr %123, ptr %6, align 4
  %124 = tail call ptr @mpi_set_ui(ptr noundef %109, i32 noundef 1) #9
  %125 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.gcry_mpi, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = tail call i32 @mpi_resize(ptr noundef %101, i32 noundef %128) #9
  %130 = getelementptr inbounds %struct.gcry_mpi, ptr %101, i32 0, i32 1
  store i32 %128, ptr %130, align 4
  %131 = tail call i32 @mpi_resize(ptr noundef %104, i32 noundef %128) #9
  %132 = getelementptr inbounds %struct.gcry_mpi, ptr %104, i32 0, i32 1
  store i32 %128, ptr %132, align 4
  %133 = load i32, ptr %3, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %138, label %135

135:                                              ; preds = %99
  %136 = tail call i32 @mpi_resize(ptr noundef %102, i32 noundef %128) #9
  %137 = getelementptr inbounds %struct.gcry_mpi, ptr %102, i32 0, i32 1
  store i32 %128, ptr %137, align 4
  br label %138

138:                                              ; preds = %135, %99
  %139 = load ptr, ptr %125, align 4
  %140 = getelementptr inbounds %struct.gcry_mpi, ptr %139, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = tail call i32 @mpi_resize(ptr noundef %123, i32 noundef %141) #9
  %143 = getelementptr inbounds %struct.gcry_mpi, ptr %123, i32 0, i32 1
  store i32 %141, ptr %143, align 4
  %144 = tail call i32 @mpi_resize(ptr noundef %109, i32 noundef %141) #9
  %145 = getelementptr inbounds %struct.gcry_mpi, ptr %109, i32 0, i32 1
  store i32 %141, ptr %145, align 4
  %146 = load i32, ptr %3, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %151, label %148

148:                                              ; preds = %138
  %149 = tail call i32 @mpi_resize(ptr noundef %107, i32 noundef %141) #9
  %150 = getelementptr inbounds %struct.gcry_mpi, ptr %107, i32 0, i32 1
  store i32 %141, ptr %150, align 4
  br label %151

151:                                              ; preds = %148, %138
  %152 = load ptr, ptr %125, align 4
  %153 = getelementptr inbounds %struct.gcry_mpi, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  %155 = tail call i32 @mpi_resize(ptr noundef %111, i32 noundef %154) #9
  %156 = getelementptr inbounds %struct.gcry_mpi, ptr %111, i32 0, i32 1
  store i32 %154, ptr %156, align 4
  %157 = tail call i32 @mpi_resize(ptr noundef %114, i32 noundef %154) #9
  %158 = getelementptr inbounds %struct.gcry_mpi, ptr %114, i32 0, i32 1
  store i32 %154, ptr %158, align 4
  %159 = load i32, ptr %3, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %164, label %161

161:                                              ; preds = %151
  %162 = tail call i32 @mpi_resize(ptr noundef %112, i32 noundef %154) #9
  %163 = getelementptr inbounds %struct.gcry_mpi, ptr %112, i32 0, i32 1
  store i32 %154, ptr %163, align 4
  br label %164

164:                                              ; preds = %161, %151
  %165 = load ptr, ptr %125, align 4
  %166 = getelementptr inbounds %struct.gcry_mpi, ptr %165, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = tail call i32 @mpi_resize(ptr noundef %116, i32 noundef %167) #9
  %169 = getelementptr inbounds %struct.gcry_mpi, ptr %116, i32 0, i32 1
  store i32 %167, ptr %169, align 4
  %170 = tail call i32 @mpi_resize(ptr noundef %119, i32 noundef %167) #9
  %171 = getelementptr inbounds %struct.gcry_mpi, ptr %119, i32 0, i32 1
  store i32 %167, ptr %171, align 4
  %172 = load i32, ptr %3, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %177, label %174

174:                                              ; preds = %164
  %175 = tail call i32 @mpi_resize(ptr noundef %117, i32 noundef %167) #9
  %176 = getelementptr inbounds %struct.gcry_mpi, ptr %117, i32 0, i32 1
  store i32 %167, ptr %176, align 4
  br label %177

177:                                              ; preds = %174, %164
  %178 = load ptr, ptr %2, align 4
  %179 = load ptr, ptr %125, align 4
  %180 = getelementptr inbounds %struct.gcry_mpi, ptr %179, i32 0, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = tail call i32 @mpi_resize(ptr noundef %178, i32 noundef %181) #9
  %183 = load ptr, ptr %125, align 4
  %184 = getelementptr inbounds %struct.gcry_mpi, ptr %183, i32 0, i32 1
  %185 = load i32, ptr %184, align 4
  %186 = load ptr, ptr %2, align 4
  %187 = getelementptr inbounds %struct.gcry_mpi, ptr %186, i32 0, i32 1
  store i32 %185, ptr %187, align 4
  %188 = add i32 %100, -1
  %189 = icmp sgt i32 %188, -1
  br i1 %189, label %190, label %291

190:                                              ; preds = %177
  %191 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 14
  %192 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 15
  %193 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 16
  %194 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 17
  %195 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 5
  br label %196

196:                                              ; preds = %286, %190
  %197 = phi i32 [ %188, %190 ], [ %289, %286 ]
  %198 = phi ptr [ %9, %190 ], [ %200, %286 ]
  %199 = phi ptr [ %8, %190 ], [ %201, %286 ]
  %200 = phi ptr [ %6, %190 ], [ %198, %286 ]
  %201 = phi ptr [ %5, %190 ], [ %199, %286 ]
  %202 = tail call i32 @mpi_test_bit(ptr noundef %1, i32 noundef %197) #9
  %203 = load ptr, ptr %201, align 4
  %204 = load ptr, ptr %200, align 4
  tail call void @mpi_swap_cond(ptr noundef %203, ptr noundef %204, i32 noundef %202) #9
  %205 = load i32, ptr %3, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %212, label %207

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.gcry_mpi_point, ptr %201, i32 0, i32 1
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.gcry_mpi_point, ptr %200, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  tail call void @mpi_swap_cond(ptr noundef %209, ptr noundef %211, i32 noundef %202) #9
  br label %212

212:                                              ; preds = %207, %196
  %213 = getelementptr inbounds %struct.gcry_mpi_point, ptr %201, i32 0, i32 2
  %214 = load ptr, ptr %213, align 4
  %215 = getelementptr inbounds %struct.gcry_mpi_point, ptr %200, i32 0, i32 2
  %216 = load ptr, ptr %215, align 4
  tail call void @mpi_swap_cond(ptr noundef %214, ptr noundef %216, i32 noundef %202) #9
  %217 = load ptr, ptr %2, align 4
  %218 = load ptr, ptr %191, align 4
  %219 = load ptr, ptr %198, align 4
  %220 = load ptr, ptr %200, align 4
  %221 = load ptr, ptr %215, align 4
  tail call void %218(ptr noundef %219, ptr noundef %220, ptr noundef %221, ptr noundef %3) #9
  %222 = load ptr, ptr %192, align 4
  %223 = load ptr, ptr %215, align 4
  %224 = load ptr, ptr %200, align 4
  tail call void %222(ptr noundef %223, ptr noundef %224, ptr noundef %223, ptr noundef %3) #9
  %225 = load ptr, ptr %191, align 4
  %226 = load ptr, ptr %199, align 4
  %227 = load ptr, ptr %201, align 4
  %228 = load ptr, ptr %213, align 4
  tail call void %225(ptr noundef %226, ptr noundef %227, ptr noundef %228, ptr noundef %3) #9
  %229 = load ptr, ptr %192, align 4
  %230 = load ptr, ptr %213, align 4
  %231 = load ptr, ptr %201, align 4
  tail call void %229(ptr noundef %230, ptr noundef %231, ptr noundef %230, ptr noundef %3) #9
  %232 = load ptr, ptr %193, align 4
  %233 = load ptr, ptr %200, align 4
  %234 = load ptr, ptr %213, align 4
  %235 = load ptr, ptr %198, align 4
  tail call void %232(ptr noundef %233, ptr noundef %234, ptr noundef %235, ptr noundef %3) #9
  %236 = load ptr, ptr %193, align 4
  %237 = load ptr, ptr %215, align 4
  %238 = load ptr, ptr %199, align 4
  tail call void %236(ptr noundef %237, ptr noundef %238, ptr noundef %237, ptr noundef %3) #9
  %239 = load ptr, ptr %194, align 4
  %240 = load ptr, ptr %201, align 4
  %241 = load ptr, ptr %199, align 4
  tail call void %239(ptr noundef %240, ptr noundef %241, ptr noundef %3) #9
  %242 = load ptr, ptr %194, align 4
  %243 = load ptr, ptr %213, align 4
  tail call void %242(ptr noundef %243, ptr noundef %243, ptr noundef %3) #9
  %244 = load ptr, ptr %191, align 4
  %245 = load ptr, ptr %198, align 4
  %246 = load ptr, ptr %200, align 4
  %247 = load ptr, ptr %215, align 4
  tail call void %244(ptr noundef %245, ptr noundef %246, ptr noundef %247, ptr noundef %3) #9
  %248 = load ptr, ptr %192, align 4
  %249 = load ptr, ptr %215, align 4
  %250 = load ptr, ptr %200, align 4
  tail call void %248(ptr noundef %249, ptr noundef %250, ptr noundef %249, ptr noundef %3) #9
  %251 = load ptr, ptr %193, align 4
  %252 = load ptr, ptr %199, align 4
  %253 = load ptr, ptr %201, align 4
  %254 = load ptr, ptr %213, align 4
  tail call void %251(ptr noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef %3) #9
  %255 = load ptr, ptr %192, align 4
  %256 = load ptr, ptr %213, align 4
  %257 = load ptr, ptr %201, align 4
  tail call void %255(ptr noundef %256, ptr noundef %257, ptr noundef %256, ptr noundef %3) #9
  %258 = load ptr, ptr %194, align 4
  %259 = load ptr, ptr %198, align 4
  tail call void %258(ptr noundef %259, ptr noundef %259, ptr noundef %3) #9
  %260 = load ptr, ptr %194, align 4
  %261 = getelementptr inbounds %struct.gcry_mpi_point, ptr %198, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  %263 = load ptr, ptr %215, align 4
  tail call void %260(ptr noundef %262, ptr noundef %263, ptr noundef %3) #9
  %264 = load ptr, ptr %193, align 4
  %265 = getelementptr inbounds %struct.gcry_mpi_point, ptr %199, i32 0, i32 2
  %266 = load ptr, ptr %265, align 4
  %267 = load ptr, ptr %213, align 4
  %268 = load ptr, ptr %195, align 4
  tail call void %264(ptr noundef %266, ptr noundef %267, ptr noundef %268, ptr noundef %3) #9
  %269 = load ptr, ptr %193, align 4
  %270 = load ptr, ptr %261, align 4
  tail call void %269(ptr noundef %270, ptr noundef %270, ptr noundef %217, ptr noundef %3) #9
  %271 = load ptr, ptr %191, align 4
  %272 = load ptr, ptr %265, align 4
  %273 = load ptr, ptr %201, align 4
  tail call void %271(ptr noundef %272, ptr noundef %273, ptr noundef %272, ptr noundef %3) #9
  %274 = load ptr, ptr %193, align 4
  %275 = load ptr, ptr %265, align 4
  %276 = load ptr, ptr %213, align 4
  tail call void %274(ptr noundef %275, ptr noundef %275, ptr noundef %276, ptr noundef %3) #9
  %277 = load ptr, ptr %199, align 4
  %278 = load ptr, ptr %198, align 4
  tail call void @mpi_swap_cond(ptr noundef %277, ptr noundef %278, i32 noundef %202) #9
  %279 = load i32, ptr %3, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %286, label %281

281:                                              ; preds = %212
  %282 = getelementptr inbounds %struct.gcry_mpi_point, ptr %199, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.gcry_mpi_point, ptr %198, i32 0, i32 1
  %285 = load ptr, ptr %284, align 4
  tail call void @mpi_swap_cond(ptr noundef %283, ptr noundef %285, i32 noundef %202) #9
  br label %286

286:                                              ; preds = %281, %212
  %287 = load ptr, ptr %265, align 4
  %288 = load ptr, ptr %261, align 4
  tail call void @mpi_swap_cond(ptr noundef %287, ptr noundef %288, i32 noundef %202) #9
  %289 = add i32 %197, -1
  %290 = icmp sgt i32 %289, -1
  br i1 %290, label %196, label %291

291:                                              ; preds = %286, %177
  %292 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %293 = load ptr, ptr %292, align 4
  tail call void @mpi_clear(ptr noundef %293) #9
  %294 = and i32 %100, 1
  tail call void @mpi_swap_cond(ptr noundef %101, ptr noundef %111, i32 noundef %294) #9
  %295 = load i32, ptr %3, align 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %298, label %297

297:                                              ; preds = %291
  tail call void @mpi_swap_cond(ptr noundef %102, ptr noundef %112, i32 noundef %294) #9
  br label %298

298:                                              ; preds = %297, %291
  tail call void @mpi_swap_cond(ptr noundef %104, ptr noundef %114, i32 noundef %294) #9
  %299 = load i32, ptr %132, align 4
  %300 = getelementptr inbounds %struct.gcry_mpi, ptr %104, i32 0, i32 5
  br label %301

301:                                              ; preds = %304, %298
  %302 = phi i32 [ %299, %298 ], [ %306, %304 ]
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = load ptr, ptr %300, align 4
  %306 = add nsw i32 %302, -1
  %307 = getelementptr i32, ptr %305, i32 %306
  %308 = load i32, ptr %307, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %301, label %318

310:                                              ; preds = %301
  %311 = icmp sgt i32 %299, -1
  br i1 %311, label %312, label %318

312:                                              ; preds = %310
  %313 = load ptr, ptr %0, align 4
  %314 = tail call ptr @mpi_set_ui(ptr noundef %313, i32 noundef 1) #9
  %315 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %316 = load ptr, ptr %315, align 4
  %317 = tail call ptr @mpi_set_ui(ptr noundef %316, i32 noundef 0) #9
  br label %337

318:                                              ; preds = %310, %304
  %319 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %320 = load ptr, ptr %125, align 4
  %321 = tail call i32 @mpi_invm(ptr noundef %319, ptr noundef %104, ptr noundef %320) #9
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %325

325:                                              ; preds = %323, %318
  %326 = load ptr, ptr %0, align 4
  tail call void @mpi_mul(ptr noundef %326, ptr noundef %101, ptr noundef %319) #9
  %327 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %331, label %330

330:                                              ; preds = %325
  tail call void @mpi_mod_barrett(ptr noundef %326, ptr noundef %326, ptr noundef nonnull %328) #9
  br label %333

331:                                              ; preds = %325
  %332 = load ptr, ptr %125, align 4
  tail call void @mpi_mod(ptr noundef %326, ptr noundef %326, ptr noundef %332) #9
  br label %333

333:                                              ; preds = %331, %330
  %334 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %335 = load ptr, ptr %334, align 4
  %336 = tail call ptr @mpi_set_ui(ptr noundef %335, i32 noundef 1) #9
  tail call void @mpi_free(ptr noundef %319) #9
  br label %337

337:                                              ; preds = %333, %312
  tail call void @mpi_free(ptr noundef %101) #9
  store ptr null, ptr %5, align 4
  tail call void @mpi_free(ptr noundef %102) #9
  store ptr null, ptr %103, align 4
  tail call void @mpi_free(ptr noundef %104) #9
  store ptr null, ptr %105, align 4
  tail call void @mpi_free(ptr noundef %123) #9
  store ptr null, ptr %6, align 4
  tail call void @mpi_free(ptr noundef %107) #9
  store ptr null, ptr %108, align 4
  tail call void @mpi_free(ptr noundef %109) #9
  store ptr null, ptr %110, align 4
  tail call void @mpi_free(ptr noundef %111) #9
  tail call void @mpi_free(ptr noundef %112) #9
  tail call void @mpi_free(ptr noundef %114) #9
  tail call void @mpi_free(ptr noundef %116) #9
  tail call void @mpi_free(ptr noundef %117) #9
  tail call void @mpi_free(ptr noundef %119) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %497

338:                                              ; preds = %4
  %339 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %340 = load ptr, ptr %339, align 4
  %341 = tail call ptr @mpi_alloc_like(ptr noundef %340) #9
  %342 = load ptr, ptr %339, align 4
  %343 = tail call ptr @mpi_alloc_like(ptr noundef %342) #9
  %344 = load ptr, ptr %339, align 4
  %345 = tail call ptr @mpi_alloc_like(ptr noundef %344) #9
  %346 = tail call ptr @mpi_copy(ptr noundef %1) #9
  %347 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 1
  %348 = load ptr, ptr %347, align 4
  %349 = tail call ptr @mpi_copy(ptr noundef %348) #9
  %350 = getelementptr inbounds %struct.gcry_mpi, ptr %346, i32 0, i32 3
  %351 = load i32, ptr %350, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %359, label %353

353:                                              ; preds = %338
  store i32 0, ptr %350, align 4
  %354 = load ptr, ptr %339, align 4
  %355 = tail call i32 @mpi_invm(ptr noundef %349, ptr noundef %349, ptr noundef %354) #9
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %353
  %358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %359

359:                                              ; preds = %357, %353, %338
  %360 = getelementptr inbounds %struct.gcry_mpi_point, ptr %2, i32 0, i32 2
  %361 = load ptr, ptr %360, align 4
  %362 = tail call i32 @mpi_cmp_ui(ptr noundef %361, i32 noundef 1) #9
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load ptr, ptr %2, align 4
  %366 = tail call ptr @mpi_set(ptr noundef %341, ptr noundef %365) #9
  %367 = tail call ptr @mpi_set(ptr noundef %343, ptr noundef %349) #9
  br label %413

368:                                              ; preds = %359
  %369 = load ptr, ptr %339, align 4
  %370 = tail call ptr @mpi_alloc_like(ptr noundef %369) #9
  %371 = load ptr, ptr %339, align 4
  %372 = tail call ptr @mpi_alloc_like(ptr noundef %371) #9
  %373 = load ptr, ptr %360, align 4
  tail call void @mpi_mul(ptr noundef %370, ptr noundef %373, ptr noundef %373) #9
  %374 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 13, i32 3
  %375 = load ptr, ptr %374, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %378, label %377

377:                                              ; preds = %368
  tail call void @mpi_mod_barrett(ptr noundef %370, ptr noundef %370, ptr noundef nonnull %375) #9
  br label %380

378:                                              ; preds = %368
  %379 = load ptr, ptr %339, align 4
  tail call void @mpi_mod(ptr noundef %370, ptr noundef %370, ptr noundef %379) #9
  br label %380

380:                                              ; preds = %378, %377
  %381 = load ptr, ptr %360, align 4
  tail call void @mpi_mul(ptr noundef %372, ptr noundef %381, ptr noundef %370) #9
  %382 = load ptr, ptr %374, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %385, label %384

384:                                              ; preds = %380
  tail call void @mpi_mod_barrett(ptr noundef %372, ptr noundef %372, ptr noundef nonnull %382) #9
  br label %387

385:                                              ; preds = %380
  %386 = load ptr, ptr %339, align 4
  tail call void @mpi_mod(ptr noundef %372, ptr noundef %372, ptr noundef %386) #9
  br label %387

387:                                              ; preds = %385, %384
  %388 = load ptr, ptr %339, align 4
  %389 = tail call i32 @mpi_invm(ptr noundef %370, ptr noundef %370, ptr noundef %388) #9
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %387
  %392 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %393

393:                                              ; preds = %391, %387
  %394 = load ptr, ptr %2, align 4
  tail call void @mpi_mul(ptr noundef %341, ptr noundef %394, ptr noundef %370) #9
  %395 = load ptr, ptr %374, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %398, label %397

397:                                              ; preds = %393
  tail call void @mpi_mod_barrett(ptr noundef %341, ptr noundef %341, ptr noundef nonnull %395) #9
  br label %400

398:                                              ; preds = %393
  %399 = load ptr, ptr %339, align 4
  tail call void @mpi_mod(ptr noundef %341, ptr noundef %341, ptr noundef %399) #9
  br label %400

400:                                              ; preds = %398, %397
  %401 = load ptr, ptr %339, align 4
  %402 = tail call i32 @mpi_invm(ptr noundef %372, ptr noundef %372, ptr noundef %401) #9
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %406

406:                                              ; preds = %404, %400
  tail call void @mpi_mul(ptr noundef %343, ptr noundef %349, ptr noundef %372) #9
  %407 = load ptr, ptr %374, align 4
  %408 = icmp eq ptr %407, null
  br i1 %408, label %410, label %409

409:                                              ; preds = %406
  tail call void @mpi_mod_barrett(ptr noundef %343, ptr noundef %343, ptr noundef nonnull %407) #9
  br label %412

410:                                              ; preds = %406
  %411 = load ptr, ptr %339, align 4
  tail call void @mpi_mod(ptr noundef %343, ptr noundef %343, ptr noundef %411) #9
  br label %412

412:                                              ; preds = %410, %409
  tail call void @mpi_free(ptr noundef %370) #9
  tail call void @mpi_free(ptr noundef %372) #9
  br label %413

413:                                              ; preds = %412, %364
  %414 = tail call ptr @mpi_const(i32 noundef 1) #9
  %415 = tail call ptr @mpi_copy(ptr noundef %414) #9
  %416 = tail call ptr @mpi_const(i32 noundef 3) #9
  tail call void @mpi_mul(ptr noundef %345, ptr noundef %346, ptr noundef %416) #9
  %417 = tail call i32 @mpi_get_nbits(ptr noundef %345) #9
  %418 = icmp ult i32 %417, 2
  %419 = load ptr, ptr %0, align 4
  br i1 %418, label %420, label %425

420:                                              ; preds = %413
  tail call void @mpi_clear(ptr noundef %419) #9
  %421 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %422 = load ptr, ptr %421, align 4
  tail call void @mpi_clear(ptr noundef %422) #9
  %423 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %424 = load ptr, ptr %423, align 4
  tail call void @mpi_clear(ptr noundef %424) #9
  br label %436

425:                                              ; preds = %413
  %426 = load ptr, ptr %2, align 4
  %427 = tail call ptr @mpi_set(ptr noundef %419, ptr noundef %426) #9
  %428 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = tail call ptr @mpi_set(ptr noundef %429, ptr noundef %349) #9
  %431 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %432 = load ptr, ptr %431, align 4
  %433 = load ptr, ptr %360, align 4
  %434 = tail call ptr @mpi_set(ptr noundef %432, ptr noundef %433) #9
  %435 = add i32 %417, -2
  br label %436

436:                                              ; preds = %425, %420
  %437 = phi i32 [ 0, %420 ], [ %435, %425 ]
  tail call void @mpi_free(ptr noundef %349) #9
  store ptr %341, ptr %5, align 4
  %438 = getelementptr inbounds %struct.gcry_mpi_point, ptr %5, i32 0, i32 1
  store ptr %343, ptr %438, align 4
  %439 = getelementptr inbounds %struct.gcry_mpi_point, ptr %5, i32 0, i32 2
  store ptr %415, ptr %439, align 4
  %440 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %440, ptr %6, align 4
  %441 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %442 = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 1
  store ptr %441, ptr %442, align 4
  %443 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %444 = getelementptr inbounds %struct.gcry_mpi_point, ptr %6, i32 0, i32 2
  store ptr %443, ptr %444, align 4
  %445 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  store ptr %445, ptr %7, align 4
  %446 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %447 = getelementptr inbounds %struct.gcry_mpi_point, ptr %7, i32 0, i32 1
  store ptr %446, ptr %447, align 4
  %448 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %449 = getelementptr inbounds %struct.gcry_mpi_point, ptr %7, i32 0, i32 2
  store ptr %448, ptr %449, align 4
  %450 = tail call ptr @mpi_set(ptr noundef %445, ptr noundef %341) #9
  %451 = tail call ptr @mpi_set(ptr noundef %446, ptr noundef %343) #9
  %452 = tail call ptr @mpi_set(ptr noundef %448, ptr noundef %415) #9
  %453 = load ptr, ptr %339, align 4
  tail call void @mpi_sub(ptr noundef %446, ptr noundef %453, ptr noundef %446) #9
  %454 = getelementptr inbounds %struct.gcry_mpi, ptr %446, i32 0, i32 3
  %455 = load i32, ptr %454, align 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %461, label %457

457:                                              ; preds = %457, %436
  %458 = load ptr, ptr %339, align 4
  tail call void @mpi_add(ptr noundef %446, ptr noundef %446, ptr noundef %458) #9
  %459 = load i32, ptr %454, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %457

461:                                              ; preds = %457, %436
  %462 = icmp eq i32 %437, 0
  br i1 %462, label %496, label %463

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %465 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  br label %466

466:                                              ; preds = %493, %463
  %467 = phi i32 [ %437, %463 ], [ %494, %493 ]
  tail call fastcc void @mpi_ec_dup_point(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  %468 = tail call i32 @mpi_test_bit(ptr noundef %345, i32 noundef %467) #9
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %470, label %480

470:                                              ; preds = %466
  %471 = tail call i32 @mpi_test_bit(ptr noundef %346, i32 noundef %467) #9
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %480

473:                                              ; preds = %470
  %474 = load ptr, ptr %0, align 4
  %475 = tail call ptr @mpi_set(ptr noundef %440, ptr noundef %474) #9
  %476 = load ptr, ptr %464, align 4
  %477 = tail call ptr @mpi_set(ptr noundef %441, ptr noundef %476) #9
  %478 = load ptr, ptr %465, align 4
  %479 = tail call ptr @mpi_set(ptr noundef %443, ptr noundef %478) #9
  call void @mpi_ec_add_points(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef %3)
  br label %480

480:                                              ; preds = %473, %470, %466
  %481 = tail call i32 @mpi_test_bit(ptr noundef %345, i32 noundef %467) #9
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %493

483:                                              ; preds = %480
  %484 = tail call i32 @mpi_test_bit(ptr noundef %346, i32 noundef %467) #9
  %485 = icmp eq i32 %484, 1
  br i1 %485, label %486, label %493

486:                                              ; preds = %483
  %487 = load ptr, ptr %0, align 4
  %488 = tail call ptr @mpi_set(ptr noundef %440, ptr noundef %487) #9
  %489 = load ptr, ptr %464, align 4
  %490 = tail call ptr @mpi_set(ptr noundef %441, ptr noundef %489) #9
  %491 = load ptr, ptr %465, align 4
  %492 = tail call ptr @mpi_set(ptr noundef %443, ptr noundef %491) #9
  call void @mpi_ec_add_points(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %3)
  br label %493

493:                                              ; preds = %486, %483, %480
  %494 = add i32 %467, -1
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %466

496:                                              ; preds = %493, %461
  tail call void @mpi_free(ptr noundef %341) #9
  store ptr null, ptr %5, align 4
  tail call void @mpi_free(ptr noundef %343) #9
  store ptr null, ptr %438, align 4
  tail call void @mpi_free(ptr noundef %415) #9
  tail call void @mpi_free(ptr noundef %440) #9
  store ptr null, ptr %6, align 4
  tail call void @mpi_free(ptr noundef %441) #9
  store ptr null, ptr %442, align 4
  tail call void @mpi_free(ptr noundef %443) #9
  tail call void @mpi_free(ptr noundef %445) #9
  store ptr null, ptr %7, align 4
  tail call void @mpi_free(ptr noundef %446) #9
  store ptr null, ptr %447, align 4
  tail call void @mpi_free(ptr noundef %448) #9
  tail call void @mpi_free(ptr noundef %345) #9
  tail call void @mpi_free(ptr noundef %346) #9
  br label %497

497:                                              ; preds = %496, %337, %96, %88
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set_ui(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mpi_ec_dup_point(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %363 [
    i32 0, label %5
    i32 1, label %278
    i32 2, label %280
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @mpi_cmp_ui(ptr noundef %7, i32 noundef 0) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @mpi_cmp_ui(ptr noundef %12, i32 noundef 0) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %10, %5
  %16 = load ptr, ptr %0, align 4
  %17 = tail call ptr @mpi_set_ui(ptr noundef %16, i32 noundef 1) #9
  %18 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr @mpi_set_ui(ptr noundef %19, i32 noundef 1) #9
  %21 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr @mpi_set_ui(ptr noundef %22, i32 noundef 0) #9
  br label %363

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = or i8 %26, 1
  store i8 %30, ptr %25, align 4
  %31 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @mpi_alloc_like(ptr noundef %32) #9
  %34 = load ptr, ptr %31, align 4
  %35 = tail call i32 @mpi_sub_ui(ptr noundef %33, ptr noundef %34, i32 noundef 3) #9
  %36 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @mpi_cmp(ptr noundef %37, ptr noundef %33) #9
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 1
  store i32 %40, ptr %41, align 4
  tail call void @mpi_free(ptr noundef %33) #9
  br label %42

42:                                               ; preds = %29, %24
  %43 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4
  br i1 %45, label %100, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %46, align 4
  %49 = load ptr, ptr %11, align 4
  tail call void @mpi_mul(ptr noundef %48, ptr noundef %49, ptr noundef %49) #9
  %50 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call void @mpi_mod_barrett(ptr noundef %48, ptr noundef %48, ptr noundef nonnull %51) #9
  br label %57

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  tail call void @mpi_mod(ptr noundef %48, ptr noundef %48, ptr noundef %56) #9
  br label %57

57:                                               ; preds = %54, %53
  %58 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %1, align 4
  %61 = load ptr, ptr %46, align 4
  tail call void @mpi_sub(ptr noundef %59, ptr noundef %60, ptr noundef %61) #9
  %62 = getelementptr inbounds %struct.gcry_mpi, ptr %59, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  br label %67

67:                                               ; preds = %67, %65
  %68 = load ptr, ptr %66, align 4
  tail call void @mpi_add(ptr noundef %59, ptr noundef %59, ptr noundef %68) #9
  %69 = load i32, ptr %62, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %67

71:                                               ; preds = %67, %57
  %72 = load ptr, ptr %58, align 4
  %73 = tail call ptr @mpi_const(i32 noundef 3) #9
  tail call void @mpi_mul(ptr noundef %72, ptr noundef %72, ptr noundef %73) #9
  %74 = load ptr, ptr %50, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void @mpi_mod_barrett(ptr noundef %72, ptr noundef %72, ptr noundef nonnull %74) #9
  br label %80

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  tail call void @mpi_mod(ptr noundef %72, ptr noundef %72, ptr noundef %79) #9
  br label %80

80:                                               ; preds = %77, %76
  %81 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %1, align 4
  %84 = load ptr, ptr %46, align 4
  tail call void @mpi_add(ptr noundef %82, ptr noundef %83, ptr noundef %84) #9
  %85 = load ptr, ptr %50, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  tail call void @mpi_mod_barrett(ptr noundef %82, ptr noundef %82, ptr noundef nonnull %85) #9
  br label %91

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %90 = load ptr, ptr %89, align 4
  tail call void @mpi_mod(ptr noundef %82, ptr noundef %82, ptr noundef %90) #9
  br label %91

91:                                               ; preds = %88, %87
  %92 = load ptr, ptr %58, align 4
  %93 = load ptr, ptr %81, align 4
  tail call void @mpi_mul(ptr noundef %92, ptr noundef %92, ptr noundef %93) #9
  %94 = load ptr, ptr %50, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @mpi_mod_barrett(ptr noundef %92, ptr noundef %92, ptr noundef nonnull %94) #9
  br label %143

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %99 = load ptr, ptr %98, align 4
  tail call void @mpi_mod(ptr noundef %92, ptr noundef %92, ptr noundef %99) #9
  br label %143

100:                                              ; preds = %42
  %101 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %1, align 4
  tail call void @mpi_mul(ptr noundef %102, ptr noundef %103, ptr noundef %103) #9
  %104 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  tail call void @mpi_mod_barrett(ptr noundef %102, ptr noundef %102, ptr noundef nonnull %105) #9
  br label %111

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %110 = load ptr, ptr %109, align 4
  tail call void @mpi_mod(ptr noundef %102, ptr noundef %102, ptr noundef %110) #9
  br label %111

111:                                              ; preds = %108, %107
  %112 = load ptr, ptr %101, align 4
  %113 = tail call ptr @mpi_const(i32 noundef 3) #9
  tail call void @mpi_mul(ptr noundef %112, ptr noundef %112, ptr noundef %113) #9
  %114 = load ptr, ptr %104, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  tail call void @mpi_mod_barrett(ptr noundef %112, ptr noundef %112, ptr noundef nonnull %114) #9
  br label %120

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %119 = load ptr, ptr %118, align 4
  tail call void @mpi_mod(ptr noundef %112, ptr noundef %112, ptr noundef %119) #9
  br label %120

120:                                              ; preds = %117, %116
  %121 = load ptr, ptr %46, align 4
  %122 = load ptr, ptr %11, align 4
  %123 = tail call ptr @mpi_const(i32 noundef 4) #9
  %124 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @mpi_powm(ptr noundef %121, ptr noundef %122, ptr noundef %123, ptr noundef %125) #9
  %127 = load ptr, ptr %46, align 4
  %128 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 5
  %129 = load ptr, ptr %128, align 4
  tail call void @mpi_mul(ptr noundef %127, ptr noundef %127, ptr noundef %129) #9
  %130 = load ptr, ptr %104, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %120
  tail call void @mpi_mod_barrett(ptr noundef %127, ptr noundef %127, ptr noundef nonnull %130) #9
  br label %135

133:                                              ; preds = %120
  %134 = load ptr, ptr %124, align 4
  tail call void @mpi_mod(ptr noundef %127, ptr noundef %127, ptr noundef %134) #9
  br label %135

135:                                              ; preds = %133, %132
  %136 = load ptr, ptr %101, align 4
  %137 = load ptr, ptr %46, align 4
  tail call void @mpi_add(ptr noundef %136, ptr noundef %136, ptr noundef %137) #9
  %138 = load ptr, ptr %104, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  tail call void @mpi_mod_barrett(ptr noundef %136, ptr noundef %136, ptr noundef nonnull %138) #9
  br label %143

141:                                              ; preds = %135
  %142 = load ptr, ptr %124, align 4
  tail call void @mpi_mod(ptr noundef %136, ptr noundef %136, ptr noundef %142) #9
  br label %143

143:                                              ; preds = %141, %140, %97, %96
  %144 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %6, align 4
  %147 = load ptr, ptr %11, align 4
  tail call void @mpi_mul(ptr noundef %145, ptr noundef %146, ptr noundef %147) #9
  %148 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %143
  tail call void @mpi_mod_barrett(ptr noundef %145, ptr noundef %145, ptr noundef nonnull %149) #9
  br label %155

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %154 = load ptr, ptr %153, align 4
  tail call void @mpi_mod(ptr noundef %145, ptr noundef %145, ptr noundef %154) #9
  br label %155

155:                                              ; preds = %152, %151
  %156 = load ptr, ptr %144, align 4
  tail call void @mpi_lshift(ptr noundef %156, ptr noundef %156, i32 noundef 1) #9
  %157 = load ptr, ptr %148, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  tail call void @mpi_mod_barrett(ptr noundef %156, ptr noundef %156, ptr noundef nonnull %157) #9
  br label %163

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %162 = load ptr, ptr %161, align 4
  tail call void @mpi_mod(ptr noundef %156, ptr noundef %156, ptr noundef %162) #9
  br label %163

163:                                              ; preds = %160, %159
  %164 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = load ptr, ptr %6, align 4
  tail call void @mpi_mul(ptr noundef %165, ptr noundef %166, ptr noundef %166) #9
  %167 = load ptr, ptr %148, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  tail call void @mpi_mod_barrett(ptr noundef %165, ptr noundef %165, ptr noundef nonnull %167) #9
  br label %173

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %172 = load ptr, ptr %171, align 4
  tail call void @mpi_mod(ptr noundef %165, ptr noundef %165, ptr noundef %172) #9
  br label %173

173:                                              ; preds = %170, %169
  %174 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 4
  %175 = load ptr, ptr %174, align 4
  %176 = load ptr, ptr %164, align 4
  %177 = load ptr, ptr %1, align 4
  tail call void @mpi_mul(ptr noundef %175, ptr noundef %176, ptr noundef %177) #9
  %178 = load ptr, ptr %148, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %173
  tail call void @mpi_mod_barrett(ptr noundef %175, ptr noundef %175, ptr noundef nonnull %178) #9
  br label %184

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %183 = load ptr, ptr %182, align 4
  tail call void @mpi_mod(ptr noundef %175, ptr noundef %175, ptr noundef %183) #9
  br label %184

184:                                              ; preds = %181, %180
  %185 = load ptr, ptr %174, align 4
  %186 = tail call ptr @mpi_const(i32 noundef 4) #9
  tail call void @mpi_mul(ptr noundef %185, ptr noundef %185, ptr noundef %186) #9
  %187 = load ptr, ptr %148, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  tail call void @mpi_mod_barrett(ptr noundef %185, ptr noundef %185, ptr noundef nonnull %187) #9
  br label %193

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %192 = load ptr, ptr %191, align 4
  tail call void @mpi_mod(ptr noundef %185, ptr noundef %185, ptr noundef %192) #9
  br label %193

193:                                              ; preds = %190, %189
  %194 = load ptr, ptr %0, align 4
  %195 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 3
  %196 = load ptr, ptr %195, align 4
  tail call void @mpi_mul(ptr noundef %194, ptr noundef %196, ptr noundef %196) #9
  %197 = load ptr, ptr %148, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  tail call void @mpi_mod_barrett(ptr noundef %194, ptr noundef %194, ptr noundef nonnull %197) #9
  br label %203

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %202 = load ptr, ptr %201, align 4
  tail call void @mpi_mod(ptr noundef %194, ptr noundef %194, ptr noundef %202) #9
  br label %203

203:                                              ; preds = %200, %199
  %204 = load ptr, ptr %46, align 4
  %205 = load ptr, ptr %174, align 4
  tail call void @mpi_lshift(ptr noundef %204, ptr noundef %205, i32 noundef 1) #9
  %206 = load ptr, ptr %148, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %203
  tail call void @mpi_mod_barrett(ptr noundef %204, ptr noundef %204, ptr noundef nonnull %206) #9
  br label %212

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %211 = load ptr, ptr %210, align 4
  tail call void @mpi_mod(ptr noundef %204, ptr noundef %204, ptr noundef %211) #9
  br label %212

212:                                              ; preds = %209, %208
  %213 = load ptr, ptr %0, align 4
  %214 = load ptr, ptr %46, align 4
  tail call void @mpi_sub(ptr noundef %213, ptr noundef %213, ptr noundef %214) #9
  %215 = getelementptr inbounds %struct.gcry_mpi, ptr %213, i32 0, i32 3
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  br label %220

220:                                              ; preds = %220, %218
  %221 = load ptr, ptr %219, align 4
  tail call void @mpi_add(ptr noundef %213, ptr noundef %213, ptr noundef %221) #9
  %222 = load i32, ptr %215, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %220

224:                                              ; preds = %220, %212
  %225 = load ptr, ptr %164, align 4
  tail call void @mpi_mul(ptr noundef %225, ptr noundef %225, ptr noundef %225) #9
  %226 = load ptr, ptr %148, align 4
  %227 = icmp eq ptr %226, null
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  tail call void @mpi_mod_barrett(ptr noundef %225, ptr noundef %225, ptr noundef nonnull %226) #9
  br label %232

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %231 = load ptr, ptr %230, align 4
  tail call void @mpi_mod(ptr noundef %225, ptr noundef %225, ptr noundef %231) #9
  br label %232

232:                                              ; preds = %229, %228
  %233 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 5
  %234 = load ptr, ptr %233, align 4
  %235 = load ptr, ptr %164, align 4
  %236 = tail call ptr @mpi_const(i32 noundef 5) #9
  tail call void @mpi_mul(ptr noundef %234, ptr noundef %235, ptr noundef %236) #9
  %237 = load ptr, ptr %148, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %232
  tail call void @mpi_mod_barrett(ptr noundef %234, ptr noundef %234, ptr noundef nonnull %237) #9
  br label %243

240:                                              ; preds = %232
  %241 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %242 = load ptr, ptr %241, align 4
  tail call void @mpi_mod(ptr noundef %234, ptr noundef %234, ptr noundef %242) #9
  br label %243

243:                                              ; preds = %240, %239
  %244 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = load ptr, ptr %174, align 4
  %247 = load ptr, ptr %0, align 4
  tail call void @mpi_sub(ptr noundef %245, ptr noundef %246, ptr noundef %247) #9
  %248 = getelementptr inbounds %struct.gcry_mpi, ptr %245, i32 0, i32 3
  %249 = load i32, ptr %248, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %243
  %252 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  br label %253

253:                                              ; preds = %253, %251
  %254 = load ptr, ptr %252, align 4
  tail call void @mpi_add(ptr noundef %245, ptr noundef %245, ptr noundef %254) #9
  %255 = load i32, ptr %248, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %253

257:                                              ; preds = %253, %243
  %258 = load ptr, ptr %244, align 4
  %259 = load ptr, ptr %195, align 4
  tail call void @mpi_mul(ptr noundef %258, ptr noundef %258, ptr noundef %259) #9
  %260 = load ptr, ptr %148, align 4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %263, label %262

262:                                              ; preds = %257
  tail call void @mpi_mod_barrett(ptr noundef %258, ptr noundef %258, ptr noundef nonnull %260) #9
  br label %266

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %265 = load ptr, ptr %264, align 4
  tail call void @mpi_mod(ptr noundef %258, ptr noundef %258, ptr noundef %265) #9
  br label %266

266:                                              ; preds = %263, %262
  %267 = load ptr, ptr %244, align 4
  %268 = load ptr, ptr %233, align 4
  tail call void @mpi_sub(ptr noundef %267, ptr noundef %267, ptr noundef %268) #9
  %269 = getelementptr inbounds %struct.gcry_mpi, ptr %267, i32 0, i32 3
  %270 = load i32, ptr %269, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %363, label %272

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  br label %274

274:                                              ; preds = %274, %272
  %275 = load ptr, ptr %273, align 4
  tail call void @mpi_add(ptr noundef %267, ptr noundef %267, ptr noundef %275) #9
  %276 = load i32, ptr %269, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %363, label %274

278:                                              ; preds = %3
  %279 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2) #10
  br label %363

280:                                              ; preds = %3
  %281 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 14
  %282 = load ptr, ptr %281, align 4
  %283 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4
  %284 = load ptr, ptr %283, align 4
  %285 = load ptr, ptr %1, align 4
  %286 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 1
  %287 = load ptr, ptr %286, align 4
  tail call void %282(ptr noundef %284, ptr noundef %285, ptr noundef %287, ptr noundef %2) #9
  %288 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 17
  %289 = load ptr, ptr %288, align 4
  %290 = load ptr, ptr %283, align 4
  tail call void %289(ptr noundef %290, ptr noundef %290, ptr noundef %2) #9
  %291 = load ptr, ptr %288, align 4
  %292 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %1, align 4
  tail call void %291(ptr noundef %293, ptr noundef %294, ptr noundef %2) #9
  %295 = load ptr, ptr %288, align 4
  %296 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 2
  %297 = load ptr, ptr %296, align 4
  %298 = load ptr, ptr %286, align 4
  tail call void %295(ptr noundef %297, ptr noundef %298, ptr noundef %2) #9
  %299 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 1
  %300 = load i32, ptr %299, align 4
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %310

302:                                              ; preds = %280
  %303 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 15
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 3
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %308 = load ptr, ptr %307, align 4
  %309 = load ptr, ptr %292, align 4
  tail call void %304(ptr noundef %306, ptr noundef %308, ptr noundef %309, ptr noundef %2) #9
  br label %318

310:                                              ; preds = %280
  %311 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 16
  %312 = load ptr, ptr %311, align 4
  %313 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 3
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 5
  %316 = load ptr, ptr %315, align 4
  %317 = load ptr, ptr %292, align 4
  tail call void %312(ptr noundef %314, ptr noundef %316, ptr noundef %317, ptr noundef %2) #9
  br label %318

318:                                              ; preds = %310, %302
  %319 = load ptr, ptr %281, align 4
  %320 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 4
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 3
  %323 = load ptr, ptr %322, align 4
  %324 = load ptr, ptr %296, align 4
  tail call void %319(ptr noundef %321, ptr noundef %323, ptr noundef %324, ptr noundef %2) #9
  %325 = load ptr, ptr %288, align 4
  %326 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 5
  %327 = load ptr, ptr %326, align 4
  %328 = getelementptr inbounds %struct.gcry_mpi_point, ptr %1, i32 0, i32 2
  %329 = load ptr, ptr %328, align 4
  tail call void %325(ptr noundef %327, ptr noundef %329, ptr noundef %2) #9
  %330 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 18
  %331 = load ptr, ptr %330, align 4
  %332 = getelementptr %struct.mpi_ec_ctx, ptr %2, i32 0, i32 13, i32 4, i32 6
  %333 = load ptr, ptr %332, align 4
  %334 = load ptr, ptr %326, align 4
  tail call void %331(ptr noundef %333, ptr noundef %334, ptr noundef %2) #9
  %335 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 15
  %336 = load ptr, ptr %335, align 4
  %337 = load ptr, ptr %332, align 4
  %338 = load ptr, ptr %320, align 4
  tail call void %336(ptr noundef %337, ptr noundef %338, ptr noundef %337, ptr noundef %2) #9
  %339 = load ptr, ptr %335, align 4
  %340 = load ptr, ptr %0, align 4
  %341 = load ptr, ptr %283, align 4
  %342 = load ptr, ptr %292, align 4
  tail call void %339(ptr noundef %340, ptr noundef %341, ptr noundef %342, ptr noundef %2) #9
  %343 = load ptr, ptr %335, align 4
  %344 = load ptr, ptr %0, align 4
  %345 = load ptr, ptr %296, align 4
  tail call void %343(ptr noundef %344, ptr noundef %344, ptr noundef %345, ptr noundef %2) #9
  %346 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 16
  %347 = load ptr, ptr %346, align 4
  %348 = load ptr, ptr %0, align 4
  %349 = load ptr, ptr %332, align 4
  tail call void %347(ptr noundef %348, ptr noundef %348, ptr noundef %349, ptr noundef %2) #9
  %350 = load ptr, ptr %335, align 4
  %351 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %352 = load ptr, ptr %351, align 4
  %353 = load ptr, ptr %322, align 4
  %354 = load ptr, ptr %296, align 4
  tail call void %350(ptr noundef %352, ptr noundef %353, ptr noundef %354, ptr noundef %2) #9
  %355 = load ptr, ptr %346, align 4
  %356 = load ptr, ptr %351, align 4
  %357 = load ptr, ptr %320, align 4
  tail call void %355(ptr noundef %356, ptr noundef %356, ptr noundef %357, ptr noundef %2) #9
  %358 = load ptr, ptr %346, align 4
  %359 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %360 = load ptr, ptr %359, align 4
  %361 = load ptr, ptr %320, align 4
  %362 = load ptr, ptr %332, align 4
  tail call void %358(ptr noundef %360, ptr noundef %361, ptr noundef %362, ptr noundef %2) #9
  br label %363

363:                                              ; preds = %318, %278, %274, %266, %15, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_test_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_const(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_ec_curve_point(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %4 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %5 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @mpi_cmpabs(ptr noundef %6, ptr noundef %8) #9
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %89, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 @mpi_cmpabs(ptr noundef %13, ptr noundef %14) #9
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %89, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gcry_mpi_point, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %7, align 4
  %21 = tail call i32 @mpi_cmpabs(ptr noundef %19, ptr noundef %20) #9
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %89, label %23

23:                                               ; preds = %17
  %24 = load i32, ptr %1, align 4
  switch i32 %24, label %89 [
    i32 0, label %25
    i32 1, label %36
    i32 2, label %53
  ]

25:                                               ; preds = %23
  %26 = tail call i32 @mpi_ec_get_affine(ptr noundef %3, ptr noundef %4, ptr noundef %0, ptr noundef %1)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %89

28:                                               ; preds = %25
  %29 = tail call ptr @mpi_alloc(i32 noundef 0) #9
  tail call void @ec_pow2(ptr noundef %4, ptr noundef %4, ptr noundef %1)
  tail call fastcc void @ec_pow3(ptr noundef %29, ptr noundef %3, ptr noundef %1)
  %30 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  tail call void @ec_mulm(ptr noundef %5, ptr noundef %31, ptr noundef %3, ptr noundef %1)
  %32 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  tail call void @ec_addm(ptr noundef %5, ptr noundef %5, ptr noundef %33, ptr noundef %1)
  tail call void @ec_addm(ptr noundef %5, ptr noundef %5, ptr noundef %29, ptr noundef %1)
  %34 = tail call i32 @mpi_cmp(ptr noundef %4, ptr noundef %5) #9
  %35 = icmp eq i32 %34, 0
  tail call void @mpi_free(ptr noundef %29) #9
  br label %89

36:                                               ; preds = %23
  %37 = tail call i32 @mpi_ec_get_affine(ptr noundef %3, ptr noundef null, ptr noundef %0, ptr noundef %1)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr @mpi_const(i32 noundef 4) #9
  tail call void @ec_mulm(ptr noundef %5, ptr noundef %41, ptr noundef %42, ptr noundef %1)
  %43 = tail call ptr @mpi_const(i32 noundef 2) #9
  tail call void @ec_addm(ptr noundef %5, ptr noundef %5, ptr noundef %43, ptr noundef %1)
  tail call void @ec_mulm(ptr noundef %5, ptr noundef %5, ptr noundef %3, ptr noundef %1)
  tail call void @ec_pow2(ptr noundef %4, ptr noundef %3, ptr noundef %1)
  tail call void @ec_addm(ptr noundef %5, ptr noundef %5, ptr noundef %4, ptr noundef %1)
  %44 = tail call ptr @mpi_const(i32 noundef 1) #9
  tail call void @ec_addm(ptr noundef %5, ptr noundef %5, ptr noundef %44, ptr noundef %1)
  tail call void @ec_mulm(ptr noundef %5, ptr noundef %5, ptr noundef %3, ptr noundef %1)
  %45 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  tail call void @ec_mulm(ptr noundef %5, ptr noundef %5, ptr noundef %46, ptr noundef %1)
  %47 = load ptr, ptr %7, align 4
  %48 = tail call ptr @mpi_const(i32 noundef 1) #9
  tail call void @ec_subm(ptr noundef %4, ptr noundef %47, ptr noundef %48, ptr noundef %1)
  tail call void @mpi_rshift(ptr noundef %4, ptr noundef %4, i32 noundef 1) #9
  %49 = load ptr, ptr %7, align 4
  %50 = tail call i32 @mpi_powm(ptr noundef %5, ptr noundef %5, ptr noundef %4, ptr noundef %49) #9
  %51 = tail call i32 @mpi_cmp_ui(ptr noundef %5, i32 noundef 1) #9
  %52 = icmp eq i32 %51, 0
  br label %89

53:                                               ; preds = %23
  %54 = tail call i32 @mpi_ec_get_affine(ptr noundef %3, ptr noundef %4, ptr noundef %0, ptr noundef %1)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @mpi_resize(ptr noundef %5, i32 noundef %59) #9
  %61 = load ptr, ptr %7, align 4
  %62 = getelementptr inbounds %struct.gcry_mpi, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.gcry_mpi, ptr %5, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 17
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef %3, ptr noundef %3, ptr noundef %1) #9
  %67 = load ptr, ptr %65, align 4
  tail call void %67(ptr noundef %4, ptr noundef %4, ptr noundef %1) #9
  %68 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 1
  %71 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 16
  %72 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 5
  %73 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 15
  %74 = select i1 %70, ptr %7, ptr %72
  %75 = select i1 %70, ptr %73, ptr %71
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %74, align 4
  tail call void %76(ptr noundef %5, ptr noundef %77, ptr noundef %3, ptr noundef %1) #9
  %78 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 14
  %79 = load ptr, ptr %78, align 4
  tail call void %79(ptr noundef %5, ptr noundef %5, ptr noundef %4, ptr noundef %1) #9
  %80 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 16
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %3, ptr noundef %3, ptr noundef %4, ptr noundef %1) #9
  %82 = load ptr, ptr %80, align 4
  %83 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  tail call void %82(ptr noundef %3, ptr noundef %3, ptr noundef %84, ptr noundef %1) #9
  %85 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %1, i32 0, i32 15
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %5, ptr noundef %5, ptr noundef %3, ptr noundef %1) #9
  %87 = tail call i32 @mpi_cmp_ui(ptr noundef %5, i32 noundef 1) #9
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %56, %53, %39, %36, %28, %25, %23, %17, %11, %2
  %90 = phi i1 [ false, %2 ], [ false, %11 ], [ false, %17 ], [ false, %23 ], [ false, %53 ], [ false, %36 ], [ %52, %39 ], [ %35, %28 ], [ false, %25 ], [ %88, %56 ]
  %91 = zext i1 %90 to i32
  tail call void @mpi_free(ptr noundef %5) #9
  tail call void @mpi_free(ptr noundef %3) #9
  tail call void @mpi_free(ptr noundef %4) #9
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmpabs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ec_pow3(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @mpi_const(i32 noundef 3) #9
  %5 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %2, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @mpi_powm(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_rshift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_mod_barrett(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_mod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_lshift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_addm_25519(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9, %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @mpihelp_add_n(ptr noundef %25, ptr noundef %21, ptr noundef %23, i32 noundef 8) #9
  %27 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @mpihelp_sub_n(ptr noundef %25, ptr noundef %25, ptr noundef %30, i32 noundef 8) #9
  %32 = load ptr, ptr %27, align 4
  %33 = getelementptr inbounds %struct.gcry_mpi, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq i32 %31, 0
  %36 = load i32, ptr %34, align 4
  %37 = select i1 %35, i32 0, i32 %36
  store i32 %37, ptr %5, align 4
  %38 = getelementptr inbounds i32, ptr %5, i32 1
  %39 = getelementptr i32, ptr %34, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = select i1 %35, i32 0, i32 %40
  store i32 %41, ptr %38, align 4
  %42 = getelementptr inbounds i32, ptr %5, i32 2
  %43 = getelementptr i32, ptr %34, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = select i1 %35, i32 0, i32 %44
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds i32, ptr %5, i32 3
  %47 = getelementptr i32, ptr %34, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = select i1 %35, i32 0, i32 %48
  store i32 %49, ptr %46, align 4
  %50 = getelementptr inbounds i32, ptr %5, i32 4
  %51 = getelementptr i32, ptr %34, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = select i1 %35, i32 0, i32 %52
  store i32 %53, ptr %50, align 4
  %54 = getelementptr inbounds i32, ptr %5, i32 5
  %55 = getelementptr i32, ptr %34, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = select i1 %35, i32 0, i32 %56
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds i32, ptr %5, i32 6
  %59 = getelementptr i32, ptr %34, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = select i1 %35, i32 0, i32 %60
  store i32 %61, ptr %58, align 4
  %62 = getelementptr inbounds i32, ptr %5, i32 7
  %63 = getelementptr i32, ptr %34, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = select i1 %35, i32 0, i32 %64
  store i32 %65, ptr %62, align 4
  %66 = call i32 @mpihelp_add_n(ptr noundef %25, ptr noundef %25, ptr noundef nonnull %5, i32 noundef 8) #9
  %67 = getelementptr i32, ptr %25, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 2147483647
  store i32 %69, ptr %67, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_subm_25519(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [8 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 8
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9, %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @mpihelp_sub_n(ptr noundef %25, ptr noundef %21, ptr noundef %23, i32 noundef 8) #9
  %27 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq i32 %26, 0
  %32 = load i32, ptr %30, align 4
  %33 = select i1 %31, i32 0, i32 %32
  store i32 %33, ptr %5, align 4
  %34 = getelementptr inbounds i32, ptr %5, i32 1
  %35 = getelementptr i32, ptr %30, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = select i1 %31, i32 0, i32 %36
  store i32 %37, ptr %34, align 4
  %38 = getelementptr inbounds i32, ptr %5, i32 2
  %39 = getelementptr i32, ptr %30, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = select i1 %31, i32 0, i32 %40
  store i32 %41, ptr %38, align 4
  %42 = getelementptr inbounds i32, ptr %5, i32 3
  %43 = getelementptr i32, ptr %30, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = select i1 %31, i32 0, i32 %44
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds i32, ptr %5, i32 4
  %47 = getelementptr i32, ptr %30, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = select i1 %31, i32 0, i32 %48
  store i32 %49, ptr %46, align 4
  %50 = getelementptr inbounds i32, ptr %5, i32 5
  %51 = getelementptr i32, ptr %30, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = select i1 %31, i32 0, i32 %52
  store i32 %53, ptr %50, align 4
  %54 = getelementptr inbounds i32, ptr %5, i32 6
  %55 = getelementptr i32, ptr %30, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = select i1 %31, i32 0, i32 %56
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds i32, ptr %5, i32 7
  %59 = getelementptr i32, ptr %30, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = select i1 %31, i32 0, i32 %60
  store i32 %61, ptr %58, align 4
  %62 = call i32 @mpihelp_add_n(ptr noundef %25, ptr noundef %25, ptr noundef nonnull %5, i32 noundef 8) #9
  %63 = getelementptr i32, ptr %25, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 2147483647
  store i32 %65, ptr %63, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_mulm_25519(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [16 x i32], align 4
  %6 = alloca [9 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10, %4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  call void @mpihelp_mul_n(ptr noundef nonnull %5, ptr noundef %22, ptr noundef %24, i32 noundef 8) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %26, ptr noundef nonnull align 4 dereferenceable(32) %5, i32 32, i1 false)
  %27 = getelementptr i32, ptr %26, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 2147483647
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds i32, ptr %5, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %30, i32 36, i1 false)
  %31 = call i32 @mpihelp_rshift(ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 9, i32 noundef 31) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %6, i32 32, i1 false)
  %32 = call i32 @mpihelp_lshift(ptr noundef nonnull %6, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 4) #9
  %33 = getelementptr inbounds [9 x i32], ptr %6, i32 0, i32 8
  store i32 %32, ptr %33, align 4
  %34 = call i32 @mpihelp_add_n(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 8) #9
  %35 = load i32, ptr %33, align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr %33, align 4
  %37 = call i32 @mpihelp_add_n(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 8) #9
  %38 = load i32, ptr %33, align 4
  %39 = add i32 %38, %37
  store i32 %39, ptr %33, align 4
  %40 = call i32 @mpihelp_add_n(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 8) #9
  %41 = load i32, ptr %33, align 4
  %42 = add i32 %41, %40
  store i32 %42, ptr %33, align 4
  %43 = call i32 @mpihelp_add_n(ptr noundef %26, ptr noundef %26, ptr noundef nonnull %6, i32 noundef 8) #9
  %44 = load i32, ptr %33, align 4
  %45 = add i32 %44, %43
  store i32 %45, ptr %33, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false)
  %46 = load i32, ptr %27, align 4
  %47 = call i32 @llvm.fshl.i32(i32 %45, i32 %46, i32 1)
  %48 = mul i32 %47, 19
  store i32 %48, ptr %6, align 4
  %49 = load i32, ptr %27, align 4
  %50 = and i32 %49, 2147483647
  store i32 %50, ptr %27, align 4
  %51 = call i32 @mpihelp_add_n(ptr noundef %26, ptr noundef %26, ptr noundef nonnull %6, i32 noundef 8) #9
  store i32 0, ptr %6, align 4
  %52 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.gcry_mpi, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 @mpihelp_sub_n(ptr noundef %26, ptr noundef %26, ptr noundef %55, i32 noundef 8) #9
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr inbounds %struct.gcry_mpi, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq i32 %56, 0
  %61 = load i32, ptr %6, align 4
  %62 = load i32, ptr %59, align 4
  %63 = select i1 %60, i32 %61, i32 %62
  store i32 %63, ptr %6, align 4
  %64 = getelementptr inbounds i32, ptr %6, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i32, ptr %59, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = select i1 %60, i32 %65, i32 %67
  store i32 %68, ptr %64, align 4
  %69 = getelementptr inbounds i32, ptr %6, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr i32, ptr %59, i32 2
  %72 = load i32, ptr %71, align 4
  %73 = select i1 %60, i32 %70, i32 %72
  store i32 %73, ptr %69, align 4
  %74 = getelementptr inbounds i32, ptr %6, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr i32, ptr %59, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = select i1 %60, i32 %75, i32 %77
  store i32 %78, ptr %74, align 4
  %79 = getelementptr inbounds i32, ptr %6, i32 4
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i32, ptr %59, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = select i1 %60, i32 %80, i32 %82
  store i32 %83, ptr %79, align 4
  %84 = getelementptr inbounds i32, ptr %6, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr i32, ptr %59, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = select i1 %60, i32 %85, i32 %87
  store i32 %88, ptr %84, align 4
  %89 = getelementptr inbounds i32, ptr %6, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr i32, ptr %59, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = select i1 %60, i32 %90, i32 %92
  store i32 %93, ptr %89, align 4
  %94 = getelementptr inbounds i32, ptr %6, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr i32, ptr %59, i32 7
  %97 = load i32, ptr %96, align 4
  %98 = select i1 %60, i32 %95, i32 %97
  store i32 %98, ptr %94, align 4
  %99 = call i32 @mpihelp_add_n(ptr noundef %26, ptr noundef %26, ptr noundef nonnull %6, i32 noundef 8) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_mul2_25519(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @ec_addm_25519(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_pow2_25519(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @ec_mulm_25519(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_addm_448(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [14 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 14
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 14
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9, %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @mpihelp_add_n(ptr noundef %25, ptr noundef %21, ptr noundef %23, i32 noundef 14) #9
  %27 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq i32 %26, 0
  %32 = load i32, ptr %30, align 4
  %33 = select i1 %31, i32 0, i32 %32
  store i32 %33, ptr %5, align 4
  %34 = getelementptr inbounds i32, ptr %5, i32 1
  %35 = getelementptr i32, ptr %30, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = select i1 %31, i32 0, i32 %36
  store i32 %37, ptr %34, align 4
  %38 = getelementptr inbounds i32, ptr %5, i32 2
  %39 = getelementptr i32, ptr %30, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = select i1 %31, i32 0, i32 %40
  store i32 %41, ptr %38, align 4
  %42 = getelementptr inbounds i32, ptr %5, i32 3
  %43 = getelementptr i32, ptr %30, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = select i1 %31, i32 0, i32 %44
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds i32, ptr %5, i32 4
  %47 = getelementptr i32, ptr %30, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = select i1 %31, i32 0, i32 %48
  store i32 %49, ptr %46, align 4
  %50 = getelementptr inbounds i32, ptr %5, i32 5
  %51 = getelementptr i32, ptr %30, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = select i1 %31, i32 0, i32 %52
  store i32 %53, ptr %50, align 4
  %54 = getelementptr inbounds i32, ptr %5, i32 6
  %55 = getelementptr i32, ptr %30, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = select i1 %31, i32 0, i32 %56
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds i32, ptr %5, i32 7
  %59 = getelementptr i32, ptr %30, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = select i1 %31, i32 0, i32 %60
  store i32 %61, ptr %58, align 4
  %62 = getelementptr inbounds i32, ptr %5, i32 8
  %63 = getelementptr i32, ptr %30, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = select i1 %31, i32 0, i32 %64
  store i32 %65, ptr %62, align 4
  %66 = getelementptr inbounds i32, ptr %5, i32 9
  %67 = getelementptr i32, ptr %30, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = select i1 %31, i32 0, i32 %68
  store i32 %69, ptr %66, align 4
  %70 = getelementptr inbounds i32, ptr %5, i32 10
  %71 = getelementptr i32, ptr %30, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = select i1 %31, i32 0, i32 %72
  store i32 %73, ptr %70, align 4
  %74 = getelementptr inbounds i32, ptr %5, i32 11
  %75 = getelementptr i32, ptr %30, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = select i1 %31, i32 0, i32 %76
  store i32 %77, ptr %74, align 4
  %78 = getelementptr inbounds i32, ptr %5, i32 12
  %79 = getelementptr i32, ptr %30, i32 12
  %80 = load i32, ptr %79, align 4
  %81 = select i1 %31, i32 0, i32 %80
  store i32 %81, ptr %78, align 4
  %82 = getelementptr inbounds i32, ptr %5, i32 13
  %83 = getelementptr i32, ptr %30, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = select i1 %31, i32 0, i32 %84
  store i32 %85, ptr %82, align 4
  %86 = call i32 @mpihelp_sub_n(ptr noundef %25, ptr noundef %25, ptr noundef nonnull %5, i32 noundef 14) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_subm_448(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [14 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #9
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 14
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 14
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9, %4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @mpihelp_sub_n(ptr noundef %25, ptr noundef %21, ptr noundef %23, i32 noundef 14) #9
  %27 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq i32 %26, 0
  %32 = load i32, ptr %30, align 4
  %33 = select i1 %31, i32 0, i32 %32
  store i32 %33, ptr %5, align 4
  %34 = getelementptr inbounds i32, ptr %5, i32 1
  %35 = getelementptr i32, ptr %30, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = select i1 %31, i32 0, i32 %36
  store i32 %37, ptr %34, align 4
  %38 = getelementptr inbounds i32, ptr %5, i32 2
  %39 = getelementptr i32, ptr %30, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = select i1 %31, i32 0, i32 %40
  store i32 %41, ptr %38, align 4
  %42 = getelementptr inbounds i32, ptr %5, i32 3
  %43 = getelementptr i32, ptr %30, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = select i1 %31, i32 0, i32 %44
  store i32 %45, ptr %42, align 4
  %46 = getelementptr inbounds i32, ptr %5, i32 4
  %47 = getelementptr i32, ptr %30, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = select i1 %31, i32 0, i32 %48
  store i32 %49, ptr %46, align 4
  %50 = getelementptr inbounds i32, ptr %5, i32 5
  %51 = getelementptr i32, ptr %30, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = select i1 %31, i32 0, i32 %52
  store i32 %53, ptr %50, align 4
  %54 = getelementptr inbounds i32, ptr %5, i32 6
  %55 = getelementptr i32, ptr %30, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = select i1 %31, i32 0, i32 %56
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds i32, ptr %5, i32 7
  %59 = getelementptr i32, ptr %30, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = select i1 %31, i32 0, i32 %60
  store i32 %61, ptr %58, align 4
  %62 = getelementptr inbounds i32, ptr %5, i32 8
  %63 = getelementptr i32, ptr %30, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = select i1 %31, i32 0, i32 %64
  store i32 %65, ptr %62, align 4
  %66 = getelementptr inbounds i32, ptr %5, i32 9
  %67 = getelementptr i32, ptr %30, i32 9
  %68 = load i32, ptr %67, align 4
  %69 = select i1 %31, i32 0, i32 %68
  store i32 %69, ptr %66, align 4
  %70 = getelementptr inbounds i32, ptr %5, i32 10
  %71 = getelementptr i32, ptr %30, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = select i1 %31, i32 0, i32 %72
  store i32 %73, ptr %70, align 4
  %74 = getelementptr inbounds i32, ptr %5, i32 11
  %75 = getelementptr i32, ptr %30, i32 11
  %76 = load i32, ptr %75, align 4
  %77 = select i1 %31, i32 0, i32 %76
  store i32 %77, ptr %74, align 4
  %78 = getelementptr inbounds i32, ptr %5, i32 12
  %79 = getelementptr i32, ptr %30, i32 12
  %80 = load i32, ptr %79, align 4
  %81 = select i1 %31, i32 0, i32 %80
  store i32 %81, ptr %78, align 4
  %82 = getelementptr inbounds i32, ptr %5, i32 13
  %83 = getelementptr i32, ptr %30, i32 13
  %84 = load i32, ptr %83, align 4
  %85 = select i1 %31, i32 0, i32 %84
  store i32 %85, ptr %82, align 4
  %86 = call i32 @mpihelp_add_n(ptr noundef %25, ptr noundef %25, ptr noundef nonnull %5, i32 noundef 14) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_mulm_448(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [28 x i32], align 4
  %6 = alloca [7 x i32], align 4
  %7 = alloca [7 x i32], align 4
  %8 = alloca [7 x i32], align 4
  %9 = alloca [7 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %5, i8 0, i32 112, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, i8 0, i32 28, i1 false), !annotation !8
  %10 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 14
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 14
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 14
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %13, %4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  call void @mpihelp_mul_n(ptr noundef nonnull %5, ptr noundef %25, ptr noundef %27, i32 noundef 14) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(28) %5, i32 28, i1 false)
  %30 = getelementptr inbounds i8, ptr %5, i32 28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %9, ptr noundef align 4 dereferenceable(28) %30, i32 28, i1 false)
  %31 = getelementptr inbounds i8, ptr %5, i32 56
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, ptr noundef align 4 dereferenceable(28) %31, i32 28, i1 false)
  %32 = getelementptr inbounds i8, ptr %5, i32 84
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, ptr noundef align 4 dereferenceable(28) %32, i32 28, i1 false)
  %33 = call i32 @mpihelp_add_n(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %6, i32 noundef 7) #9
  %34 = call i32 @mpihelp_add_n(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %7, i32 noundef 7) #9
  %35 = load i32, ptr %8, align 4
  store i32 %35, ptr %29, align 4
  %36 = getelementptr inbounds [7 x i32], ptr %8, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i32, ptr %29, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds [7 x i32], ptr %8, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i32, ptr %29, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds [7 x i32], ptr %8, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr i32, ptr %29, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds [7 x i32], ptr %8, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i32, ptr %29, i32 4
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds [7 x i32], ptr %8, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i32, ptr %29, i32 5
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds [7 x i32], ptr %8, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i32, ptr %29, i32 6
  store i32 %52, ptr %53, align 4
  %54 = add i32 %34, %33
  %55 = load i32, ptr %9, align 4
  %56 = add i32 %54, %55
  store i32 %56, ptr %9, align 4
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %58, label %88

58:                                               ; preds = %23
  %59 = getelementptr inbounds i32, ptr %9, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %58
  %64 = getelementptr inbounds i32, ptr %9, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = getelementptr inbounds i32, ptr %9, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = getelementptr inbounds i32, ptr %9, i32 4
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, 1
  store i32 %76, ptr %74, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = getelementptr inbounds i32, ptr %9, i32 5
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = getelementptr inbounds i32, ptr %9, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83, %78, %73, %68, %63, %58, %23
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i32 [ 0, %88 ], [ 1, %83 ]
  %91 = call i32 @mpihelp_add_n(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %6, i32 noundef 7) #9
  %92 = call i32 @mpihelp_add_n(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef 7) #9
  %93 = call i32 @mpihelp_add_n(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %7, i32 noundef 7) #9
  %94 = load i32, ptr %9, align 4
  %95 = getelementptr i32, ptr %29, i32 7
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds [7 x i32], ptr %9, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr i32, ptr %29, i32 8
  store i32 %97, ptr %98, align 4
  %99 = getelementptr inbounds [7 x i32], ptr %9, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr i32, ptr %29, i32 9
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds [7 x i32], ptr %9, i32 0, i32 3
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr i32, ptr %29, i32 10
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds [7 x i32], ptr %9, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i32, ptr %29, i32 11
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds [7 x i32], ptr %9, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i32, ptr %29, i32 12
  store i32 %109, ptr %110, align 4
  %111 = getelementptr inbounds [7 x i32], ptr %9, i32 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr i32, ptr %29, i32 13
  store i32 %112, ptr %113, align 4
  %114 = add i32 %91, %90
  %115 = add i32 %114, %92
  %116 = add i32 %115, %93
  %117 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %117, i8 0, i32 52, i1 false)
  store i32 %116, ptr %30, align 4
  store i32 %116, ptr %5, align 4
  %118 = call i32 @mpihelp_add_n(ptr noundef %29, ptr noundef %29, ptr noundef nonnull %5, i32 noundef 14) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, i8 0, i32 56, i1 false)
  %119 = getelementptr inbounds %struct.mpi_ec_ctx, ptr %3, i32 0, i32 4
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.gcry_mpi, ptr %120, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = call i32 @mpihelp_sub_n(ptr noundef %29, ptr noundef %29, ptr noundef %122, i32 noundef 14) #9
  %124 = load ptr, ptr %119, align 4
  %125 = getelementptr inbounds %struct.gcry_mpi, ptr %124, i32 0, i32 5
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq i32 %123, 0
  %128 = load i32, ptr %5, align 4
  %129 = load i32, ptr %126, align 4
  %130 = select i1 %127, i32 %128, i32 %129
  store i32 %130, ptr %5, align 4
  %131 = getelementptr inbounds i32, ptr %5, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr i32, ptr %126, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = select i1 %127, i32 %132, i32 %134
  store i32 %135, ptr %131, align 4
  %136 = getelementptr inbounds i32, ptr %5, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr i32, ptr %126, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = select i1 %127, i32 %137, i32 %139
  store i32 %140, ptr %136, align 4
  %141 = getelementptr inbounds i32, ptr %5, i32 3
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i32, ptr %126, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = select i1 %127, i32 %142, i32 %144
  store i32 %145, ptr %141, align 4
  %146 = getelementptr inbounds i32, ptr %5, i32 4
  %147 = load i32, ptr %146, align 4
  %148 = getelementptr i32, ptr %126, i32 4
  %149 = load i32, ptr %148, align 4
  %150 = select i1 %127, i32 %147, i32 %149
  store i32 %150, ptr %146, align 4
  %151 = getelementptr inbounds i32, ptr %5, i32 5
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr i32, ptr %126, i32 5
  %154 = load i32, ptr %153, align 4
  %155 = select i1 %127, i32 %152, i32 %154
  store i32 %155, ptr %151, align 4
  %156 = getelementptr inbounds i32, ptr %5, i32 6
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr i32, ptr %126, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = select i1 %127, i32 %157, i32 %159
  store i32 %160, ptr %156, align 4
  %161 = load i32, ptr %30, align 4
  %162 = getelementptr i32, ptr %126, i32 7
  %163 = load i32, ptr %162, align 4
  %164 = select i1 %127, i32 %161, i32 %163
  store i32 %164, ptr %30, align 4
  %165 = getelementptr inbounds i32, ptr %5, i32 8
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr i32, ptr %126, i32 8
  %168 = load i32, ptr %167, align 4
  %169 = select i1 %127, i32 %166, i32 %168
  store i32 %169, ptr %165, align 4
  %170 = getelementptr inbounds i32, ptr %5, i32 9
  %171 = load i32, ptr %170, align 4
  %172 = getelementptr i32, ptr %126, i32 9
  %173 = load i32, ptr %172, align 4
  %174 = select i1 %127, i32 %171, i32 %173
  store i32 %174, ptr %170, align 4
  %175 = getelementptr inbounds i32, ptr %5, i32 10
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr i32, ptr %126, i32 10
  %178 = load i32, ptr %177, align 4
  %179 = select i1 %127, i32 %176, i32 %178
  store i32 %179, ptr %175, align 4
  %180 = getelementptr inbounds i32, ptr %5, i32 11
  %181 = load i32, ptr %180, align 4
  %182 = getelementptr i32, ptr %126, i32 11
  %183 = load i32, ptr %182, align 4
  %184 = select i1 %127, i32 %181, i32 %183
  store i32 %184, ptr %180, align 4
  %185 = getelementptr inbounds i32, ptr %5, i32 12
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr i32, ptr %126, i32 12
  %188 = load i32, ptr %187, align 4
  %189 = select i1 %127, i32 %186, i32 %188
  store i32 %189, ptr %185, align 4
  %190 = getelementptr inbounds i32, ptr %5, i32 13
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr i32, ptr %126, i32 13
  %193 = load i32, ptr %192, align 4
  %194 = select i1 %127, i32 %191, i32 %193
  store i32 %194, ptr %190, align 4
  %195 = call i32 @mpihelp_add_n(ptr noundef %29, ptr noundef %29, ptr noundef nonnull %5, i32 noundef 14) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_mul2_448(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @ec_addm_448(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ec_pow2_448(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  tail call void @ec_mulm_448(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpihelp_mul_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_invm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_sub_ui(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_swap_cond(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_powm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{!"auto-init"}
