; ModuleID = '/llk/IR/mm/truncate.c_pt.bc'
source_filename = "../mm/truncate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_error_remove_page:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_error_remove_page\22\09\09\09\09\09"
module asm "__kstrtabns_generic_error_remove_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_truncate_inode_pages_range:\09\09\09\09\09"
module asm "\09.asciz \09\22truncate_inode_pages_range\22\09\09\09\09\09"
module asm "__kstrtabns_truncate_inode_pages_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_truncate_inode_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22truncate_inode_pages\22\09\09\09\09\09"
module asm "__kstrtabns_truncate_inode_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_truncate_inode_pages_final:\09\09\09\09\09"
module asm "\09.asciz \09\22truncate_inode_pages_final\22\09\09\09\09\09"
module asm "__kstrtabns_truncate_inode_pages_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_invalidate_mapping_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22invalidate_mapping_pages\22\09\09\09\09\09"
module asm "__kstrtabns_invalidate_mapping_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_invalidate_inode_pages2_range:\09\09\09\09\09"
module asm "\09.asciz \09\22invalidate_inode_pages2_range\22\09\09\09\09\09"
module asm "__kstrtabns_invalidate_inode_pages2_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_invalidate_inode_pages2:\09\09\09\09\09"
module asm "\09.asciz \09\22invalidate_inode_pages2\22\09\09\09\09\09"
module asm "__kstrtabns_invalidate_inode_pages2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_truncate_pagecache:\09\09\09\09\09"
module asm "\09.asciz \09\22truncate_pagecache\22\09\09\09\09\09"
module asm "__kstrtabns_truncate_pagecache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_truncate_setsize:\09\09\09\09\09"
module asm "\09.asciz \09\22truncate_setsize\22\09\09\09\09\09"
module asm "__kstrtabns_truncate_setsize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagecache_isize_extended:\09\09\09\09\09"
module asm "\09.asciz \09\22pagecache_isize_extended\22\09\09\09\09\09"
module asm "__kstrtabns_pagecache_isize_extended:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_truncate_pagecache_range:\09\09\09\09\09"
module asm "\09.asciz \09\22truncate_pagecache_range\22\09\09\09\09\09"
module asm "__kstrtabns_truncate_pagecache_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.66, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.72 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.anon.60 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.folio_batch = type { i8, i8, [15 x ptr] }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }

