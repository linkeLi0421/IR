; ModuleID = '/llk/IR/lib/mpi/mpiutil.c_pt.bc'
source_filename = "../lib/mpi/mpiutil.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_const:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_const\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_clear\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_free\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_set:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_set\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_set_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_set_ui\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_set_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_mpi__220_64_mpi_init2 = internal global ptr @mpi_init, section ".initcall2.init", align 4
@.str = private unnamed_addr constant [38 x i8] c"\013MPI: invalid mpi_const selector %d\0A\00", align 1
@constants = internal unnamed_addr global [6 x ptr] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"\013MPI: MPI subsystem not initialized\0A\00", align 1
@__kstrtab_mpi_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_const = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_const to i32), ptr @__kstrtab_mpi_const, ptr @__kstrtabns_mpi_const }, section "___ksymtab_gpl+mpi_const", align 4
@__kstrtab_mpi_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_alloc to i32), ptr @__kstrtab_mpi_alloc, ptr @__kstrtabns_mpi_alloc }, section "___ksymtab_gpl+mpi_alloc", align 4
@__kstrtab_mpi_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_clear to i32), ptr @__kstrtab_mpi_clear, ptr @__kstrtabns_mpi_clear }, section "___ksymtab_gpl+mpi_clear", align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"\016invalid flag value in mpi\0A\00", align 1
@__kstrtab_mpi_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_free to i32), ptr @__kstrtab_mpi_free, ptr @__kstrtabns_mpi_free }, section "___ksymtab_gpl+mpi_free", align 4
@__kstrtab_mpi_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_set = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_set to i32), ptr @__kstrtab_mpi_set, ptr @__kstrtabns_mpi_set }, section "___ksymtab_gpl+mpi_set", align 4
@__kstrtab_mpi_set_ui = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_set_ui = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_set_ui = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_set_ui to i32), ptr @__kstrtab_mpi_set_ui, ptr @__kstrtabns_mpi_set_ui }, section "___ksymtab_gpl+mpi_set_ui", align 4
@__UNIQUE_ID_description221 = internal constant [45 x i8] c"mpi.description=Multiprecision maths library\00", section ".modinfo", align 1
@__UNIQUE_ID_file222 = internal constant [21 x i8] c"mpi.file=lib/mpi/mpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [16 x i8] c"mpi.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_description221, ptr @__UNIQUE_ID_file222, ptr @__UNIQUE_ID_license223, ptr @__initcall__kmod_mpi__220_64_mpi_init2, ptr @__ksymtab_mpi_alloc, ptr @__ksymtab_mpi_clear, ptr @__ksymtab_mpi_const, ptr @__ksymtab_mpi_free, ptr @__ksymtab_mpi_set, ptr @__ksymtab_mpi_set_ui], section "llvm.metadata"
@switch.table.mpi_init = private unnamed_addr constant [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 8], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mpi_init() #0 section ".init.text" {
  br label %1

1:                                                ; preds = %6, %0
  %2 = phi i32 [ 0, %0 ], [ %12, %6 ]
  %3 = icmp ult i32 %2, 6
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2) #11
  br label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds [6 x i32], ptr @switch.table.mpi_init, i32 0, i32 %2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @mpi_alloc_set_ui(i32 noundef %8)
  %10 = getelementptr [6 x ptr], ptr @constants, i32 0, i32 %2
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %9, i32 0, i32 4
  store i32 48, ptr %11, align 4
  %12 = add nuw nsw i32 %2, 1
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %14, label %1

14:                                               ; preds = %6, %4
  %15 = phi i32 [ -14, %4 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_const(i32 noundef %0) #1 {
  %2 = icmp ugt i32 %0, 6
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #11
  br label %5

5:                                                ; preds = %3, %1
  %6 = getelementptr [6 x ptr], ptr @constants, i32 0, i32 %0
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  %11 = load ptr, ptr %6, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ %11, %9 ], [ %7, %5 ]
  ret ptr %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc(i32 noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 24) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = shl i32 %0, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  store ptr null, ptr %11, align 4
  br label %16

