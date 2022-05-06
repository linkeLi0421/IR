; ModuleID = '/llk/IR/lib/idr.c_pt.bc'
source_filename = "../lib/idr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_alloc_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_alloc_u32\22\09\09\09\09\09"
module asm "__kstrtabns_idr_alloc_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_idr_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_alloc_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_alloc_cyclic\22\09\09\09\09\09"
module asm "__kstrtabns_idr_alloc_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_remove\22\09\09\09\09\09"
module asm "__kstrtabns_idr_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_find:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_find\22\09\09\09\09\09"
module asm "__kstrtabns_idr_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_for_each\22\09\09\09\09\09"
module asm "__kstrtabns_idr_for_each:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_get_next_ul:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_get_next_ul\22\09\09\09\09\09"
module asm "__kstrtabns_idr_get_next_ul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_get_next:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_get_next\22\09\09\09\09\09"
module asm "__kstrtabns_idr_get_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_replace\22\09\09\09\09\09"
module asm "__kstrtabns_idr_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ida_alloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22ida_alloc_range\22\09\09\09\09\09"
module asm "__kstrtabns_ida_alloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ida_free:\09\09\09\09\09"
module asm "\09.asciz \09\22ida_free\22\09\09\09\09\09"
module asm "__kstrtabns_ida_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ida_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ida_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ida_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.1, [64 x ptr], %union.anon.2 }
%union.anon.1 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.2 = type { [3 x [2 x i32]] }

@idr_alloc_u32.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [10 x i8] c"lib/idr.c\00", align 1
@__kstrtab_idr_alloc_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_alloc_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_alloc_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_alloc_u32 to i32), ptr @__kstrtab_idr_alloc_u32, ptr @__kstrtabns_idr_alloc_u32 }, section "___ksymtab_gpl+idr_alloc_u32", align 4
@idr_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_idr_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_alloc to i32), ptr @__kstrtab_idr_alloc, ptr @__kstrtabns_idr_alloc }, section "___ksymtab_gpl+idr_alloc", align 4
@__kstrtab_idr_alloc_cyclic = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_alloc_cyclic = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_alloc_cyclic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_alloc_cyclic to i32), ptr @__kstrtab_idr_alloc_cyclic, ptr @__kstrtabns_idr_alloc_cyclic }, section "___ksymtab+idr_alloc_cyclic", align 4
@__kstrtab_idr_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_remove to i32), ptr @__kstrtab_idr_remove, ptr @__kstrtabns_idr_remove }, section "___ksymtab_gpl+idr_remove", align 4
@__kstrtab_idr_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_find = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_find to i32), ptr @__kstrtab_idr_find, ptr @__kstrtabns_idr_find }, section "___ksymtab_gpl+idr_find", align 4
@idr_for_each.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_idr_for_each = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_for_each = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_for_each = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_for_each to i32), ptr @__kstrtab_idr_for_each, ptr @__kstrtabns_idr_for_each }, section "___ksymtab+idr_for_each", align 4
@__kstrtab_idr_get_next_ul = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_get_next_ul = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_get_next_ul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_get_next_ul to i32), ptr @__kstrtab_idr_get_next_ul, ptr @__kstrtabns_idr_get_next_ul }, section "___ksymtab+idr_get_next_ul", align 4
@idr_get_next.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_idr_get_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_get_next = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_get_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_get_next to i32), ptr @__kstrtab_idr_get_next, ptr @__kstrtabns_idr_get_next }, section "___ksymtab+idr_get_next", align 4
@__kstrtab_idr_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_replace = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_replace to i32), ptr @__kstrtab_idr_replace, ptr @__kstrtabns_idr_replace }, section "___ksymtab+idr_replace", align 4
@__kstrtab_ida_alloc_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_ida_alloc_range = external dso_local constant [0 x i8], align 1
@__ksymtab_ida_alloc_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ida_alloc_range to i32), ptr @__kstrtab_ida_alloc_range, ptr @__kstrtabns_ida_alloc_range }, section "___ksymtab+ida_alloc_range", align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ida_free called for id=%d which is not allocated.\0A\00", align 1
@__kstrtab_ida_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_ida_free = external dso_local constant [0 x i8], align 1
@__ksymtab_ida_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ida_free to i32), ptr @__kstrtab_ida_free, ptr @__kstrtabns_ida_free }, section "___ksymtab+ida_free", align 4
@__kstrtab_ida_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ida_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ida_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ida_destroy to i32), ptr @__kstrtab_ida_destroy, ptr @__kstrtabns_ida_destroy }, section "___ksymtab+ida_destroy", align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"include/linux/xarray.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_ida_alloc_range, ptr @__ksymtab_ida_destroy, ptr @__ksymtab_ida_free, ptr @__ksymtab_idr_alloc, ptr @__ksymtab_idr_alloc_cyclic, ptr @__ksymtab_idr_alloc_u32, ptr @__ksymtab_idr_find, ptr @__ksymtab_idr_for_each, ptr @__ksymtab_idr_get_next, ptr @__ksymtab_idr_get_next_ul, ptr @__ksymtab_idr_remove, ptr @__ksymtab_idr_replace], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @idr_alloc_u32(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.radix_tree_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = load i32, ptr %2, align 4
  %11 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  %15 = load i1, ptr @idr_alloc_u32.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !9

