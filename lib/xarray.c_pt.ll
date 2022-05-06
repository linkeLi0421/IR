; ModuleID = '/llk/IR/lib/xarray.c_pt.bc'
source_filename = "../lib/xarray.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_load:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_load\22\09\09\09\09\09"
module asm "__kstrtabns_xas_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_nomem:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_nomem\22\09\09\09\09\09"
module asm "__kstrtabns_xas_nomem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_create_range:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_create_range\22\09\09\09\09\09"
module asm "__kstrtabns_xas_create_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_store:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_store\22\09\09\09\09\09"
module asm "__kstrtabns_xas_store:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_get_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_get_mark\22\09\09\09\09\09"
module asm "__kstrtabns_xas_get_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_set_mark\22\09\09\09\09\09"
module asm "__kstrtabns_xas_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_clear_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_clear_mark\22\09\09\09\09\09"
module asm "__kstrtabns_xas_clear_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_init_marks:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_init_marks\22\09\09\09\09\09"
module asm "__kstrtabns_xas_init_marks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_pause\22\09\09\09\09\09"
module asm "__kstrtabns_xas_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xas_prev:\09\09\09\09\09"
module asm "\09.asciz \09\22__xas_prev\22\09\09\09\09\09"
module asm "__kstrtabns___xas_prev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xas_next:\09\09\09\09\09"
module asm "\09.asciz \09\22__xas_next\22\09\09\09\09\09"
module asm "__kstrtabns___xas_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_find:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_find\22\09\09\09\09\09"
module asm "__kstrtabns_xas_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_find_marked:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_find_marked\22\09\09\09\09\09"
module asm "__kstrtabns_xas_find_marked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xas_find_conflict:\09\09\09\09\09"
module asm "\09.asciz \09\22xas_find_conflict\22\09\09\09\09\09"
module asm "__kstrtabns_xas_find_conflict:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_load:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_load\22\09\09\09\09\09"
module asm "__kstrtabns_xa_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_erase\22\09\09\09\09\09"
module asm "__kstrtabns___xa_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_erase\22\09\09\09\09\09"
module asm "__kstrtabns_xa_erase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_store:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_store\22\09\09\09\09\09"
module asm "__kstrtabns___xa_store:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_store:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_store\22\09\09\09\09\09"
module asm "__kstrtabns_xa_store:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_cmpxchg:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_cmpxchg\22\09\09\09\09\09"
module asm "__kstrtabns___xa_cmpxchg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_insert\22\09\09\09\09\09"
module asm "__kstrtabns___xa_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___xa_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_alloc_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_alloc_cyclic\22\09\09\09\09\09"
module asm "__kstrtabns___xa_alloc_cyclic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_set_mark\22\09\09\09\09\09"
module asm "__kstrtabns___xa_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xa_clear_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22__xa_clear_mark\22\09\09\09\09\09"
module asm "__kstrtabns___xa_clear_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_get_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_get_mark\22\09\09\09\09\09"
module asm "__kstrtabns_xa_get_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_set_mark\22\09\09\09\09\09"
module asm "__kstrtabns_xa_set_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_clear_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_clear_mark\22\09\09\09\09\09"
module asm "__kstrtabns_xa_clear_mark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_find:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_find\22\09\09\09\09\09"
module asm "__kstrtabns_xa_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_find_after:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_find_after\22\09\09\09\09\09"
module asm "__kstrtabns_xa_find_after:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_extract:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_extract\22\09\09\09\09\09"
module asm "__kstrtabns_xa_extract:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_delete_node:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_delete_node\22\09\09\09\09\09"
module asm "__kstrtabns_xa_delete_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xa_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22xa_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_xa_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.1, [64 x ptr], %union.anon.2 }
%union.anon.1 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.2 = type { [3 x [2 x i32]] }