12:                                               ; preds = %7
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #13
  %14 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %10
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %21

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  store ptr null, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %12
  store i32 %0, ptr %3, align 8
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  br label %21

21:                                               ; preds = %19, %16, %1
  %22 = phi ptr [ %3, %19 ], [ null, %16 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc_limb_space(i32 noundef %0) local_unnamed_addr #1 {
  %2 = shl i32 %0, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3264) #13
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ null, %1 ], [ %5, %4 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_free_limb_space(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @kfree_sensitive(ptr noundef nonnull %0) #14
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_assign_limb_space(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @kfree_sensitive(ptr noundef nonnull %5) #14
  br label %8

8:                                                ; preds = %7, %3
  store ptr %1, ptr %4, align 4
  store i32 %2, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mpi_resize(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ult i32 %3, %1
  br i1 %4, label %5, label %26

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #14
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  br i1 %8, label %20, label %12

12:                                               ; preds = %5
  br i1 %10, label %26, label %13, !prof !8

13:                                               ; preds = %12
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %0, align 4
  %18 = load ptr, ptr %6, align 4
  %19 = shl i32 %17, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %14, ptr align 4 %18, i32 %19, i1 false)
  tail call void @kfree_sensitive(ptr noundef %18) #14
  store ptr %14, ptr %6, align 4
  br label %25

20:                                               ; preds = %5
  br i1 %10, label %21, label %22, !prof !8

21:                                               ; preds = %20
  store ptr null, ptr %6, align 4
  br label %26

22:                                               ; preds = %20
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #13
  store ptr %23, ptr %6, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %16
  store i32 %1, ptr %0, align 4
  br label %26

26:                                               ; preds = %25, %22, %21, %13, %12, %2
  %27 = phi i32 [ 0, %25 ], [ 0, %2 ], [ -12, %13 ], [ -12, %22 ], [ -12, %21 ], [ -12, %12 ]
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mpi_clear(ptr noundef writeonly %0) #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 4
  store i32 0, ptr %5, align 4
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_free(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %11, label %10

10:                                               ; preds = %3
  tail call void @kfree_sensitive(ptr noundef %9) #14
  br label %14

11:                                               ; preds = %3
  %12 = icmp eq ptr %9, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @kfree_sensitive(ptr noundef nonnull %9) #14
  br label %14

14:                                               ; preds = %13, %11, %10
  %15 = load i32, ptr %4, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %19

19:                                               ; preds = %17, %14
  tail call void @kfree(ptr noundef nonnull %0) #14
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_copy(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 24) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = shl i32 %5, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5
  store ptr null, ptr %15, align 4
  br label %20

16:                                               ; preds = %11
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #13
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %14
  tail call void @kfree(ptr noundef nonnull %7) #14
  br label %25

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %16
  store i32 %5, ptr %7, align 8
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %24, i8 0, i64 16, i1 false) #14
  br label %25

25:                                               ; preds = %23, %20, %3
  %26 = phi ptr [ %7, %23 ], [ null, %20 ], [ null, %3 ]
  %27 = load i32, ptr %4, align 4
  %28 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 4
  %35 = and i32 %33, -49
  store i32 %35, ptr %34, align 8
  %36 = icmp sgt i32 %27, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %39 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 5
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi i32 [ 0, %37 ], [ %47, %40 ]
  %42 = load ptr, ptr %38, align 4
  %43 = getelementptr i32, ptr %42, i32 %41
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr i32, ptr %45, i32 %41
  store i32 %44, ptr %46, align 4
  %47 = add nuw nsw i32 %41, 1
  %48 = load i32, ptr %28, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %40, label %50

50:                                               ; preds = %40, %25, %1
  %51 = phi ptr [ null, %1 ], [ %26, %25 ], [ %26, %40 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc_like(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 24) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %9
  %12 = shl i32 %5, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5
  store ptr null, ptr %15, align 4
  br label %20

16:                                               ; preds = %11
  %17 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #13
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5
  store ptr %17, ptr %18, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %14
  tail call void @kfree(ptr noundef nonnull %7) #14
  br label %25

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 5
  store ptr null, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %16
  store i32 %5, ptr %7, align 8
  %24 = getelementptr inbounds %struct.gcry_mpi, ptr %7, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %24, i8 0, i64 16, i1 false) #14
  br label %25

25:                                               ; preds = %23, %20, %3
  %26 = phi ptr [ %7, %23 ], [ null, %20 ], [ null, %3 ]
  %27 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 3
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 4
  store i32 %30, ptr %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  %33 = phi ptr [ %26, %25 ], [ null, %1 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_snatch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @kfree_sensitive(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %4
  store ptr %6, ptr %8, align 4
  store i32 %7, ptr %0, align 4
  %13 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 4
  store i32 %20, ptr %21, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %13, align 4
  store ptr null, ptr %5, align 4
  br label %22

22:                                               ; preds = %12, %2
  %23 = icmp eq ptr %1, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  %29 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  br i1 %28, label %32, label %31

31:                                               ; preds = %24
  tail call void @kfree_sensitive(ptr noundef %30) #14
  br label %35

32:                                               ; preds = %24
  %33 = icmp eq ptr %30, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @kfree_sensitive(ptr noundef nonnull %30) #14
  br label %35

35:                                               ; preds = %34, %32, %31
  %36 = load i32, ptr %25, align 4
  %37 = icmp ult i32 %36, 8
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %40

40:                                               ; preds = %38, %35
  tail call void @kfree(ptr noundef nonnull %1) #14
  br label %41

41:                                               ; preds = %40, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_set(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 24) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = shl i32 %4, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5
  store ptr null, ptr %18, align 4
  br label %23

19:                                               ; preds = %14
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #13
  %21 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %17
  tail call void @kfree(ptr noundef nonnull %10) #14
  br label %28

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 5
  store ptr null, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %19
  store i32 %4, ptr %10, align 8
  %27 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %27, i8 0, i64 16, i1 false) #14
  br label %28

28:                                               ; preds = %26, %23, %8, %2
  %29 = phi ptr [ %0, %2 ], [ %10, %26 ], [ null, %23 ], [ null, %8 ]
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %30, %4
  %32 = icmp ult i32 %30, %4
  %33 = and i1 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 4) #14
  %39 = extractvalue { i32, i1 } %38, 1
  %40 = extractvalue { i32, i1 } %38, 0
  br i1 %37, label %49, label %41

41:                                               ; preds = %34
  br i1 %39, label %55, label %42, !prof !8

42:                                               ; preds = %41
  %43 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %29, align 4
  %47 = load ptr, ptr %35, align 4
  %48 = shl i32 %46, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %43, ptr align 4 %47, i32 %48, i1 false) #14
  tail call void @kfree_sensitive(ptr noundef %47) #14
  store ptr %43, ptr %35, align 4
  br label %54

49:                                               ; preds = %34
  br i1 %39, label %50, label %51, !prof !8

50:                                               ; preds = %49
  store ptr null, ptr %35, align 4
  br label %55

51:                                               ; preds = %49
  %52 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %40, i32 noundef 3520) #13
  store ptr %52, ptr %35, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51, %45
  store i32 %4, ptr %29, align 4
  br label %57

55:                                               ; preds = %50, %41, %28
  %56 = icmp sgt i32 %4, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %55, %54, %51, %42
  %58 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %62, %57
  %63 = phi i32 [ %67, %62 ], [ 0, %57 ]
  %64 = getelementptr i32, ptr %61, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i32, ptr %59, i32 %63
  store i32 %65, ptr %66, align 4
  %67 = add nuw nsw i32 %63, 1
  %68 = icmp eq i32 %67, %4
  br i1 %68, label %69, label %62

69:                                               ; preds = %62, %55
  %70 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 1
  store i32 %4, ptr %70, align 4
  %71 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 4
  %74 = and i32 %72, -49
  store i32 %74, ptr %73, align 4
  %75 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 3
  store i32 %6, ptr %75, align 4
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_set_ui(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 24) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #12
  %11 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 5
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #14
  br label %16

14:                                               ; preds = %8
  store i32 1, ptr %6, align 8
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false) #14
  br label %34

