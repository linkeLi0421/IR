; ModuleID = '/llk/IR/mm/folio-compat.c_pt.bc'
source_filename = "../mm/folio-compat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22page_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_page_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_page:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_page\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_end_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22end_page_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_end_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_on_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_on_page_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_wait_on_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_stable_page:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_stable_page\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_stable_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22page_mapped\22\09\09\09\09\09"
module asm "__kstrtabns_page_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_page_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_page_accessed\22\09\09\09\09\09"
module asm "__kstrtabns_mark_page_accessed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page_move_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page_move_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page_move_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page_states:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page_states\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page_states:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_page_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_page_copy\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_page_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22set_page_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_set_page_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_page_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22set_page_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_set_page_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___set_page_dirty_nobuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22__set_page_dirty_nobuffers\22\09\09\09\09\09"
module asm "__kstrtabns___set_page_dirty_nobuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_page_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_page_dirty_for_io\22\09\09\09\09\09"
module asm "__kstrtabns_clear_page_dirty_for_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_redirty_page_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22redirty_page_for_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_redirty_page_for_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lru_cache_add:\09\09\09\09\09"
module asm "\09.asciz \09\22lru_cache_add\22\09\09\09\09\09"
module asm "__kstrtabns_lru_cache_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_to_page_cache_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22add_to_page_cache_lru\22\09\09\09\09\09"
module asm "__kstrtabns_add_to_page_cache_lru:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagecache_get_page:\09\09\09\09\09"
module asm "\09.asciz \09\22pagecache_get_page\22\09\09\09\09\09"
module asm "__kstrtabns_pagecache_get_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_grab_cache_page_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22grab_cache_page_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_grab_cache_page_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_to_release_page:\09\09\09\09\09"
module asm "\09.asciz \09\22try_to_release_page\22\09\09\09\09\09"
module asm "__kstrtabns_try_to_release_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.64 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }

@__kstrtab_page_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_page_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_mapping to i32), ptr @__kstrtab_page_mapping, ptr @__kstrtabns_page_mapping }, section "___ksymtab+page_mapping", align 4
@__kstrtab_unlock_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_page = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_page to i32), ptr @__kstrtab_unlock_page, ptr @__kstrtabns_unlock_page }, section "___ksymtab+unlock_page", align 4
@__kstrtab_end_page_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_end_page_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_end_page_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @end_page_writeback to i32), ptr @__kstrtab_end_page_writeback, ptr @__kstrtabns_end_page_writeback }, section "___ksymtab+end_page_writeback", align 4
@__kstrtab_wait_on_page_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_on_page_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_on_page_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_on_page_writeback to i32), ptr @__kstrtab_wait_on_page_writeback, ptr @__kstrtabns_wait_on_page_writeback }, section "___ksymtab_gpl+wait_on_page_writeback", align 4
@__kstrtab_wait_for_stable_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_stable_page = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_stable_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_stable_page to i32), ptr @__kstrtab_wait_for_stable_page, ptr @__kstrtabns_wait_for_stable_page }, section "___ksymtab_gpl+wait_for_stable_page", align 4
@__kstrtab_page_mapped = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_mapped = external dso_local constant [0 x i8], align 1
@__ksymtab_page_mapped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_mapped to i32), ptr @__kstrtab_page_mapped, ptr @__kstrtabns_page_mapped }, section "___ksymtab+page_mapped", align 4
@__kstrtab_mark_page_accessed = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_page_accessed = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_page_accessed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_page_accessed to i32), ptr @__kstrtab_mark_page_accessed, ptr @__kstrtabns_mark_page_accessed }, section "___ksymtab+mark_page_accessed", align 4
@__kstrtab_migrate_page_move_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page_move_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page_move_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page_move_mapping to i32), ptr @__kstrtab_migrate_page_move_mapping, ptr @__kstrtabns_migrate_page_move_mapping }, section "___ksymtab+migrate_page_move_mapping", align 4
@__kstrtab_migrate_page_states = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page_states = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page_states = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page_states to i32), ptr @__kstrtab_migrate_page_states, ptr @__kstrtabns_migrate_page_states }, section "___ksymtab+migrate_page_states", align 4
@__kstrtab_migrate_page_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_page_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_page_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_page_copy to i32), ptr @__kstrtab_migrate_page_copy, ptr @__kstrtabns_migrate_page_copy }, section "___ksymtab+migrate_page_copy", align 4
@__kstrtab_set_page_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_page_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_set_page_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_page_writeback to i32), ptr @__kstrtab_set_page_writeback, ptr @__kstrtabns_set_page_writeback }, section "___ksymtab+set_page_writeback", align 4
@__kstrtab_set_page_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_page_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_set_page_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_page_dirty to i32), ptr @__kstrtab_set_page_dirty, ptr @__kstrtabns_set_page_dirty }, section "___ksymtab+set_page_dirty", align 4
@__kstrtab___set_page_dirty_nobuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns___set_page_dirty_nobuffers = external dso_local constant [0 x i8], align 1
@__ksymtab___set_page_dirty_nobuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__set_page_dirty_nobuffers to i32), ptr @__kstrtab___set_page_dirty_nobuffers, ptr @__kstrtabns___set_page_dirty_nobuffers }, section "___ksymtab+__set_page_dirty_nobuffers", align 4
@__kstrtab_clear_page_dirty_for_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_page_dirty_for_io = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_page_dirty_for_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_page_dirty_for_io to i32), ptr @__kstrtab_clear_page_dirty_for_io, ptr @__kstrtabns_clear_page_dirty_for_io }, section "___ksymtab+clear_page_dirty_for_io", align 4
@__kstrtab_redirty_page_for_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_redirty_page_for_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_redirty_page_for_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @redirty_page_for_writepage to i32), ptr @__kstrtab_redirty_page_for_writepage, ptr @__kstrtabns_redirty_page_for_writepage }, section "___ksymtab+redirty_page_for_writepage", align 4
@__kstrtab_lru_cache_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_lru_cache_add = external dso_local constant [0 x i8], align 1
@__ksymtab_lru_cache_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lru_cache_add to i32), ptr @__kstrtab_lru_cache_add, ptr @__kstrtabns_lru_cache_add }, section "___ksymtab+lru_cache_add", align 4
@__kstrtab_add_to_page_cache_lru = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_to_page_cache_lru = external dso_local constant [0 x i8], align 1
@__ksymtab_add_to_page_cache_lru = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_to_page_cache_lru to i32), ptr @__kstrtab_add_to_page_cache_lru, ptr @__kstrtabns_add_to_page_cache_lru }, section "___ksymtab+add_to_page_cache_lru", align 4
@__kstrtab_pagecache_get_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagecache_get_page = external dso_local constant [0 x i8], align 1
@__ksymtab_pagecache_get_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagecache_get_page to i32), ptr @__kstrtab_pagecache_get_page, ptr @__kstrtabns_pagecache_get_page }, section "___ksymtab+pagecache_get_page", align 4
@__kstrtab_grab_cache_page_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_grab_cache_page_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_grab_cache_page_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @grab_cache_page_write_begin to i32), ptr @__kstrtab_grab_cache_page_write_begin, ptr @__kstrtabns_grab_cache_page_write_begin }, section "___ksymtab+grab_cache_page_write_begin", align 4
@__kstrtab_try_to_release_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_to_release_page = external dso_local constant [0 x i8], align 1
@__ksymtab_try_to_release_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_to_release_page to i32), ptr @__kstrtab_try_to_release_page, ptr @__kstrtabns_try_to_release_page }, section "___ksymtab+try_to_release_page", align 4
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab___set_page_dirty_nobuffers, ptr @__ksymtab_add_to_page_cache_lru, ptr @__ksymtab_clear_page_dirty_for_io, ptr @__ksymtab_end_page_writeback, ptr @__ksymtab_grab_cache_page_write_begin, ptr @__ksymtab_lru_cache_add, ptr @__ksymtab_mark_page_accessed, ptr @__ksymtab_migrate_page_copy, ptr @__ksymtab_migrate_page_move_mapping, ptr @__ksymtab_migrate_page_states, ptr @__ksymtab_page_mapped, ptr @__ksymtab_page_mapping, ptr @__ksymtab_pagecache_get_page, ptr @__ksymtab_redirty_page_for_writepage, ptr @__ksymtab_set_page_dirty, ptr @__ksymtab_set_page_writeback, ptr @__ksymtab_try_to_release_page, ptr @__ksymtab_unlock_page, ptr @__ksymtab_wait_for_stable_page, ptr @__ksymtab_wait_on_page_writeback], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_mapping(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call ptr @folio_mapping(ptr noundef %12) #3
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @folio_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlock_page(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call void @folio_unlock(ptr noundef %12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @end_page_writeback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call void @folio_end_writeback(ptr noundef %12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_on_page_writeback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call void @folio_wait_writeback(ptr noundef %12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wait_for_stable_page(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call void @folio_wait_stable(ptr noundef %12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_stable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @page_mapped(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call zeroext i1 @folio_mapped(ptr noundef %12) #3
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_page_accessed(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call void @folio_mark_accessed(ptr noundef %12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_mark_accessed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @migrate_page_move_mapping(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %4
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %1 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %13
  %20 = add i32 %16, -1
  br label %23

21:                                               ; preds = %13
  %22 = ptrtoint ptr %2 to i32
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = inttoptr i32 %14 to ptr
  %26 = inttoptr i32 %24 to ptr
  %27 = tail call i32 @folio_migrate_mapping(ptr noundef %0, ptr noundef %25, ptr noundef %26, i32 noundef %3) #3
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_migrate_mapping(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migrate_page_states(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !8

17:                                               ; preds = %11
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %11
  %20 = ptrtoint ptr %1 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %12 to ptr
  %24 = inttoptr i32 %22 to ptr
  tail call void @folio_migrate_flags(ptr noundef %23, ptr noundef %24) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_flags(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migrate_page_copy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !8

17:                                               ; preds = %11
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %11
  %20 = ptrtoint ptr %1 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %12 to ptr
  %24 = inttoptr i32 %22 to ptr
  tail call void @folio_migrate_copy(ptr noundef %23, ptr noundef %24) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_migrate_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @set_page_writeback(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call zeroext i1 @__folio_start_writeback(ptr noundef %12, i1 noundef zeroext false) #3
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_start_writeback(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @set_page_dirty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call zeroext i1 @folio_mark_dirty(ptr noundef %12) #3
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__set_page_dirty_nobuffers(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call ptr @folio_mapping(ptr noundef %12) #3
  %14 = load volatile i32, ptr %2, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !8

17:                                               ; preds = %10
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %10
  %20 = ptrtoint ptr %0 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call zeroext i1 @filemap_dirty_folio(ptr noundef %13, ptr noundef %23) #3
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_dirty_folio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @clear_page_dirty_for_io(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call zeroext i1 @folio_clear_dirty_for_io(ptr noundef %12) #3
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_clear_dirty_for_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %1 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call zeroext i1 @folio_redirty_for_writepage(ptr noundef %0, ptr noundef %13) #3
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_redirty_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lru_cache_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call void @folio_add_lru(ptr noundef %12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_add_lru(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_to_page_cache_lru(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  %16 = tail call i32 @filemap_add_folio(ptr noundef %1, ptr noundef %15, i32 noundef %2, i32 noundef %3) #3
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_add_folio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pagecache_get_page(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call ptr @__filemap_get_folio(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3
  %6 = and i32 %2, 128
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq ptr %5, null
  %9 = select i1 %7, i1 true, i1 %8
  %10 = ptrtoint ptr %5 to i32
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = load volatile i32, ptr %5, align 4
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.page, ptr %5, i32 1, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %21, %18 ], [ 0, %14 ]
  %24 = and i32 %23, %1
  %25 = getelementptr %struct.page, ptr %5, i32 %24
  br label %26

26:                                               ; preds = %22, %4
  %27 = phi ptr [ %25, %22 ], [ %5, %4 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 2
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 526, i32 542
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @pagecache_get_page(ptr noundef %0, i32 noundef %1, i32 noundef %6, i32 noundef %8)
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @delete_from_page_cache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !8

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  tail call void @filemap_remove_folio(ptr noundef %12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @filemap_remove_folio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_to_release_page(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call zeroext i1 @filemap_release_folio(ptr noundef %13, i32 noundef %1) #3
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filemap_release_folio(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