18:                                               ; preds = %5
  store i1 true, ptr @idr_alloc_u32.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #5
  br label %19

19:                                               ; preds = %18, %5
  br i1 %14, label %20, label %23

20:                                               ; preds = %19
  %21 = load i32, ptr %11, align 4
  %22 = or i32 %21, 33554436
  store i32 %22, ptr %11, align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %10, i32 %9)
  store i32 0, ptr %6, align 4
  %25 = getelementptr inbounds %struct.radix_tree_iter, ptr %6, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = sub i32 %3, %9
  %27 = call ptr @idr_get_free(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %4, i32 noundef %26) #5
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %27 to i32
  br label %34

31:                                               ; preds = %23
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, %9
  store i32 %33, ptr %2, align 4
  call void @radix_tree_iter_replace(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %27, ptr noundef %1) #5
  call void @radix_tree_iter_tag_clear(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #5
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_free(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_iter_tag_clear(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @idr_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 %2, ptr %6, align 4
  %7 = icmp slt i32 %2, 0
  %8 = load i1, ptr @idr_alloc.__already_done, align 1
  %9 = xor i1 %8, true
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %5
  store i1 true, ptr @idr_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef null) #5
  br label %12

12:                                               ; preds = %11, %5
  br i1 %7, label %21, label %13

13:                                               ; preds = %12
  %14 = icmp sgt i32 %3, 0
  %15 = add i32 %3, -1
  %16 = select i1 %14, i32 %15, i32 2147483647
  %17 = call i32 @idr_alloc_u32(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %16, i32 noundef %4)
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %6, align 4
  %20 = select i1 %18, i32 %19, i32 %17
  br label %21

21:                                               ; preds = %13, %12
  %22 = phi i32 [ -22, %12 ], [ %20, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @idr_alloc_cyclic(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %7 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %3, 0
  %10 = add i32 %3, -1
  %11 = select i1 %9, i32 %10, i32 2147483647
  %12 = tail call i32 @llvm.smax.i32(i32 %8, i32 %2)
  store i32 %12, ptr %6, align 4
  %13 = call i32 @idr_alloc_u32(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %11, i32 noundef %4)
  %14 = icmp eq i32 %13, -28
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load i32, ptr %6, align 4
  %17 = icmp ugt i32 %16, %2
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  store i32 %2, ptr %6, align 4
  %19 = call i32 @idr_alloc_u32(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %11, i32 noundef %4)
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi i32 [ %19, %18 ], [ %13, %5 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %7, align 4
  br label %26

26:                                               ; preds = %23, %20, %15
  %27 = phi i32 [ %24, %23 ], [ %21, %20 ], [ -28, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @idr_remove(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 %1, %4
  %6 = tail call ptr @radix_tree_delete_item(ptr noundef %0, i32 noundef %5, ptr noundef null) #5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @idr_find(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 %1, %4
  %6 = tail call ptr @radix_tree_lookup(ptr noundef %0, i32 noundef %5) #5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @idr_for_each(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.radix_tree_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  store i32 0, ptr %4, align 4
  %8 = getelementptr inbounds %struct.radix_tree_iter, ptr %4, i32 0, i32 1
  store i32 0, ptr %8, align 4
  br label %12

9:                                                ; preds = %45, %39
  %10 = phi i32 [ %40, %39 ], [ %47, %45 ]
  %11 = phi ptr [ null, %39 ], [ %46, %45 ]
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ 0, %3 ], [ %10, %9 ]
  %14 = phi ptr [ null, %3 ], [ %11, %9 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = call ptr @radix_tree_next_chunk(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %13, %12 ], [ %20, %19 ]
  %23 = phi ptr [ %14, %12 ], [ %17, %19 ]
  %24 = add i32 %22, %7
  %25 = icmp slt i32 %24, 0
  %26 = load i1, ptr @idr_for_each.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %21
  store i1 true, ptr @idr_for_each.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 206, i32 noundef 9, ptr noundef null) #5
  br label %30

30:                                               ; preds = %29, %21
  br i1 %25, label %50, label %31

31:                                               ; preds = %30
  %32 = load volatile ptr, ptr %23, align 4
  %33 = call i32 %1(i32 noundef %24, ptr noundef %32, ptr noundef %2) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i32, ptr %8, align 4
  %37 = load i32, ptr %4, align 4
  %38 = sub i32 %36, %37
  br label %39

39:                                               ; preds = %45, %35
  %40 = phi i32 [ %37, %35 ], [ %47, %45 ]
  %41 = phi ptr [ %23, %35 ], [ %46, %45 ]
  %42 = phi i32 [ %38, %35 ], [ %43, %45 ]
  %43 = add i32 %42, -1
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %9

45:                                               ; preds = %39
  %46 = getelementptr ptr, ptr %41, i32 1
  %47 = add i32 %40, 1
  store i32 %47, ptr %4, align 4
  %48 = load ptr, ptr %46, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %39, label %9, !prof !9

50:                                               ; preds = %31, %30, %16
  %51 = phi i32 [ 0, %30 ], [ 0, %16 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_next_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @idr_get_next_ul(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.radix_tree_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  store i64 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %6)
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 2
  br label %14

12:                                               ; preds = %48, %42
  %13 = phi ptr [ null, %42 ], [ %49, %48 ]
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ null, %2 ], [ %13, %12 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call ptr @radix_tree_next_chunk(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %17, %14
  %21 = phi ptr [ %15, %14 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, ptr %9, align 4
  %26 = load i32, ptr %3, align 4
  br label %37

27:                                               ; preds = %20
  %28 = ptrtoint ptr %22 to i32
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = icmp eq ptr %21, %10
  %33 = icmp eq ptr %22, inttoptr (i32 1026 to ptr)
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load i32, ptr %3, align 4
  store i32 %36, ptr %9, align 4
  store i32 0, ptr %11, align 4
  br label %37

37:                                               ; preds = %35, %24
  %38 = phi i32 [ %36, %35 ], [ %26, %24 ]
  %39 = phi i32 [ %36, %35 ], [ %25, %24 ]
  %40 = phi ptr [ null, %35 ], [ %21, %24 ]
  %41 = sub i32 %39, %38
  br label %42

42:                                               ; preds = %48, %37
  %43 = phi i32 [ %38, %37 ], [ %50, %48 ]
  %44 = phi ptr [ %40, %37 ], [ %49, %48 ]
  %45 = phi i32 [ %41, %37 ], [ %46, %48 ]
  %46 = add i32 %45, -1
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %12

48:                                               ; preds = %42
  %49 = getelementptr ptr, ptr %44, i32 1
  %50 = add i32 %43, 1
  store i32 %50, ptr %3, align 4
  %51 = load ptr, ptr %49, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %42, label %12, !prof !9

53:                                               ; preds = %31, %27
  %54 = load i32, ptr %3, align 4
  %55 = add i32 %54, %6
  store i32 %55, ptr %1, align 4
  br label %56

56:                                               ; preds = %53, %17
  %57 = phi ptr [ %22, %53 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret ptr %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @idr_get_next(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.radix_tree_iter, align 4
  %4 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  store i64 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.usub.sat.i32(i32 %4, i32 %7) #5
  store i32 0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.radix_tree_iter, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  br label %13

11:                                               ; preds = %47, %41
  %12 = phi ptr [ null, %41 ], [ %48, %47 ]
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ null, %2 ], [ %12, %11 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call ptr @radix_tree_next_chunk(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %14, %13 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %9, align 4
  %25 = load i32, ptr %3, align 4
  br label %36

26:                                               ; preds = %19
  %27 = ptrtoint ptr %21 to i32
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = icmp eq ptr %20, %10
  %32 = icmp eq ptr %21, inttoptr (i32 1026 to ptr)
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i32, ptr %3, align 4
  store i32 %35, ptr %9, align 4
  store i32 0, ptr %5, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = phi i32 [ %35, %34 ], [ %25, %23 ]
  %38 = phi i32 [ %35, %34 ], [ %24, %23 ]
  %39 = phi ptr [ null, %34 ], [ %20, %23 ]
  %40 = sub i32 %38, %37
  br label %41

41:                                               ; preds = %47, %36
  %42 = phi i32 [ %37, %36 ], [ %49, %47 ]
  %43 = phi ptr [ %39, %36 ], [ %48, %47 ]
  %44 = phi i32 [ %40, %36 ], [ %45, %47 ]
  %45 = add i32 %44, -1
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %11

47:                                               ; preds = %41
  %48 = getelementptr ptr, ptr %43, i32 1
  %49 = add i32 %42, 1
  store i32 %49, ptr %3, align 4
  %50 = load ptr, ptr %48, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %41, label %11, !prof !9

52:                                               ; preds = %30, %26
  %53 = load i32, ptr %3, align 4
  %54 = add i32 %53, %7
  br label %55

55:                                               ; preds = %52, %16
  %56 = phi i32 [ %54, %52 ], [ %4, %16 ]
  %57 = phi ptr [ %21, %52 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  %58 = icmp slt i32 %56, 0
  %59 = load i1, ptr @idr_get_next.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !9

62:                                               ; preds = %55
  store i1 true, ptr @idr_get_next.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #5
  br label %63

63:                                               ; preds = %62, %55
  br i1 %58, label %65, label %64

64:                                               ; preds = %63
  store i32 %56, ptr %1, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = phi ptr [ %57, %64 ], [ null, %63 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @idr_replace(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %2, %7
  %9 = call ptr @__radix_tree_lookup(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  %10 = load ptr, ptr %5, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = call i32 @radix_tree_tag_get(ptr noundef %0, i32 noundef %8, i32 noundef 0) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 4
  %17 = load ptr, ptr %5, align 4
  call void @__radix_tree_replace(ptr noundef %0, ptr noundef %16, ptr noundef %17, ptr noundef %1) #5
  br label %18

18:                                               ; preds = %15, %12, %3
  %19 = phi ptr [ %9, %15 ], [ inttoptr (i32 -2 to ptr), %12 ], [ inttoptr (i32 -2 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__radix_tree_lookup(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_tag_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__radix_tree_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ida_alloc_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.xa_state, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #5
  store ptr %0, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  %8 = lshr i32 %1, 10
  store i32 %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %12, align 4
  %13 = and i32 %1, 1023
  %14 = icmp slt i32 %1, 0
  br i1 %14, label %170, label %15

15:                                               ; preds = %4
  %16 = tail call i32 @llvm.umin.i32(i32 %2, i32 2147483647)
  %17 = lshr i32 %16, 10
  %18 = and i32 %3, 17
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %3, 1
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 2
  %23 = or i32 %3, 256
  br label %24

24:                                               ; preds = %167, %15
  %25 = phi ptr [ %165, %167 ], [ null, %15 ]
  %26 = icmp eq ptr %25, null
  br label %27

27:                                               ; preds = %140, %24
  %28 = load ptr, ptr %5, align 4
  %29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #5
  br label %30

30:                                               ; preds = %100, %27
  %31 = phi i32 [ %13, %27 ], [ 1024, %100 ]
  %32 = call ptr @xas_find_marked(ptr noundef nonnull %5, i32 noundef %17, i32 noundef 0) #5
  %33 = load i32, ptr %7, align 4
  %34 = icmp ugt i32 %33, %8
  %35 = select i1 %34, i32 0, i32 %31
  %36 = shl i32 %33, 10
  %37 = add i32 %35, %36
  %38 = icmp ugt i32 %37, %16
  br i1 %38, label %168, label %39

39:                                               ; preds = %30
  %40 = ptrtoint ptr %32 to i32
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %90, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  %44 = lshr i32 %40, 1
  store i32 %44, ptr %6, align 4
  %45 = icmp ult i32 %35, 31
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = call i32 @_find_next_zero_bit_le(ptr noundef nonnull %6, i32 noundef 31, i32 noundef %35) #5
  %48 = load i32, ptr %7, align 4
  %49 = shl i32 %48, 10
  %50 = add i32 %49, %47
  %51 = icmp ugt i32 %50, %16
  br i1 %51, label %89, label %52

52:                                               ; preds = %46
  %53 = icmp ult i32 %47, 31
  br i1 %53, label %54, label %65

54:                                               ; preds = %52
  %55 = shl nuw nsw i32 1, %47
  %56 = load i32, ptr %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, ptr %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60, !prof !9

59:                                               ; preds = %54
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 54, i32 noundef 9, ptr noundef null) #5
  br label %60

60:                                               ; preds = %59, %54
  %61 = shl i32 %57, 1
  %62 = or i32 %61, 1
  %63 = inttoptr i32 %62 to ptr
  %64 = call ptr @xas_store(ptr noundef nonnull %5, ptr noundef nonnull %63) #5
  br label %86

65:                                               ; preds = %52, %43
  %66 = phi i32 [ %47, %52 ], [ %31, %43 ]
  br i1 %26, label %67, label %72

67:                                               ; preds = %65
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %69 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 2304, i32 noundef 128) #6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  br label %158

72:                                               ; preds = %67, %65
  %73 = phi ptr [ %69, %67 ], [ %25, %65 ]
  %74 = load i32, ptr %6, align 4
  store i32 %74, ptr %73, align 4
  %75 = call ptr @xas_store(ptr noundef nonnull %5, ptr noundef nonnull %73) #5
  %76 = load ptr, ptr %10, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = and i32 %77, 3
  %79 = icmp ne i32 %78, 2
  %80 = icmp ult ptr %76, inttoptr (i32 -16378 to ptr)
  %81 = icmp ult ptr %76, inttoptr (i32 4 to ptr)
  %82 = or i1 %80, %79
  %83 = or i1 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  br label %92

85:                                               ; preds = %72
  store i32 0, ptr %73, align 4
  br label %86

86:                                               ; preds = %85, %60
  %87 = phi i32 [ %66, %85 ], [ %47, %60 ]
  %88 = phi ptr [ %73, %85 ], [ %32, %60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  br label %135

89:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  br label %168

90:                                               ; preds = %39
  %91 = icmp eq ptr %32, null
  br i1 %91, label %112, label %92

92:                                               ; preds = %90, %84
  %93 = phi ptr [ %73, %84 ], [ %32, %90 ]
  %94 = phi i32 [ %66, %84 ], [ %35, %90 ]
  %95 = call i32 @_find_next_zero_bit_le(ptr noundef nonnull %93, i32 noundef 1024, i32 noundef %94) #5
  %96 = load i32, ptr %7, align 4
  %97 = shl i32 %96, 10
  %98 = add i32 %97, %95
  %99 = icmp ugt i32 %98, %16
  br i1 %99, label %168, label %100

100:                                              ; preds = %92
  %101 = icmp eq i32 %95, 1024
  br i1 %101, label %30, label %102

102:                                              ; preds = %100
  %103 = and i32 %95, 31
  %104 = shl nuw i32 1, %103
  %105 = lshr i32 %95, 5
  %106 = getelementptr i32, ptr %93, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, ptr %106, align 4
  %109 = call i32 @_find_first_zero_bit_le(ptr noundef nonnull %93, i32 noundef 1024) #5
  %110 = icmp eq i32 %109, 1024
  br i1 %110, label %111, label %135

111:                                              ; preds = %102
  call void @xas_clear_mark(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %135

112:                                              ; preds = %90
  %113 = icmp ult i32 %35, 31
  br i1 %113, label %114, label %118

114:                                              ; preds = %112
  %115 = shl nuw i32 2, %35
  %116 = or i32 %115, 1
  %117 = inttoptr i32 %116 to ptr
  br label %131

118:                                              ; preds = %112
  br i1 %26, label %119, label %123

119:                                              ; preds = %118
  %120 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %121 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 2304, i32 noundef 128) #6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %158, label %123

123:                                              ; preds = %119, %118
  %124 = phi ptr [ %121, %119 ], [ %25, %118 ]
  %125 = and i32 %35, 31
  %126 = shl nuw i32 1, %125
  %127 = lshr i32 %35, 5
  %128 = getelementptr i32, ptr %124, i32 %127
  %129 = load i32, ptr %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %123, %114
  %132 = phi i32 [ %35, %114 ], [ %31, %123 ]
  %133 = phi ptr [ %117, %114 ], [ %124, %123 ]
  %134 = call ptr @xas_store(ptr noundef nonnull %5, ptr noundef nonnull %133) #5
  br label %135

135:                                              ; preds = %131, %111, %102, %86
  %136 = phi i32 [ %95, %111 ], [ %95, %102 ], [ %132, %131 ], [ %87, %86 ]
  %137 = phi ptr [ %93, %111 ], [ %93, %102 ], [ %133, %131 ], [ %88, %86 ]
  %138 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %138, i32 noundef %29) #5
  %139 = call zeroext i1 @xas_nomem(ptr noundef nonnull %5, i32 noundef %3) #5
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 %8, ptr %7, align 4
  br label %27

141:                                              ; preds = %135
  %142 = icmp eq ptr %137, %25
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  call void @kfree(ptr noundef %25) #5
  br label %144

144:                                              ; preds = %143, %141
  %145 = load ptr, ptr %10, align 4
  %146 = ptrtoint ptr %145 to i32
  %147 = and i32 %146, 3
  %148 = icmp eq i32 %147, 2
  %149 = icmp uge ptr %145, inttoptr (i32 -16378 to ptr)
  %150 = and i1 %149, %148
  %151 = ashr i32 %146, 2
  %152 = select i1 %150, i32 %151, i32 0
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %170

154:                                              ; preds = %144
  %155 = load i32, ptr %7, align 4
  %156 = shl i32 %155, 10
  %157 = add i32 %156, %136
  br label %170

158:                                              ; preds = %119, %71
  %159 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %159, i32 noundef %29) #5
  br i1 %19, label %161, label %160, !prof !10

160:                                              ; preds = %158
  br label %161

161:                                              ; preds = %160, %158
  %162 = phi i32 [ 0, %158 ], [ %22, %160 ]
  %163 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %162, i32 7
  %164 = load ptr, ptr %163, align 4
  %165 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %164, i32 noundef %23, i32 noundef 128) #6
  %166 = icmp eq ptr %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  store i32 %8, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  br label %24

168:                                              ; preds = %92, %89, %30
  %169 = load ptr, ptr %5, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %169, i32 noundef %29) #5
  call void @kfree(ptr noundef %25) #5
  br label %170

170:                                              ; preds = %168, %161, %154, %144, %4
  %171 = phi i32 [ -28, %168 ], [ %157, %154 ], [ -28, %4 ], [ %152, %144 ], [ -12, %161 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #5
  ret i32 %171
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_clear_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ida_free(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  %5 = lshr i32 %1, 10
  store i32 %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %6, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %7, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr null, ptr %9, align 4
  %10 = and i32 %1, 1023
  %11 = icmp slt i32 %1, 0
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/idr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 494, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

13:                                               ; preds = %2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %15 = call ptr @xas_load(ptr noundef nonnull %3) #5
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %13
  %20 = lshr i32 %16, 1
  %21 = icmp ugt i32 %10, 30
  br i1 %21, label %53, label %22

22:                                               ; preds = %19
  %23 = shl nuw nsw i32 1, %10
  %24 = and i32 %20, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %22
  %27 = xor i32 %23, -1
  %28 = and i32 %20, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %26
  %31 = shl nuw i32 %28, 1
  %32 = or i32 %31, 1
  %33 = inttoptr i32 %32 to ptr
  %34 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef nonnull %33) #5
  br label %51

35:                                               ; preds = %13
  %36 = lshr i32 %10, 5
  %37 = getelementptr i32, ptr %15, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %1, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %35
  %44 = xor i32 %40, -1
  %45 = and i32 %38, %44
  store i32 %45, ptr %37, align 4
  call void @xas_set_mark(ptr noundef nonnull %3, i32 noundef 0) #5
  %46 = call i32 @_find_first_bit_le(ptr noundef %15, i32 noundef 1024) #5
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  call void @kfree(ptr noundef %15) #5
  br label %49

49:                                               ; preds = %48, %26
  %50 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef null) #5
  br label %51

51:                                               ; preds = %49, %43, %30
  %52 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %52, i32 noundef %14) #5
  br label %55

53:                                               ; preds = %35, %22, %19
  %54 = load ptr, ptr %3, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %14) #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 524, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %1) #5
  br label %55

55:                                               ; preds = %53, %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_set_mark(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ida_destroy(ptr noundef %0) #0 {
  %2 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 6
  store i64 0, ptr %3, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %5, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 7
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 8
  store ptr null, ptr %7, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #5
  %9 = call ptr @xas_find(ptr noundef nonnull %2, i32 noundef -1) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %57, label %11

11:                                               ; preds = %54, %1
  %12 = phi ptr [ %55, %54 ], [ %9, %1 ]
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %12) #5
  br label %17

17:                                               ; preds = %16, %11
  %18 = call ptr @xas_store(ptr noundef nonnull %2, ptr noundef null) #5
  %19 = load ptr, ptr %5, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  %23 = icmp eq ptr %19, null
  %24 = or i1 %23, %22
  br i1 %24, label %52, label %25, !prof !9

25:                                               ; preds = %17
  %26 = load i8, ptr %19, align 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %52, !prof !10

28:                                               ; preds = %25
  %29 = load i8, ptr %4, align 2
  %30 = zext i8 %29 to i32
  %31 = load i32, ptr %3, align 4
  %32 = and i32 %31, 63
  %33 = icmp eq i32 %32, %30
  br i1 %33, label %34, label %52, !prof !10

34:                                               ; preds = %48, %28
  %35 = phi i8 [ %49, %48 ], [ %29, %28 ]
  %36 = phi i32 [ %50, %48 ], [ %31, %28 ]
  %37 = icmp eq i32 %36, -1
  %38 = icmp eq i8 %35, 63
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %52, label %40, !prof !12

40:                                               ; preds = %34
  %41 = zext i8 %35 to i32
  %42 = add nuw nsw i32 %41, 1
  %43 = getelementptr %struct.xa_node, ptr %19, i32 0, i32 7, i32 %42
  %44 = load volatile ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %52, label %48, !prof !9

48:                                               ; preds = %40
  %49 = add i8 %35, 1
  store i8 %49, ptr %4, align 2
  %50 = add nuw i32 %36, 1
  store i32 %50, ptr %3, align 4
  %51 = icmp eq ptr %44, null
  br i1 %51, label %34, label %54

52:                                               ; preds = %40, %34, %28, %25, %17
  %53 = call ptr @xas_find(ptr noundef nonnull %2, i32 noundef -1) #5
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %53, %52 ], [ %44, %48 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %11

57:                                               ; preds = %54, %1
  %58 = load ptr, ptr %2, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %8) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2150254434, i64 2150254908, i64 2150254471, i64 2150254527, i64 2150254561, i64 2150254585, i64 2150254626, i64 2150254647, i64 2150254675, i64 2150254709}
!12 = !{!"branch_weights", i32 4001, i32 4000000}