16:                                               ; preds = %13, %4, %2
  %17 = load i32, ptr %0, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 4) #12
  br i1 %22, label %31, label %25

25:                                               ; preds = %19
  %26 = icmp eq ptr %24, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %20, align 4
  %29 = load i32, ptr %0, align 4
  %30 = shl i32 %29, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %24, ptr align 4 %28, i32 %30, i1 false) #14
  tail call void @kfree_sensitive(ptr noundef %28) #14
  store ptr %24, ptr %20, align 4
  br label %33

31:                                               ; preds = %19
  store ptr %24, ptr %20, align 4
  %32 = icmp eq ptr %24, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %31, %27
  store i32 1, ptr %0, align 4
  br label %34

34:                                               ; preds = %33, %31, %25, %16, %14
  %35 = phi ptr [ %6, %14 ], [ %0, %16 ], [ %0, %25 ], [ %0, %31 ], [ %0, %33 ]
  %36 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  store i32 %1, ptr %37, align 4
  %38 = icmp ne i32 %1, 0
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 3
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 4
  store i32 0, ptr %42, align 4
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc_set_ui(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 24) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 4) #12
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 5
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #14
  br label %13

11:                                               ; preds = %5
  store i32 1, ptr %3, align 8
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %3, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false) #14
  br label %13