@__kstrtab_generic_error_remove_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_error_remove_page = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_error_remove_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_error_remove_page to i32), ptr @__kstrtab_generic_error_remove_page, ptr @__kstrtabns_generic_error_remove_page }, section "___ksymtab+generic_error_remove_page", align 4
@.str = private unnamed_addr constant [14 x i8] c"mm/truncate.c\00", align 1
@__kstrtab_truncate_inode_pages_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_truncate_inode_pages_range = external dso_local constant [0 x i8], align 1
@__ksymtab_truncate_inode_pages_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @truncate_inode_pages_range to i32), ptr @__kstrtab_truncate_inode_pages_range, ptr @__kstrtabns_truncate_inode_pages_range }, section "___ksymtab+truncate_inode_pages_range", align 4
@__kstrtab_truncate_inode_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_truncate_inode_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_truncate_inode_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @truncate_inode_pages to i32), ptr @__kstrtab_truncate_inode_pages, ptr @__kstrtabns_truncate_inode_pages }, section "___ksymtab+truncate_inode_pages", align 4
@__kstrtab_truncate_inode_pages_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_truncate_inode_pages_final = external dso_local constant [0 x i8], align 1
@__ksymtab_truncate_inode_pages_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @truncate_inode_pages_final to i32), ptr @__kstrtab_truncate_inode_pages_final, ptr @__kstrtabns_truncate_inode_pages_final }, section "___ksymtab+truncate_inode_pages_final", align 4
@__kstrtab_invalidate_mapping_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_invalidate_mapping_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_invalidate_mapping_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @invalidate_mapping_pages to i32), ptr @__kstrtab_invalidate_mapping_pages, ptr @__kstrtabns_invalidate_mapping_pages }, section "___ksymtab+invalidate_mapping_pages", align 4
@__kstrtab_invalidate_inode_pages2_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_invalidate_inode_pages2_range = external dso_local constant [0 x i8], align 1
@__ksymtab_invalidate_inode_pages2_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @invalidate_inode_pages2_range to i32), ptr @__kstrtab_invalidate_inode_pages2_range, ptr @__kstrtabns_invalidate_inode_pages2_range }, section "___ksymtab_gpl+invalidate_inode_pages2_range", align 4
@__kstrtab_invalidate_inode_pages2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_invalidate_inode_pages2 = external dso_local constant [0 x i8], align 1
@__ksymtab_invalidate_inode_pages2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @invalidate_inode_pages2 to i32), ptr @__kstrtab_invalidate_inode_pages2, ptr @__kstrtabns_invalidate_inode_pages2 }, section "___ksymtab_gpl+invalidate_inode_pages2", align 4
@__kstrtab_truncate_pagecache = external dso_local constant [0 x i8], align 1
@__kstrtabns_truncate_pagecache = external dso_local constant [0 x i8], align 1
@__ksymtab_truncate_pagecache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @truncate_pagecache to i32), ptr @__kstrtab_truncate_pagecache, ptr @__kstrtabns_truncate_pagecache }, section "___ksymtab+truncate_pagecache", align 4
@__kstrtab_truncate_setsize = external dso_local constant [0 x i8], align 1
@__kstrtabns_truncate_setsize = external dso_local constant [0 x i8], align 1
@__ksymtab_truncate_setsize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @truncate_setsize to i32), ptr @__kstrtab_truncate_setsize, ptr @__kstrtabns_truncate_setsize }, section "___ksymtab+truncate_setsize", align 4
@__kstrtab_pagecache_isize_extended = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagecache_isize_extended = external dso_local constant [0 x i8], align 1
@__ksymtab_pagecache_isize_extended = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagecache_isize_extended to i32), ptr @__kstrtab_pagecache_isize_extended, ptr @__kstrtabns_pagecache_isize_extended }, section "___ksymtab+pagecache_isize_extended", align 4
@__kstrtab_truncate_pagecache_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_truncate_pagecache_range = external dso_local constant [0 x i8], align 1
@__ksymtab_truncate_pagecache_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @truncate_pagecache_range to i32), ptr @__kstrtab_truncate_pagecache_range, ptr @__kstrtabns_truncate_pagecache_range }, section "___ksymtab+truncate_pagecache_range", align 4
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__ksymtab_generic_error_remove_page, ptr @__ksymtab_invalidate_inode_pages2, ptr @__ksymtab_invalidate_inode_pages2_range, ptr @__ksymtab_invalidate_mapping_pages, ptr @__ksymtab_pagecache_isize_extended, ptr @__ksymtab_truncate_inode_pages, ptr @__ksymtab_truncate_inode_pages_final, ptr @__ksymtab_truncate_inode_pages_range, ptr @__ksymtab_truncate_pagecache, ptr @__ksymtab_truncate_pagecache_range, ptr @__ksymtab_truncate_setsize], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_invalidatepage(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.address_space_operations, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @block_invalidatepage, ptr %9
  tail call void %11(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @block_invalidatepage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @truncate_inode_folio(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon.72, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @truncate_cleanup_folio(ptr noundef %1)
  tail call void @filemap_remove_folio(ptr noundef %1) #4
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 0, %6 ], [ -5, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @truncate_cleanup_folio(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i1 @folio_mapped(ptr noundef %0) #4
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @unmap_mapping_folio(ptr noundef %0) #4
  br label %4

4:                                                ; preds = %3, %1
  %5 = load i32, ptr %0, align 4
  %6 = and i32 %5, 24576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = load volatile i32, ptr %0, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %14 = getelementptr inbounds %struct.anon.60, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i32 [ %16, %12 ], [ 0, %8 ]
  %19 = shl i32 4096, %18
  %20 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.address_space, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.address_space_operations, ptr %23, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr @block_invalidatepage, ptr %25
  tail call void %27(ptr noundef %0, i32 noundef 0, i32 noundef %19) #4
  br label %28

28:                                               ; preds = %17, %4
  %29 = load volatile i32, ptr %0, align 4
  %30 = and i32 %29, 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @__folio_cancel_dirty(ptr noundef %0) #4
  br label %33

33:                                               ; preds = %32, %28
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @filemap_remove_folio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @truncate_inode_partial_folio(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 12
  %8 = icmp slt i64 %7, %1
  %9 = sub i64 %1, %7
  %10 = trunc i64 %9 to i32
  %11 = select i1 %8, i32 %10, i32 0
  %12 = load volatile i32, ptr %0, align 4
  %13 = and i32 %12, 65536
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %17 = getelementptr inbounds %struct.anon.60, ptr %16, i32 0, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i32 [ %19, %15 ], [ 0, %3 ]
  %22 = shl i32 4096, %21
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %7, %23
  %25 = icmp ugt i64 %24, %2
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = sub i32 %22, %11
  br label %34

28:                                               ; preds = %20
  %29 = zext i32 %11 to i64
  %30 = add nuw i64 %2, 1
  %31 = add nuw nsw i64 %7, %29
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  br label %34

34:                                               ; preds = %28, %26
  %35 = phi i32 [ %27, %26 ], [ %33, %28 ]
  tail call void @folio_wait_writeback(ptr noundef %0) #4
  %36 = load volatile i32, ptr %0, align 4
  %37 = and i32 %36, 65536
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %41 = getelementptr inbounds %struct.anon.60, ptr %40, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i32 [ %43, %39 ], [ 0, %34 ]
  %46 = shl i32 4096, %45
  %47 = icmp eq i32 %35, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  tail call fastcc void @truncate_cleanup_folio(ptr noundef %0) #4
  tail call void @filemap_remove_folio(ptr noundef %0) #4
  br label %65

49:                                               ; preds = %44
  %50 = add i32 %35, %11
  tail call void @zero_user_segments(ptr noundef %0, i32 noundef %11, i32 noundef %50, i32 noundef 0, i32 noundef 0) #4
  %51 = load i32, ptr %0, align 4
  %52 = and i32 %51, 24576
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.address_space, ptr %56, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.address_space_operations, ptr %58, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, ptr @block_invalidatepage, ptr %60
  tail call void %62(ptr noundef %0, i32 noundef %11, i32 noundef %35) #4
  br label %63

63:                                               ; preds = %54, %49
  %64 = load volatile i32, ptr %0, align 4
  br label %65

65:                                               ; preds = %63, %48
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_error_remove_page(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, -4096
  %8 = icmp eq i16 %7, -32768
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %9
  %15 = add i32 %11, -1
  br label %18

16:                                               ; preds = %9
  %17 = ptrtoint ptr %1 to i32
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.anon.72, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  tail call fastcc void @truncate_cleanup_folio(ptr noundef %20) #4
  tail call void @filemap_remove_folio(ptr noundef %20) #4
  br label %25

25:                                               ; preds = %24, %18, %4, %2
  %26 = phi i32 [ -22, %2 ], [ -5, %4 ], [ 0, %24 ], [ -5, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @invalidate_inode_page(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @page_mapping(ptr noundef %0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %4
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load volatile i32, ptr %5, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %19
  %24 = add i32 %20, -1
  br label %27

25:                                               ; preds = %19
  %26 = ptrtoint ptr %0 to i32
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = inttoptr i32 %28 to ptr
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 32768
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = tail call zeroext i1 @page_mapped(ptr noundef %0) #4
  br i1 %34, label %48, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, ptr %0, align 4
  %41 = and i32 %40, 24576
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call i32 @try_to_release_page(ptr noundef %0, i32 noundef 0) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %39
  %47 = tail call i32 @remove_mapping(ptr noundef nonnull %2, ptr noundef %0) #4
  br label %48

48:                                               ; preds = %46, %43, %35, %33, %27, %13, %1
  %49 = phi i32 [ 0, %1 ], [ 0, %27 ], [ 0, %13 ], [ 0, %33 ], [ %47, %46 ], [ 0, %35 ], [ 0, %43 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @truncate_inode_pages_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.folio_batch, align 4
  %5 = alloca [15 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %5, i8 0, i32 60, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %182, label %9

9:                                                ; preds = %3
  %10 = add i64 %1, 4095
  %11 = lshr i64 %10, 12
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i64 %2, -1
  %14 = add i64 %2, 1
  %15 = lshr i64 %14, 12
  %16 = trunc i64 %15 to i32
  %17 = select i1 %13, i32 -1, i32 %16
  store i8 0, ptr %4, align 4
  %18 = getelementptr inbounds %struct.folio_batch, ptr %4, i32 0, i32 1
  store i8 0, ptr %18, align 1
  %19 = add i32 %17, -1
  %20 = icmp ugt i32 %17, %12
  br i1 %20, label %21, label %59

21:                                               ; preds = %56, %9
  %22 = phi i32 [ %31, %56 ], [ %12, %9 ]
  %23 = call i32 @find_lock_entries(ptr noundef %0, i32 noundef %22, i32 noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %21
  %26 = load i8, ptr %4, align 4
  %27 = zext i8 %26 to i32
  %28 = add nsw i32 %27, -1
  %29 = getelementptr [15 x i32], ptr %5, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  call fastcc void @truncate_folio_batch_exceptionals(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %32 = load i8, ptr %4, align 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %25
  %35 = phi i32 [ %38, %34 ], [ 0, %25 ]
  %36 = getelementptr %struct.folio_batch, ptr %4, i32 0, i32 2, i32 %35
  %37 = load ptr, ptr %36, align 4
  call fastcc void @truncate_cleanup_folio(ptr noundef %37)
  %38 = add nuw nsw i32 %35, 1
  %39 = load i8, ptr %4, align 4
  %40 = zext i8 %39 to i32
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %34, label %42

42:                                               ; preds = %34, %25
  call void @delete_from_page_cache_batch(ptr noundef %0, ptr noundef nonnull %4) #4
  %43 = load i8, ptr %4, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %45, %42
  %46 = phi i32 [ %49, %45 ], [ 0, %42 ]
  %47 = getelementptr %struct.folio_batch, ptr %4, i32 0, i32 2, i32 %46
  %48 = load ptr, ptr %47, align 4
  call void @folio_unlock(ptr noundef %48) #4
  %49 = add nuw nsw i32 %46, 1
  %50 = load i8, ptr %4, align 4
  %51 = zext i8 %50 to i32
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %45, label %53

53:                                               ; preds = %45
  %54 = icmp eq i8 %50, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  call void @__pagevec_release(ptr noundef nonnull %4) #4
  br label %56

56:                                               ; preds = %55, %53, %42
  %57 = call i32 @__cond_resched() #4
  %58 = icmp ult i32 %31, %17
  br i1 %58, label %21, label %59

59:                                               ; preds = %56, %21, %9
  %60 = ashr i64 %1, 12
  %61 = ashr i64 %2, 12
  %62 = icmp eq i64 %60, %61
  %63 = trunc i64 %60 to i32
  %64 = call ptr @__filemap_get_folio(ptr noundef %0, i32 noundef %63, i32 noundef 2, i32 noundef 0) #4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 1, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = zext i32 %68 to i64
  %70 = shl nuw nsw i64 %69, 12
  %71 = load volatile i32, ptr %64, align 4
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = getelementptr %struct.page, ptr %64, i32 1, i32 1
  %76 = getelementptr inbounds %struct.anon.60, ptr %75, i32 0, i32 2
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %74, %66
  %80 = phi i32 [ %78, %74 ], [ 0, %66 ]
  %81 = shl i32 4096, %80
  %82 = call zeroext i1 @truncate_inode_partial_folio(ptr noundef nonnull %64, i64 noundef %1, i64 noundef %2)
  %83 = zext i32 %81 to i64
  %84 = add nuw nsw i64 %70, %83
  %85 = icmp sgt i64 %84, %2
  call void @folio_unlock(ptr noundef nonnull %64) #4
  %86 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %86) #4, !srcloc !11
  %87 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %86, ptr %86, i32 1, ptr elementtype(i32) %86) #4, !srcloc !12
  %88 = extractvalue { i32, i32 } %87, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  call void @__put_page(ptr noundef nonnull %64) #4
  br i1 %85, label %104, label %93

91:                                               ; preds = %79, %59
  %92 = phi i1 [ %62, %59 ], [ %85, %79 ]
  br i1 %92, label %104, label %93

93:                                               ; preds = %91, %90
  %94 = trunc i64 %61 to i32
  %95 = call ptr @__filemap_get_folio(ptr noundef %0, i32 noundef %94, i32 noundef 2, i32 noundef 0) #4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %93
  %98 = call zeroext i1 @truncate_inode_partial_folio(ptr noundef nonnull %95, i64 noundef %1, i64 noundef %2)
  call void @folio_unlock(ptr noundef nonnull %95) #4
  %99 = getelementptr inbounds %struct.page, ptr %95, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %99) #4, !srcloc !11
  %100 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %99, ptr %99, i32 1, ptr elementtype(i32) %99) #4, !srcloc !12
  %101 = extractvalue { i32, i32 } %100, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  call void @__put_page(ptr noundef nonnull %95) #4
  br label %104

104:                                              ; preds = %103, %97, %93, %91, %90
  br i1 %20, label %105, label %182

105:                                              ; preds = %179, %104
  %106 = phi i32 [ %180, %179 ], [ %12, %104 ]
  %107 = call i32 @__cond_resched() #4
  %108 = call i32 @find_get_entries(ptr noundef %0, i32 noundef %106, i32 noundef %19, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i8, ptr %4, align 4
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %172, label %115

113:                                              ; preds = %105
  %114 = icmp eq i32 %106, %12
  br i1 %114, label %182, label %179

115:                                              ; preds = %166, %110
  %116 = phi i8 [ %167, %166 ], [ %111, %110 ]
  %117 = phi i32 [ %169, %166 ], [ 0, %110 ]
  %118 = getelementptr %struct.folio_batch, ptr %4, i32 0, i32 2, i32 %117
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr [15 x i32], ptr %5, i32 0, i32 %117
  %121 = load i32, ptr %120, align 4
  %122 = ptrtoint ptr %119 to i32
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %166

125:                                              ; preds = %115
  %126 = load volatile i32, ptr %119, align 4
  %127 = and i32 %126, 1
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %119) #4, !srcloc !11
  %130 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %119, ptr %119, i32 1, ptr elementtype(i32) %119) #4, !srcloc !14
  %131 = extractvalue { i32, i32, i32 } %130, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129, %125
  call void @__folio_lock(ptr noundef %119) #4
  br label %135

135:                                              ; preds = %134, %129
  call void @folio_wait_writeback(ptr noundef %119) #4
  %136 = getelementptr inbounds %struct.anon.72, ptr %119, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, %0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  call fastcc void @truncate_cleanup_folio(ptr noundef %119) #4
  call void @filemap_remove_folio(ptr noundef %119) #4
  br label %140

140:                                              ; preds = %139, %135
  call void @folio_unlock(ptr noundef %119) #4
  %141 = load volatile i32, ptr %119, align 4
  %142 = and i32 %141, 524288
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load volatile i32, ptr %119, align 4
  %146 = and i32 %145, 1024
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148, !prof !8

148:                                              ; preds = %144
  %149 = call i32 @__page_file_index(ptr noundef %119) #4
  br label %153

150:                                              ; preds = %144, %140
  %151 = getelementptr inbounds %struct.anon.72, ptr %119, i32 0, i32 3
  %152 = load i32, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %148
  %154 = phi i32 [ %149, %148 ], [ %152, %150 ]
  %155 = load volatile i32, ptr %119, align 4
  %156 = and i32 %155, 65536
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = getelementptr %struct.page, ptr %119, i32 1, i32 1, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %153
  %162 = phi i32 [ %160, %158 ], [ 1, %153 ]
  %163 = add i32 %154, -1
  %164 = add i32 %163, %162
  %165 = load i8, ptr %4, align 4
  br label %166

166:                                              ; preds = %161, %115
  %167 = phi i8 [ %165, %161 ], [ %116, %115 ]
  %168 = phi i32 [ %164, %161 ], [ %121, %115 ]
  %169 = add nuw nsw i32 %117, 1
  %170 = zext i8 %167 to i32
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %115, label %172

172:                                              ; preds = %166, %110
  %173 = phi i32 [ %106, %110 ], [ %168, %166 ]
  call fastcc void @truncate_folio_batch_exceptionals(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %174 = load i8, ptr %4, align 4
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  call void @__pagevec_release(ptr noundef nonnull %4) #4
  br label %177

177:                                              ; preds = %176, %172
  %178 = add i32 %173, 1
  br label %179

179:                                              ; preds = %177, %113
  %180 = phi i32 [ %178, %177 ], [ %12, %113 ]
  %181 = icmp ult i32 %180, %17
  br i1 %181, label %105, label %182

182:                                              ; preds = %179, %113, %104, %3
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_lock_entries(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @truncate_folio_batch_exceptionals(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @shmem_aops
  br i1 %7, label %73, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %1, align 4
  %10 = zext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %19, %8
  %13 = phi i32 [ %20, %19 ], [ 0, %8 ]
  %14 = getelementptr %struct.folio_batch, ptr %1, i32 0, i32 2, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = add nuw nsw i32 %13, 1
  %21 = icmp eq i32 %20, %10
  br i1 %21, label %73, label %12

22:                                               ; preds = %12, %8
  %23 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %73, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %27) #4
  %28 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %28) #4
  %29 = load i8, ptr %1, align 4
  %30 = zext i8 %29 to i32
  %31 = icmp ult i32 %23, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  %36 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  %37 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  br label %38

38:                                               ; preds = %57, %32
  %39 = phi i32 [ %23, %32 ], [ %58, %57 ]
  %40 = phi i32 [ %23, %32 ], [ %59, %57 ]
  %41 = getelementptr %struct.folio_batch, ptr %1, i32 0, i32 2, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = add i32 %39, 1
  %48 = getelementptr %struct.folio_batch, ptr %1, i32 0, i32 2, i32 %39
  store ptr %42, ptr %48, align 4
  br label %57

49:                                               ; preds = %38
  %50 = getelementptr i32, ptr %2, i32 %40
  %51 = load i32, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #4
  store ptr %28, ptr %4, align 4
  store i32 %51, ptr %33, align 4
  store i32 0, ptr %34, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %35, align 4
  store ptr null, ptr %36, align 4
  store ptr @workingset_update_node, ptr %37, align 4
  %52 = call ptr @xas_load(ptr noundef nonnull %4) #4
  %53 = icmp eq ptr %52, %42
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call ptr @xas_store(ptr noundef nonnull %4, ptr noundef null) #4
  br label %56

56:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #4
  br label %57

57:                                               ; preds = %56, %46
  %58 = phi i32 [ %39, %56 ], [ %47, %46 ]
  %59 = add nuw nsw i32 %40, 1
  %60 = load i8, ptr %1, align 4
  %61 = zext i8 %60 to i32
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %38, label %63

63:                                               ; preds = %57, %25
  %64 = phi i32 [ %23, %25 ], [ %58, %57 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %65 = load i16, ptr %28, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %67 = load ptr, ptr %0, align 4
  call void @inode_add_lru(ptr noundef %67) #4
  %68 = load ptr, ptr %0, align 4
  %69 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %70 = load i16, ptr %69, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %69, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  %72 = trunc i32 %64 to i8
  store i8 %72, ptr %1, align 4
  br label %73

73:                                               ; preds = %63, %22, %19, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_from_page_cache_batch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_get_entries(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @truncate_inode_pages(ptr noundef %0, i64 noundef %1) #0 {
  tail call void @truncate_inode_pages_range(ptr noundef %0, i64 noundef %1, i64 noundef -1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @truncate_inode_pages_final(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 4, ptr noundef %2) #4
  %3 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %8 = load i16, ptr %7, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  br label %10

10:                                               ; preds = %6, %1
  tail call void @truncate_inode_pages_range(ptr noundef %0, i64 noundef 0, i64 noundef -1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @invalidate_mapping_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc i32 @__invalidate_mapping_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__invalidate_mapping_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [15 x i32], align 4
  %6 = alloca %struct.folio_batch, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %5, i8 0, i32 60, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  %7 = call i32 @find_lock_entries(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %5) #4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %11 = icmp eq ptr %3, null
  br label %12

12:                                               ; preds = %54, %9
  %13 = phi i32 [ %1, %9 ], [ %56, %54 ]
  %14 = phi i32 [ 0, %9 ], [ %49, %54 ]
  %15 = load i8, ptr %6, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %42, %12
  %18 = phi i32 [ %44, %42 ], [ 0, %12 ]
  %19 = phi i32 [ %43, %42 ], [ %14, %12 ]
  %20 = getelementptr %struct.folio_batch, ptr %6, i32 0, i32 2, i32 %18
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr [15 x i32], ptr %5, i32 0, i32 %18
  %23 = load i32, ptr %22, align 4
  %24 = ptrtoint ptr %21 to i32
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %10, align 4
  %29 = icmp eq ptr %28, @shmem_aops
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call fastcc void @clear_shadow_entry(ptr noundef %0, i32 noundef %23, ptr noundef %21) #4
  br label %31

31:                                               ; preds = %30, %27
  %32 = add i32 %19, 1
  br label %42

33:                                               ; preds = %17
  %34 = call i32 @invalidate_inode_page(ptr noundef %21)
  call void @unlock_page(ptr noundef %21) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  call void @deactivate_file_page(ptr noundef %21) #4
  br i1 %11, label %40, label %37

37:                                               ; preds = %36
  %38 = load i32, ptr %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %3, align 4
  br label %40

40:                                               ; preds = %37, %36, %33
  %41 = add i32 %34, %19
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi i32 [ %32, %31 ], [ %41, %40 ]
  %44 = add nuw nsw i32 %18, 1
  %45 = load i8, ptr %6, align 4
  %46 = zext i8 %45 to i32
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %17, label %48

48:                                               ; preds = %42, %12
  %49 = phi i32 [ %14, %12 ], [ %43, %42 ]
  %50 = phi i32 [ %13, %12 ], [ %23, %42 ]
  call void @folio_batch_remove_exceptionals(ptr noundef nonnull %6) #4
  %51 = load i8, ptr %6, align 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  call void @__pagevec_release(ptr noundef nonnull %6) #4
  br label %54

54:                                               ; preds = %53, %48
  %55 = call i32 @__cond_resched() #4
  %56 = add i32 %50, 1
  %57 = call i32 @find_lock_entries(ptr noundef %0, i32 noundef %56, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %5) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %12

59:                                               ; preds = %54, %4
  %60 = phi i32 [ 0, %4 ], [ %49, %54 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #4
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @invalidate_mapping_pagevec(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc i32 @__invalidate_mapping_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @invalidate_inode_pages2_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [15 x i32], align 4
  %5 = alloca %struct.folio_batch, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %4, i8 0, i32 60, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %139, label %9

9:                                                ; preds = %3
  %10 = call i32 @find_get_entries(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %139, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %14 = add i32 %2, 1
  %15 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %134, %12
  %17 = phi i32 [ 0, %12 ], [ %130, %134 ]
  %18 = phi i32 [ 0, %12 ], [ %129, %134 ]
  %19 = phi i32 [ %1, %12 ], [ %136, %134 ]
  %20 = load i8, ptr %5, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %127, label %22

22:                                               ; preds = %120, %16
  %23 = phi i32 [ %122, %120 ], [ %17, %16 ]
  %24 = phi i32 [ %121, %120 ], [ %18, %16 ]
  %25 = phi i32 [ %123, %120 ], [ 0, %16 ]
  %26 = getelementptr %struct.folio_batch, ptr %5, i32 0, i32 2, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr [15 x i32], ptr %4, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  %30 = ptrtoint ptr %27 to i32
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %22
  %34 = load ptr, ptr %13, align 4
  %35 = icmp eq ptr %34, @shmem_aops
  br i1 %35, label %120, label %36

36:                                               ; preds = %33
  call fastcc void @clear_shadow_entry(ptr noundef %0, i32 noundef %29, ptr noundef %27) #4
  br label %120

37:                                               ; preds = %22
  %38 = icmp eq i32 %23, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = call zeroext i1 @folio_mapped(ptr noundef %27) #4
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = sub i32 %14, %29
  call void @unmap_mapping_pages(ptr noundef %0, i32 noundef %29, i32 noundef %42, i1 noundef zeroext false) #4
  br label %43

43:                                               ; preds = %41, %39, %37
  %44 = phi i32 [ 1, %37 ], [ 1, %41 ], [ 0, %39 ]
  %45 = load volatile i32, ptr %27, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #4, !srcloc !11
  %49 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #4, !srcloc !14
  %50 = extractvalue { i32, i32, i32 } %49, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !15
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %43
  call void @__folio_lock(ptr noundef %27) #4
  br label %54

54:                                               ; preds = %53, %48
  %55 = getelementptr inbounds %struct.anon.72, ptr %27, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  call void @folio_unlock(ptr noundef %27) #4
  br label %120

59:                                               ; preds = %54
  call void @folio_wait_writeback(ptr noundef %27) #4
  %60 = call zeroext i1 @folio_mapped(ptr noundef %27) #4
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  call void @unmap_mapping_folio(ptr noundef %27) #4
  br label %62

62:                                               ; preds = %61, %59
  %63 = call zeroext i1 @folio_mapped(ptr noundef %27) #4
  br i1 %63, label %64, label %65, !prof !22

64:                                               ; preds = %62
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/truncate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 693, 0\0A.popsection", ""() #4, !srcloc !23
  unreachable

65:                                               ; preds = %62
  %66 = load volatile i32, ptr %27, align 4
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %55, align 4
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load ptr, ptr %13, align 4
  %74 = getelementptr inbounds %struct.address_space_operations, ptr %73, i32 0, i32 16
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = call i32 %75(ptr noundef %27) #4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %114

80:                                               ; preds = %77, %72, %69, %65
  %81 = load ptr, ptr %55, align 4
  %82 = icmp eq ptr %81, %0
  br i1 %82, label %83, label %116

83:                                               ; preds = %80
  %84 = load i32, ptr %27, align 4
  %85 = and i32 %84, 24576
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call zeroext i1 @filemap_release_folio(ptr noundef %27, i32 noundef 3264) #4
  br i1 %88, label %89, label %116

89:                                               ; preds = %87, %83
  %90 = load ptr, ptr %0, align 4
  %91 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %91) #4
  call void @_raw_spin_lock_irq(ptr noundef %15) #4
  %92 = load volatile i32, ptr %27, align 4
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = and i32 %92, 24576
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98, !prof !8

98:                                               ; preds = %95
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/truncate.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 608, 0\0A.popsection", ""() #4, !srcloc !24
  unreachable

99:                                               ; preds = %89
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %100 = load i16, ptr %15, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr inbounds %struct.inode, ptr %102, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %104 = load i16, ptr %103, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %103, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  br label %116

106:                                              ; preds = %95
  call void @__filemap_remove_folio(ptr noundef %27, ptr noundef null) #4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %107 = load i16, ptr %15, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %109 = load ptr, ptr %0, align 4
  call void @inode_add_lru(ptr noundef %109) #4
  %110 = load ptr, ptr %0, align 4
  %111 = getelementptr inbounds %struct.inode, ptr %110, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %112 = load i16, ptr %111, align 4
  %113 = add i16 %112, 1
  store i16 %113, ptr %111, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  call void @filemap_free_folio(ptr noundef %0, ptr noundef %27) #4
  br label %118

114:                                              ; preds = %77
  %115 = icmp slt i32 %78, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %114, %99, %87, %80
  %117 = phi i32 [ %78, %114 ], [ -16, %99 ], [ -16, %80 ], [ -16, %87 ]
  br label %118

118:                                              ; preds = %116, %114, %106
  %119 = phi i32 [ %117, %116 ], [ %24, %114 ], [ %24, %106 ]
  call void @folio_unlock(ptr noundef %27) #4
  br label %120

120:                                              ; preds = %118, %58, %36, %33
  %121 = phi i32 [ %24, %58 ], [ %119, %118 ], [ %24, %33 ], [ %24, %36 ]
  %122 = phi i32 [ %44, %58 ], [ %44, %118 ], [ %23, %33 ], [ %23, %36 ]
  %123 = add nuw nsw i32 %25, 1
  %124 = load i8, ptr %5, align 4
  %125 = zext i8 %124 to i32
  %126 = icmp ult i32 %123, %125
  br i1 %126, label %22, label %127

127:                                              ; preds = %120, %16
  %128 = phi i32 [ %19, %16 ], [ %29, %120 ]
  %129 = phi i32 [ %18, %16 ], [ %121, %120 ]
  %130 = phi i32 [ %17, %16 ], [ %122, %120 ]
  call void @folio_batch_remove_exceptionals(ptr noundef nonnull %5) #4
  %131 = load i8, ptr %5, align 4
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  call void @__pagevec_release(ptr noundef nonnull %5) #4
  br label %134

134:                                              ; preds = %133, %127
  %135 = call i32 @__cond_resched() #4
  %136 = add i32 %128, 1
  %137 = call i32 @find_get_entries(ptr noundef %0, i32 noundef %136, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4) #4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %16

139:                                              ; preds = %134, %9, %3
  %140 = phi i32 [ 0, %3 ], [ 0, %9 ], [ %129, %134 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #4
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_pages(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_folio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_batch_remove_exceptionals(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @invalidate_inode_pages2(ptr noundef %0) #0 {
  %2 = tail call i32 @invalidate_inode_pages2_range(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @truncate_pagecache(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = add i64 %1, -1
  %6 = or i64 %5, 4095
  %7 = add i64 %6, 1
  tail call void @unmap_mapping_range(ptr noundef %4, i64 noundef %7, i64 noundef 0, i32 noundef 1) #4
  tail call void @truncate_inode_pages_range(ptr noundef %4, i64 noundef %1, i64 noundef -1) #4
  tail call void @unmap_mapping_range(ptr noundef %4, i64 noundef %7, i64 noundef 0, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_mapping_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @truncate_setsize(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %4 = load i64, ptr %3, align 8
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !25
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !26
  store i64 %1, ptr %3, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #4, !srcloc !27
  %8 = load i32, ptr %5, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !28
  %10 = icmp slt i64 %4, %1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @pagecache_isize_extended(ptr noundef %0, i64 noundef %4, i64 noundef %1)
  br label %12

12:                                               ; preds = %11, %2
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  %15 = add i64 %1, -1
  %16 = or i64 %15, 4095
  %17 = add i64 %16, 1
  tail call void @unmap_mapping_range(ptr noundef %14, i64 noundef %17, i64 noundef 0, i32 noundef 1) #4
  tail call void @truncate_inode_pages_range(ptr noundef %14, i64 noundef %1, i64 noundef -1) #4
  tail call void @unmap_mapping_range(ptr noundef %14, i64 noundef %17, i64 noundef 0, i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pagecache_isize_extended(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  %8 = load i64, ptr %7, align 8
  %9 = icmp slt i64 %8, %2
  br i1 %9, label %10, label %11, !prof !22

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 823, i32 noundef 9, ptr noundef null) #4
  br label %11

11:                                               ; preds = %10, %3
  %12 = icmp sge i64 %1, %2
  %13 = icmp eq i8 %5, 12
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %65, label %15

15:                                               ; preds = %11
  %16 = add i64 %1, -1
  %17 = shl nsw i32 -1, %6
  %18 = xor i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = or i64 %16, %19
  %21 = add i64 %20, 1
  %22 = icmp sge i64 %21, %2
  %23 = and i64 %21, 4095
  %24 = icmp eq i64 %23, 0
  %25 = or i1 %22, %24
  br i1 %25, label %65, label %26

26:                                               ; preds = %15
  %27 = lshr i64 %1, 12
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 8
  %31 = tail call ptr @pagecache_get_page(ptr noundef %30, i32 noundef %28, i32 noundef 2, i32 noundef 0) #4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %65, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38, !prof !8

38:                                               ; preds = %33
  %39 = add i32 %35, -1
  br label %42

40:                                               ; preds = %33
  %41 = ptrtoint ptr %31 to i32
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 @folio_mkclean(ptr noundef %44) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = tail call zeroext i1 @set_page_dirty(ptr noundef nonnull %31) #4
  br label %49

49:                                               ; preds = %47, %42
  tail call void @unlock_page(ptr noundef nonnull %31) #4
  %50 = load volatile i32, ptr %34, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !8

53:                                               ; preds = %49
  %54 = add i32 %50, -1
  br label %57

55:                                               ; preds = %49
  %56 = ptrtoint ptr %31 to i32
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.page, ptr %59, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #4, !srcloc !11
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #4, !srcloc !12
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call void @__put_page(ptr noundef %59) #4
  br label %65

65:                                               ; preds = %64, %57, %26, %15, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @truncate_pagecache_range(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = add i64 %1, -1
  %7 = or i64 %6, 4095
  %8 = add i64 %7, 1
  %9 = add i64 %2, 1
  %10 = and i64 %9, -4096
  %11 = add i64 %10, -1
  %12 = icmp ugt i64 %11, %8
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = sub i64 %10, %8
  tail call void @unmap_mapping_range(ptr noundef %5, i64 noundef %8, i64 noundef %14, i32 noundef 0) #4
  br label %15

15:                                               ; preds = %13, %3
  tail call void @truncate_inode_pages_range(ptr noundef %5, i64 noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_cancel_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_update_node(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_file_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clear_shadow_entry(ptr noundef %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #4
  store ptr %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr @workingset_update_node, ptr %12, align 4
  %13 = call ptr @xas_load(ptr noundef nonnull %4) #4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call ptr @xas_store(ptr noundef nonnull %4, ptr noundef null) #4
  br label %17

17:                                               ; preds = %15, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #4
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %18 = load i16, ptr %7, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #4, !srcloc !19
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  %20 = load ptr, ptr %0, align 4
  call void @inode_add_lru(ptr noundef %20) #4
  %21 = load ptr, ptr %0, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_release_folio(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_remove_folio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @filemap_free_folio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_mkclean(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"auto-init"}
!10 = !{i64 2148038362}
!11 = !{i64 435524, i64 2147925495, i64 2147925521, i64 2147925568, i64 2147925590, i64 2147925618, i64 2147925638}
!12 = !{i64 2147940748, i64 2147940780, i64 2147940809, i64 2147940843, i64 2147940874, i64 2147940897}
!13 = !{i64 2148038565}
!14 = !{i64 2147946169, i64 2147946201, i64 2147946230, i64 2147946264, i64 2147946295, i64 2147946318}
!15 = !{i64 2148047485}
!16 = !{i64 2149032998}
!17 = !{i64 2149028822}
!18 = !{i64 2149028897, i64 2149028924, i64 2149028971, i64 2149028993, i64 2149029021, i64 2149029041}
!19 = !{i64 331008}
!20 = !{i64 2149057142}
!21 = !{i64 2149056001}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{i64 2153637686, i64 2153638164, i64 2153637723, i64 2153637779, i64 2153637813, i64 2153637837, i64 2153637878, i64 2153637899, i64 2153637927, i64 2153637961}
!24 = !{i64 2153636319, i64 2153636797, i64 2153636356, i64 2153636412, i64 2153636446, i64 2153636470, i64 2153636511, i64 2153636532, i64 2153636560, i64 2153636594}
!25 = !{i64 2151318817}
!26 = !{i64 2149511721}
!27 = !{i64 2149512022}
!28 = !{i64 2151326375}