@__kstrtab_xas_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_load = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_load to i32), ptr @__kstrtab_xas_load, ptr @__kstrtabns_xas_load }, section "___ksymtab_gpl+xas_load", align 4
@radix_tree_node_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_xas_nomem = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_nomem = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_nomem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_nomem to i32), ptr @__kstrtab_xas_nomem, ptr @__kstrtabns_xas_nomem }, section "___ksymtab_gpl+xas_nomem", align 4
@__kstrtab_xas_create_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_create_range = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_create_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_create_range to i32), ptr @__kstrtab_xas_create_range, ptr @__kstrtabns_xas_create_range }, section "___ksymtab_gpl+xas_create_range", align 4
@__kstrtab_xas_store = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_store = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_store = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_store to i32), ptr @__kstrtab_xas_store, ptr @__kstrtabns_xas_store }, section "___ksymtab_gpl+xas_store", align 4
@__kstrtab_xas_get_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_get_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_get_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_get_mark to i32), ptr @__kstrtab_xas_get_mark, ptr @__kstrtabns_xas_get_mark }, section "___ksymtab_gpl+xas_get_mark", align 4
@__kstrtab_xas_set_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_set_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_set_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_set_mark to i32), ptr @__kstrtab_xas_set_mark, ptr @__kstrtabns_xas_set_mark }, section "___ksymtab_gpl+xas_set_mark", align 4
@__kstrtab_xas_clear_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_clear_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_clear_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_clear_mark to i32), ptr @__kstrtab_xas_clear_mark, ptr @__kstrtabns_xas_clear_mark }, section "___ksymtab_gpl+xas_clear_mark", align 4
@__kstrtab_xas_init_marks = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_init_marks = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_init_marks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_init_marks to i32), ptr @__kstrtab_xas_init_marks, ptr @__kstrtabns_xas_init_marks }, section "___ksymtab_gpl+xas_init_marks", align 4
@__kstrtab_xas_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_pause to i32), ptr @__kstrtab_xas_pause, ptr @__kstrtabns_xas_pause }, section "___ksymtab_gpl+xas_pause", align 4
@__kstrtab___xas_prev = external dso_local constant [0 x i8], align 1
@__kstrtabns___xas_prev = external dso_local constant [0 x i8], align 1
@__ksymtab___xas_prev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xas_prev to i32), ptr @__kstrtab___xas_prev, ptr @__kstrtabns___xas_prev }, section "___ksymtab_gpl+__xas_prev", align 4
@__kstrtab___xas_next = external dso_local constant [0 x i8], align 1
@__kstrtabns___xas_next = external dso_local constant [0 x i8], align 1
@__ksymtab___xas_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xas_next to i32), ptr @__kstrtab___xas_next, ptr @__kstrtabns___xas_next }, section "___ksymtab_gpl+__xas_next", align 4
@__kstrtab_xas_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_find = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_find to i32), ptr @__kstrtab_xas_find, ptr @__kstrtabns_xas_find }, section "___ksymtab_gpl+xas_find", align 4
@__kstrtab_xas_find_marked = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_find_marked = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_find_marked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_find_marked to i32), ptr @__kstrtab_xas_find_marked, ptr @__kstrtabns_xas_find_marked }, section "___ksymtab_gpl+xas_find_marked", align 4
@__kstrtab_xas_find_conflict = external dso_local constant [0 x i8], align 1
@__kstrtabns_xas_find_conflict = external dso_local constant [0 x i8], align 1
@__ksymtab_xas_find_conflict = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xas_find_conflict to i32), ptr @__kstrtab_xas_find_conflict, ptr @__kstrtabns_xas_find_conflict }, section "___ksymtab_gpl+xas_find_conflict", align 4
@__kstrtab_xa_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_load = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_load to i32), ptr @__kstrtab_xa_load, ptr @__kstrtabns_xa_load }, section "___ksymtab+xa_load", align 4
@__kstrtab___xa_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_erase = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_erase to i32), ptr @__kstrtab___xa_erase, ptr @__kstrtabns___xa_erase }, section "___ksymtab+__xa_erase", align 4
@__kstrtab_xa_erase = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_erase = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_erase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_erase to i32), ptr @__kstrtab_xa_erase, ptr @__kstrtabns_xa_erase }, section "___ksymtab+xa_erase", align 4
@__xa_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"lib/xarray.c\00", align 1
@__kstrtab___xa_store = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_store = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_store = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_store to i32), ptr @__kstrtab___xa_store, ptr @__kstrtabns___xa_store }, section "___ksymtab+__xa_store", align 4
@__kstrtab_xa_store = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_store = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_store = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_store to i32), ptr @__kstrtab_xa_store, ptr @__kstrtabns_xa_store }, section "___ksymtab+xa_store", align 4
@__xa_cmpxchg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___xa_cmpxchg = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_cmpxchg = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_cmpxchg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_cmpxchg to i32), ptr @__kstrtab___xa_cmpxchg, ptr @__kstrtabns___xa_cmpxchg }, section "___ksymtab+__xa_cmpxchg", align 4
@__xa_insert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___xa_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_insert = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_insert to i32), ptr @__kstrtab___xa_insert, ptr @__kstrtabns___xa_insert }, section "___ksymtab+__xa_insert", align 4
@__xa_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__xa_alloc.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___xa_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_alloc to i32), ptr @__kstrtab___xa_alloc, ptr @__kstrtabns___xa_alloc }, section "___ksymtab+__xa_alloc", align 4
@__kstrtab___xa_alloc_cyclic = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_alloc_cyclic = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_alloc_cyclic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_alloc_cyclic to i32), ptr @__kstrtab___xa_alloc_cyclic, ptr @__kstrtabns___xa_alloc_cyclic }, section "___ksymtab+__xa_alloc_cyclic", align 4
@__kstrtab___xa_set_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_set_mark = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_set_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_set_mark to i32), ptr @__kstrtab___xa_set_mark, ptr @__kstrtabns___xa_set_mark }, section "___ksymtab+__xa_set_mark", align 4
@__kstrtab___xa_clear_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns___xa_clear_mark = external dso_local constant [0 x i8], align 1
@__ksymtab___xa_clear_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xa_clear_mark to i32), ptr @__kstrtab___xa_clear_mark, ptr @__kstrtabns___xa_clear_mark }, section "___ksymtab+__xa_clear_mark", align 4
@__kstrtab_xa_get_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_get_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_get_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_get_mark to i32), ptr @__kstrtab_xa_get_mark, ptr @__kstrtabns_xa_get_mark }, section "___ksymtab+xa_get_mark", align 4
@__kstrtab_xa_set_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_set_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_set_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_set_mark to i32), ptr @__kstrtab_xa_set_mark, ptr @__kstrtabns_xa_set_mark }, section "___ksymtab+xa_set_mark", align 4
@__kstrtab_xa_clear_mark = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_clear_mark = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_clear_mark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_clear_mark to i32), ptr @__kstrtab_xa_clear_mark, ptr @__kstrtabns_xa_clear_mark }, section "___ksymtab+xa_clear_mark", align 4
@__kstrtab_xa_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_find = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_find to i32), ptr @__kstrtab_xa_find, ptr @__kstrtabns_xa_find }, section "___ksymtab+xa_find", align 4
@__kstrtab_xa_find_after = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_find_after = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_find_after = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_find_after to i32), ptr @__kstrtab_xa_find_after, ptr @__kstrtabns_xa_find_after }, section "___ksymtab+xa_find_after", align 4
@__kstrtab_xa_extract = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_extract = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_extract = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_extract to i32), ptr @__kstrtab_xa_extract, ptr @__kstrtabns_xa_extract }, section "___ksymtab+xa_extract", align 4
@__kstrtab_xa_delete_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_delete_node = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_delete_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_delete_node to i32), ptr @__kstrtab_xa_delete_node, ptr @__kstrtabns_xa_delete_node }, section "___ksymtab_gpl+xa_delete_node", align 4
@__kstrtab_xa_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_xa_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_xa_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xa_destroy to i32), ptr @__kstrtab_xa_destroy, ptr @__kstrtabns_xa_destroy }, section "___ksymtab+xa_destroy", align 4
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab___xa_alloc, ptr @__ksymtab___xa_alloc_cyclic, ptr @__ksymtab___xa_clear_mark, ptr @__ksymtab___xa_cmpxchg, ptr @__ksymtab___xa_erase, ptr @__ksymtab___xa_insert, ptr @__ksymtab___xa_set_mark, ptr @__ksymtab___xa_store, ptr @__ksymtab___xas_next, ptr @__ksymtab___xas_prev, ptr @__ksymtab_xa_clear_mark, ptr @__ksymtab_xa_delete_node, ptr @__ksymtab_xa_destroy, ptr @__ksymtab_xa_erase, ptr @__ksymtab_xa_extract, ptr @__ksymtab_xa_find, ptr @__ksymtab_xa_find_after, ptr @__ksymtab_xa_get_mark, ptr @__ksymtab_xa_load, ptr @__ksymtab_xa_set_mark, ptr @__ksymtab_xa_store, ptr @__ksymtab_xas_clear_mark, ptr @__ksymtab_xas_create_range, ptr @__ksymtab_xas_find, ptr @__ksymtab_xas_find_conflict, ptr @__ksymtab_xas_find_marked, ptr @__ksymtab_xas_get_mark, ptr @__ksymtab_xas_init_marks, ptr @__ksymtab_xas_load, ptr @__ksymtab_xas_nomem, ptr @__ksymtab_xas_pause, ptr @__ksymtab_xas_set_mark, ptr @__ksymtab_xas_store], section "llvm.metadata"

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xas_load(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.xarray, ptr %10, i32 0, i32 2
  br label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.xa_node, ptr %3, i32 0, i32 7, i32 %15
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi ptr [ %16, %12 ], [ %11, %9 ]
  %19 = load volatile ptr, ptr %18, align 4
  br label %49

20:                                               ; preds = %1
  %21 = icmp ne i32 %5, 2
  %22 = icmp ult ptr %3, inttoptr (i32 -16378 to ptr)
  %23 = icmp ult ptr %3, inttoptr (i32 4 to ptr)
  %24 = or i1 %22, %21
  %25 = or i1 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load ptr, ptr %0, align 4
  %28 = getelementptr inbounds %struct.xarray, ptr %27, i32 0, i32 2
  %29 = load volatile ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 2
  %33 = icmp ugt ptr %29, inttoptr (i32 4096 to ptr)
  %34 = and i1 %33, %32
  %35 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  br i1 %34, label %40, label %37

37:                                               ; preds = %26
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %49

40:                                               ; preds = %26
  %41 = add i32 %30, -2
  %42 = inttoptr i32 %41 to ptr
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i32
  %45 = lshr i32 %36, %44
  %46 = icmp ugt i32 %45, 63
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %49

48:                                               ; preds = %40, %37
  store ptr null, ptr %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %39, %20, %17
  %50 = phi ptr [ %19, %17 ], [ null, %47 ], [ %29, %48 ], [ null, %39 ], [ null, %20 ]
  %51 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %52 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 2
  %53 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  br label %54

54:                                               ; preds = %67, %49
  %55 = phi ptr [ %50, %49 ], [ %73, %67 ]
  %56 = ptrtoint ptr %55 to i32
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 2
  %59 = icmp ugt ptr %55, inttoptr (i32 4096 to ptr)
  %60 = and i1 %59, %58
  br i1 %60, label %61, label %77

61:                                               ; preds = %54
  %62 = add i32 %56, -2
  %63 = inttoptr i32 %62 to ptr
  %64 = load i8, ptr %52, align 4
  %65 = load i8, ptr %63, align 4
  %66 = icmp ugt i8 %64, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = load i32, ptr %51, align 4
  %69 = zext i8 %65 to i32
  %70 = lshr i32 %68, %69
  %71 = and i32 %70, 63
  %72 = getelementptr %struct.xa_node, ptr %63, i32 0, i32 7, i32 %71
  %73 = load volatile ptr, ptr %72, align 4
  store ptr %63, ptr %2, align 4
  %74 = trunc i32 %71 to i8
  store i8 %74, ptr %53, align 2
  %75 = load i8, ptr %63, align 4
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %54

77:                                               ; preds = %67, %61, %54
  %78 = phi ptr [ %55, %54 ], [ %55, %61 ], [ %73, %67 ]
  ret ptr %78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xas_nomem(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, inttoptr (i32 -46 to ptr)
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %13, %10 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.xa_node, ptr %11, i32 0, i32 6
  tail call void @radix_tree_node_rcu_free(ptr noundef %14) #8
  store ptr %13, ptr %7, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %29, label %10

16:                                               ; preds = %2
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.xarray, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 17
  %21 = and i32 %20, 4194304
  %22 = or i32 %21, %1
  %23 = load ptr, ptr @radix_tree_node_cachep, align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %23, i32 noundef %22) #8
  %25 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.xa_node, ptr %24, i32 0, i32 4
  store ptr null, ptr %28, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %3, align 4
  br label %29

29:                                               ; preds = %27, %16, %10, %6
  %30 = phi i1 [ true, %27 ], [ false, %16 ], [ false, %6 ], [ false, %10 ]
  ret i1 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xas_create_range(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 1
  %10 = zext i8 %5 to i32
  %11 = shl i32 %9, %10
  %12 = add i32 %11, -1
  %13 = or i32 %12, %3
  store i32 %13, ptr %2, align 4
  %14 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  %19 = icmp ne ptr %15, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load i8, ptr %15, align 4
  %23 = icmp eq i8 %22, %5
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %26 = load i8, ptr %25, align 2
  %27 = or i8 %26, %7
  store i8 %27, ptr %25, align 2
  br label %28

28:                                               ; preds = %24, %21, %1
  store i8 0, ptr %4, align 4
  store i8 0, ptr %6, align 1
  %29 = tail call fastcc ptr @xas_create(ptr noundef %0, i1 noundef zeroext true)
  %30 = load ptr, ptr %14, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 2
  %34 = icmp ult ptr %30, inttoptr (i32 -16378 to ptr)
  %35 = icmp ult ptr %30, inttoptr (i32 4 to ptr)
  %36 = or i1 %34, %33
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %28
  %39 = or i32 %3, 63
  %40 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  br label %51

41:                                               ; preds = %57
  %42 = tail call fastcc ptr @xas_create(ptr noundef %0, i1 noundef zeroext true)
  %43 = load ptr, ptr %14, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = and i32 %44, 3
  %46 = icmp ne i32 %45, 2
  %47 = icmp ult ptr %43, inttoptr (i32 -16378 to ptr)
  %48 = icmp ult ptr %43, inttoptr (i32 4 to ptr)
  %49 = or i1 %47, %46
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %41, %38
  %52 = phi ptr [ %30, %38 ], [ %43, %41 ]
  %53 = load i32, ptr %2, align 4
  %54 = icmp ugt i32 %53, %39
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = add i32 %53, -64
  store i32 %56, ptr %2, align 4
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi ptr [ %60, %57 ], [ %52, %55 ]
  %59 = getelementptr inbounds %struct.xa_node, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %14, align 4
  %61 = getelementptr inbounds %struct.xa_node, ptr %58, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %62, -1
  store i8 %63, ptr %40, align 2
  %64 = load i8, ptr %61, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %57, label %41

66:                                               ; preds = %41, %28
  store i8 %5, ptr %4, align 4
  store i8 %7, ptr %6, align 1
  store i32 %3, ptr %2, align 4
  br label %75

67:                                               ; preds = %51
  store i32 %3, ptr %2, align 4
  %68 = icmp eq ptr %52, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %67
  %70 = load i8, ptr %52, align 4
  %71 = zext i8 %70 to i32
  %72 = lshr i32 %3, %71
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 63
  store i8 %74, ptr %40, align 2
  br label %75

75:                                               ; preds = %69, %67, %66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @xas_create(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = icmp ugt ptr %5, inttoptr (i32 3 to ptr)
  br i1 %9, label %174, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.xarray, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  store ptr null, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.xarray, ptr %3, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  br i1 %18, label %21, label %44

21:                                               ; preds = %14
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = select i1 %1, i32 0, i32 6
  br label %171

25:                                               ; preds = %25, %21
  %26 = phi i32 [ %29, %25 ], [ 0, %21 ]
  %27 = lshr i32 %20, %26
  %28 = icmp ugt i32 %27, 63
  %29 = add i32 %26, 6
  br i1 %28, label %25, label %164

30:                                               ; preds = %10
  %31 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = ptrtoint ptr %12 to i32
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 2
  %36 = icmp ugt ptr %12, inttoptr (i32 4096 to ptr)
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = add i32 %33, -2
  %40 = inttoptr i32 %39 to ptr
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 6
  br label %44

44:                                               ; preds = %38, %30, %14
  %45 = phi i32 [ %32, %38 ], [ %32, %30 ], [ %20, %14 ]
  %46 = phi ptr [ %12, %38 ], [ %12, %30 ], [ inttoptr (i32 1030 to ptr), %14 ]
  %47 = phi ptr [ %40, %38 ], [ null, %30 ], [ null, %14 ]
  %48 = phi i32 [ %43, %38 ], [ 0, %30 ], [ 0, %14 ]
  %49 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  %50 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %51 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 8
  %52 = getelementptr inbounds %struct.xarray, ptr %3, i32 0, i32 1
  br label %53

53:                                               ; preds = %159, %44
  %54 = phi ptr [ %47, %44 ], [ %92, %159 ]
  %55 = phi i32 [ %48, %44 ], [ %160, %159 ]
  %56 = phi ptr [ %46, %44 ], [ %155, %159 ]
  %57 = ptrtoint ptr %56 to i32
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 2
  %60 = icmp ugt ptr %56, inttoptr (i32 4096 to ptr)
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = add i32 %57, -2
  %64 = inttoptr i32 %63 to ptr
  %65 = load i8, ptr %64, align 4
  %66 = zext i8 %65 to i32
  %67 = shl i32 64, %66
  %68 = add i32 %67, -1
  br label %69

69:                                               ; preds = %62, %53
  %70 = phi i32 [ %68, %62 ], [ 0, %53 ]
  %71 = icmp ugt i32 %45, %70
  br i1 %71, label %72, label %161

72:                                               ; preds = %69
  %73 = load ptr, ptr %4, align 4
  %74 = load ptr, ptr %49, align 4
  %75 = ptrtoint ptr %73 to i32
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %276

78:                                               ; preds = %72
  %79 = icmp eq ptr %74, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %78
  store ptr null, ptr %49, align 4
  br label %91

81:                                               ; preds = %78
  %82 = load ptr, ptr %0, align 4
  %83 = getelementptr inbounds %struct.xarray, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 32
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 10240, i32 4204544
  %88 = load ptr, ptr @radix_tree_node_cachep, align 4
  %89 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %88, i32 noundef %87) #8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %161, label %91

91:                                               ; preds = %81, %80
  %92 = phi ptr [ %74, %80 ], [ %89, %81 ]
  %93 = icmp eq ptr %73, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = load i8, ptr %50, align 2
  %96 = getelementptr inbounds %struct.xa_node, ptr %92, i32 0, i32 1
  store i8 %95, ptr %96, align 1
  %97 = getelementptr inbounds %struct.xa_node, ptr %73, i32 0, i32 2
  %98 = load i8, ptr %97, align 2
  %99 = add i8 %98, 1
  store i8 %99, ptr %97, align 2
  %100 = load ptr, ptr %51, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  tail call void %100(ptr noundef nonnull %73) #8
  br label %103

103:                                              ; preds = %102, %94, %91
  %104 = trunc i32 %55 to i8
  store i8 %104, ptr %92, align 4
  %105 = getelementptr inbounds %struct.xa_node, ptr %92, i32 0, i32 2
  store i8 0, ptr %105, align 2
  %106 = getelementptr inbounds %struct.xa_node, ptr %92, i32 0, i32 3
  store i8 0, ptr %106, align 1
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr inbounds %struct.xa_node, ptr %92, i32 0, i32 4
  store volatile ptr %107, ptr %108, align 4
  %109 = load ptr, ptr %0, align 4
  %110 = getelementptr inbounds %struct.xa_node, ptr %92, i32 0, i32 5
  store ptr %109, ptr %110, align 4
  store i8 1, ptr %105, align 2
  %111 = and i32 %57, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %103
  store i8 1, ptr %106, align 1
  br label %114

114:                                              ; preds = %113, %103
  %115 = getelementptr inbounds %struct.xa_node, ptr %92, i32 0, i32 7
  store volatile ptr %56, ptr %115, align 4
  %116 = getelementptr inbounds %struct.xa_node, ptr %92, i32 0, i32 8
  br label %117

117:                                              ; preds = %144, %114
  %118 = phi i32 [ 0, %114 ], [ %145, %144 ]
  %119 = load i32, ptr %52, align 4
  %120 = and i32 %119, 4
  %121 = icmp ne i32 %120, 0
  %122 = icmp eq i32 %118, 0
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  store i64 -1, ptr %116, align 4
  %125 = load i32, ptr %52, align 4
  %126 = and i32 %125, 33554432
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %124
  store i32 -2, ptr %116, align 4
  %129 = load i32, ptr %52, align 4
  %130 = and i32 %129, 33554432
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = or i32 %129, 33554432
  store i32 %133, ptr %52, align 4
  br label %144

134:                                              ; preds = %117
  %135 = shl i32 33554432, %118
  %136 = and i32 %119, %135
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = getelementptr [3 x [2 x i32]], ptr %116, i32 0, i32 %118
  %140 = load i32, ptr %139, align 4
  %141 = or i32 %140, 1
  store i32 %141, ptr %139, align 4
  br label %142

142:                                              ; preds = %138, %134
  %143 = icmp eq i32 %118, 2
  br i1 %143, label %146, label %144

144:                                              ; preds = %142, %132, %128, %124
  %145 = add i32 %118, 1
  br label %117

146:                                              ; preds = %142
  br i1 %61, label %147, label %152

147:                                              ; preds = %146
  %148 = add i32 %57, -2
  %149 = inttoptr i32 %148 to ptr
  %150 = getelementptr inbounds %struct.xa_node, ptr %149, i32 0, i32 1
  store i8 0, ptr %150, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !8
  %151 = getelementptr inbounds %struct.xa_node, ptr %149, i32 0, i32 4
  store volatile ptr %92, ptr %151, align 4
  br label %152

152:                                              ; preds = %147, %146
  %153 = ptrtoint ptr %92 to i32
  %154 = or i32 %153, 2
  %155 = inttoptr i32 %154 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  store volatile ptr %155, ptr %11, align 4
  %156 = load ptr, ptr %51, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  tail call void %156(ptr noundef %92) #8
  br label %159

159:                                              ; preds = %158, %152
  %160 = add i32 %55, 6
  br label %53

161:                                              ; preds = %81, %69
  %162 = phi ptr [ inttoptr (i32 -46 to ptr), %81 ], [ %54, %69 ]
  %163 = phi i32 [ -12, %81 ], [ %55, %69 ]
  store ptr %162, ptr %4, align 4
  br label %164

164:                                              ; preds = %161, %25
  %165 = phi ptr [ %162, %161 ], [ null, %25 ]
  %166 = phi i32 [ %163, %161 ], [ %29, %25 ]
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %276, label %168

168:                                              ; preds = %164
  %169 = icmp eq i32 %166, 0
  %170 = select i1 %1, i32 0, i32 6
  br i1 %169, label %171, label %189

171:                                              ; preds = %168, %23
  %172 = phi ptr [ null, %23 ], [ %165, %168 ]
  %173 = phi i32 [ %24, %23 ], [ %170, %168 ]
  br label %189

174:                                              ; preds = %2
  %175 = ptrtoint ptr %5 to i32
  %176 = and i32 %175, 3
  %177 = icmp ne i32 %176, 2
  %178 = icmp ult ptr %5, inttoptr (i32 -16378 to ptr)
  %179 = icmp ult ptr %5, inttoptr (i32 4 to ptr)
  %180 = or i1 %178, %177
  %181 = or i1 %179, %180
  br i1 %181, label %182, label %276

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %184 = load i8, ptr %183, align 2
  %185 = zext i8 %184 to i32
  %186 = load i8, ptr %5, align 4
  %187 = zext i8 %186 to i32
  %188 = getelementptr %struct.xa_node, ptr %5, i32 0, i32 7, i32 %185
  br label %189

189:                                              ; preds = %182, %171, %168
  %190 = phi ptr [ %5, %182 ], [ %165, %168 ], [ %172, %171 ]
  %191 = phi ptr [ %188, %182 ], [ %11, %168 ], [ %11, %171 ]
  %192 = phi i32 [ %187, %182 ], [ %166, %168 ], [ %173, %171 ]
  %193 = load ptr, ptr %191, align 4
  %194 = icmp ugt i32 %192, %8
  br i1 %194, label %195, label %276

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  %197 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %198 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 8
  %199 = getelementptr inbounds %struct.xarray, ptr %3, i32 0, i32 1
  %200 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  br label %201

201:                                              ; preds = %265, %195
  %202 = phi ptr [ %190, %195 ], [ %266, %265 ]
  %203 = phi i32 [ %192, %195 ], [ %206, %265 ]
  %204 = phi ptr [ %191, %195 ], [ %272, %265 ]
  %205 = phi ptr [ %193, %195 ], [ %273, %265 ]
  %206 = add i32 %203, -6
  %207 = icmp eq ptr %205, null
  br i1 %207, label %208, label %256

208:                                              ; preds = %201
  %209 = load ptr, ptr %196, align 4
  %210 = ptrtoint ptr %202 to i32
  %211 = and i32 %210, 3
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %276

213:                                              ; preds = %208
  %214 = icmp eq ptr %209, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %213
  store ptr null, ptr %196, align 4
  br label %227

216:                                              ; preds = %213
  %217 = load ptr, ptr %0, align 4
  %218 = getelementptr inbounds %struct.xarray, ptr %217, i32 0, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, 32
  %221 = icmp eq i32 %220, 0
  %222 = select i1 %221, i32 10240, i32 4204544
  %223 = load ptr, ptr @radix_tree_node_cachep, align 4
  %224 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %223, i32 noundef %222) #8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  store ptr inttoptr (i32 -46 to ptr), ptr %4, align 4
  br label %276

227:                                              ; preds = %216, %215
  %228 = phi ptr [ %209, %215 ], [ %224, %216 ]
  %229 = icmp eq ptr %202, null
  br i1 %229, label %239, label %230

230:                                              ; preds = %227
  %231 = load i8, ptr %197, align 2
  %232 = getelementptr inbounds %struct.xa_node, ptr %228, i32 0, i32 1
  store i8 %231, ptr %232, align 1
  %233 = getelementptr inbounds %struct.xa_node, ptr %202, i32 0, i32 2
  %234 = load i8, ptr %233, align 2
  %235 = add i8 %234, 1
  store i8 %235, ptr %233, align 2
  %236 = load ptr, ptr %198, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %230
  tail call void %236(ptr noundef nonnull %202) #8
  br label %239

239:                                              ; preds = %238, %230, %227
  %240 = trunc i32 %206 to i8
  store i8 %240, ptr %228, align 4
  %241 = getelementptr inbounds %struct.xa_node, ptr %228, i32 0, i32 2
  store i8 0, ptr %241, align 2
  %242 = getelementptr inbounds %struct.xa_node, ptr %228, i32 0, i32 3
  store i8 0, ptr %242, align 1
  %243 = load ptr, ptr %4, align 4
  %244 = getelementptr inbounds %struct.xa_node, ptr %228, i32 0, i32 4
  store volatile ptr %243, ptr %244, align 4
  %245 = load ptr, ptr %0, align 4
  %246 = getelementptr inbounds %struct.xa_node, ptr %228, i32 0, i32 5
  store ptr %245, ptr %246, align 4
  %247 = load i32, ptr %199, align 4
  %248 = and i32 %247, 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %252, label %250

250:                                              ; preds = %239
  %251 = getelementptr inbounds %struct.xa_node, ptr %228, i32 0, i32 8
  store i64 -1, ptr %251, align 4
  br label %252

252:                                              ; preds = %250, %239
  %253 = ptrtoint ptr %228 to i32
  %254 = or i32 %253, 2
  %255 = inttoptr i32 %254 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  store volatile ptr %255, ptr %204, align 4
  br label %265

256:                                              ; preds = %201
  %257 = ptrtoint ptr %205 to i32
  %258 = and i32 %257, 3
  %259 = icmp eq i32 %258, 2
  %260 = icmp ugt ptr %205, inttoptr (i32 4096 to ptr)
  %261 = and i1 %260, %259
  br i1 %261, label %262, label %276

262:                                              ; preds = %256
  %263 = add i32 %257, -2
  %264 = inttoptr i32 %263 to ptr
  br label %265

265:                                              ; preds = %262, %252
  %266 = phi ptr [ %264, %262 ], [ %228, %252 ]
  %267 = load i32, ptr %200, align 4
  %268 = load i8, ptr %266, align 4
  %269 = zext i8 %268 to i32
  %270 = lshr i32 %267, %269
  %271 = and i32 %270, 63
  %272 = getelementptr %struct.xa_node, ptr %266, i32 0, i32 7, i32 %271
  %273 = load volatile ptr, ptr %272, align 4
  store ptr %266, ptr %4, align 4
  %274 = trunc i32 %271 to i8
  store i8 %274, ptr %197, align 2
  %275 = icmp ugt i32 %206, %8
  br i1 %275, label %201, label %276

276:                                              ; preds = %265, %256, %226, %208, %189, %174, %164, %72
  %277 = phi ptr [ null, %164 ], [ null, %174 ], [ null, %226 ], [ %193, %189 ], [ %205, %256 ], [ %273, %265 ], [ null, %208 ], [ null, %72 ]
  ret ptr %277
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xas_store(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.xarray, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %1 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq ptr %1, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = and i32 %5, 3
  %10 = icmp ne i32 %9, 2
  %11 = icmp ule ptr %1, inttoptr (i32 4096 to ptr)
  %12 = icmp ne ptr %1, inttoptr (i32 1030 to ptr)
  %13 = or i1 %11, %10
  %14 = and i1 %12, %13
  %15 = tail call fastcc ptr @xas_create(ptr noundef %0, i1 noundef zeroext %14)
  br label %18

16:                                               ; preds = %2
  %17 = tail call ptr @xas_load(ptr noundef %0)
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi ptr [ %15, %8 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %337

25:                                               ; preds = %18
  %26 = icmp eq ptr %21, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = load i8, ptr %21, align 4
  %31 = icmp ult i8 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 3
  store i8 0, ptr %33, align 1
  br label %34

34:                                               ; preds = %32, %27, %25
  %35 = icmp eq ptr %19, %1
  %36 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 3
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %35, i1 %38, i1 false
  br i1 %39, label %337, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %42 = load i8, ptr %41, align 2
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 3
  %45 = zext i8 %37 to i32
  %46 = add nuw nsw i32 %45, %43
  br i1 %26, label %115, label %47

47:                                               ; preds = %40
  %48 = getelementptr %struct.xa_node, ptr %21, i32 0, i32 7, i32 %43
  %49 = icmp eq i8 %37, 0
  br i1 %49, label %115, label %50

50:                                               ; preds = %47
  %51 = add nuw nsw i32 %46, 1
  %52 = getelementptr inbounds %struct.xa_node, ptr %21, i32 0, i32 8
  %53 = zext i8 %42 to i32
  %54 = add nuw nsw i32 %53, 1
  %55 = tail call i32 @_find_next_bit_le(ptr noundef %52, i32 noundef %51, i32 noundef %54) #8
  %56 = icmp eq i32 %55, %51
  br i1 %56, label %71, label %57

57:                                               ; preds = %50
  %58 = load i8, ptr %41, align 2
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 31
  %61 = shl nuw i32 1, %60
  %62 = lshr i32 %59, 5
  %63 = getelementptr i32, ptr %52, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %61, %64
  store i32 %65, ptr %63, align 4
  %66 = load i8, ptr %41, align 2
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, 1
  %69 = load i8, ptr %44, align 1
  %70 = zext i8 %69 to i32
  tail call void @__bitmap_clear(ptr noundef %52, i32 noundef %68, i32 noundef %70) #8
  br label %71

71:                                               ; preds = %57, %50
  %72 = load i8, ptr %41, align 2
  %73 = load ptr, ptr %20, align 4
  %74 = getelementptr %struct.xa_node, ptr %73, i32 0, i32 8, i32 0, i32 1
  %75 = zext i8 %72 to i32
  %76 = add nuw nsw i32 %75, 1
  %77 = tail call i32 @_find_next_bit_le(ptr noundef %74, i32 noundef %51, i32 noundef %76) #8
  %78 = icmp eq i32 %77, %51
  br i1 %78, label %93, label %79

79:                                               ; preds = %71
  %80 = load i8, ptr %41, align 2
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 31
  %83 = shl nuw i32 1, %82
  %84 = lshr i32 %81, 5
  %85 = getelementptr i32, ptr %74, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = or i32 %83, %86
  store i32 %87, ptr %85, align 4
  %88 = load i8, ptr %41, align 2
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %89, 1
  %91 = load i8, ptr %44, align 1
  %92 = zext i8 %91 to i32
  tail call void @__bitmap_clear(ptr noundef %74, i32 noundef %90, i32 noundef %92) #8
  br label %93

93:                                               ; preds = %79, %71
  %94 = load i8, ptr %41, align 2
  %95 = load ptr, ptr %20, align 4
  %96 = getelementptr %struct.xa_node, ptr %95, i32 0, i32 8, i32 0, i32 2
  %97 = zext i8 %94 to i32
  %98 = add nuw nsw i32 %97, 1
  %99 = tail call i32 @_find_next_bit_le(ptr noundef %96, i32 noundef %51, i32 noundef %98) #8
  %100 = icmp eq i32 %99, %51
  br i1 %100, label %115, label %101

101:                                              ; preds = %93
  %102 = load i8, ptr %41, align 2
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 31
  %105 = shl nuw i32 1, %104
  %106 = lshr i32 %103, 5
  %107 = getelementptr i32, ptr %96, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = or i32 %105, %108
  store i32 %109, ptr %107, align 4
  %110 = load i8, ptr %41, align 2
  %111 = zext i8 %110 to i32
  %112 = add nuw nsw i32 %111, 1
  %113 = load i8, ptr %44, align 1
  %114 = zext i8 %113 to i32
  tail call void @__bitmap_clear(ptr noundef %96, i32 noundef %112, i32 noundef %114) #8
  br label %115

115:                                              ; preds = %101, %93, %47, %40
  %116 = phi ptr [ %48, %47 ], [ %4, %40 ], [ %48, %93 ], [ %48, %101 ]
  br i1 %7, label %117, label %118

117:                                              ; preds = %115
  tail call void @xas_init_marks(ptr noundef %0)
  br label %118

118:                                              ; preds = %117, %115
  %119 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 8
  %120 = add nsw i32 %6, -1
  br label %121

121:                                              ; preds = %209, %118
  %122 = phi ptr [ %1, %118 ], [ %211, %209 ]
  %123 = phi ptr [ %116, %118 ], [ %214, %209 ]
  %124 = phi i32 [ %43, %118 ], [ %210, %209 ]
  %125 = phi i32 [ 0, %118 ], [ %190, %209 ]
  %126 = phi i32 [ 0, %118 ], [ %194, %209 ]
  %127 = phi ptr [ %19, %118 ], [ %213, %209 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  store volatile ptr %122, ptr %123, align 4
  %128 = ptrtoint ptr %127 to i32
  %129 = and i32 %128, 3
  %130 = icmp eq i32 %129, 2
  %131 = icmp ugt ptr %127, inttoptr (i32 4096 to ptr)
  %132 = and i1 %131, %130
  br i1 %132, label %133, label %183

133:                                              ; preds = %121
  br i1 %26, label %137, label %134

134:                                              ; preds = %133
  %135 = load i8, ptr %21, align 4
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %184, label %137

137:                                              ; preds = %134, %133
  %138 = add i32 %128, -2
  %139 = inttoptr i32 %138 to ptr
  br label %140

140:                                              ; preds = %156, %137
  %141 = phi i32 [ 0, %137 ], [ %157, %156 ]
  %142 = phi ptr [ %139, %137 ], [ %158, %156 ]
  %143 = getelementptr %struct.xa_node, ptr %142, i32 0, i32 7, i32 %141
  %144 = load ptr, ptr %143, align 4
  %145 = load i8, ptr %142, align 4
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %159, label %147

147:                                              ; preds = %140
  %148 = ptrtoint ptr %144 to i32
  %149 = and i32 %148, 3
  %150 = icmp eq i32 %149, 2
  %151 = icmp ugt ptr %144, inttoptr (i32 4096 to ptr)
  %152 = and i1 %151, %150
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = add i32 %148, -2
  %155 = inttoptr i32 %154 to ptr
  br label %156

156:                                              ; preds = %163, %153
  %157 = phi i32 [ 0, %153 ], [ %166, %163 ]
  %158 = phi ptr [ %155, %153 ], [ %165, %163 ]
  br label %140

159:                                              ; preds = %147, %140
  %160 = icmp eq ptr %144, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %159
  store volatile ptr inttoptr (i32 1026 to ptr), ptr %143, align 4
  br label %162

162:                                              ; preds = %161, %159
  br label %163

163:                                              ; preds = %179, %162
  %164 = phi i32 [ %173, %179 ], [ %141, %162 ]
  %165 = phi ptr [ %170, %179 ], [ %142, %162 ]
  %166 = add i32 %164, 1
  %167 = icmp eq i32 %166, 64
  br i1 %167, label %168, label %156

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.xa_node, ptr %165, i32 0, i32 4
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.xa_node, ptr %165, i32 0, i32 1
  %172 = load i8, ptr %171, align 1
  %173 = zext i8 %172 to i32
  %174 = getelementptr inbounds %struct.xa_node, ptr %165, i32 0, i32 2
  store i8 0, ptr %174, align 2
  %175 = getelementptr inbounds %struct.xa_node, ptr %165, i32 0, i32 3
  store i8 0, ptr %175, align 1
  %176 = load ptr, ptr %119, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178

178:                                              ; preds = %168
  tail call void %176(ptr noundef %165) #8
  br label %179

179:                                              ; preds = %178, %168
  %180 = getelementptr inbounds %struct.xa_node, ptr %165, i32 0, i32 5
  store ptr inttoptr (i32 1 to ptr), ptr %180, align 4
  %181 = getelementptr inbounds %struct.xa_node, ptr %165, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %181, ptr noundef nonnull @radix_tree_node_rcu_free) #8
  %182 = icmp eq ptr %165, %139
  br i1 %182, label %183, label %163

183:                                              ; preds = %179, %121
  br i1 %26, label %337, label %184

184:                                              ; preds = %183, %134
  %185 = icmp eq ptr %127, null
  %186 = zext i1 %185 to i32
  %187 = icmp eq ptr %122, null
  %188 = sext i1 %187 to i32
  %189 = add i32 %125, %188
  %190 = add i32 %189, %186
  %191 = and i32 %128, 1
  %192 = xor i32 %191, 1
  %193 = add i32 %120, %126
  %194 = add i32 %193, %192
  br i1 %187, label %204, label %195

195:                                              ; preds = %184
  %196 = icmp eq i32 %124, %46
  br i1 %196, label %215, label %197

197:                                              ; preds = %195
  %198 = load i8, ptr %41, align 2
  %199 = zext i8 %198 to i32
  %200 = shl nuw nsw i32 %199, 2
  %201 = or i32 %200, 2
  %202 = inttoptr i32 %201 to ptr
  %203 = add i32 %124, 1
  br label %209

204:                                              ; preds = %184
  %205 = icmp eq i32 %124, 63
  %206 = add i32 %124, 1
  %207 = icmp ugt i32 %206, %46
  %208 = select i1 %205, i1 true, i1 %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %204, %197
  %210 = phi i32 [ %203, %197 ], [ %206, %204 ]
  %211 = phi ptr [ %202, %197 ], [ null, %204 ]
  %212 = getelementptr %struct.xa_node, ptr %21, i32 0, i32 7, i32 %210
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr ptr, ptr %123, i32 1
  br label %121

215:                                              ; preds = %204, %195
  %216 = or i32 %194, %190
  %217 = icmp eq i32 %216, 0
  %218 = or i1 %26, %217
  br i1 %218, label %337, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.xa_node, ptr %21, i32 0, i32 2
  %221 = load i8, ptr %220, align 2
  %222 = trunc i32 %190 to i8
  %223 = add i8 %221, %222
  store i8 %223, ptr %220, align 2
  %224 = getelementptr inbounds %struct.xa_node, ptr %21, i32 0, i32 3
  %225 = load i8, ptr %224, align 1
  %226 = trunc i32 %194 to i8
  %227 = add i8 %225, %226
  store i8 %227, ptr %224, align 1
  %228 = load ptr, ptr %119, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %219
  tail call void %228(ptr noundef nonnull %21) #8
  br label %231

231:                                              ; preds = %230, %219
  %232 = icmp slt i32 %190, 0
  br i1 %232, label %233, label %337

233:                                              ; preds = %231
  %234 = load ptr, ptr %20, align 4
  %235 = getelementptr inbounds %struct.xa_node, ptr %234, i32 0, i32 2
  %236 = load i8, ptr %235, align 2
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %264

238:                                              ; preds = %261, %233
  %239 = phi ptr [ %241, %261 ], [ %234, %233 ]
  %240 = getelementptr inbounds %struct.xa_node, ptr %239, i32 0, i32 4
  %241 = load ptr, ptr %240, align 4
  store ptr %241, ptr %20, align 4
  %242 = getelementptr inbounds %struct.xa_node, ptr %239, i32 0, i32 1
  %243 = load i8, ptr %242, align 1
  store i8 %243, ptr %41, align 2
  %244 = getelementptr inbounds %struct.xa_node, ptr %239, i32 0, i32 5
  store ptr inttoptr (i32 1 to ptr), ptr %244, align 4
  %245 = getelementptr inbounds %struct.xa_node, ptr %239, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %245, ptr noundef nonnull @radix_tree_node_rcu_free) #8
  %246 = icmp eq ptr %241, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %238
  %248 = load ptr, ptr %0, align 4
  %249 = getelementptr inbounds %struct.xarray, ptr %248, i32 0, i32 2
  store ptr null, ptr %249, align 4
  store ptr inttoptr (i32 1 to ptr), ptr %20, align 4
  br label %337

250:                                              ; preds = %238
  %251 = load i8, ptr %41, align 2
  %252 = zext i8 %251 to i32
  %253 = getelementptr %struct.xa_node, ptr %241, i32 0, i32 7, i32 %252
  store ptr null, ptr %253, align 4
  %254 = getelementptr inbounds %struct.xa_node, ptr %241, i32 0, i32 2
  %255 = load i8, ptr %254, align 2
  %256 = add i8 %255, -1
  store i8 %256, ptr %254, align 2
  %257 = load ptr, ptr %119, align 4
  %258 = icmp eq ptr %257, null
  br i1 %258, label %261, label %259

259:                                              ; preds = %250
  tail call void %257(ptr noundef nonnull %241) #8
  %260 = load i8, ptr %254, align 2
  br label %261

261:                                              ; preds = %259, %250
  %262 = phi i8 [ %260, %259 ], [ %256, %250 ]
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %238, label %264

264:                                              ; preds = %261, %233
  %265 = phi ptr [ %234, %233 ], [ %241, %261 ]
  %266 = getelementptr inbounds %struct.xa_node, ptr %265, i32 0, i32 4
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %337

269:                                              ; preds = %264
  %270 = load ptr, ptr %20, align 4
  %271 = getelementptr inbounds %struct.xa_node, ptr %270, i32 0, i32 2
  %272 = load i8, ptr %271, align 2
  %273 = icmp eq i8 %272, 1
  br i1 %273, label %274, label %337

274:                                              ; preds = %269
  %275 = load ptr, ptr %0, align 4
  %276 = getelementptr inbounds %struct.xarray, ptr %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.xarray, ptr %275, i32 0, i32 2
  br label %278

278:                                              ; preds = %330, %274
  %279 = phi ptr [ %271, %274 ], [ %334, %330 ]
  %280 = phi ptr [ %270, %274 ], [ %332, %330 ]
  %281 = getelementptr %struct.xa_node, ptr %280, i32 0, i32 7, i32 0
  %282 = load ptr, ptr %281, align 4
  %283 = icmp eq ptr %282, null
  br i1 %283, label %337, label %284

284:                                              ; preds = %278
  %285 = ptrtoint ptr %282 to i32
  %286 = and i32 %285, 3
  %287 = icmp eq i32 %286, 2
  %288 = icmp ugt ptr %282, inttoptr (i32 4096 to ptr)
  %289 = and i1 %288, %287
  br i1 %289, label %293, label %290

290:                                              ; preds = %284
  %291 = load i8, ptr %280, align 4
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %293, label %337

293:                                              ; preds = %290, %284
  %294 = icmp eq ptr %282, inttoptr (i32 1030 to ptr)
  br i1 %294, label %295, label %300

295:                                              ; preds = %293
  %296 = load i32, ptr %276, align 4
  %297 = and i32 %296, 8
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %298, ptr inttoptr (i32 1030 to ptr), ptr null
  br label %300

300:                                              ; preds = %295, %293
  %301 = phi ptr [ %282, %293 ], [ %299, %295 ]
  store ptr inttoptr (i32 1 to ptr), ptr %20, align 4
  store volatile ptr %301, ptr %277, align 4
  %302 = load i32, ptr %276, align 4
  %303 = and i32 %302, 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %315, label %305

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.xa_node, ptr %280, i32 0, i32 8
  %307 = load volatile i32, ptr %306, align 4
  %308 = and i32 %307, 1
  %309 = icmp ne i32 %308, 0
  %310 = and i32 %302, 33554432
  %311 = icmp eq i32 %310, 0
  %312 = select i1 %309, i1 true, i1 %311
  br i1 %312, label %315, label %313

313:                                              ; preds = %305
  %314 = and i32 %302, -33554433
  store i32 %314, ptr %276, align 4
  br label %315

315:                                              ; preds = %313, %305, %300
  store i8 0, ptr %279, align 2
  %316 = getelementptr inbounds %struct.xa_node, ptr %280, i32 0, i32 3
  store i8 0, ptr %316, align 1
  %317 = ptrtoint ptr %301 to i32
  %318 = and i32 %317, 3
  %319 = icmp eq i32 %318, 2
  %320 = icmp ugt ptr %301, inttoptr (i32 4096 to ptr)
  %321 = and i1 %320, %319
  br i1 %321, label %323, label %322

322:                                              ; preds = %315
  store volatile ptr inttoptr (i32 1026 to ptr), ptr %281, align 4
  br label %323

323:                                              ; preds = %322, %315
  %324 = load ptr, ptr %119, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %327, label %326

326:                                              ; preds = %323
  tail call void %324(ptr noundef %280) #8
  br label %327

327:                                              ; preds = %326, %323
  %328 = getelementptr inbounds %struct.xa_node, ptr %280, i32 0, i32 5
  store ptr inttoptr (i32 1 to ptr), ptr %328, align 4
  %329 = getelementptr inbounds %struct.xa_node, ptr %280, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %329, ptr noundef nonnull @radix_tree_node_rcu_free) #8
  br i1 %321, label %330, label %337

330:                                              ; preds = %327
  %331 = add i32 %317, -2
  %332 = inttoptr i32 %331 to ptr
  %333 = getelementptr inbounds %struct.xa_node, ptr %332, i32 0, i32 4
  store ptr null, ptr %333, align 4
  %334 = getelementptr inbounds %struct.xa_node, ptr %332, i32 0, i32 2
  %335 = load i8, ptr %334, align 2
  %336 = icmp eq i8 %335, 1
  br i1 %336, label %278, label %337

337:                                              ; preds = %330, %327, %290, %278, %269, %264, %247, %231, %215, %183, %34, %18
  %338 = phi ptr [ %19, %18 ], [ %127, %215 ], [ %127, %231 ], [ %127, %247 ], [ %127, %264 ], [ %127, %269 ], [ %1, %34 ], [ %127, %278 ], [ %127, %290 ], [ %127, %327 ], [ %127, %330 ], [ %127, %183 ]
  ret ptr %338
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xas_init_marks(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  br label %4

4:                                                ; preds = %94, %1
  %5 = phi i32 [ 0, %1 ], [ %95, %94 ]
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i32 %5, 0
  %12 = select i1 %10, i1 %11, i1 false
  %13 = load ptr, ptr %2, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %12, label %17, label %51

17:                                               ; preds = %4
  br i1 %16, label %18, label %94

18:                                               ; preds = %17
  %19 = icmp eq ptr %13, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %34, %18
  %21 = phi ptr [ %35, %34 ], [ %3, %18 ]
  %22 = phi ptr [ %37, %34 ], [ %13, %18 ]
  %23 = load i8, ptr %21, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.xa_node, ptr %22, i32 0, i32 8
  %26 = and i32 %24, 31
  %27 = shl nuw i32 1, %26
  %28 = lshr i32 %24, 5
  %29 = getelementptr i32, ptr %25, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %27, %30
  store i32 %31, ptr %29, align 4
  %32 = and i32 %27, %30
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.xa_node, ptr %22, i32 0, i32 1
  %36 = getelementptr inbounds %struct.xa_node, ptr %22, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %20

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.xarray, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %18
  %44 = phi i32 [ %42, %39 ], [ %8, %18 ]
  %45 = phi ptr [ %40, %39 ], [ %6, %18 ]
  %46 = and i32 %44, 33554432
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.xarray, ptr %45, i32 0, i32 1
  %50 = or i32 %44, 33554432
  store i32 %50, ptr %49, align 4
  br label %92

51:                                               ; preds = %4
  br i1 %16, label %52, label %92

52:                                               ; preds = %51
  %53 = icmp eq ptr %13, null
  br i1 %53, label %82, label %54

54:                                               ; preds = %73, %52
  %55 = phi ptr [ %74, %73 ], [ %3, %52 ]
  %56 = phi ptr [ %76, %73 ], [ %13, %52 ]
  %57 = load i8, ptr %55, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.xa_node, ptr %56, i32 0, i32 8
  %60 = getelementptr [3 x [2 x i32]], ptr %59, i32 0, i32 %5
  %61 = and i32 %58, 31
  %62 = shl nuw i32 1, %61
  %63 = lshr i32 %58, 5
  %64 = getelementptr i32, ptr %60, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %62, -1
  %67 = and i32 %65, %66
  store i32 %67, ptr %64, align 4
  %68 = and i32 %62, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %54
  %71 = tail call i32 @_find_first_bit_le(ptr noundef %60, i32 noundef 64) #8
  %72 = icmp eq i32 %71, 64
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.xa_node, ptr %56, i32 0, i32 1
  %75 = getelementptr inbounds %struct.xa_node, ptr %56, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %54

78:                                               ; preds = %73
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.xarray, ptr %79, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %78, %52
  %83 = phi i32 [ %81, %78 ], [ %8, %52 ]
  %84 = phi ptr [ %79, %78 ], [ %6, %52 ]
  %85 = shl i32 33554432, %5
  %86 = and i32 %83, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.xarray, ptr %84, i32 0, i32 1
  %90 = xor i32 %85, -1
  %91 = and i32 %83, %90
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %82, %70, %54, %51, %48, %43, %20
  %93 = icmp eq i32 %5, 2
  br i1 %93, label %96, label %94

94:                                               ; preds = %92, %17
  %95 = add i32 %5, 1
  br label %4

96:                                               ; preds = %92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xas_get_mark(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.xarray, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 33554432, %1
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br label %30

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.xa_node, ptr %4, i32 0, i32 8
  %22 = getelementptr [3 x [2 x i32]], ptr %21, i32 0, i32 %1
  %23 = lshr i32 %20, 5
  %24 = getelementptr i32, ptr %22, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %20, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %17, %10, %2
  %31 = phi i1 [ %29, %17 ], [ %16, %10 ], [ false, %2 ]
  ret i1 %31
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xas_set_mark(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  br label %12

12:                                               ; preds = %27, %10
  %13 = phi ptr [ %28, %27 ], [ %11, %10 ]
  %14 = phi ptr [ %30, %27 ], [ %4, %10 ]
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 8
  %18 = getelementptr [3 x [2 x i32]], ptr %17, i32 0, i32 %1
  %19 = and i32 %16, 31
  %20 = shl nuw i32 1, %19
  %21 = lshr i32 %16, 5
  %22 = getelementptr i32, ptr %18, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %20, %23
  store i32 %24, ptr %22, align 4
  %25 = and i32 %20, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %12
  %28 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 1
  %29 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %12

32:                                               ; preds = %27, %8
  %33 = load ptr, ptr %0, align 4
  %34 = getelementptr inbounds %struct.xarray, ptr %33, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 33554432, %1
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = or i32 %35, %36
  store i32 %40, ptr %34, align 4
  br label %41

41:                                               ; preds = %39, %32, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xas_clear_mark(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %46

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %36, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  br label %12

12:                                               ; preds = %31, %10
  %13 = phi ptr [ %32, %31 ], [ %11, %10 ]
  %14 = phi ptr [ %34, %31 ], [ %4, %10 ]
  %15 = load i8, ptr %13, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 8
  %18 = getelementptr [3 x [2 x i32]], ptr %17, i32 0, i32 %1
  %19 = and i32 %16, 31
  %20 = shl nuw i32 1, %19
  %21 = lshr i32 %16, 5
  %22 = getelementptr i32, ptr %18, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %20, -1
  %25 = and i32 %23, %24
  store i32 %25, ptr %22, align 4
  %26 = and i32 %20, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %12
  %29 = tail call i32 @_find_first_bit_le(ptr noundef %18, i32 noundef 64) #8
  %30 = icmp eq i32 %29, 64
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 1
  %33 = getelementptr inbounds %struct.xa_node, ptr %14, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %12

36:                                               ; preds = %31, %8
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.xarray, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = shl i32 33554432, %1
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = xor i32 %40, -1
  %45 = and i32 %39, %44
  store i32 %45, ptr %38, align 4
  br label %46

46:                                               ; preds = %43, %36, %28, %12, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xas_pause(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  store ptr inttoptr (i32 3 to ptr), ptr %2, align 4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = icmp ult i8 %11, 63
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = zext i8 %11 to i32
  %15 = add nuw nsw i32 %14, 1
  %16 = getelementptr %struct.xa_node, ptr %3, i32 0, i32 7, i32 %15
  %17 = load volatile ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %13, %9
  %19 = load i8, ptr %3, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  store i32 %24, ptr %22, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %31

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 4
  br label %31

31:                                               ; preds = %27, %26, %18, %1
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__xas_prev(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %72

14:                                               ; preds = %11
  %15 = and i32 %4, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @xas_load(ptr noundef %0)
  br label %72

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i8, ptr %3, align 4
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %24, %26
  %28 = and i32 %27, 63
  %29 = icmp eq i32 %28, %22
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = add i8 %21, -1
  store i8 %31, ptr %20, align 2
  br label %32

32:                                               ; preds = %30, %19
  %33 = phi i8 [ %21, %19 ], [ %31, %30 ]
  br label %34

34:                                               ; preds = %47, %32
  %35 = phi ptr [ %52, %47 ], [ %3, %32 ]
  %36 = phi i8 [ %50, %47 ], [ %33, %32 ]
  %37 = icmp eq i8 %36, -1
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = zext i8 %36 to i32
  %40 = getelementptr %struct.xa_node, ptr %35, i32 0, i32 7, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 2
  %45 = icmp ugt ptr %41, inttoptr (i32 4096 to ptr)
  %46 = and i1 %45, %44
  br i1 %46, label %55, label %72

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.xa_node, ptr %35, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = add i8 %49, -1
  store i8 %50, ptr %20, align 2
  %51 = getelementptr inbounds %struct.xa_node, ptr %35, i32 0, i32 4
  %52 = load volatile ptr, ptr %51, align 4
  store ptr %52, ptr %2, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %34

54:                                               ; preds = %47
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %72

55:                                               ; preds = %55, %38
  %56 = phi i32 [ %67, %55 ], [ %42, %38 ]
  %57 = add i32 %56, -2
  %58 = inttoptr i32 %57 to ptr
  store ptr %58, ptr %2, align 4
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = lshr i32 %24, %60
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 63
  store i8 %63, ptr %20, align 2
  %64 = zext i8 %63 to i32
  %65 = getelementptr %struct.xa_node, ptr %58, i32 0, i32 7, i32 %64
  %66 = load volatile ptr, ptr %65, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 2
  %70 = icmp ugt ptr %66, inttoptr (i32 4096 to ptr)
  %71 = and i1 %70, %69
  br i1 %71, label %55, label %72

72:                                               ; preds = %55, %54, %38, %17, %13
  %73 = phi ptr [ %18, %17 ], [ null, %54 ], [ null, %13 ], [ %41, %38 ], [ %66, %55 ]
  ret ptr %73
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__xas_next(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  br label %11

11:                                               ; preds = %7, %1
  %12 = icmp eq ptr %3, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %72

14:                                               ; preds = %11
  %15 = and i32 %4, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @xas_load(ptr noundef %0)
  br label %72

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %21 = load i8, ptr %20, align 2
  %22 = zext i8 %21 to i32
  %23 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = load i8, ptr %3, align 4
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %24, %26
  %28 = and i32 %27, 63
  %29 = icmp eq i32 %28, %22
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = add i8 %21, 1
  store i8 %31, ptr %20, align 2
  br label %32

32:                                               ; preds = %30, %19
  %33 = phi i8 [ %21, %19 ], [ %31, %30 ]
  br label %34

34:                                               ; preds = %47, %32
  %35 = phi ptr [ %52, %47 ], [ %3, %32 ]
  %36 = phi i8 [ %50, %47 ], [ %33, %32 ]
  %37 = icmp eq i8 %36, 64
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = zext i8 %36 to i32
  %40 = getelementptr %struct.xa_node, ptr %35, i32 0, i32 7, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = ptrtoint ptr %41 to i32
  %43 = and i32 %42, 3
  %44 = icmp eq i32 %43, 2
  %45 = icmp ugt ptr %41, inttoptr (i32 4096 to ptr)
  %46 = and i1 %45, %44
  br i1 %46, label %55, label %72

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.xa_node, ptr %35, i32 0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = add i8 %49, 1
  store i8 %50, ptr %20, align 2
  %51 = getelementptr inbounds %struct.xa_node, ptr %35, i32 0, i32 4
  %52 = load volatile ptr, ptr %51, align 4
  store ptr %52, ptr %2, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %34

54:                                               ; preds = %47
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %72

55:                                               ; preds = %55, %38
  %56 = phi i32 [ %67, %55 ], [ %42, %38 ]
  %57 = add i32 %56, -2
  %58 = inttoptr i32 %57 to ptr
  store ptr %58, ptr %2, align 4
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  %61 = lshr i32 %24, %60
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 63
  store i8 %63, ptr %20, align 2
  %64 = zext i8 %63 to i32
  %65 = getelementptr %struct.xa_node, ptr %58, i32 0, i32 7, i32 %64
  %66 = load volatile ptr, ptr %65, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 2
  %70 = icmp ugt ptr %66, inttoptr (i32 4096 to ptr)
  %71 = and i1 %70, %69
  br i1 %71, label %55, label %72

72:                                               ; preds = %55, %54, %38, %17, %13
  %73 = phi ptr [ %18, %17 ], [ null, %54 ], [ null, %13 ], [ %41, %38 ], [ %66, %55 ]
  ret ptr %73
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xas_find(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 2
  %8 = icmp uge ptr %4, inttoptr (i32 -16378 to ptr)
  %9 = and i1 %8, %7
  %10 = icmp ugt ptr %4, inttoptr (i32 3 to ptr)
  %11 = and i1 %10, %9
  %12 = icmp eq ptr %4, inttoptr (i32 1 to ptr)
  %13 = or i1 %12, %11
  br i1 %13, label %105, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %104, label %18

18:                                               ; preds = %14
  switch i32 %5, label %32 [
    i32 0, label %19
    i32 3, label %20
  ]

19:                                               ; preds = %18
  store i32 1, ptr %15, align 4
  br label %104

20:                                               ; preds = %18
  %21 = tail call ptr @xas_load(ptr noundef %0)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %105

23:                                               ; preds = %20
  %24 = load ptr, ptr %3, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp ne i32 %26, 0
  %28 = icmp eq ptr %24, null
  %29 = or i1 %28, %27
  br i1 %29, label %105, label %30

30:                                               ; preds = %23
  %31 = load i32, ptr %15, align 4
  br label %46

32:                                               ; preds = %18
  %33 = load i8, ptr %4, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = and i32 %16, 63
  %40 = icmp eq i32 %39, %38
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = trunc i32 %16 to i8
  %43 = add i8 %42, 63
  %44 = and i8 %43, 63
  %45 = add nuw nsw i8 %44, 1
  store i8 %45, ptr %36, align 2
  br label %46

46:                                               ; preds = %41, %35, %32, %30
  %47 = phi i32 [ %31, %30 ], [ %16, %41 ], [ %16, %35 ], [ %16, %32 ]
  %48 = phi ptr [ %24, %30 ], [ %4, %41 ], [ %4, %35 ], [ %4, %32 ]
  %49 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %50 = load i8, ptr %49, align 2
  %51 = add i8 %50, 1
  store i8 %51, ptr %49, align 2
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr %48, align 4
  %54 = zext i8 %53 to i32
  %55 = shl i32 -64, %54
  %56 = and i32 %55, %47
  %57 = shl i32 %52, %54
  %58 = add i32 %56, %57
  store i32 %58, ptr %15, align 4
  %59 = icmp eq ptr %48, null
  br i1 %59, label %104, label %60

60:                                               ; preds = %46
  %61 = icmp ugt i32 %58, %1
  br i1 %61, label %105, label %62

62:                                               ; preds = %94, %60
  %63 = phi i32 [ %102, %94 ], [ %58, %60 ]
  %64 = phi i8 [ %95, %94 ], [ %51, %60 ]
  %65 = phi ptr [ %67, %94 ], [ %48, %60 ]
  br label %66

66:                                               ; preds = %76, %62
  %67 = phi ptr [ %78, %76 ], [ %65, %62 ]
  %68 = phi i8 [ %77, %76 ], [ %64, %62 ]
  %69 = icmp eq i8 %68, 64
  br i1 %69, label %70, label %80, !prof !12

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.xa_node, ptr %67, i32 0, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = add i8 %72, 1
  store i8 %73, ptr %49, align 2
  %74 = getelementptr inbounds %struct.xa_node, ptr %67, i32 0, i32 4
  %75 = load volatile ptr, ptr %74, align 4
  store ptr %75, ptr %3, align 4
  br label %76

76:                                               ; preds = %89, %70
  %77 = phi i8 [ 0, %89 ], [ %73, %70 ]
  %78 = phi ptr [ %91, %89 ], [ %75, %70 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %104, label %66

80:                                               ; preds = %66
  %81 = zext i8 %68 to i32
  %82 = getelementptr %struct.xa_node, ptr %67, i32 0, i32 7, i32 %81
  %83 = load volatile ptr, ptr %82, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = and i32 %84, 3
  %86 = icmp eq i32 %85, 2
  %87 = icmp ugt ptr %83, inttoptr (i32 4096 to ptr)
  %88 = and i1 %87, %86
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = add i32 %84, -2
  %91 = inttoptr i32 %90 to ptr
  store ptr %91, ptr %3, align 4
  store i8 0, ptr %49, align 2
  br label %76

92:                                               ; preds = %80
  %93 = icmp eq ptr %83, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %92
  %95 = add i8 %68, 1
  store i8 %95, ptr %49, align 2
  %96 = zext i8 %95 to i32
  %97 = load i8, ptr %67, align 4
  %98 = zext i8 %97 to i32
  %99 = shl i32 -64, %98
  %100 = and i32 %99, %63
  %101 = shl i32 %96, %98
  %102 = add i32 %100, %101
  store i32 %102, ptr %15, align 4
  %103 = icmp ugt i32 %102, %1
  br i1 %103, label %105, label %62

104:                                              ; preds = %76, %46, %19, %14
  store ptr inttoptr (i32 1 to ptr), ptr %3, align 4
  br label %105

105:                                              ; preds = %104, %94, %92, %60, %23, %20, %2
  %106 = phi ptr [ null, %2 ], [ null, %23 ], [ %21, %20 ], [ null, %104 ], [ null, %60 ], [ %83, %92 ], [ null, %94 ]
  ret ptr %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xas_find_marked(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp ne i32 %7, 2
  %9 = icmp ult ptr %5, inttoptr (i32 -16378 to ptr)
  %10 = icmp ult ptr %5, inttoptr (i32 4 to ptr)
  %11 = or i1 %9, %8
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %144

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %141, label %17

17:                                               ; preds = %13
  %18 = icmp eq ptr %5, null
  br i1 %18, label %137, label %19

19:                                               ; preds = %17
  %20 = icmp ugt ptr %5, inttoptr (i32 3 to ptr)
  br i1 %20, label %52, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.xarray, ptr %22, i32 0, i32 2
  %24 = load volatile ptr, ptr %23, align 4
  store ptr null, ptr %4, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 2
  %28 = icmp ugt ptr %24, inttoptr (i32 4096 to ptr)
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = add i32 %25, -2
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = shl i32 64, %34
  %36 = add i32 %35, -1
  %37 = icmp ugt i32 %15, %36
  br i1 %37, label %138, label %46

38:                                               ; preds = %21
  %39 = icmp eq i32 %15, 0
  br i1 %39, label %40, label %138

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.xarray, ptr %22, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = shl i32 33554432, %2
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %137, label %144

46:                                               ; preds = %30
  store ptr %32, ptr %4, align 4
  %47 = load i8, ptr %32, align 4
  %48 = zext i8 %47 to i32
  %49 = lshr i32 %15, %48
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  store i8 %50, ptr %51, align 2
  br label %52

52:                                               ; preds = %46, %19
  %53 = phi ptr [ %5, %19 ], [ %32, %46 ]
  %54 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %55 = icmp eq i32 %2, 0
  %56 = load i8, ptr %54, align 2
  br label %57

57:                                               ; preds = %131, %52
  %58 = phi i32 [ %15, %52 ], [ %132, %131 ]
  %59 = phi ptr [ %53, %52 ], [ %133, %131 ]
  %60 = phi i8 [ %56, %52 ], [ %134, %131 ]
  %61 = phi i1 [ %20, %52 ], [ %135, %131 ]
  %62 = zext i8 %60 to i32
  %63 = icmp eq i8 %60, 64
  br i1 %63, label %64, label %71, !prof !12

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.xa_node, ptr %59, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = add i8 %66, 1
  store i8 %67, ptr %54, align 2
  %68 = getelementptr inbounds %struct.xa_node, ptr %59, i32 0, i32 4
  %69 = load volatile ptr, ptr %68, align 4
  store ptr %69, ptr %4, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %138, label %131

71:                                               ; preds = %57
  br i1 %61, label %75, label %72

72:                                               ; preds = %71
  %73 = getelementptr %struct.xa_node, ptr %59, i32 0, i32 7, i32 %62
  %74 = load volatile ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %71
  %76 = zext i1 %61 to i32
  %77 = add nuw nsw i32 %62, %76
  %78 = getelementptr inbounds %struct.xa_node, ptr %59, i32 0, i32 8
  %79 = getelementptr [3 x [2 x i32]], ptr %78, i32 0, i32 %2
  %80 = tail call i32 @_find_next_bit_le(ptr noundef %79, i32 noundef 64, i32 noundef %77) #8
  %81 = load i8, ptr %54, align 2
  %82 = zext i8 %81 to i32
  %83 = icmp ugt i32 %80, %82
  %84 = load ptr, ptr %4, align 4
  br i1 %83, label %85, label %100

85:                                               ; preds = %75
  %86 = load i8, ptr %84, align 4
  %87 = zext i8 %86 to i32
  %88 = shl i32 -64, %87
  %89 = load i32, ptr %14, align 4
  %90 = and i32 %88, %89
  %91 = shl i32 %80, %87
  %92 = add i32 %90, %91
  store i32 %92, ptr %14, align 4
  %93 = add i32 %92, -1
  %94 = icmp ult i32 %93, %1
  br i1 %94, label %95, label %141

95:                                               ; preds = %85
  %96 = trunc i32 %80 to i8
  store i8 %96, ptr %54, align 2
  %97 = icmp eq i32 %80, 64
  br i1 %97, label %131, label %98

98:                                               ; preds = %95
  %99 = and i32 %80, 255
  br label %100

100:                                              ; preds = %98, %75
  %101 = phi i32 [ %99, %98 ], [ %82, %75 ]
  %102 = phi i8 [ %96, %98 ], [ %81, %75 ]
  %103 = phi i1 [ false, %98 ], [ %61, %75 ]
  %104 = getelementptr %struct.xa_node, ptr %84, i32 0, i32 7, i32 %101
  %105 = load volatile ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.xarray, ptr %108, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 4
  %112 = icmp ne i32 %111, 0
  %113 = and i1 %55, %112
  br i1 %113, label %144, label %114

114:                                              ; preds = %107
  %115 = load i32, ptr %14, align 4
  br label %131

116:                                              ; preds = %100
  %117 = ptrtoint ptr %105 to i32
  %118 = and i32 %117, 3
  %119 = icmp eq i32 %118, 2
  %120 = icmp ugt ptr %105, inttoptr (i32 4096 to ptr)
  %121 = and i1 %120, %119
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = add i32 %117, -2
  %124 = inttoptr i32 %123 to ptr
  store ptr %124, ptr %4, align 4
  %125 = load i32, ptr %14, align 4
  %126 = load i8, ptr %124, align 4
  %127 = zext i8 %126 to i32
  %128 = lshr i32 %125, %127
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 63
  store i8 %130, ptr %54, align 2
  br label %131

131:                                              ; preds = %122, %114, %95, %64
  %132 = phi i32 [ %92, %95 ], [ %125, %122 ], [ %115, %114 ], [ %58, %64 ]
  %133 = phi ptr [ %84, %95 ], [ %124, %122 ], [ %84, %114 ], [ %69, %64 ]
  %134 = phi i8 [ 64, %95 ], [ %130, %122 ], [ %102, %114 ], [ %67, %64 ]
  %135 = phi i1 [ false, %95 ], [ %103, %122 ], [ %103, %114 ], [ false, %64 ]
  %136 = icmp ugt i32 %132, %1
  br i1 %136, label %138, label %57

137:                                              ; preds = %40, %17
  store i32 1, ptr %14, align 4
  br label %138

138:                                              ; preds = %137, %131, %64, %38, %30
  %139 = phi i32 [ %15, %38 ], [ %15, %30 ], [ 1, %137 ], [ %58, %64 ], [ %132, %131 ]
  %140 = icmp ugt i32 %139, %1
  br i1 %140, label %141, label %142

141:                                              ; preds = %138, %85, %13
  br label %142

142:                                              ; preds = %141, %138
  %143 = phi ptr [ inttoptr (i32 3 to ptr), %141 ], [ inttoptr (i32 1 to ptr), %138 ]
  store ptr %143, ptr %4, align 4
  br label %144

144:                                              ; preds = %142, %116, %107, %40, %3
  %145 = phi ptr [ null, %3 ], [ %24, %40 ], [ null, %142 ], [ null, %107 ], [ %105, %116 ]
  ret ptr %145
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xas_find_conflict(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 2
  %7 = icmp uge ptr %3, inttoptr (i32 -16378 to ptr)
  %8 = and i1 %7, %6
  %9 = icmp ugt ptr %3, inttoptr (i32 3 to ptr)
  %10 = and i1 %9, %8
  %11 = icmp eq ptr %3, null
  %12 = or i1 %11, %10
  br i1 %12, label %145, label %13

13:                                               ; preds = %1
  br i1 %9, label %83, label %14

14:                                               ; preds = %13
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %18 = load i8, ptr %17, align 2
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.xa_node, ptr %3, i32 0, i32 7, i32 %19
  %21 = load volatile ptr, ptr %20, align 4
  br label %51

22:                                               ; preds = %14
  %23 = icmp ne i32 %5, 2
  %24 = icmp ult ptr %3, inttoptr (i32 -16378 to ptr)
  %25 = icmp ult ptr %3, inttoptr (i32 4 to ptr)
  %26 = or i1 %24, %23
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %145

28:                                               ; preds = %22
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr inbounds %struct.xarray, ptr %29, i32 0, i32 2
  %31 = load volatile ptr, ptr %30, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 2
  %35 = icmp ugt ptr %31, inttoptr (i32 4096 to ptr)
  %36 = and i1 %35, %34
  %37 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  br i1 %36, label %42, label %39

39:                                               ; preds = %28
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %39
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %145

42:                                               ; preds = %28
  %43 = add i32 %32, -2
  %44 = inttoptr i32 %43 to ptr
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = lshr i32 %38, %46
  %48 = icmp ugt i32 %47, 63
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store ptr inttoptr (i32 1 to ptr), ptr %2, align 4
  br label %145

50:                                               ; preds = %42, %39
  store ptr null, ptr %2, align 4
  br label %51

51:                                               ; preds = %50, %16
  %52 = phi ptr [ %21, %16 ], [ %31, %50 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %145, label %54

54:                                               ; preds = %51
  %55 = ptrtoint ptr %52 to i32
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 2
  %58 = icmp ugt ptr %52, inttoptr (i32 4096 to ptr)
  %59 = and i1 %58, %57
  br i1 %59, label %60, label %145

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  br label %64

64:                                               ; preds = %64, %60
  %65 = phi i32 [ %55, %60 ], [ %75, %64 ]
  %66 = add i32 %65, -2
  %67 = inttoptr i32 %66 to ptr
  %68 = load i8, ptr %67, align 4
  %69 = zext i8 %68 to i32
  %70 = lshr i32 %62, %69
  %71 = and i32 %70, 63
  %72 = getelementptr %struct.xa_node, ptr %67, i32 0, i32 7, i32 %71
  %73 = load volatile ptr, ptr %72, align 4
  store ptr %67, ptr %2, align 4
  %74 = trunc i32 %71 to i8
  store i8 %74, ptr %63, align 2
  %75 = ptrtoint ptr %73 to i32
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 2
  %78 = icmp ugt ptr %73, inttoptr (i32 4096 to ptr)
  %79 = and i1 %78, %77
  br i1 %79, label %64, label %80

80:                                               ; preds = %64
  %81 = inttoptr i32 %66 to ptr
  %82 = icmp eq ptr %73, null
  br i1 %82, label %83, label %145

83:                                               ; preds = %80, %13
  %84 = phi ptr [ %81, %80 ], [ %3, %13 ]
  %85 = load i8, ptr %84, align 4
  %86 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 2
  %87 = load i8, ptr %86, align 4
  %88 = icmp ugt i8 %85, %87
  br i1 %88, label %145, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 4
  %91 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 3
  br label %92

92:                                               ; preds = %111, %89
  %93 = phi i8 [ %113, %111 ], [ %85, %89 ]
  %94 = phi ptr [ %112, %111 ], [ %84, %89 ]
  %95 = icmp eq i8 %93, %87
  %96 = load i8, ptr %90, align 2
  br i1 %95, label %97, label %101

97:                                               ; preds = %92
  %98 = load i8, ptr %91, align 1
  %99 = and i8 %98, %96
  %100 = icmp eq i8 %99, %98
  br i1 %100, label %141, label %114

101:                                              ; preds = %92
  %102 = icmp eq i8 %96, 63
  br i1 %102, label %103, label %114

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.xa_node, ptr %94, i32 0, i32 1
  %105 = load i8, ptr %104, align 1
  store i8 %105, ptr %90, align 2
  %106 = getelementptr inbounds %struct.xa_node, ptr %94, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  store ptr %107, ptr %2, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i8, ptr %91, align 1
  br label %141

111:                                              ; preds = %137, %103
  %112 = phi ptr [ %107, %103 ], [ %138, %137 ]
  %113 = load i8, ptr %112, align 4
  br label %92

114:                                              ; preds = %101, %97
  %115 = add i8 %96, 1
  store i8 %115, ptr %90, align 2
  %116 = zext i8 %115 to i32
  %117 = getelementptr %struct.xa_node, ptr %94, i32 0, i32 7, i32 %116
  %118 = load ptr, ptr %117, align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = and i32 %119, 3
  %121 = icmp eq i32 %120, 2
  %122 = icmp ugt ptr %118, inttoptr (i32 4096 to ptr)
  %123 = and i1 %122, %121
  br i1 %123, label %124, label %137

124:                                              ; preds = %124, %114
  %125 = phi i32 [ %130, %124 ], [ %119, %114 ]
  %126 = add i32 %125, -2
  %127 = inttoptr i32 %126 to ptr
  store ptr %127, ptr %2, align 4
  store i8 0, ptr %90, align 2
  %128 = getelementptr %struct.xa_node, ptr %127, i32 0, i32 7, i32 0
  %129 = load ptr, ptr %128, align 4
  %130 = ptrtoint ptr %129 to i32
  %131 = and i32 %130, 3
  %132 = icmp eq i32 %131, 2
  %133 = icmp ugt ptr %129, inttoptr (i32 4096 to ptr)
  %134 = and i1 %133, %132
  br i1 %134, label %124, label %135

135:                                              ; preds = %124
  %136 = inttoptr i32 %126 to ptr
  br label %137

137:                                              ; preds = %135, %114
  %138 = phi ptr [ %94, %114 ], [ %136, %135 ]
  %139 = phi ptr [ %118, %114 ], [ %129, %135 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %111, label %145

141:                                              ; preds = %109, %97
  %142 = phi i8 [ %105, %109 ], [ %96, %97 ]
  %143 = phi i8 [ %110, %109 ], [ %98, %97 ]
  %144 = sub i8 %142, %143
  store i8 %144, ptr %90, align 2
  br label %145

145:                                              ; preds = %141, %137, %83, %80, %54, %51, %49, %41, %22, %1
  %146 = phi ptr [ null, %141 ], [ null, %1 ], [ null, %51 ], [ %73, %80 ], [ null, %83 ], [ null, %49 ], [ null, %41 ], [ null, %22 ], [ %52, %54 ], [ %139, %137 ]
  ret ptr %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xa_load(ptr noundef %0, i32 noundef %1) #2 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %3 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %4 = icmp eq i32 %1, 0
  br label %5

5:                                                ; preds = %76, %2
  %6 = phi i8 [ 0, %2 ], [ %70, %76 ]
  %7 = phi ptr [ inttoptr (i32 3 to ptr), %2 ], [ %77, %76 ]
  %8 = ptrtoint ptr %7 to i32
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = icmp eq ptr %7, null
  %13 = zext i8 %6 to i32
  %14 = getelementptr %struct.xa_node, ptr %7, i32 0, i32 7, i32 %13
  %15 = select i1 %12, ptr %3, ptr %14
  %16 = load volatile ptr, ptr %15, align 4
  br label %38

17:                                               ; preds = %5
  %18 = icmp ne i32 %9, 2
  %19 = icmp ult ptr %7, inttoptr (i32 -16378 to ptr)
  %20 = icmp ult ptr %7, inttoptr (i32 4 to ptr)
  %21 = or i1 %19, %18
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %17
  %24 = load volatile ptr, ptr %3, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 2
  %28 = icmp ugt ptr %24, inttoptr (i32 4096 to ptr)
  %29 = and i1 %28, %27
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br i1 %4, label %38, label %69

31:                                               ; preds = %23
  %32 = add i32 %25, -2
  %33 = inttoptr i32 %32 to ptr
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = lshr i32 %1, %35
  %37 = icmp ugt i32 %36, 63
  br i1 %37, label %69, label %38

38:                                               ; preds = %31, %30, %11
  %39 = phi ptr [ %7, %11 ], [ null, %31 ], [ null, %30 ]
  %40 = phi ptr [ %16, %11 ], [ %24, %31 ], [ %24, %30 ]
  %41 = ptrtoint ptr %40 to i32
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 2
  %44 = icmp ugt ptr %40, inttoptr (i32 4096 to ptr)
  %45 = and i1 %44, %43
  br i1 %45, label %52, label %69

46:                                               ; preds = %52
  %47 = ptrtoint ptr %61 to i32
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 2
  %50 = icmp ugt ptr %61, inttoptr (i32 4096 to ptr)
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %66

52:                                               ; preds = %46, %38
  %53 = phi i32 [ %47, %46 ], [ %41, %38 ]
  %54 = add i32 %53, -2
  %55 = inttoptr i32 %54 to ptr
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = lshr i32 %1, %57
  %59 = and i32 %58, 63
  %60 = getelementptr %struct.xa_node, ptr %55, i32 0, i32 7, i32 %59
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq i8 %56, 0
  br i1 %62, label %63, label %46

63:                                               ; preds = %52
  %64 = inttoptr i32 %54 to ptr
  %65 = trunc i32 %59 to i8
  br label %69

66:                                               ; preds = %46
  %67 = inttoptr i32 %54 to ptr
  %68 = trunc i32 %59 to i8
  br label %69

69:                                               ; preds = %66, %63, %38, %31, %30, %17
  %70 = phi i8 [ %65, %63 ], [ %6, %38 ], [ %68, %66 ], [ %6, %17 ], [ %6, %30 ], [ %6, %31 ]
  %71 = phi ptr [ %64, %63 ], [ %39, %38 ], [ %67, %66 ], [ %7, %17 ], [ inttoptr (i32 1 to ptr), %30 ], [ inttoptr (i32 1 to ptr), %31 ]
  %72 = phi ptr [ %61, %63 ], [ %40, %38 ], [ %61, %66 ], [ null, %17 ], [ null, %30 ], [ null, %31 ]
  %73 = icmp eq ptr %72, inttoptr (i32 1030 to ptr)
  %74 = select i1 %73, ptr null, ptr %72
  %75 = ptrtoint ptr %74 to i32
  switch i32 %75, label %79 [
    i32 1030, label %76
    i32 1026, label %78
  ]

76:                                               ; preds = %78, %69
  %77 = phi ptr [ %71, %69 ], [ inttoptr (i32 3 to ptr), %78 ]
  br label %5

78:                                               ; preds = %69
  br label %76

79:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  ret ptr %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__xa_erase(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %5, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr null, ptr %8, align 4
  %9 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef null)
  %10 = icmp eq ptr %9, inttoptr (i32 1030 to ptr)
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 2
  %16 = icmp ult ptr %12, inttoptr (i32 -16378 to ptr)
  %17 = icmp ult ptr %12, inttoptr (i32 4 to ptr)
  %18 = or i1 %16, %15
  %19 = or i1 %17, %18
  %20 = select i1 %19, ptr %9, ptr %12
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi ptr [ null, %2 ], [ %20, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xa_erase(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.xa_state, align 4
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  store ptr %0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %6 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %5, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr null, ptr %8, align 4
  %9 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef null) #8
  %10 = icmp eq ptr %9, inttoptr (i32 1030 to ptr)
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 2
  %16 = icmp ult ptr %12, inttoptr (i32 -16378 to ptr)
  %17 = icmp ult ptr %12, inttoptr (i32 4 to ptr)
  %18 = or i1 %16, %15
  %19 = or i1 %17, %18
  %20 = select i1 %19, ptr %9, ptr %12
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi ptr [ null, %2 ], [ %20, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %23 = load i16, ptr %0, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %0, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__xa_store(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %11, align 4
  %12 = ptrtoint ptr %2 to i32
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 2
  %15 = icmp ule ptr %2, inttoptr (i32 1026 to ptr)
  %16 = and i1 %15, %14
  %17 = load i1, ptr @__xa_store.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %4
  store i1 true, ptr @__xa_store.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1538, i32 noundef 9, ptr noundef null) #8
  br label %21

21:                                               ; preds = %20, %4
  br i1 %16, label %87, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq ptr %2, null
  %28 = and i1 %27, %26
  %29 = select i1 %28, ptr inttoptr (i32 1030 to ptr), ptr %2
  br label %30

30:                                               ; preds = %73, %22
  %31 = call ptr @xas_store(ptr noundef nonnull %5, ptr noundef %29)
  %32 = load i32, ptr %23, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %73, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %9, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %35
  %41 = icmp eq ptr %36, null
  br i1 %41, label %65, label %42

42:                                               ; preds = %60, %40
  %43 = phi ptr [ %61, %60 ], [ %8, %40 ]
  %44 = phi ptr [ %63, %60 ], [ %36, %40 ]
  %45 = load i8, ptr %43, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.xa_node, ptr %44, i32 0, i32 8
  %48 = and i32 %46, 31
  %49 = shl nuw i32 1, %48
  %50 = lshr i32 %46, 5
  %51 = getelementptr i32, ptr %47, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = xor i32 %49, -1
  %54 = and i32 %52, %53
  store i32 %54, ptr %51, align 4
  %55 = and i32 %49, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %42
  %58 = call i32 @_find_first_bit_le(ptr noundef %47, i32 noundef 64) #8
  %59 = icmp eq i32 %58, 64
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.xa_node, ptr %44, i32 0, i32 1
  %62 = getelementptr inbounds %struct.xa_node, ptr %44, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %42

65:                                               ; preds = %60, %40
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr inbounds %struct.xarray, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 33554432
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = and i32 %68, -33554433
  store i32 %72, ptr %67, align 4
  br label %73

73:                                               ; preds = %71, %65, %57, %42, %35, %30
  %74 = call fastcc zeroext i1 @__xas_nomem(ptr noundef nonnull %5, i32 noundef %3)
  br i1 %74, label %30, label %75

75:                                               ; preds = %73
  %76 = icmp eq ptr %31, inttoptr (i32 1030 to ptr)
  br i1 %76, label %87, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %9, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, 3
  %81 = icmp ne i32 %80, 2
  %82 = icmp ult ptr %78, inttoptr (i32 -16378 to ptr)
  %83 = icmp ult ptr %78, inttoptr (i32 4 to ptr)
  %84 = or i1 %82, %81
  %85 = or i1 %83, %84
  %86 = select i1 %85, ptr %31, ptr %78
  br label %87

87:                                               ; preds = %77, %75, %21
  %88 = phi ptr [ inttoptr (i32 -86 to ptr), %21 ], [ null, %75 ], [ %86, %77 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret ptr %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__xas_nomem(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.xarray, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 3
  %7 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, inttoptr (i32 -46 to ptr)
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %56, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %17, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.xa_node, ptr %15, i32 0, i32 4
  %17 = load volatile ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.xa_node, ptr %15, i32 0, i32 6
  tail call void @radix_tree_node_rcu_free(ptr noundef %18) #8
  store ptr %17, ptr %11, align 4
  %19 = icmp eq ptr %17, null
  br i1 %19, label %56, label %14

20:                                               ; preds = %2
  %21 = shl i32 %5, 17
  %22 = and i32 %21, 4194304
  %23 = or i32 %22, %1
  %24 = and i32 %1, 1024
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %20
  switch i32 %6, label %39 [
    i32 1, label %27
    i32 2, label %34
  ]

27:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %28 = load i16, ptr %3, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #8, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !20
  %30 = load ptr, ptr @radix_tree_node_cachep, align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef %23) #8
  %32 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  store ptr %31, ptr %32, align 4
  %33 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %33) #8
  br label %50

34:                                               ; preds = %26
  tail call void @_raw_spin_unlock_bh(ptr noundef %3) #8
  %35 = load ptr, ptr @radix_tree_node_cachep, align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %35, i32 noundef %23) #8
  %37 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  store ptr %36, ptr %37, align 4
  %38 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %38) #8
  br label %50

39:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %40 = load i16, ptr %3, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %42 = load ptr, ptr @radix_tree_node_cachep, align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %42, i32 noundef %23) #8
  %44 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  store ptr %43, ptr %44, align 4
  %45 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %45) #8
  br label %50

46:                                               ; preds = %20
  %47 = load ptr, ptr @radix_tree_node_cachep, align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %47, i32 noundef %23) #8
  %49 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  store ptr %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %39, %34, %27
  %51 = getelementptr inbounds %struct.xa_state, ptr %0, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.xa_node, ptr %52, i32 0, i32 4
  store ptr null, ptr %55, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %7, align 4
  br label %56

56:                                               ; preds = %54, %50, %14, %10
  %57 = phi i1 [ true, %54 ], [ false, %50 ], [ false, %10 ], [ false, %14 ]
  ret i1 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xa_store(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  %5 = tail call ptr @__xa_store(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %6 = load i16, ptr %0, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__xa_cmpxchg(ptr noundef %0, i32 noundef %1, ptr noundef readnone %2, ptr noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  %9 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  store i32 0, ptr %8, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  store ptr null, ptr %12, align 4
  %13 = ptrtoint ptr %3 to i32
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 2
  %16 = icmp ule ptr %3, inttoptr (i32 1026 to ptr)
  %17 = and i1 %16, %15
  %18 = load i1, ptr @__xa_cmpxchg.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %5
  store i1 true, ptr @__xa_cmpxchg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1604, i32 noundef 9, ptr noundef null) #8
  br label %22

22:                                               ; preds = %21, %5
  br i1 %17, label %158, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %25 = icmp eq ptr %3, null
  %26 = icmp ne ptr %2, null
  br label %27

27:                                               ; preds = %144, %23
  %28 = phi ptr [ %145, %144 ], [ inttoptr (i32 3 to ptr), %23 ]
  %29 = ptrtoint ptr %28 to i32
  %30 = and i32 %29, 3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = icmp eq ptr %28, null
  %34 = load i8, ptr %9, align 2
  %35 = zext i8 %34 to i32
  %36 = getelementptr %struct.xa_node, ptr %28, i32 0, i32 7, i32 %35
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.xarray, ptr %37, i32 0, i32 2
  %39 = select i1 %33, ptr %38, ptr %36
  %40 = load volatile ptr, ptr %39, align 4
  br label %69

41:                                               ; preds = %27
  %42 = icmp ne i32 %30, 2
  %43 = icmp ult ptr %28, inttoptr (i32 -16378 to ptr)
  %44 = icmp ult ptr %28, inttoptr (i32 4 to ptr)
  %45 = or i1 %43, %42
  %46 = or i1 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.xarray, ptr %48, i32 0, i32 2
  %50 = load volatile ptr, ptr %49, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = and i32 %51, 3
  %53 = icmp eq i32 %52, 2
  %54 = icmp ugt ptr %50, inttoptr (i32 4096 to ptr)
  %55 = and i1 %54, %53
  %56 = load i32, ptr %7, align 4
  br i1 %55, label %60, label %57

57:                                               ; preds = %47
  %58 = icmp eq i32 %56, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %57
  store ptr inttoptr (i32 1 to ptr), ptr %10, align 4
  br label %69

60:                                               ; preds = %47
  %61 = add i32 %51, -2
  %62 = inttoptr i32 %61 to ptr
  %63 = load i8, ptr %62, align 4
  %64 = zext i8 %63 to i32
  %65 = lshr i32 %56, %64
  %66 = icmp ugt i32 %65, 63
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store ptr inttoptr (i32 1 to ptr), ptr %10, align 4
  br label %69

68:                                               ; preds = %60, %57
  store ptr null, ptr %10, align 4
  br label %69

69:                                               ; preds = %68, %67, %59, %41, %32
  %70 = phi ptr [ %40, %32 ], [ null, %67 ], [ %50, %68 ], [ null, %59 ], [ null, %41 ]
  %71 = load i8, ptr %8, align 4
  %72 = load i32, ptr %7, align 4
  br label %73

73:                                               ; preds = %85, %69
  %74 = phi ptr [ %70, %69 ], [ %90, %85 ]
  %75 = ptrtoint ptr %74 to i32
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 2
  %78 = icmp ugt ptr %74, inttoptr (i32 4096 to ptr)
  %79 = and i1 %78, %77
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = add i32 %75, -2
  %82 = inttoptr i32 %81 to ptr
  %83 = load i8, ptr %82, align 4
  %84 = icmp ugt i8 %71, %83
  br i1 %84, label %94, label %85

85:                                               ; preds = %80
  %86 = zext i8 %83 to i32
  %87 = lshr i32 %72, %86
  %88 = and i32 %87, 63
  %89 = getelementptr %struct.xa_node, ptr %82, i32 0, i32 7, i32 %88
  %90 = load volatile ptr, ptr %89, align 4
  store ptr %82, ptr %10, align 4
  %91 = trunc i32 %88 to i8
  store i8 %91, ptr %9, align 2
  %92 = load i8, ptr %82, align 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %73

94:                                               ; preds = %85, %80, %73
  %95 = phi ptr [ %74, %73 ], [ %74, %80 ], [ %90, %85 ]
  %96 = icmp eq ptr %95, %2
  br i1 %96, label %97, label %142

97:                                               ; preds = %94
  %98 = call ptr @xas_store(ptr noundef nonnull %6, ptr noundef %3)
  %99 = load i32, ptr %24, align 4
  %100 = and i32 %99, 4
  %101 = icmp eq i32 %100, 0
  %102 = or i1 %25, %101
  %103 = or i1 %102, %26
  br i1 %103, label %142, label %104

104:                                              ; preds = %97
  %105 = load ptr, ptr %10, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = and i32 %106, 3
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %142

109:                                              ; preds = %104
  %110 = icmp eq ptr %105, null
  br i1 %110, label %134, label %111

111:                                              ; preds = %129, %109
  %112 = phi ptr [ %130, %129 ], [ %9, %109 ]
  %113 = phi ptr [ %132, %129 ], [ %105, %109 ]
  %114 = load i8, ptr %112, align 1
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds %struct.xa_node, ptr %113, i32 0, i32 8
  %117 = and i32 %115, 31
  %118 = shl nuw i32 1, %117
  %119 = lshr i32 %115, 5
  %120 = getelementptr i32, ptr %116, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = xor i32 %118, -1
  %123 = and i32 %121, %122
  store i32 %123, ptr %120, align 4
  %124 = and i32 %118, %121
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %111
  %127 = call i32 @_find_first_bit_le(ptr noundef %116, i32 noundef 64) #8
  %128 = icmp eq i32 %127, 64
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.xa_node, ptr %113, i32 0, i32 1
  %131 = getelementptr inbounds %struct.xa_node, ptr %113, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %111

134:                                              ; preds = %129, %109
  %135 = load ptr, ptr %6, align 4
  %136 = getelementptr inbounds %struct.xarray, ptr %135, i32 0, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 33554432
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %134
  %141 = and i32 %137, -33554433
  store i32 %141, ptr %136, align 4
  br label %142

142:                                              ; preds = %140, %134, %126, %111, %104, %97, %94
  %143 = call fastcc zeroext i1 @__xas_nomem(ptr noundef nonnull %6, i32 noundef %4)
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = load ptr, ptr %10, align 4
  br label %27

146:                                              ; preds = %142
  %147 = icmp eq ptr %95, inttoptr (i32 1030 to ptr)
  br i1 %147, label %158, label %148

148:                                              ; preds = %146
  %149 = load ptr, ptr %10, align 4
  %150 = ptrtoint ptr %149 to i32
  %151 = and i32 %150, 3
  %152 = icmp ne i32 %151, 2
  %153 = icmp ult ptr %149, inttoptr (i32 -16378 to ptr)
  %154 = icmp ult ptr %149, inttoptr (i32 4 to ptr)
  %155 = or i1 %153, %152
  %156 = or i1 %154, %155
  %157 = select i1 %156, ptr %95, ptr %149
  br label %158

158:                                              ; preds = %148, %146, %22
  %159 = phi ptr [ inttoptr (i32 -86 to ptr), %22 ], [ null, %146 ], [ %157, %148 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret ptr %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xa_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %11, align 4
  %12 = ptrtoint ptr %2 to i32
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 2
  %15 = icmp ule ptr %2, inttoptr (i32 1026 to ptr)
  %16 = and i1 %15, %14
  %17 = load i1, ptr @__xa_insert.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %4
  store i1 true, ptr @__xa_insert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1641, i32 noundef 9, ptr noundef null) #8
  br label %21

21:                                               ; preds = %20, %4
  br i1 %16, label %151, label %22

22:                                               ; preds = %21
  %23 = icmp eq ptr %2, null
  %24 = select i1 %23, ptr inttoptr (i32 1030 to ptr), ptr %2
  %25 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  br label %26

26:                                               ; preds = %140, %22
  %27 = phi ptr [ inttoptr (i32 3 to ptr), %22 ], [ %142, %140 ]
  %28 = ptrtoint ptr %27 to i32
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = icmp eq ptr %27, null
  %33 = load i8, ptr %8, align 2
  %34 = zext i8 %33 to i32
  %35 = getelementptr %struct.xa_node, ptr %27, i32 0, i32 7, i32 %34
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.xarray, ptr %36, i32 0, i32 2
  %38 = select i1 %32, ptr %37, ptr %35
  %39 = load volatile ptr, ptr %38, align 4
  br label %68

40:                                               ; preds = %26
  %41 = icmp ne i32 %29, 2
  %42 = icmp ult ptr %27, inttoptr (i32 -16378 to ptr)
  %43 = icmp ult ptr %27, inttoptr (i32 4 to ptr)
  %44 = or i1 %42, %41
  %45 = or i1 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr inbounds %struct.xarray, ptr %47, i32 0, i32 2
  %49 = load volatile ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 2
  %53 = icmp ugt ptr %49, inttoptr (i32 4096 to ptr)
  %54 = and i1 %53, %52
  %55 = load i32, ptr %6, align 4
  br i1 %54, label %59, label %56

56:                                               ; preds = %46
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %56
  store ptr inttoptr (i32 1 to ptr), ptr %9, align 4
  br label %68

59:                                               ; preds = %46
  %60 = add i32 %50, -2
  %61 = inttoptr i32 %60 to ptr
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = lshr i32 %55, %63
  %65 = icmp ugt i32 %64, 63
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store ptr inttoptr (i32 1 to ptr), ptr %9, align 4
  br label %68

67:                                               ; preds = %59, %56
  store ptr null, ptr %9, align 4
  br label %68

68:                                               ; preds = %67, %66, %58, %40, %31
  %69 = phi ptr [ %39, %31 ], [ null, %66 ], [ %49, %67 ], [ null, %58 ], [ null, %40 ]
  %70 = load i8, ptr %7, align 4
  %71 = load i32, ptr %6, align 4
  br label %72

72:                                               ; preds = %84, %68
  %73 = phi ptr [ %69, %68 ], [ %89, %84 ]
  %74 = ptrtoint ptr %73 to i32
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, 2
  %77 = icmp ugt ptr %73, inttoptr (i32 4096 to ptr)
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = add i32 %74, -2
  %81 = inttoptr i32 %80 to ptr
  %82 = load i8, ptr %81, align 4
  %83 = icmp ugt i8 %70, %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %79
  %85 = zext i8 %82 to i32
  %86 = lshr i32 %71, %85
  %87 = and i32 %86, 63
  %88 = getelementptr %struct.xa_node, ptr %81, i32 0, i32 7, i32 %87
  %89 = load volatile ptr, ptr %88, align 4
  store ptr %81, ptr %9, align 4
  %90 = trunc i32 %87 to i8
  store i8 %90, ptr %8, align 2
  %91 = load i8, ptr %81, align 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %72

93:                                               ; preds = %84, %79, %72
  %94 = phi ptr [ %73, %72 ], [ %73, %79 ], [ %89, %84 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %139

96:                                               ; preds = %93
  %97 = call ptr @xas_store(ptr noundef nonnull %5, ptr noundef %24)
  %98 = load i32, ptr %25, align 4
  %99 = and i32 %98, 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %140, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr %9, align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = and i32 %103, 3
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %140

106:                                              ; preds = %101
  %107 = icmp eq ptr %102, null
  br i1 %107, label %131, label %108

108:                                              ; preds = %126, %106
  %109 = phi ptr [ %127, %126 ], [ %8, %106 ]
  %110 = phi ptr [ %129, %126 ], [ %102, %106 ]
  %111 = load i8, ptr %109, align 1
  %112 = zext i8 %111 to i32
  %113 = getelementptr inbounds %struct.xa_node, ptr %110, i32 0, i32 8
  %114 = and i32 %112, 31
  %115 = shl nuw i32 1, %114
  %116 = lshr i32 %112, 5
  %117 = getelementptr i32, ptr %113, i32 %116
  %118 = load i32, ptr %117, align 4
  %119 = xor i32 %115, -1
  %120 = and i32 %118, %119
  store i32 %120, ptr %117, align 4
  %121 = and i32 %115, %118
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %108
  %124 = call i32 @_find_first_bit_le(ptr noundef %113, i32 noundef 64) #8
  %125 = icmp eq i32 %124, 64
  br i1 %125, label %126, label %140

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.xa_node, ptr %110, i32 0, i32 1
  %128 = getelementptr inbounds %struct.xa_node, ptr %110, i32 0, i32 4
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %108

131:                                              ; preds = %126, %106
  %132 = load ptr, ptr %5, align 4
  %133 = getelementptr inbounds %struct.xarray, ptr %132, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 33554432
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = and i32 %134, -33554433
  store i32 %138, ptr %133, align 4
  br label %140

139:                                              ; preds = %93
  store ptr inttoptr (i32 -62 to ptr), ptr %9, align 4
  br label %140

140:                                              ; preds = %139, %137, %131, %123, %108, %101, %96
  %141 = call fastcc zeroext i1 @__xas_nomem(ptr noundef nonnull %5, i32 noundef %3)
  %142 = load ptr, ptr %9, align 4
  br i1 %141, label %26, label %143

143:                                              ; preds = %140
  %144 = ptrtoint ptr %142 to i32
  %145 = and i32 %144, 3
  %146 = icmp eq i32 %145, 2
  %147 = icmp uge ptr %142, inttoptr (i32 -16378 to ptr)
  %148 = and i1 %147, %146
  %149 = ashr i32 %144, 2
  %150 = select i1 %148, i32 %149, i32 0
  br label %151

151:                                              ; preds = %143, %21
  %152 = phi i32 [ %150, %143 ], [ -22, %21 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xa_alloc(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, [2 x i32] %3, i32 noundef %4) #2 {
  %6 = alloca %struct.xa_state, align 4
  %7 = extractvalue [2 x i32] %3, 0
  %8 = extractvalue [2 x i32] %3, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  %10 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  %12 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  store i32 0, ptr %12, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  store ptr null, ptr %14, align 4
  %15 = ptrtoint ptr %2 to i32
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 2
  %18 = icmp ule ptr %2, inttoptr (i32 1026 to ptr)
  %19 = and i1 %18, %17
  %20 = load i1, ptr @__xa_alloc.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !12

23:                                               ; preds = %5
  store i1 true, ptr @__xa_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1810, i32 noundef 9, ptr noundef null) #8
  br label %24

24:                                               ; preds = %23, %5
  br i1 %19, label %94, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  %30 = load i1, ptr @__xa_alloc.__already_done.1, align 1
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %33, label %32, !prof !21

32:                                               ; preds = %25
  store i1 true, ptr @__xa_alloc.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1812, i32 noundef 9, ptr noundef null) #8
  br label %33

33:                                               ; preds = %32, %25
  br i1 %29, label %34, label %94

34:                                               ; preds = %33
  %35 = icmp eq ptr %2, null
  %36 = select i1 %35, ptr inttoptr (i32 1030 to ptr), ptr %2
  br label %37

37:                                               ; preds = %83, %34
  store i32 %8, ptr %9, align 4
  %38 = call ptr @xas_find_marked(ptr noundef nonnull %6, i32 noundef %7, i32 noundef 0)
  %39 = load ptr, ptr %11, align 4
  %40 = icmp eq ptr %39, inttoptr (i32 3 to ptr)
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store ptr inttoptr (i32 -62 to ptr), ptr %11, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, ptr %9, align 4
  store i32 %43, ptr %1, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = call ptr @xas_store(ptr noundef nonnull %6, ptr noundef %36)
  %46 = load ptr, ptr %11, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = icmp eq ptr %46, null
  br i1 %51, label %75, label %52

52:                                               ; preds = %70, %50
  %53 = phi ptr [ %71, %70 ], [ %10, %50 ]
  %54 = phi ptr [ %73, %70 ], [ %46, %50 ]
  %55 = load i8, ptr %53, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.xa_node, ptr %54, i32 0, i32 8
  %58 = and i32 %56, 31
  %59 = shl nuw i32 1, %58
  %60 = lshr i32 %56, 5
  %61 = getelementptr i32, ptr %57, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = xor i32 %59, -1
  %64 = and i32 %62, %63
  store i32 %64, ptr %61, align 4
  %65 = and i32 %59, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %52
  %68 = call i32 @_find_first_bit_le(ptr noundef %57, i32 noundef 64) #8
  %69 = icmp eq i32 %68, 64
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.xa_node, ptr %54, i32 0, i32 1
  %72 = getelementptr inbounds %struct.xa_node, ptr %54, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %52

75:                                               ; preds = %70, %50
  %76 = load ptr, ptr %6, align 4
  %77 = getelementptr inbounds %struct.xarray, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 33554432
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = and i32 %78, -33554433
  store i32 %82, ptr %77, align 4
  br label %83

83:                                               ; preds = %81, %75, %67, %52, %44
  %84 = call fastcc zeroext i1 @__xas_nomem(ptr noundef nonnull %6, i32 noundef %4)
  br i1 %84, label %37, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr %11, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = and i32 %87, 3
  %89 = icmp eq i32 %88, 2
  %90 = icmp uge ptr %86, inttoptr (i32 -16378 to ptr)
  %91 = and i1 %90, %89
  %92 = ashr i32 %87, 2
  %93 = select i1 %91, i32 %92, i32 0
  br label %94

94:                                               ; preds = %85, %33, %24
  %95 = phi i32 [ %93, %85 ], [ -22, %24 ], [ -22, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__xa_alloc_cyclic(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, [2 x i32] %3, ptr nocapture noundef %4, i32 noundef %5) #2 {
  %7 = extractvalue [2 x i32] %3, 1
  %8 = load i32, ptr %4, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %7, i32 %8)
  %10 = insertvalue [2 x i32] %3, i32 %9, 1
  %11 = tail call i32 @__xa_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %10, i32 noundef %5)
  %12 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp ne i32 %14, 0
  %16 = icmp eq i32 %11, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = and i32 %13, -17
  store i32 %19, ptr %12, align 4
  br label %30

20:                                               ; preds = %6
  %21 = icmp slt i32 %11, 0
  %22 = icmp ult i32 %7, %8
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = tail call i32 @__xa_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, [2 x i32] %3, i32 noundef %5)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %25, %24 ], [ %11, %20 ]
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %38

30:                                               ; preds = %27, %24, %18
  %31 = phi i32 [ %28, %27 ], [ 1, %18 ], [ 1, %24 ]
  %32 = load i32, ptr %1, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, ptr %12, align 4
  %37 = or i32 %36, 16
  store i32 %37, ptr %12, align 4
  br label %38

38:                                               ; preds = %35, %30, %27
  %39 = phi i32 [ %31, %30 ], [ %31, %35 ], [ %28, %27 ]
  ret i32 %39
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__xa_set_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  %9 = icmp ugt ptr %5, inttoptr (i32 4096 to ptr)
  %10 = and i1 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %20, label %91

13:                                               ; preds = %3
  %14 = add i32 %6, -2
  %15 = inttoptr i32 %14 to ptr
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %1, %17
  %19 = icmp ugt i32 %18, 63
  br i1 %19, label %91, label %20

20:                                               ; preds = %13, %11
  %21 = ptrtoint ptr %5 to i32
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 2
  %24 = icmp ugt ptr %5, inttoptr (i32 4096 to ptr)
  %25 = and i1 %24, %23
  br i1 %25, label %32, label %48

26:                                               ; preds = %32
  %27 = ptrtoint ptr %41 to i32
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 2
  %30 = icmp ugt ptr %41, inttoptr (i32 4096 to ptr)
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %43

32:                                               ; preds = %26, %20
  %33 = phi i32 [ %27, %26 ], [ %21, %20 ]
  %34 = add i32 %33, -2
  %35 = inttoptr i32 %34 to ptr
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %1, %37
  %39 = and i32 %38, 63
  %40 = getelementptr %struct.xa_node, ptr %35, i32 0, i32 7, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq i8 %36, 0
  br i1 %42, label %43, label %26

43:                                               ; preds = %32, %26
  %44 = icmp ne ptr %41, null
  %45 = and i32 %34, 3
  %46 = icmp eq i32 %45, 0
  %47 = and i1 %44, %46
  br i1 %47, label %50, label %91

48:                                               ; preds = %20
  %49 = icmp eq ptr %5, null
  br i1 %49, label %91, label %83

50:                                               ; preds = %43
  %51 = icmp eq i32 %34, 0
  br i1 %51, label %83, label %52

52:                                               ; preds = %50
  %53 = inttoptr i32 %34 to ptr
  %54 = getelementptr inbounds %struct.xa_node, ptr %53, i32 0, i32 8
  %55 = getelementptr [3 x [2 x i32]], ptr %54, i32 0, i32 %2
  %56 = and i32 %38, 31
  %57 = shl nuw i32 1, %56
  %58 = lshr i32 %39, 5
  %59 = getelementptr i32, ptr %55, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %57, %60
  store i32 %61, ptr %59, align 4
  %62 = and i32 %57, %60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %69, %52
  %65 = phi ptr [ %67, %69 ], [ %53, %52 ]
  %66 = getelementptr inbounds %struct.xa_node, ptr %65, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.xa_node, ptr %65, i32 0, i32 1
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.xa_node, ptr %67, i32 0, i32 8
  %74 = getelementptr [3 x [2 x i32]], ptr %73, i32 0, i32 %2
  %75 = and i32 %72, 31
  %76 = shl nuw i32 1, %75
  %77 = lshr i32 %72, 5
  %78 = getelementptr i32, ptr %74, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %76, %79
  store i32 %80, ptr %78, align 4
  %81 = and i32 %76, %79
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %64, label %91

83:                                               ; preds = %64, %50, %48
  %84 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = shl i32 33554432, %2
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = or i32 %85, %86
  store i32 %90, ptr %84, align 4
  br label %91

91:                                               ; preds = %89, %83, %69, %52, %48, %43, %13, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__xa_clear_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  %9 = icmp ugt ptr %5, inttoptr (i32 4096 to ptr)
  %10 = and i1 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %20, label %98

13:                                               ; preds = %3
  %14 = add i32 %6, -2
  %15 = inttoptr i32 %14 to ptr
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %1, %17
  %19 = icmp ugt i32 %18, 63
  br i1 %19, label %98, label %20

20:                                               ; preds = %13, %11
  %21 = ptrtoint ptr %5 to i32
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 2
  %24 = icmp ugt ptr %5, inttoptr (i32 4096 to ptr)
  %25 = and i1 %24, %23
  br i1 %25, label %32, label %48

26:                                               ; preds = %32
  %27 = ptrtoint ptr %41 to i32
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 2
  %30 = icmp ugt ptr %41, inttoptr (i32 4096 to ptr)
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %43

32:                                               ; preds = %26, %20
  %33 = phi i32 [ %27, %26 ], [ %21, %20 ]
  %34 = add i32 %33, -2
  %35 = inttoptr i32 %34 to ptr
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = lshr i32 %1, %37
  %39 = and i32 %38, 63
  %40 = getelementptr %struct.xa_node, ptr %35, i32 0, i32 7, i32 %39
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq i8 %36, 0
  br i1 %42, label %43, label %26

43:                                               ; preds = %32, %26
  %44 = icmp ne ptr %41, null
  %45 = and i32 %34, 3
  %46 = icmp eq i32 %45, 0
  %47 = and i1 %44, %46
  br i1 %47, label %50, label %98

48:                                               ; preds = %20
  %49 = icmp eq ptr %5, null
  br i1 %49, label %98, label %89

50:                                               ; preds = %43
  %51 = icmp eq i32 %34, 0
  br i1 %51, label %89, label %52

52:                                               ; preds = %50
  %53 = inttoptr i32 %34 to ptr
  %54 = getelementptr inbounds %struct.xa_node, ptr %53, i32 0, i32 8
  %55 = getelementptr [3 x [2 x i32]], ptr %54, i32 0, i32 %2
  %56 = and i32 %38, 31
  %57 = shl nuw i32 1, %56
  %58 = lshr i32 %39, 5
  %59 = getelementptr i32, ptr %55, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %57, -1
  %62 = and i32 %60, %61
  store i32 %62, ptr %59, align 4
  %63 = and i32 %57, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %74, %52
  %66 = phi ptr [ %79, %74 ], [ %55, %52 ]
  %67 = phi ptr [ %72, %74 ], [ %53, %52 ]
  %68 = tail call i32 @_find_first_bit_le(ptr noundef %66, i32 noundef 64) #8
  %69 = icmp eq i32 %68, 64
  br i1 %69, label %70, label %98

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.xa_node, ptr %67, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.xa_node, ptr %67, i32 0, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr inbounds %struct.xa_node, ptr %72, i32 0, i32 8
  %79 = getelementptr [3 x [2 x i32]], ptr %78, i32 0, i32 %2
  %80 = and i32 %77, 31
  %81 = shl nuw i32 1, %80
  %82 = lshr i32 %77, 5
  %83 = getelementptr i32, ptr %79, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = xor i32 %81, -1
  %86 = and i32 %84, %85
  store i32 %86, ptr %83, align 4
  %87 = and i32 %81, %84
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %65

89:                                               ; preds = %70, %50, %48
  %90 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = shl i32 33554432, %2
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = xor i32 %92, -1
  %97 = and i32 %91, %96
  store i32 %97, ptr %90, align 4
  br label %98

98:                                               ; preds = %95, %89, %74, %65, %52, %48, %43, %13, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @xa_get_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  %9 = icmp ugt ptr %5, inttoptr (i32 4096 to ptr)
  %10 = and i1 %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %20, label %59

13:                                               ; preds = %3
  %14 = add i32 %6, -2
  %15 = inttoptr i32 %14 to ptr
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %1, %17
  %19 = icmp ugt i32 %18, 63
  br i1 %19, label %59, label %20

20:                                               ; preds = %13, %11
  %21 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %22 = shl i32 33554432, %2
  br label %23

23:                                               ; preds = %48, %20
  %24 = phi ptr [ %5, %20 ], [ %56, %48 ]
  %25 = phi ptr [ null, %20 ], [ %50, %48 ]
  %26 = phi i32 [ 0, %20 ], [ %54, %48 ]
  %27 = icmp eq ptr %25, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 8
  %30 = getelementptr [3 x [2 x i32]], ptr %29, i32 0, i32 %2
  %31 = lshr i32 %26, 5
  %32 = getelementptr i32, ptr %30, i32 %31
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %26, 31
  %35 = shl nuw i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %59, label %42

38:                                               ; preds = %23
  %39 = load i32, ptr %21, align 4
  %40 = and i32 %39, %22
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %38, %28
  %43 = ptrtoint ptr %24 to i32
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 2
  %46 = icmp ugt ptr %24, inttoptr (i32 4096 to ptr)
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = add i32 %43, -2
  %50 = inttoptr i32 %49 to ptr
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i32
  %53 = lshr i32 %1, %52
  %54 = and i32 %53, 63
  %55 = getelementptr %struct.xa_node, ptr %50, i32 0, i32 7, i32 %54
  %56 = load volatile ptr, ptr %55, align 4
  %57 = and i32 %49, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %23, label %59

59:                                               ; preds = %48, %38, %28, %13, %11
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %61

60:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi i1 [ true, %60 ], [ false, %59 ]
  ret i1 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xa_set_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  tail call void @__xa_set_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %4 = load i16, ptr %0, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xa_clear_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call void @_raw_spin_lock(ptr noundef %0) #8
  tail call void @__xa_clear_mark(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  %4 = load i16, ptr %0, align 4
  %5 = add i16 %4, 1
  store i16 %5, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xa_find(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %1, align 4
  store i32 %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %8, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %12 = icmp ult i32 %3, 3
  br label %13

13:                                               ; preds = %21, %4
  br i1 %12, label %14, label %16

14:                                               ; preds = %13
  %15 = call ptr @xas_find_marked(ptr noundef nonnull %5, i32 noundef %2, i32 noundef %3)
  br label %18

16:                                               ; preds = %13
  %17 = call ptr @xas_find(ptr noundef nonnull %5, i32 noundef %2)
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %20 = ptrtoint ptr %19 to i32
  switch i32 %20, label %23 [
    i32 1030, label %21
    i32 1026, label %22
  ]

21:                                               ; preds = %22, %18
  br label %13

22:                                               ; preds = %18
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  br label %21

23:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %24 = icmp eq ptr %19, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %6, align 4
  store i32 %26, ptr %1, align 4
  br label %27

27:                                               ; preds = %25, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xa_find_after(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %1, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %12, align 4
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %15 = icmp ult i32 %3, 3
  br label %16

16:                                               ; preds = %29, %14
  br i1 %15, label %17, label %19

17:                                               ; preds = %16
  %18 = call ptr @xas_find_marked(ptr noundef nonnull %5, i32 noundef %2, i32 noundef %3)
  br label %21

19:                                               ; preds = %16
  %20 = call ptr @xas_find(ptr noundef nonnull %5, i32 noundef %2)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  %23 = load ptr, ptr %10, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = and i32 %24, 3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = ptrtoint ptr %22 to i32
  switch i32 %28, label %31 [
    i32 1030, label %29
    i32 1026, label %30
  ]

29:                                               ; preds = %30, %27
  br label %16

30:                                               ; preds = %27
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  br label %29

31:                                               ; preds = %27, %21
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  %32 = icmp eq ptr %22, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %6, align 4
  store i32 %34, ptr %1, align 4
  br label %35

35:                                               ; preds = %33, %31, %4
  %36 = phi ptr [ null, %4 ], [ %22, %33 ], [ null, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xa_extract(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 7
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 8
  store ptr null, ptr %13, align 4
  %14 = icmp eq i32 %4, 0
  br i1 %14, label %127, label %15

15:                                               ; preds = %6
  %16 = icmp ult i32 %5, 3
  tail call void asm sideeffect "", "~{memory}"() #8
  br i1 %16, label %17, label %65

17:                                               ; preds = %15
  %18 = call ptr @xas_find_marked(ptr noundef nonnull %7, i32 noundef %3, i32 noundef %5) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %63, label %20

20:                                               ; preds = %60, %17
  %21 = phi i32 [ %30, %60 ], [ 0, %17 ]
  %22 = phi ptr [ %61, %60 ], [ %18, %17 ]
  %23 = ptrtoint ptr %22 to i32
  switch i32 %23, label %25 [
    i32 1030, label %29
    i32 1026, label %24
  ]

24:                                               ; preds = %20
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  br label %29

25:                                               ; preds = %20
  %26 = add i32 %21, 1
  %27 = getelementptr ptr, ptr %1, i32 %21
  store ptr %22, ptr %27, align 4
  %28 = icmp eq i32 %26, %4
  br i1 %28, label %63, label %29

29:                                               ; preds = %25, %24, %20
  %30 = phi i32 [ %26, %25 ], [ %21, %24 ], [ %21, %20 ]
  %31 = load ptr, ptr %11, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = and i32 %32, 3
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = or i1 %35, %34
  br i1 %36, label %58, label %37, !prof !12

37:                                               ; preds = %29
  %38 = load i8, ptr %31, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %58, !prof !21

40:                                               ; preds = %37
  %41 = load i8, ptr %10, align 2
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.xa_node, ptr %31, i32 0, i32 8
  %45 = getelementptr [3 x [2 x i32]], ptr %44, i32 0, i32 %5
  %46 = tail call i32 @_find_next_bit_le(ptr noundef %45, i32 noundef 64, i32 noundef %43) #8
  %47 = trunc i32 %46 to i8
  store i8 %47, ptr %10, align 2
  %48 = load i32, ptr %8, align 4
  %49 = and i32 %48, -64
  %50 = add i32 %49, %46
  store i32 %50, ptr %8, align 4
  %51 = icmp ugt i32 %50, %3
  br i1 %51, label %63, label %52

52:                                               ; preds = %40
  %53 = icmp eq i32 %46, 64
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = getelementptr %struct.xa_node, ptr %31, i32 0, i32 7, i32 %46
  %56 = load volatile ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %52, %37, %29
  %59 = call ptr @xas_find_marked(ptr noundef nonnull %7, i32 noundef %3, i32 noundef %5) #8
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi ptr [ %56, %54 ], [ %59, %58 ]
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %20

63:                                               ; preds = %60, %40, %25, %17
  %64 = phi i32 [ 0, %17 ], [ %30, %60 ], [ %4, %25 ], [ %30, %40 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %127

65:                                               ; preds = %15
  %66 = call ptr @xas_find(ptr noundef nonnull %7, i32 noundef %3) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %125, label %68

68:                                               ; preds = %122, %65
  %69 = phi i32 [ %78, %122 ], [ 0, %65 ]
  %70 = phi ptr [ %123, %122 ], [ %66, %65 ]
  %71 = ptrtoint ptr %70 to i32
  switch i32 %71, label %73 [
    i32 1030, label %77
    i32 1026, label %72
  ]

72:                                               ; preds = %68
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  br label %77

73:                                               ; preds = %68
  %74 = add i32 %69, 1
  %75 = getelementptr ptr, ptr %1, i32 %69
  store ptr %70, ptr %75, align 4
  %76 = icmp eq i32 %74, %4
  br i1 %76, label %125, label %77

77:                                               ; preds = %73, %72, %68
  %78 = phi i32 [ %74, %73 ], [ %69, %72 ], [ %69, %68 ]
  %79 = load ptr, ptr %11, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = and i32 %80, 3
  %82 = icmp ne i32 %81, 0
  %83 = icmp eq ptr %79, null
  %84 = or i1 %83, %82
  br i1 %84, label %119, label %85, !prof !12

85:                                               ; preds = %77
  %86 = load i8, ptr %79, align 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %119, !prof !21

88:                                               ; preds = %85
  %89 = load i8, ptr %10, align 2
  %90 = zext i8 %89 to i32
  %91 = load i32, ptr %8, align 4
  %92 = and i32 %91, 63
  %93 = icmp eq i32 %92, %90
  br i1 %93, label %94, label %119, !prof !21

94:                                               ; preds = %88
  %95 = icmp uge i32 %91, %3
  %96 = icmp eq i8 %89, 63
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %116, label %102, !prof !22

98:                                               ; preds = %112
  %99 = icmp uge i32 %114, %3
  %100 = icmp eq i8 %113, 63
  %101 = select i1 %99, i1 true, i1 %100
  br i1 %101, label %116, label %102, !prof !22

102:                                              ; preds = %98, %94
  %103 = phi i32 [ %114, %98 ], [ %91, %94 ]
  %104 = phi i8 [ %113, %98 ], [ %89, %94 ]
  %105 = zext i8 %104 to i32
  %106 = add nuw nsw i32 %105, 1
  %107 = getelementptr %struct.xa_node, ptr %79, i32 0, i32 7, i32 %106
  %108 = load volatile ptr, ptr %107, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = and i32 %109, 3
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %116, label %112, !prof !12

112:                                              ; preds = %102
  %113 = add i8 %104, 1
  %114 = add nuw i32 %103, 1
  %115 = icmp eq ptr %108, null
  br i1 %115, label %98, label %121

116:                                              ; preds = %102, %98, %94
  %117 = phi i32 [ %91, %94 ], [ %114, %98 ], [ %103, %102 ]
  %118 = phi i8 [ %89, %94 ], [ %113, %98 ], [ %104, %102 ]
  store i8 %118, ptr %10, align 2
  store i32 %117, ptr %8, align 4
  br label %119

119:                                              ; preds = %116, %88, %85, %77
  %120 = call ptr @xas_find(ptr noundef nonnull %7, i32 noundef %3) #8
  br label %122

121:                                              ; preds = %112
  store i8 %113, ptr %10, align 2
  store i32 %114, ptr %8, align 4
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi ptr [ %120, %119 ], [ %108, %121 ]
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %68

125:                                              ; preds = %122, %73, %65
  %126 = phi i32 [ 0, %65 ], [ %78, %122 ], [ %4, %73 ]
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %127

127:                                              ; preds = %125, %63, %6
  %128 = phi i32 [ %64, %63 ], [ %126, %125 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xa_delete_node(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %4 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, ptr %0, align 4
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 6
  %13 = shl i32 %9, %12
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %15 = add i8 %10, 6
  store i8 %15, ptr %14, align 4
  %16 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 3
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 4
  store i8 %8, ptr %17, align 2
  %18 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 5
  store i8 0, ptr %18, align 1
  %19 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  %20 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  store ptr %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr %1, ptr %23, align 4
  %24 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xa_destroy(ptr noundef %0) #2 {
  %2 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 6
  store i64 0, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 7
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 8
  store ptr null, ptr %6, align 4
  store ptr null, ptr %4, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #8
  %8 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  store volatile ptr null, ptr %8, align 4
  call void @xas_init_marks(ptr noundef nonnull %2)
  %10 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 33554440
  %13 = icmp eq i32 %12, 33554440
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = and i32 %11, -33554433
  store i32 %15, ptr %10, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = ptrtoint ptr %9 to i32
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 2
  %20 = icmp ugt ptr %9, inttoptr (i32 4096 to ptr)
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = add i32 %17, -2
  %24 = inttoptr i32 %23 to ptr
  br label %25

25:                                               ; preds = %41, %22
  %26 = phi i32 [ 0, %22 ], [ %42, %41 ]
  %27 = phi ptr [ %24, %22 ], [ %43, %41 ]
  %28 = getelementptr %struct.xa_node, ptr %27, i32 0, i32 7, i32 %26
  %29 = load ptr, ptr %28, align 4
  %30 = load i8, ptr %27, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = ptrtoint ptr %29 to i32
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 2
  %36 = icmp ugt ptr %29, inttoptr (i32 4096 to ptr)
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = add i32 %33, -2
  %40 = inttoptr i32 %39 to ptr
  br label %41

41:                                               ; preds = %48, %38
  %42 = phi i32 [ 0, %38 ], [ %51, %48 ]
  %43 = phi ptr [ %40, %38 ], [ %50, %48 ]
  br label %25

44:                                               ; preds = %32, %25
  %45 = icmp eq ptr %29, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  store volatile ptr inttoptr (i32 1026 to ptr), ptr %28, align 4
  br label %47

47:                                               ; preds = %46, %44
  br label %48

48:                                               ; preds = %64, %47
  %49 = phi i32 [ %58, %64 ], [ %26, %47 ]
  %50 = phi ptr [ %55, %64 ], [ %27, %47 ]
  %51 = add i32 %49, 1
  %52 = icmp eq i32 %51, 64
  br i1 %52, label %53, label %41

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.xa_node, ptr %50, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.xa_node, ptr %50, i32 0, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.xa_node, ptr %50, i32 0, i32 2
  store i8 0, ptr %59, align 2
  %60 = getelementptr inbounds %struct.xa_node, ptr %50, i32 0, i32 3
  store i8 0, ptr %60, align 1
  %61 = load ptr, ptr %6, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  tail call void %61(ptr noundef %50) #8
  br label %64

64:                                               ; preds = %63, %53
  %65 = getelementptr inbounds %struct.xa_node, ptr %50, i32 0, i32 5
  store ptr inttoptr (i32 1 to ptr), ptr %65, align 4
  %66 = getelementptr inbounds %struct.xa_node, ptr %50, i32 0, i32 6
  tail call void @call_rcu(ptr noundef %66, ptr noundef nonnull @radix_tree_node_rcu_free) #8
  %67 = icmp eq ptr %50, %24
  br i1 %67, label %68, label %48

68:                                               ; preds = %64
  %69 = load ptr, ptr %2, align 4
  br label %70

70:                                               ; preds = %68, %16
  %71 = phi ptr [ %69, %68 ], [ %0, %16 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %71, i32 noundef %7) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @radix_tree_node_rcu_free(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

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
!8 = !{i64 2150256843}
!9 = !{i64 2150264587}
!10 = !{i64 2150271810}
!11 = !{i64 2150280066}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2149381050}
!14 = !{i64 2149381267}
!15 = !{i64 2148982278}
!16 = !{i64 2148978102}
!17 = !{i64 2148978177, i64 2148978204, i64 2148978251, i64 2148978273, i64 2148978301, i64 2148978321}
!18 = !{i64 2149005281}
!19 = !{i64 338130}
!20 = !{i64 2149006422}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 4001, i32 4000000}