13:                                               ; preds = %11, %10, %1
  %14 = phi ptr [ %3, %11 ], [ null, %10 ], [ null, %1 ]
  %15 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  store i32 %0, ptr %16, align 4
  %17 = icmp ne i32 %0, 0
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 3
  store i32 0, ptr %20, align 4
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_swap_cond(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = sub i32 0, %2
  %5 = load i32, ptr %0, align 4
  %6 = load i32, ptr %1, align 4
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 %6)
  %8 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, %7
  br i1 %10, label %57, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, %7
  br i1 %14, label %57, label %15

15:                                               ; preds = %11
  %16 = icmp sgt i32 %7, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 5
  %19 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 5
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ 0, %17 ], [ %35, %20 ]
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr i32, ptr %22, i32 %21
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr i32, ptr %25, i32 %21
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %24
  %29 = and i32 %28, %4
  %30 = xor i32 %29, %24
  store i32 %30, ptr %23, align 4
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr i32, ptr %31, i32 %21
  %33 = load i32, ptr %32, align 4
  %34 = xor i32 %33, %29
  store i32 %34, ptr %32, align 4
  %35 = add nuw nsw i32 %21, 1
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %37, label %20

37:                                               ; preds = %20
  %38 = load i32, ptr %8, align 4
  %39 = load i32, ptr %12, align 4
  br label %40

40:                                               ; preds = %37, %15
  %41 = phi i32 [ %39, %37 ], [ %13, %15 ]
  %42 = phi i32 [ %38, %37 ], [ %9, %15 ]
  %43 = xor i32 %41, %42
  %44 = and i32 %43, %4
  %45 = xor i32 %44, %42
  store i32 %45, ptr %8, align 4
  %46 = load i32, ptr %12, align 4
  %47 = xor i32 %46, %44
  store i32 %47, ptr %12, align 4
  %48 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = xor i32 %51, %49
  %53 = and i32 %52, %4
  %54 = xor i32 %53, %49
  store i32 %54, ptr %48, align 4
  %55 = load i32, ptr %50, align 4
  %56 = xor i32 %55, %53
  store i32 %56, ptr %50, align 4
  br label %57

57:                                               ; preds = %40, %11, %3
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }

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
