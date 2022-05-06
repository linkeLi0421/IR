; ModuleID = '/llk/IR/lib/radix-tree.c_pt.bc'
source_filename = "../lib/radix-tree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_preloads:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_preloads\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_preloads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_preload:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_preload\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_preload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_maybe_preload:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_maybe_preload\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_maybe_preload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_insert\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_insert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_lookup_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_lookup_slot\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_lookup_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_replace_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_replace_slot\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_replace_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_tag_set\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_tag_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_tag_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_tag_clear\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_tag_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_tag_get:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_tag_get\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_tag_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_iter_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_iter_resume\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_iter_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_next_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_next_chunk\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_next_chunk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_gang_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_gang_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_gang_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_gang_lookup_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_gang_lookup_tag\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_gang_lookup_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_gang_lookup_tag_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_gang_lookup_tag_slot\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_gang_lookup_tag_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_iter_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_iter_delete\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_iter_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_delete_item:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_delete_item\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_delete_item:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_delete\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_radix_tree_tagged:\09\09\09\09\09"
module asm "\09.asciz \09\22radix_tree_tagged\22\09\09\09\09\09"
module asm "__kstrtabns_radix_tree_tagged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_preload:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_preload\22\09\09\09\09\09"
module asm "__kstrtabns_idr_preload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idr_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22idr_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_idr_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.1, [64 x ptr], %union.anon.2 }
%union.anon.1 = type { %struct.list_head }
%union.anon.2 = type { [3 x [2 x i32]] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.radix_tree_iter = type { i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@radix_tree_preloads = dso_local global %struct.radix_tree_preload { %struct.local_lock_t undef, i32 0, ptr null }, section ".data..percpu", align 4
@__kstrtab_radix_tree_preloads = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_preloads = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_preloads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_preloads to i32), ptr @__kstrtab_radix_tree_preloads, ptr @__kstrtabns_radix_tree_preloads }, section "___ksymtab_gpl+radix_tree_preloads", align 4
@radix_tree_node_cachep = dso_local local_unnamed_addr global ptr null, align 4
@radix_tree_preload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [17 x i8] c"lib/radix-tree.c\00", align 1
@__kstrtab_radix_tree_preload = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_preload = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_preload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_preload to i32), ptr @__kstrtab_radix_tree_preload, ptr @__kstrtabns_radix_tree_preload }, section "___ksymtab+radix_tree_preload", align 4
@__kstrtab_radix_tree_maybe_preload = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_maybe_preload = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_maybe_preload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_maybe_preload to i32), ptr @__kstrtab_radix_tree_maybe_preload, ptr @__kstrtabns_radix_tree_maybe_preload }, section "___ksymtab+radix_tree_maybe_preload", align 4
@__kstrtab_radix_tree_insert = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_insert = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_insert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_insert to i32), ptr @__kstrtab_radix_tree_insert, ptr @__kstrtabns_radix_tree_insert }, section "___ksymtab+radix_tree_insert", align 4
@__kstrtab_radix_tree_lookup_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_lookup_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_lookup_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_lookup_slot to i32), ptr @__kstrtab_radix_tree_lookup_slot, ptr @__kstrtabns_radix_tree_lookup_slot }, section "___ksymtab+radix_tree_lookup_slot", align 4
@__kstrtab_radix_tree_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_lookup to i32), ptr @__kstrtab_radix_tree_lookup, ptr @__kstrtabns_radix_tree_lookup }, section "___ksymtab+radix_tree_lookup", align 4
@__radix_tree_replace.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_radix_tree_replace_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_replace_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_replace_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_replace_slot to i32), ptr @__kstrtab_radix_tree_replace_slot, ptr @__kstrtabns_radix_tree_replace_slot }, section "___ksymtab+radix_tree_replace_slot", align 4
@__kstrtab_radix_tree_tag_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_tag_set = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_tag_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_tag_set to i32), ptr @__kstrtab_radix_tree_tag_set, ptr @__kstrtabns_radix_tree_tag_set }, section "___ksymtab+radix_tree_tag_set", align 4
@__kstrtab_radix_tree_tag_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_tag_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_tag_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_tag_clear to i32), ptr @__kstrtab_radix_tree_tag_clear, ptr @__kstrtabns_radix_tree_tag_clear }, section "___ksymtab+radix_tree_tag_clear", align 4
@__kstrtab_radix_tree_tag_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_tag_get = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_tag_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_tag_get to i32), ptr @__kstrtab_radix_tree_tag_get, ptr @__kstrtabns_radix_tree_tag_get }, section "___ksymtab+radix_tree_tag_get", align 4
@__kstrtab_radix_tree_iter_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_iter_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_iter_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_iter_resume to i32), ptr @__kstrtab_radix_tree_iter_resume, ptr @__kstrtabns_radix_tree_iter_resume }, section "___ksymtab+radix_tree_iter_resume", align 4
@__kstrtab_radix_tree_next_chunk = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_next_chunk = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_next_chunk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_next_chunk to i32), ptr @__kstrtab_radix_tree_next_chunk, ptr @__kstrtabns_radix_tree_next_chunk }, section "___ksymtab+radix_tree_next_chunk", align 4
@__kstrtab_radix_tree_gang_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_gang_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_gang_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_gang_lookup to i32), ptr @__kstrtab_radix_tree_gang_lookup, ptr @__kstrtabns_radix_tree_gang_lookup }, section "___ksymtab+radix_tree_gang_lookup", align 4
@__kstrtab_radix_tree_gang_lookup_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_gang_lookup_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_gang_lookup_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_gang_lookup_tag to i32), ptr @__kstrtab_radix_tree_gang_lookup_tag, ptr @__kstrtabns_radix_tree_gang_lookup_tag }, section "___ksymtab+radix_tree_gang_lookup_tag", align 4
@__kstrtab_radix_tree_gang_lookup_tag_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_gang_lookup_tag_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_gang_lookup_tag_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_gang_lookup_tag_slot to i32), ptr @__kstrtab_radix_tree_gang_lookup_tag_slot, ptr @__kstrtabns_radix_tree_gang_lookup_tag_slot }, section "___ksymtab+radix_tree_gang_lookup_tag_slot", align 4
@__kstrtab_radix_tree_iter_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_iter_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_iter_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_iter_delete to i32), ptr @__kstrtab_radix_tree_iter_delete, ptr @__kstrtabns_radix_tree_iter_delete }, section "___ksymtab+radix_tree_iter_delete", align 4
@__kstrtab_radix_tree_delete_item = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_delete_item = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_delete_item = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_delete_item to i32), ptr @__kstrtab_radix_tree_delete_item, ptr @__kstrtabns_radix_tree_delete_item }, section "___ksymtab+radix_tree_delete_item", align 4
@__kstrtab_radix_tree_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_delete to i32), ptr @__kstrtab_radix_tree_delete, ptr @__kstrtabns_radix_tree_delete }, section "___ksymtab+radix_tree_delete", align 4
@__kstrtab_radix_tree_tagged = external dso_local constant [0 x i8], align 1
@__kstrtabns_radix_tree_tagged = external dso_local constant [0 x i8], align 1
@__ksymtab_radix_tree_tagged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @radix_tree_tagged to i32), ptr @__kstrtab_radix_tree_tagged, ptr @__kstrtabns_radix_tree_tagged }, section "___ksymtab+radix_tree_tagged", align 4
@__kstrtab_idr_preload = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_preload = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_preload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_preload to i32), ptr @__kstrtab_idr_preload, ptr @__kstrtabns_idr_preload }, section "___ksymtab+idr_preload", align 4
@__kstrtab_idr_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_idr_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_idr_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idr_destroy to i32), ptr @__kstrtab_idr_destroy, ptr @__kstrtabns_idr_destroy }, section "___ksymtab+idr_destroy", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"radix_tree_node\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"lib/radix:dead\00", align 1
@delete_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@radix_tree_shrink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@radix_tree_free_nodes.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_idr_destroy, ptr @__ksymtab_idr_preload, ptr @__ksymtab_radix_tree_delete, ptr @__ksymtab_radix_tree_delete_item, ptr @__ksymtab_radix_tree_gang_lookup, ptr @__ksymtab_radix_tree_gang_lookup_tag, ptr @__ksymtab_radix_tree_gang_lookup_tag_slot, ptr @__ksymtab_radix_tree_insert, ptr @__ksymtab_radix_tree_iter_delete, ptr @__ksymtab_radix_tree_iter_resume, ptr @__ksymtab_radix_tree_lookup, ptr @__ksymtab_radix_tree_lookup_slot, ptr @__ksymtab_radix_tree_maybe_preload, ptr @__ksymtab_radix_tree_next_chunk, ptr @__ksymtab_radix_tree_preload, ptr @__ksymtab_radix_tree_preloads, ptr @__ksymtab_radix_tree_replace_slot, ptr @__ksymtab_radix_tree_tag_clear, ptr @__ksymtab_radix_tree_tag_get, ptr @__ksymtab_radix_tree_tag_set, ptr @__ksymtab_radix_tree_tagged], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @radix_tree_node_rcu_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -12
  %3 = getelementptr i8, ptr %0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(280) %3, i8 0, i64 280, i1 false)
  store volatile ptr %0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %0, ptr %4, align 4
  %5 = load ptr, ptr @radix_tree_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef %2) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @radix_tree_preload(i32 noundef %0) #0 {
  %2 = and i32 %0, 1024
  %3 = icmp ne i32 %2, 0
  %4 = load i1, ptr @radix_tree_preload.__already_done, align 1
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  store i1 true, ptr @radix_tree_preload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 366, i32 noundef 9, ptr noundef null) #13
  br label %7

7:                                                ; preds = %6, %1
  %8 = and i32 %0, -4194305
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #10, !srcloc !11
  %12 = add i32 %11, ptrtoint (ptr @radix_tree_preloads to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.radix_tree_preload, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %15, 11
  br i1 %16, label %17, label %45

17:                                               ; preds = %42, %7
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %21 = load ptr, ptr @radix_tree_node_cachep, align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef %8) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #10, !srcloc !11
  %28 = add i32 %27, ptrtoint (ptr @radix_tree_preloads to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.radix_tree_preload, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 11
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.radix_tree_preload, ptr %29, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xa_node, ptr %22, i32 0, i32 4
  store ptr %35, ptr %36, align 4
  store ptr %22, ptr %34, align 4
  %37 = load i32, ptr %30, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %30, align 4
  br label %42

39:                                               ; preds = %24
  %40 = load ptr, ptr @radix_tree_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %40, ptr noundef nonnull %22) #13
  %41 = load i32, ptr %30, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i32 [ %41, %39 ], [ %38, %33 ]
  %44 = icmp ult i32 %43, 11
  br i1 %44, label %17, label %45

45:                                               ; preds = %42, %17, %7
  %46 = phi i32 [ 0, %7 ], [ -12, %17 ], [ 0, %42 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @radix_tree_maybe_preload(i32 noundef %0) #0 {
  %2 = and i32 %0, 1024
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %42, label %4

4:                                                ; preds = %1
  %5 = and i32 %0, -4194305
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #10, !srcloc !11
  %9 = add i32 %8, ptrtoint (ptr @radix_tree_preloads to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.radix_tree_preload, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %12, 11
  br i1 %13, label %14, label %46

14:                                               ; preds = %39, %4
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %18 = load ptr, ptr @radix_tree_node_cachep, align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %18, i32 noundef %5) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #10, !srcloc !11
  %25 = add i32 %24, ptrtoint (ptr @radix_tree_preloads to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.radix_tree_preload, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp ult i32 %28, 11
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.radix_tree_preload, ptr %26, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.xa_node, ptr %19, i32 0, i32 4
  store ptr %32, ptr %33, align 4
  store ptr %19, ptr %31, align 4
  %34 = load i32, ptr %27, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %27, align 4
  br label %39

36:                                               ; preds = %21
  %37 = load ptr, ptr @radix_tree_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef nonnull %19) #13
  %38 = load i32, ptr %27, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i32 [ %38, %36 ], [ %35, %30 ]
  %41 = icmp ult i32 %40, 11
  br i1 %41, label %14, label %46

42:                                               ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #10, !srcloc !11
  br label %46

46:                                               ; preds = %42, %39, %14, %4
  %47 = phi i32 [ 0, %42 ], [ 0, %4 ], [ -12, %14 ], [ 0, %39 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @radix_tree_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = ptrtoint ptr %2 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8, !prof !15

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 708, 0\0A.popsection", ""() #13, !srcloc !16
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 33554416
  %13 = load volatile ptr, ptr %9, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %25, !prof !9

17:                                               ; preds = %8
  %18 = and i32 %14, -3
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl i32 64, %21
  %23 = add i32 %22, -1
  %24 = add nuw nsw i32 %21, 6
  br label %25

25:                                               ; preds = %17, %8
  %26 = phi i32 [ %23, %17 ], [ 0, %8 ]
  %27 = phi i32 [ %24, %17 ], [ 0, %8 ]
  %28 = icmp ult i32 %26, %1
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @radix_tree_extend(ptr noundef %0, i32 noundef %12, i32 noundef %1, i32 noundef %27) #13
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %125, label %32

32:                                               ; preds = %29
  %33 = load volatile ptr, ptr %9, align 4
  br label %34

34:                                               ; preds = %32, %25
  %35 = phi ptr [ %33, %32 ], [ %13, %25 ]
  %36 = phi i32 [ %30, %32 ], [ %27, %25 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %62, %34
  %39 = phi ptr [ %65, %62 ], [ null, %34 ]
  %40 = phi ptr [ %70, %62 ], [ %9, %34 ]
  %41 = phi i32 [ %44, %62 ], [ %36, %34 ]
  %42 = phi i32 [ %69, %62 ], [ 0, %34 ]
  %43 = phi ptr [ %71, %62 ], [ %35, %34 ]
  %44 = add i32 %41, -6
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = tail call fastcc ptr @radix_tree_node_alloc(i32 noundef %12, ptr noundef %39, ptr noundef %0, i32 noundef %44, i32 noundef %42, i32 noundef 0) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %125, label %49

49:                                               ; preds = %46
  %50 = ptrtoint ptr %47 to i32
  %51 = or i32 %50, 2
  %52 = inttoptr i32 %51 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  store volatile ptr %52, ptr %40, align 4
  %53 = icmp eq ptr %39, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.xa_node, ptr %39, i32 0, i32 2
  %56 = load i8, ptr %55, align 2
  %57 = add i8 %56, 1
  store i8 %57, ptr %55, align 2
  br label %62

58:                                               ; preds = %38
  %59 = ptrtoint ptr %43 to i32
  %60 = and i32 %59, 3
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %125

62:                                               ; preds = %58, %54, %49
  %63 = phi i32 [ %59, %58 ], [ %50, %49 ], [ %50, %54 ]
  %64 = and i32 %63, -3
  %65 = inttoptr i32 %64 to ptr
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  %68 = lshr i32 %1, %67
  %69 = and i32 %68, 63
  %70 = getelementptr %struct.xa_node, ptr %65, i32 0, i32 7, i32 %69
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq i32 %44, 0
  br i1 %72, label %73, label %38

73:                                               ; preds = %62
  %74 = inttoptr i32 %64 to ptr
  br label %75

75:                                               ; preds = %73, %34
  %76 = phi ptr [ %35, %34 ], [ %71, %73 ]
  %77 = phi ptr [ null, %34 ], [ %74, %73 ]
  %78 = phi ptr [ %9, %34 ], [ %70, %73 ]
  %79 = icmp eq ptr %76, null
  br i1 %79, label %80, label %125

80:                                               ; preds = %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  store volatile ptr %2, ptr %78, align 4
  %81 = icmp eq ptr %77, null
  br i1 %81, label %121, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.xa_node, ptr %77, i32 0, i32 2
  %84 = load i8, ptr %83, align 2
  %85 = add i8 %84, 1
  store i8 %85, ptr %83, align 2
  %86 = and i32 %4, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.xa_node, ptr %77, i32 0, i32 3
  %90 = load i8, ptr %89, align 1
  %91 = add i8 %90, 1
  store i8 %91, ptr %89, align 1
  br label %92

92:                                               ; preds = %88, %82
  %93 = getelementptr inbounds %struct.xa_node, ptr %77, i32 0, i32 7
  %94 = ptrtoint ptr %78 to i32
  %95 = ptrtoint ptr %93 to i32
  %96 = sub i32 %94, %95
  %97 = ashr exact i32 %96, 2
  %98 = getelementptr inbounds %struct.xa_node, ptr %77, i32 0, i32 8
  %99 = lshr i32 %97, 5
  %100 = getelementptr i32, ptr %98, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %97, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106, !prof !9

106:                                              ; preds = %92
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 720, 0\0A.popsection", ""() #13, !srcloc !19
  unreachable

107:                                              ; preds = %92
  %108 = getelementptr %struct.xa_node, ptr %77, i32 0, i32 8, i32 0, i32 1
  %109 = getelementptr i32, ptr %108, i32 %99
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, %103
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113, !prof !9

113:                                              ; preds = %107
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 721, 0\0A.popsection", ""() #13, !srcloc !20
  unreachable

114:                                              ; preds = %107
  %115 = getelementptr %struct.xa_node, ptr %77, i32 0, i32 8, i32 0, i32 2
  %116 = getelementptr i32, ptr %115, i32 %99
  %117 = load volatile i32, ptr %116, align 4
  %118 = and i32 %117, %103
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120, !prof !9

120:                                              ; preds = %114
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 722, 0\0A.popsection", ""() #13, !srcloc !21
  unreachable

121:                                              ; preds = %80
  %122 = load i32, ptr %10, align 4
  %123 = icmp ult i32 %122, 33554432
  br i1 %123, label %125, label %124, !prof !9

124:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 724, 0\0A.popsection", ""() #13, !srcloc !22
  unreachable

125:                                              ; preds = %121, %114, %75, %58, %46, %29
  %126 = phi i32 [ 0, %114 ], [ 0, %121 ], [ %30, %29 ], [ -17, %75 ], [ -17, %58 ], [ -12, %46 ]
  ret i32 %126
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__radix_tree_lookup(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %6 = load volatile ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %15, label %24, !prof !9

10:                                               ; preds = %45
  %11 = load volatile ptr, ptr %5, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %24, !prof !9

15:                                               ; preds = %10, %4
  %16 = phi i32 [ %12, %10 ], [ %7, %4 ]
  %17 = and i32 %16, -3
  %18 = inttoptr i32 %17 to ptr
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl i32 64, %20
  %22 = add i32 %21, -1
  %23 = icmp ult i32 %22, %1
  br i1 %23, label %59, label %31

24:                                               ; preds = %10, %4
  %25 = phi ptr [ %6, %4 ], [ %11, %10 ]
  %26 = icmp eq i32 %1, 0
  br i1 %26, label %50, label %59

27:                                               ; preds = %45
  %28 = ptrtoint ptr %40 to i32
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %46

31:                                               ; preds = %27, %15
  %32 = phi i32 [ %28, %27 ], [ %16, %15 ]
  %33 = and i32 %32, -3
  %34 = inttoptr i32 %33 to ptr
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i32
  %37 = lshr i32 %1, %36
  %38 = and i32 %37, 63
  %39 = getelementptr %struct.xa_node, ptr %34, i32 0, i32 7, i32 %38
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, inttoptr (i32 1026 to ptr)
  %42 = xor i1 %41, true
  %43 = icmp eq i8 %35, 0
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %46, label %45

45:                                               ; preds = %31
  br i1 %41, label %10, label %27

46:                                               ; preds = %31, %27
  %47 = inttoptr i32 %33 to ptr
  %48 = getelementptr inbounds %struct.xa_node, ptr %47, i32 0, i32 7
  %49 = getelementptr ptr, ptr %48, i32 %38
  br label %50

50:                                               ; preds = %46, %24
  %51 = phi ptr [ %25, %24 ], [ %40, %46 ]
  %52 = phi ptr [ null, %24 ], [ %47, %46 ]
  %53 = phi ptr [ %5, %24 ], [ %49, %46 ]
  %54 = icmp eq ptr %2, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store ptr %52, ptr %2, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = icmp eq ptr %3, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %56
  store ptr %53, ptr %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %24, %15
  %60 = phi ptr [ %51, %58 ], [ %51, %56 ], [ null, %24 ], [ null, %15 ]
  ret ptr %60
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @radix_tree_lookup_slot(ptr noundef %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %13, label %22, !prof !9

8:                                                ; preds = %43
  %9 = load volatile ptr, ptr %3, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %22, !prof !9

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %10, %8 ], [ %5, %2 ]
  %15 = and i32 %14, -3
  %16 = inttoptr i32 %15 to ptr
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl i32 64, %18
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, %1
  br i1 %21, label %51, label %29

22:                                               ; preds = %8, %2
  %23 = phi ptr [ %4, %2 ], [ %9, %8 ]
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %48, label %51

25:                                               ; preds = %43
  %26 = ptrtoint ptr %38 to i32
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %44

29:                                               ; preds = %25, %13
  %30 = phi i32 [ %26, %25 ], [ %14, %13 ]
  %31 = and i32 %30, -3
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = lshr i32 %1, %34
  %36 = and i32 %35, 63
  %37 = getelementptr %struct.xa_node, ptr %32, i32 0, i32 7, i32 %36
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, inttoptr (i32 1026 to ptr)
  %40 = xor i1 %39, true
  %41 = icmp eq i8 %33, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br i1 %39, label %8, label %25

44:                                               ; preds = %29, %25
  %45 = inttoptr i32 %31 to ptr
  %46 = getelementptr inbounds %struct.xa_node, ptr %45, i32 0, i32 7
  %47 = getelementptr ptr, ptr %46, i32 %36
  br label %48

48:                                               ; preds = %44, %22
  %49 = phi ptr [ %23, %22 ], [ %38, %44 ]
  %50 = phi ptr [ %3, %22 ], [ %47, %44 ]
  br label %51

51:                                               ; preds = %48, %22, %13
  %52 = phi ptr [ %50, %48 ], [ null, %22 ], [ null, %13 ]
  %53 = phi ptr [ %49, %48 ], [ null, %22 ], [ null, %13 ]
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr null, ptr %52
  ret ptr %55
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @radix_tree_lookup(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %13, label %22, !prof !9

8:                                                ; preds = %43
  %9 = load volatile ptr, ptr %3, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %22, !prof !9

13:                                               ; preds = %8, %2
  %14 = phi i32 [ %10, %8 ], [ %5, %2 ]
  %15 = and i32 %14, -3
  %16 = inttoptr i32 %15 to ptr
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = shl i32 64, %18
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, %1
  br i1 %21, label %46, label %29

22:                                               ; preds = %8, %2
  %23 = phi ptr [ %4, %2 ], [ %9, %8 ]
  %24 = icmp eq i32 %1, 0
  br i1 %24, label %44, label %46

25:                                               ; preds = %43
  %26 = ptrtoint ptr %38 to i32
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %44

29:                                               ; preds = %25, %13
  %30 = phi i32 [ %26, %25 ], [ %14, %13 ]
  %31 = and i32 %30, -3
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = lshr i32 %1, %34
  %36 = and i32 %35, 63
  %37 = getelementptr %struct.xa_node, ptr %32, i32 0, i32 7, i32 %36
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, inttoptr (i32 1026 to ptr)
  %40 = xor i1 %39, true
  %41 = icmp eq i8 %33, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br i1 %39, label %8, label %25

44:                                               ; preds = %29, %25, %22
  %45 = phi ptr [ %23, %22 ], [ %38, %29 ], [ %38, %25 ]
  br label %46

46:                                               ; preds = %44, %22, %13
  %47 = phi ptr [ %45, %44 ], [ null, %22 ], [ null, %13 ]
  ret ptr %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__radix_tree_replace(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load volatile ptr, ptr %2, align 4
  %6 = ptrtoint ptr %3 to i32
  %7 = and i32 %6, 1
  %8 = ptrtoint ptr %5 to i32
  %9 = and i32 %8, 1
  %10 = sub nsw i32 %7, %9
  %11 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %4
  %16 = icmp eq ptr %1, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %15
  %18 = ptrtoint ptr %2 to i32
  %19 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %19 to i32
  %21 = sub i32 %18, %20
  %22 = ashr exact i32 %21, 2
  %23 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 8
  %24 = lshr i32 %22, 5
  %25 = getelementptr i32, ptr %23, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %22, 31
  %28 = lshr i32 %26, %27
  %29 = and i32 %28, 1
  br label %32

30:                                               ; preds = %15
  %31 = and i32 %12, 33554432
  br label %32

32:                                               ; preds = %30, %17
  %33 = phi i32 [ %29, %17 ], [ %31, %30 ]
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %5, null
  %36 = xor i1 %34, true
  %37 = zext i1 %36 to i32
  %38 = or i1 %35, %34
  br i1 %38, label %45, label %39

39:                                               ; preds = %32, %4
  %40 = icmp ne ptr %3, null
  %41 = zext i1 %40 to i32
  %42 = icmp ne ptr %5, null
  %43 = sext i1 %42 to i32
  %44 = add nsw i32 %43, %41
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i32 [ %37, %32 ], [ %44, %39 ]
  %47 = icmp eq ptr %1, null
  %48 = xor i1 %47, true
  %49 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %50 = icmp eq ptr %49, %2
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %45
  %53 = icmp ne i32 %46, 0
  %54 = icmp ne i32 %7, %9
  %55 = select i1 %53, i1 true, i1 %54
  %56 = load i1, ptr @__radix_tree_replace.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !15

59:                                               ; preds = %52
  store i1 true, ptr @__radix_tree_replace.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 887, i32 noundef 9, ptr noundef null) #13
  br label %60

60:                                               ; preds = %59, %52, %45
  %61 = or i32 %46, %10
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %47, %62
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 2
  %66 = load i8, ptr %65, align 2
  %67 = trunc i32 %46 to i8
  %68 = add i8 %66, %67
  store i8 %68, ptr %65, align 2
  %69 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = trunc i32 %10 to i8
  %72 = add i8 %70, %71
  store i8 %72, ptr %69, align 1
  br label %73

73:                                               ; preds = %64, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store volatile ptr %3, ptr %2, align 4
  br i1 %47, label %76, label %74

74:                                               ; preds = %73
  %75 = tail call fastcc zeroext i1 @delete_node(ptr noundef %0, ptr noundef nonnull %1)
  br label %76

76:                                               ; preds = %74, %73
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @delete_node(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %90, label %12

8:                                                ; preds = %121
  %9 = getelementptr inbounds %struct.xa_node, ptr %93, i32 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %90, label %12

12:                                               ; preds = %8, %2
  %13 = phi ptr [ %1, %2 ], [ %93, %8 ]
  %14 = ptrtoint ptr %13 to i32
  %15 = or i32 %14, 2
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile ptr, ptr %4, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %123

19:                                               ; preds = %12
  %20 = load volatile ptr, ptr %4, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %123

24:                                               ; preds = %19
  %25 = and i32 %21, -3
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.xa_node, ptr %26, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %30, label %118

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.xa_node, ptr %26, i32 0, i32 7
  %32 = load volatile ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %118, label %44

34:                                               ; preds = %85
  %35 = and i32 %87, -3
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.xa_node, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %40, label %118

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.xa_node, ptr %36, i32 0, i32 7
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %118, label %44

44:                                               ; preds = %40, %30
  %45 = phi ptr [ %42, %40 ], [ %32, %30 ]
  %46 = phi ptr [ %41, %40 ], [ %31, %30 ]
  %47 = phi i1 [ true, %40 ], [ false, %30 ]
  %48 = phi ptr [ %36, %40 ], [ %26, %30 ]
  %49 = phi ptr [ %37, %40 ], [ %27, %30 ]
  %50 = load i8, ptr %48, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32, ptr %3, align 4
  %54 = and i32 %53, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %52, %44
  %57 = ptrtoint ptr %45 to i32
  %58 = and i32 %57, 3
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = and i32 %57, -3
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.xa_node, ptr %62, i32 0, i32 4
  store ptr null, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  store ptr %45, ptr %4, align 4
  %65 = load i32, ptr %3, align 4
  %66 = and i32 %65, 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.xa_node, ptr %48, i32 0, i32 8
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = and i32 %65, -33554433
  store i32 %74, ptr %3, align 4
  br label %75

75:                                               ; preds = %73, %68, %64
  store i8 0, ptr %49, align 2
  br i1 %59, label %77, label %76

76:                                               ; preds = %75
  store ptr inttoptr (i32 1026 to ptr), ptr %46, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = getelementptr inbounds %struct.xa_node, ptr %48, i32 0, i32 6
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp ne ptr %79, %78
  %81 = load i1, ptr @radix_tree_shrink.__already_done, align 1
  %82 = xor i1 %81, true
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %85, !prof !15

84:                                               ; preds = %77
  store i1 true, ptr @radix_tree_shrink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 533, i32 noundef 9, ptr noundef null) #13
  br label %85

85:                                               ; preds = %84, %77
  tail call void @call_rcu(ptr noundef %78, ptr noundef nonnull @radix_tree_node_rcu_free) #13
  %86 = load volatile ptr, ptr %4, align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = and i32 %87, 3
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %34, label %118

90:                                               ; preds = %8, %2
  %91 = phi ptr [ %93, %8 ], [ %1, %2 ]
  %92 = getelementptr inbounds %struct.xa_node, ptr %91, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.xa_node, ptr %91, i32 0, i32 1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = getelementptr %struct.xa_node, ptr %93, i32 0, i32 7, i32 %98
  store ptr null, ptr %99, align 4
  %100 = getelementptr inbounds %struct.xa_node, ptr %93, i32 0, i32 2
  %101 = load i8, ptr %100, align 2
  %102 = add i8 %101, -1
  store i8 %102, ptr %100, align 2
  br label %110

103:                                              ; preds = %90
  %104 = load i32, ptr %3, align 4
  %105 = and i32 %104, 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = and i32 %104, 33554431
  store i32 %108, ptr %3, align 4
  br label %109

109:                                              ; preds = %107, %103
  store ptr null, ptr %4, align 4
  br label %110

110:                                              ; preds = %109, %95
  %111 = getelementptr inbounds %struct.xa_node, ptr %91, i32 0, i32 6
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp ne ptr %112, %111
  %114 = load i1, ptr @delete_node.__already_done, align 1
  %115 = xor i1 %114, true
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %121, !prof !15

117:                                              ; preds = %110
  store i1 true, ptr @delete_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 570, i32 noundef 9, ptr noundef null) #13
  br label %121

118:                                              ; preds = %85, %52, %40, %34, %30, %24
  %119 = phi i1 [ false, %24 ], [ false, %30 ], [ true, %34 ], [ true, %40 ], [ %47, %52 ], [ true, %85 ]
  %120 = or i1 %7, %119
  br label %123

121:                                              ; preds = %117, %110
  tail call void @call_rcu(ptr noundef %111, ptr noundef nonnull @radix_tree_node_rcu_free) #13
  %122 = icmp eq ptr %93, null
  br i1 %122, label %123, label %8

123:                                              ; preds = %121, %118, %19, %12
  %124 = phi i1 [ %120, %118 ], [ %7, %12 ], [ %7, %19 ], [ true, %121 ]
  ret i1 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @radix_tree_replace_slot(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  %6 = ptrtoint ptr %4 to i32
  %7 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = and i32 %8, 33554432
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq ptr %4, null
  %15 = xor i1 %13, true
  %16 = zext i1 %15 to i32
  %17 = or i1 %14, %13
  br i1 %17, label %24, label %18

18:                                               ; preds = %11, %3
  %19 = icmp ne ptr %2, null
  %20 = zext i1 %19 to i32
  %21 = icmp ne ptr %4, null
  %22 = sext i1 %21 to i32
  %23 = add nsw i32 %22, %20
  br label %24

24:                                               ; preds = %18, %11
  %25 = phi i32 [ %16, %11 ], [ %23, %18 ]
  %26 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = icmp ne i32 %25, 0
  %30 = xor i32 %6, %5
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %29, i1 true, i1 %32
  %34 = load i1, ptr @__radix_tree_replace.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !15

37:                                               ; preds = %28
  store i1 true, ptr @__radix_tree_replace.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 887, i32 noundef 9, ptr noundef null) #13
  br label %38

38:                                               ; preds = %37, %28, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store volatile ptr %2, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @radix_tree_iter_replace(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  tail call void @__radix_tree_replace(ptr noundef %0, ptr noundef %6, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @radix_tree_tag_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %17, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, -3
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl i32 64, %13
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, %1
  br i1 %16, label %19, label %20, !prof !15

17:                                               ; preds = %3
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %48, label %19, !prof !9

19:                                               ; preds = %17, %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 972, 0\0A.popsection", ""() #13, !srcloc !24
  unreachable

20:                                               ; preds = %44, %9
  %21 = phi i32 [ %45, %44 ], [ %6, %9 ]
  %22 = and i32 %21, -3
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %1, %25
  %27 = and i32 %26, 63
  %28 = getelementptr %struct.xa_node, ptr %23, i32 0, i32 7, i32 %27
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !15

31:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 979, 0\0A.popsection", ""() #13, !srcloc !25
  unreachable

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.xa_node, ptr %23, i32 0, i32 8
  %34 = getelementptr [3 x [2 x i32]], ptr %33, i32 0, i32 %2
  %35 = lshr i32 %27, 5
  %36 = getelementptr i32, ptr %34, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %26, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = or i32 %37, %39
  store i32 %43, ptr %36, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = ptrtoint ptr %29 to i32
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %20, label %48

48:                                               ; preds = %44, %17
  %49 = phi ptr [ %5, %17 ], [ %29, %44 ]
  %50 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %2, 25
  %53 = shl nuw i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = or i32 %51, %53
  store i32 %57, ptr %50, align 4
  br label %58

58:                                               ; preds = %56, %48
  ret ptr %49
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @radix_tree_tag_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %17, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, -3
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl i32 64, %13
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, %1
  br i1 %16, label %79, label %21

17:                                               ; preds = %3
  %18 = icmp ne i32 %1, 0
  %19 = icmp eq ptr %5, null
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %79, label %68

21:                                               ; preds = %21, %9
  %22 = phi i32 [ %31, %21 ], [ %6, %9 ]
  %23 = and i32 %22, -3
  %24 = inttoptr i32 %23 to ptr
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = lshr i32 %1, %26
  %28 = and i32 %27, 63
  %29 = getelementptr %struct.xa_node, ptr %24, i32 0, i32 7, i32 %28
  %30 = load volatile ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %21, label %34

34:                                               ; preds = %21
  %35 = icmp eq ptr %30, null
  br i1 %35, label %79, label %36

36:                                               ; preds = %34
  %37 = icmp eq i32 %23, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %36
  %39 = inttoptr i32 %23 to ptr
  br label %40

40:                                               ; preds = %61, %38
  %41 = phi i32 [ %64, %61 ], [ %28, %38 ]
  %42 = phi ptr [ %66, %61 ], [ %39, %38 ]
  %43 = getelementptr inbounds %struct.xa_node, ptr %42, i32 0, i32 8
  %44 = getelementptr [3 x [2 x i32]], ptr %43, i32 0, i32 %2
  %45 = lshr i32 %41, 5
  %46 = getelementptr i32, ptr %44, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %41, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %79, label %52

52:                                               ; preds = %40
  %53 = xor i32 %49, -1
  %54 = and i32 %47, %53
  store i32 %54, ptr %46, align 4
  %55 = load i32, ptr %44, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = getelementptr [3 x [2 x i32]], ptr %43, i32 0, i32 %2, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.xa_node, ptr %42, i32 0, i32 1
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.xa_node, ptr %42, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %40

68:                                               ; preds = %61, %36, %17
  %69 = phi ptr [ %30, %36 ], [ %5, %17 ], [ %30, %61 ]
  %70 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %2, 25
  %73 = shl nuw i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %68
  %77 = xor i32 %73, -1
  %78 = and i32 %71, %77
  store i32 %78, ptr %70, align 4
  br label %79

79:                                               ; preds = %76, %68, %57, %52, %40, %34, %17, %9
  %80 = phi ptr [ null, %9 ], [ %69, %76 ], [ %69, %68 ], [ null, %34 ], [ null, %17 ], [ %30, %57 ], [ %30, %52 ], [ %30, %40 ]
  ret ptr %80
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @radix_tree_iter_tag_clear(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  %9 = and i32 %8, 63
  br label %10

10:                                               ; preds = %31, %7
  %11 = phi i32 [ %34, %31 ], [ %9, %7 ]
  %12 = phi ptr [ %36, %31 ], [ %5, %7 ]
  %13 = getelementptr inbounds %struct.xa_node, ptr %12, i32 0, i32 8
  %14 = getelementptr [3 x [2 x i32]], ptr %13, i32 0, i32 %2
  %15 = lshr i32 %11, 5
  %16 = getelementptr i32, ptr %14, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %11, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %10
  %23 = xor i32 %19, -1
  %24 = and i32 %17, %23
  store i32 %24, ptr %16, align 4
  %25 = load i32, ptr %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = getelementptr [3 x [2 x i32]], ptr %13, i32 0, i32 %2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.xa_node, ptr %12, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.xa_node, ptr %12, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10

38:                                               ; preds = %31, %3
  %39 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %2, 25
  %42 = shl nuw i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = xor i32 %42, -1
  %47 = and i32 %40, %46
  store i32 %47, ptr %39, align 4
  br label %48

48:                                               ; preds = %45, %38, %27, %22, %10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @radix_tree_tag_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %2, 25
  %7 = shl nuw i32 1, %6
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %12 = load volatile ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %23, !prof !9

16:                                               ; preds = %10
  %17 = and i32 %13, -3
  %18 = inttoptr i32 %17 to ptr
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl i32 64, %20
  %22 = add i32 %21, -1
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i32 [ %22, %16 ], [ 0, %10 ]
  %25 = icmp ult i32 %24, %1
  br i1 %25, label %51, label %26

26:                                               ; preds = %49, %23
  %27 = phi ptr [ %39, %49 ], [ %12, %23 ]
  %28 = ptrtoint ptr %27 to i32
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = and i32 %28, -3
  %33 = inttoptr i32 %32 to ptr
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = lshr i32 %1, %35
  %37 = and i32 %36, 63
  %38 = getelementptr %struct.xa_node, ptr %33, i32 0, i32 7, i32 %37
  %39 = load volatile ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.xa_node, ptr %33, i32 0, i32 8
  %41 = getelementptr [3 x [2 x i32]], ptr %40, i32 0, i32 %2
  %42 = lshr i32 %37, 5
  %43 = getelementptr i32, ptr %41, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %36, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %31
  %50 = icmp eq ptr %39, inttoptr (i32 1026 to ptr)
  br i1 %50, label %51, label %26

51:                                               ; preds = %49, %31, %26, %23, %3
  %52 = phi i32 [ 0, %3 ], [ 0, %23 ], [ 1, %49 ], [ 0, %31 ], [ 1, %26 ]
  ret i32 %52
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local noalias ptr @radix_tree_iter_resume(ptr nocapture readnone %0, ptr nocapture noundef %1) #6 {
  %3 = load i32, ptr %1, align 4
  %4 = add i32 %3, 1
  store i32 %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 1
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2
  store i32 0, ptr %6, align 4
  ret ptr null
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @radix_tree_next_chunk(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #4 {
  %4 = and i32 %2, 15
  %5 = and i32 %2, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 33554432, %4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %181, label %13

13:                                               ; preds = %7, %3
  %14 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %181

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %22 = and i32 %2, 32
  %23 = icmp eq i32 %22, 0
  %24 = load volatile ptr, ptr %21, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 3
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %34, label %47, !prof !9

28:                                               ; preds = %126, %121
  %29 = phi i32 [ %119, %121 ], [ %129, %126 ]
  %30 = load volatile ptr, ptr %21, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %47, !prof !9

34:                                               ; preds = %28, %20
  %35 = phi i32 [ %31, %28 ], [ %25, %20 ]
  %36 = phi ptr [ %30, %28 ], [ %24, %20 ]
  %37 = phi i32 [ %29, %28 ], [ %15, %20 ]
  %38 = and i32 %35, -3
  %39 = inttoptr i32 %38 to ptr
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = shl i32 64, %41
  %43 = add i32 %42, -1
  %44 = icmp ugt i32 %37, %43
  %45 = icmp eq ptr %36, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %181, label %56

47:                                               ; preds = %28, %20
  %48 = phi i32 [ %15, %20 ], [ %29, %28 ]
  %49 = phi ptr [ %24, %20 ], [ %30, %28 ]
  %50 = icmp ne i32 %48, 0
  %51 = icmp eq ptr %49, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %181, label %53

53:                                               ; preds = %47
  store i32 %48, ptr %1, align 4
  store i32 1, ptr %14, align 4
  %54 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3
  store ptr null, ptr %55, align 4
  br label %181

56:                                               ; preds = %131, %34
  %57 = phi ptr [ %134, %131 ], [ %36, %34 ]
  %58 = phi i32 [ %132, %131 ], [ %37, %34 ]
  %59 = ptrtoint ptr %57 to i32
  %60 = and i32 %59, -3
  %61 = inttoptr i32 %60 to ptr
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = lshr i32 %58, %63
  %65 = and i32 %64, 63
  %66 = getelementptr %struct.xa_node, ptr %61, i32 0, i32 7, i32 %65
  %67 = load volatile ptr, ptr %66, align 4
  br i1 %6, label %78, label %68

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct.xa_node, ptr %61, i32 0, i32 8
  %70 = getelementptr [3 x [2 x i32]], ptr %69, i32 0, i32 %4
  %71 = lshr i32 %65, 5
  %72 = getelementptr i32, ptr %70, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %64, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %126

78:                                               ; preds = %56
  %79 = icmp eq ptr %67, null
  br i1 %79, label %80, label %131

80:                                               ; preds = %78
  br i1 %23, label %106, label %181

81:                                               ; preds = %68
  br i1 %23, label %82, label %181

82:                                               ; preds = %81
  %83 = add nuw nsw i32 %65, 1
  %84 = icmp eq i32 %65, 63
  br i1 %84, label %114, label %85

85:                                               ; preds = %82
  %86 = lshr i32 %83, 5
  %87 = getelementptr i32, ptr %70, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %83, 31
  %90 = lshr i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = tail call i32 @llvm.cttz.i32(i32 %90, i1 true) #13, !range !26
  %94 = add nuw nsw i32 %93, %83
  br label %114

95:                                               ; preds = %85
  %96 = add nuw nsw i32 %65, 33
  %97 = and i32 %96, 96
  %98 = icmp ult i32 %97, 64
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = getelementptr i32, ptr %87, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %99
  %104 = tail call i32 @llvm.cttz.i32(i32 %101, i1 true) #13, !range !26
  %105 = or i32 %104, %97
  br label %114

106:                                              ; preds = %109, %80
  %107 = phi i32 [ %110, %109 ], [ %65, %80 ]
  %108 = icmp eq i32 %107, 63
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = add nuw nsw i32 %107, 1
  %111 = getelementptr %struct.xa_node, ptr %61, i32 0, i32 7, i32 %110
  %112 = load volatile ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %106, label %114

114:                                              ; preds = %109, %106, %103, %99, %95, %92, %82
  %115 = phi i32 [ 64, %82 ], [ %105, %103 ], [ %94, %92 ], [ 64, %95 ], [ 64, %99 ], [ %110, %109 ], [ 64, %106 ]
  %116 = shl i32 -64, %63
  %117 = and i32 %116, %58
  %118 = shl i32 %115, %63
  %119 = add i32 %118, %117
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %181, label %121

121:                                              ; preds = %114
  %122 = icmp eq i32 %115, 64
  br i1 %122, label %28, label %123

123:                                              ; preds = %121
  %124 = getelementptr %struct.xa_node, ptr %61, i32 0, i32 7, i32 %115
  %125 = load volatile ptr, ptr %124, align 4
  br label %126

126:                                              ; preds = %123, %68
  %127 = phi ptr [ %125, %123 ], [ %67, %68 ]
  %128 = phi i32 [ %115, %123 ], [ %65, %68 ]
  %129 = phi i32 [ %119, %123 ], [ %58, %68 ]
  %130 = icmp eq ptr %127, null
  br i1 %130, label %28, label %131

131:                                              ; preds = %126, %78
  %132 = phi i32 [ %129, %126 ], [ %58, %78 ]
  %133 = phi i32 [ %128, %126 ], [ %65, %78 ]
  %134 = phi ptr [ %127, %126 ], [ %67, %78 ]
  %135 = icmp ne ptr %134, inttoptr (i32 1026 to ptr)
  %136 = icmp ne i8 %62, 0
  %137 = select i1 %135, i1 %136, i1 false
  %138 = ptrtoint ptr %134 to i32
  %139 = and i32 %138, 3
  %140 = icmp eq i32 %139, 2
  %141 = select i1 %137, i1 %140, i1 false
  br i1 %141, label %56, label %142

142:                                              ; preds = %131
  %143 = inttoptr i32 %60 to ptr
  %144 = zext i8 %62 to i32
  %145 = shl i32 -64, %144
  %146 = and i32 %132, %145
  %147 = or i32 %146, %133
  store i32 %147, ptr %1, align 4
  %148 = load i8, ptr %143, align 4
  %149 = zext i8 %148 to i32
  %150 = shl i32 64, %149
  %151 = add i32 %150, -1
  %152 = or i32 %151, %132
  %153 = add i32 %152, 1
  store i32 %153, ptr %14, align 4
  %154 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3
  store ptr %143, ptr %154, align 4
  br i1 %6, label %178, label %155

155:                                              ; preds = %142
  %156 = and i32 %133, 31
  %157 = icmp eq i32 %60, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2
  store i32 1, ptr %159, align 4
  br label %178

160:                                              ; preds = %155
  %161 = lshr i32 %133, 5
  %162 = getelementptr inbounds %struct.xa_node, ptr %143, i32 0, i32 8
  %163 = getelementptr [3 x [2 x i32]], ptr %162, i32 0, i32 %4, i32 %161
  %164 = load i32, ptr %163, align 4
  %165 = lshr i32 %164, %156
  %166 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2
  store i32 %165, ptr %166, align 4
  %167 = icmp ult i32 %133, 32
  br i1 %167, label %168, label %178

168:                                              ; preds = %160
  %169 = icmp eq i32 %156, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %168
  %171 = getelementptr [3 x [2 x i32]], ptr %162, i32 0, i32 %4, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = sub nuw nsw i32 32, %156
  %174 = shl i32 %172, %173
  %175 = or i32 %174, %165
  store i32 %175, ptr %166, align 4
  br label %176

176:                                              ; preds = %170, %168
  %177 = add i32 %147, 32
  store i32 %177, ptr %14, align 4
  br label %178

178:                                              ; preds = %176, %160, %158, %142
  %179 = getelementptr inbounds %struct.xa_node, ptr %143, i32 0, i32 7
  %180 = getelementptr ptr, ptr %179, i32 %133
  br label %181

181:                                              ; preds = %178, %114, %81, %80, %53, %47, %34, %17, %7
  %182 = phi ptr [ %180, %178 ], [ %21, %53 ], [ null, %7 ], [ null, %17 ], [ null, %47 ], [ null, %80 ], [ null, %114 ], [ null, %81 ], [ null, %34 ]
  ret ptr %182
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @radix_tree_gang_lookup(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = alloca %struct.radix_tree_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %6 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %6, align 4, !annotation !27
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %51, label %8, !prof !15

8:                                                ; preds = %4
  store i32 0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.radix_tree_iter, ptr %5, i32 0, i32 1
  store i32 %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.radix_tree_iter, ptr %5, i32 0, i32 2
  br label %13

11:                                               ; preds = %46, %40
  %12 = phi ptr [ %47, %46 ], [ null, %40 ]
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ 0, %8 ], [ %35, %11 ]
  %15 = phi ptr [ null, %8 ], [ %12, %11 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call ptr @radix_tree_next_chunk(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %15, %13 ], [ %18, %17 ]
  %22 = load volatile ptr, ptr %21, align 4
  %23 = getelementptr ptr, ptr %1, i32 %14
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = ptrtoint ptr %22 to i32
  %27 = and i32 %26, 3
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, ptr %5, align 4
  store i32 %30, ptr %9, align 4
  store i32 0, ptr %10, align 4
  br label %34

31:                                               ; preds = %25
  %32 = add i32 %14, 1
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %51, label %34

34:                                               ; preds = %31, %29, %20
  %35 = phi i32 [ %14, %29 ], [ %32, %31 ], [ %14, %20 ]
  %36 = phi ptr [ null, %29 ], [ %21, %31 ], [ %21, %20 ]
  %37 = load i32, ptr %9, align 4
  %38 = load i32, ptr %5, align 4
  %39 = sub i32 %37, %38
  br label %40

40:                                               ; preds = %46, %34
  %41 = phi i32 [ %38, %34 ], [ %48, %46 ]
  %42 = phi ptr [ %36, %34 ], [ %47, %46 ]
  %43 = phi i32 [ %39, %34 ], [ %44, %46 ]
  %44 = add i32 %43, -1
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %11

46:                                               ; preds = %40
  %47 = getelementptr ptr, ptr %42, i32 1
  %48 = add i32 %41, 1
  store i32 %48, ptr %5, align 4
  %49 = load ptr, ptr %47, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %40, label %11, !prof !15

51:                                               ; preds = %31, %17, %4
  %52 = phi i32 [ 0, %4 ], [ %14, %17 ], [ %3, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %52
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @radix_tree_gang_lookup_tag(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4 {
  %6 = alloca %struct.radix_tree_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %7, align 4, !annotation !27
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %60, label %9, !prof !15

9:                                                ; preds = %5
  store i32 0, ptr %6, align 4
  %10 = getelementptr inbounds %struct.radix_tree_iter, ptr %6, i32 0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = or i32 %4, 16
  %12 = getelementptr inbounds %struct.radix_tree_iter, ptr %6, i32 0, i32 2
  %13 = and i32 %4, 32
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %43, %9
  %16 = phi i32 [ 0, %9 ], [ %39, %43 ]
  %17 = phi ptr [ null, %9 ], [ %44, %43 ]
  %18 = getelementptr ptr, ptr %1, i32 %16
  br label %19

19:                                               ; preds = %33, %15
  %20 = phi ptr [ null, %33 ], [ %17, %15 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = call ptr @radix_tree_next_chunk(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %11)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %60, label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %20, %19 ], [ %23, %22 ]
  %27 = load volatile ptr, ptr %26, align 4
  store ptr %27, ptr %18, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = ptrtoint ptr %27 to i32
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, ptr %6, align 4
  store i32 %34, ptr %10, align 4
  store i32 0, ptr %12, align 4
  br label %19

35:                                               ; preds = %29
  %36 = add i32 %16, 1
  %37 = icmp eq i32 %36, %3
  br i1 %37, label %60, label %38

38:                                               ; preds = %35, %25
  %39 = phi i32 [ %36, %35 ], [ %16, %25 ]
  %40 = load i32, ptr %12, align 4
  %41 = lshr i32 %40, 1
  store i32 %41, ptr %12, align 4
  %42 = icmp ult i32 %40, 2
  br i1 %42, label %43, label %45, !prof !15

43:                                               ; preds = %53, %52, %48, %38
  %44 = phi ptr [ %59, %53 ], [ %51, %48 ], [ null, %52 ], [ null, %38 ]
  br label %15

45:                                               ; preds = %38
  %46 = and i32 %40, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !15

48:                                               ; preds = %45
  %49 = load i32, ptr %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %6, align 4
  %51 = getelementptr ptr, ptr %26, i32 1
  br label %43

52:                                               ; preds = %45
  br i1 %14, label %53, label %43

53:                                               ; preds = %52
  %54 = tail call i32 @llvm.cttz.i32(i32 %41, i1 false) #13, !range !26
  %55 = add nuw nsw i32 %54, 1
  %56 = lshr i32 %41, %54
  store i32 %56, ptr %12, align 4
  %57 = load i32, ptr %6, align 4
  %58 = add i32 %57, %55
  store i32 %58, ptr %6, align 4
  %59 = getelementptr ptr, ptr %26, i32 %55
  br label %43

60:                                               ; preds = %35, %22, %5
  %61 = phi i32 [ 0, %5 ], [ %16, %22 ], [ %3, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  ret i32 %61
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @radix_tree_gang_lookup_tag_slot(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4 {
  %6 = alloca %struct.radix_tree_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  store i64 0, ptr %7, align 4, !annotation !27
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %48, label %9, !prof !15

9:                                                ; preds = %5
  store i32 0, ptr %6, align 4
  %10 = getelementptr inbounds %struct.radix_tree_iter, ptr %6, i32 0, i32 1
  store i32 %2, ptr %10, align 4
  %11 = or i32 %4, 16
  %12 = getelementptr inbounds %struct.radix_tree_iter, ptr %6, i32 0, i32 2
  %13 = and i32 %4, 32
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %31, %9
  %16 = phi ptr [ null, %9 ], [ %32, %31 ]
  %17 = phi i32 [ 0, %9 ], [ %25, %31 ]
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call ptr @radix_tree_next_chunk(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %11)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %19, %15
  %23 = phi ptr [ %16, %15 ], [ %20, %19 ]
  %24 = getelementptr ptr, ptr %1, i32 %17
  store ptr %23, ptr %24, align 4
  %25 = add nuw i32 %17, 1
  %26 = icmp eq i32 %25, %3
  br i1 %26, label %48, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %12, align 4
  %29 = lshr i32 %28, 1
  store i32 %29, ptr %12, align 4
  %30 = icmp ult i32 %28, 2
  br i1 %30, label %31, label %33, !prof !15

31:                                               ; preds = %41, %40, %36, %27
  %32 = phi ptr [ null, %27 ], [ null, %40 ], [ %39, %36 ], [ %47, %41 ]
  br label %15

33:                                               ; preds = %27
  %34 = and i32 %28, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36, !prof !15

36:                                               ; preds = %33
  %37 = load i32, ptr %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %6, align 4
  %39 = getelementptr ptr, ptr %23, i32 1
  br label %31

40:                                               ; preds = %33
  br i1 %14, label %41, label %31

41:                                               ; preds = %40
  %42 = tail call i32 @llvm.cttz.i32(i32 %29, i1 false) #13, !range !26
  %43 = add nuw nsw i32 %42, 1
  %44 = lshr i32 %29, %42
  store i32 %44, ptr %12, align 4
  %45 = load i32, ptr %6, align 4
  %46 = add i32 %45, %43
  store i32 %46, ptr %6, align 4
  %47 = getelementptr ptr, ptr %23, i32 %43
  br label %31

48:                                               ; preds = %22, %19, %5
  %49 = phi i32 [ 0, %5 ], [ %17, %19 ], [ %3, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @radix_tree_iter_delete(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc zeroext i1 @__radix_tree_delete(ptr noundef %0, ptr noundef %5, ptr noundef %2)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  store i32 %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__radix_tree_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load volatile ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %2 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 2
  %12 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br i1 %6, label %74, label %45

17:                                               ; preds = %3
  br i1 %6, label %39, label %18

18:                                               ; preds = %29, %17
  %19 = phi i32 [ %33, %29 ], [ %11, %17 ]
  %20 = phi ptr [ %35, %29 ], [ %1, %17 ]
  %21 = getelementptr inbounds %struct.xa_node, ptr %20, i32 0, i32 8
  %22 = lshr i32 %19, 5
  %23 = getelementptr i32, ptr %21, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %19, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %150

29:                                               ; preds = %18
  %30 = or i32 %24, %26
  store i32 %30, ptr %23, align 4
  %31 = getelementptr inbounds %struct.xa_node, ptr %20, i32 0, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.xa_node, ptr %20, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %18

37:                                               ; preds = %29
  %38 = load i32, ptr %12, align 4
  br label %39

39:                                               ; preds = %37, %17
  %40 = phi i32 [ %38, %37 ], [ %13, %17 ]
  %41 = and i32 %40, 33554432
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %150

43:                                               ; preds = %39
  %44 = or i32 %40, 33554432
  br label %148

45:                                               ; preds = %65, %16
  %46 = phi i32 [ %68, %65 ], [ %11, %16 ]
  %47 = phi ptr [ %70, %65 ], [ %1, %16 ]
  %48 = getelementptr inbounds %struct.xa_node, ptr %47, i32 0, i32 8
  %49 = lshr i32 %46, 5
  %50 = getelementptr i32, ptr %48, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %46, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %80, label %56

56:                                               ; preds = %45
  %57 = xor i32 %53, -1
  %58 = and i32 %51, %57
  store i32 %58, ptr %50, align 4
  %59 = load i32, ptr %48, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = getelementptr %struct.xa_node, ptr %47, i32 0, i32 8, i32 0, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.xa_node, ptr %47, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.xa_node, ptr %47, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %45

72:                                               ; preds = %65
  %73 = load i32, ptr %12, align 4
  br label %74

74:                                               ; preds = %72, %16
  %75 = phi i32 [ %73, %72 ], [ %13, %16 ]
  %76 = and i32 %75, 33554432
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = and i32 %75, -33554433
  store i32 %79, ptr %12, align 4
  br label %80

80:                                               ; preds = %78, %74, %61, %56, %45
  br i1 %6, label %108, label %81

81:                                               ; preds = %101, %80
  %82 = phi i32 [ %104, %101 ], [ %11, %80 ]
  %83 = phi ptr [ %106, %101 ], [ %1, %80 ]
  %84 = getelementptr %struct.xa_node, ptr %83, i32 0, i32 8, i32 0, i32 1
  %85 = lshr i32 %82, 5
  %86 = getelementptr i32, ptr %84, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %82, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %87, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %81
  %93 = xor i32 %89, -1
  %94 = and i32 %87, %93
  store i32 %94, ptr %86, align 4
  %95 = load i32, ptr %84, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %114

97:                                               ; preds = %92
  %98 = getelementptr %struct.xa_node, ptr %83, i32 0, i32 8, i32 0, i32 1, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.xa_node, ptr %83, i32 0, i32 1
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.xa_node, ptr %83, i32 0, i32 4
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %81

108:                                              ; preds = %101, %80
  %109 = load i32, ptr %12, align 4
  %110 = and i32 %109, 67108864
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = and i32 %109, -67108865
  store i32 %113, ptr %12, align 4
  br label %114

114:                                              ; preds = %112, %108, %97, %92, %81
  br i1 %6, label %142, label %115

115:                                              ; preds = %135, %114
  %116 = phi i32 [ %138, %135 ], [ %11, %114 ]
  %117 = phi ptr [ %140, %135 ], [ %1, %114 ]
  %118 = getelementptr %struct.xa_node, ptr %117, i32 0, i32 8, i32 0, i32 2
  %119 = lshr i32 %116, 5
  %120 = getelementptr i32, ptr %118, i32 %119
  %121 = load volatile i32, ptr %120, align 4
  %122 = and i32 %116, 31
  %123 = shl nuw i32 1, %122
  %124 = and i32 %121, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %150, label %126

126:                                              ; preds = %115
  %127 = xor i32 %123, -1
  %128 = and i32 %121, %127
  store i32 %128, ptr %120, align 4
  %129 = load i32, ptr %118, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %126
  %132 = getelementptr %struct.xa_node, ptr %117, i32 0, i32 8, i32 0, i32 2, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.xa_node, ptr %117, i32 0, i32 1
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = getelementptr inbounds %struct.xa_node, ptr %117, i32 0, i32 4
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %115

142:                                              ; preds = %135, %114
  %143 = load i32, ptr %12, align 4
  %144 = and i32 %143, 134217728
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = and i32 %143, -134217729
  br label %148

148:                                              ; preds = %146, %43
  %149 = phi i32 [ %147, %146 ], [ %44, %43 ]
  store i32 %149, ptr %12, align 4
  br label %150

150:                                              ; preds = %148, %142, %131, %126, %115, %39, %18
  br i1 %6, label %151, label %152

151:                                              ; preds = %150
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store volatile ptr null, ptr %2, align 4
  br label %162

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 2
  %154 = load i8, ptr %153, align 2
  %155 = add i8 %154, -1
  store i8 %155, ptr %153, align 2
  %156 = getelementptr inbounds %struct.xa_node, ptr %1, i32 0, i32 3
  %157 = load i8, ptr %156, align 1
  %158 = trunc i32 %5 to i8
  %159 = and i8 %158, 1
  %160 = sub i8 %157, %159
  store i8 %160, ptr %156, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store volatile ptr null, ptr %2, align 4
  %161 = tail call fastcc zeroext i1 @delete_node(ptr noundef %0, ptr noundef nonnull %1)
  br label %162

162:                                              ; preds = %152, %151
  %163 = phi i1 [ %161, %152 ], [ false, %151 ]
  ret i1 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @radix_tree_delete_item(ptr noundef %0, i32 noundef %1, ptr noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %5 = load volatile ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %14, label %23, !prof !9

9:                                                ; preds = %44
  %10 = load volatile ptr, ptr %4, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = and i32 %11, 3
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %23, !prof !9

14:                                               ; preds = %9, %3
  %15 = phi i32 [ %11, %9 ], [ %6, %3 ]
  %16 = and i32 %15, -3
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = shl i32 64, %19
  %21 = add i32 %20, -1
  %22 = icmp ult i32 %21, %1
  br i1 %22, label %87, label %30

23:                                               ; preds = %9, %3
  %24 = phi ptr [ %5, %3 ], [ %10, %9 ]
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %49, label %87

26:                                               ; preds = %44
  %27 = ptrtoint ptr %39 to i32
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %45

30:                                               ; preds = %26, %14
  %31 = phi i32 [ %27, %26 ], [ %15, %14 ]
  %32 = and i32 %31, -3
  %33 = inttoptr i32 %32 to ptr
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  %36 = lshr i32 %1, %35
  %37 = and i32 %36, 63
  %38 = getelementptr %struct.xa_node, ptr %33, i32 0, i32 7, i32 %37
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, inttoptr (i32 1026 to ptr)
  %41 = xor i1 %40, true
  %42 = icmp eq i8 %34, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  br i1 %40, label %9, label %26

45:                                               ; preds = %30, %26
  %46 = inttoptr i32 %32 to ptr
  %47 = getelementptr inbounds %struct.xa_node, ptr %46, i32 0, i32 7
  %48 = getelementptr ptr, ptr %47, i32 %37
  br label %49

49:                                               ; preds = %45, %23
  %50 = phi ptr [ %24, %23 ], [ %39, %45 ]
  %51 = phi ptr [ null, %23 ], [ %46, %45 ]
  %52 = phi ptr [ %4, %23 ], [ %48, %45 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54

54:                                               ; preds = %49
  %55 = icmp eq ptr %50, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %56
  %62 = icmp eq ptr %51, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %61
  %64 = ptrtoint ptr %52 to i32
  %65 = getelementptr inbounds %struct.xa_node, ptr %51, i32 0, i32 7
  %66 = ptrtoint ptr %65 to i32
  %67 = sub i32 %64, %66
  %68 = ashr exact i32 %67, 2
  %69 = getelementptr inbounds %struct.xa_node, ptr %51, i32 0, i32 8
  %70 = lshr i32 %68, 5
  %71 = getelementptr i32, ptr %69, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %68, 31
  %74 = lshr i32 %72, %73
  %75 = and i32 %74, 1
  br label %78

76:                                               ; preds = %61
  %77 = and i32 %58, 33554432
  br label %78

78:                                               ; preds = %76, %63
  %79 = phi i32 [ %75, %63 ], [ %77, %76 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78, %54
  %82 = icmp eq ptr %2, null
  %83 = icmp eq ptr %50, %2
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = tail call fastcc zeroext i1 @__radix_tree_delete(ptr noundef %0, ptr noundef %51, ptr noundef nonnull %52)
  br label %87

87:                                               ; preds = %85, %81, %78, %56, %49, %23, %14
  %88 = phi ptr [ %50, %85 ], [ null, %49 ], [ null, %78 ], [ null, %56 ], [ null, %81 ], [ null, %23 ], [ null, %14 ]
  ret ptr %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @radix_tree_delete(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @radix_tree_delete_item(ptr noundef %0, i32 noundef %1, ptr noundef null)
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @radix_tree_tagged(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %1, 25
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @idr_preload(i32 noundef %0) #0 {
  %2 = and i32 %0, -4194305
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #10, !srcloc !11
  %6 = add i32 %5, ptrtoint (ptr @radix_tree_preloads to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.radix_tree_preload, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp ult i32 %9, 11
  br i1 %10, label %11, label %39

11:                                               ; preds = %36, %1
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #10, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %15 = load ptr, ptr @radix_tree_node_cachep, align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %15, i32 noundef %2) #13
  %17 = icmp eq ptr %16, null
  tail call void asm sideeffect "", "~{memory}"() #13
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #10
  br i1 %17, label %39, label %21

21:                                               ; preds = %11
  %22 = add i32 %20, ptrtoint (ptr @radix_tree_preloads to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.radix_tree_preload, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 11
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.radix_tree_preload, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.xa_node, ptr %16, i32 0, i32 4
  store ptr %29, ptr %30, align 4
  store ptr %16, ptr %28, align 4
  %31 = load i32, ptr %24, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %24, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load ptr, ptr @radix_tree_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef nonnull %16) #13
  %35 = load i32, ptr %24, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi i32 [ %35, %33 ], [ %32, %27 ]
  %38 = icmp ult i32 %37, 11
  br i1 %38, label %11, label %39

39:                                               ; preds = %36, %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @idr_get_free(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %132, %4
  %10 = phi i32 [ 0, %4 ], [ %137, %132 ]
  %11 = phi i32 [ %7, %4 ], [ %127, %132 ]
  %12 = phi ptr [ %5, %4 ], [ %56, %132 ]
  %13 = load volatile ptr, ptr %5, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %25, !prof !9

17:                                               ; preds = %9
  %18 = and i32 %14, -3
  %19 = inttoptr i32 %18 to ptr
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = shl i32 64, %21
  %23 = add i32 %22, -1
  %24 = add nuw nsw i32 %21, 6
  br label %25

25:                                               ; preds = %17, %9
  %26 = phi i32 [ %23, %17 ], [ 0, %9 ]
  %27 = phi i32 [ %24, %17 ], [ 0, %9 ]
  %28 = load i32, ptr %8, align 4
  %29 = and i32 %28, 33554432
  %30 = icmp eq i32 %29, 0
  %31 = add i32 %26, 1
  %32 = tail call i32 @llvm.umax.i32(i32 %11, i32 %31)
  %33 = select i1 %30, i32 %32, i32 %11
  %34 = icmp ugt i32 %33, %3
  br i1 %34, label %197, label %35

35:                                               ; preds = %25
  %36 = icmp ugt i32 %33, %26
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = tail call fastcc i32 @radix_tree_extend(ptr noundef %0, i32 noundef %2, i32 noundef %33, i32 noundef %27)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = inttoptr i32 %38 to ptr
  br label %197

42:                                               ; preds = %37
  %43 = load volatile ptr, ptr %5, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi ptr [ %43, %42 ], [ %13, %35 ]
  %46 = phi i32 [ %38, %42 ], [ %27, %35 ]
  %47 = icmp eq i32 %33, 0
  %48 = icmp eq i32 %46, 0
  %49 = select i1 %47, i1 %48, i1 false
  %50 = select i1 %49, i32 6, i32 %46
  %51 = select i1 %49, i32 0, i32 %33
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 %51, ptr %1, align 4
  br label %166

54:                                               ; preds = %152, %44
  %55 = phi ptr [ %157, %152 ], [ null, %44 ]
  %56 = phi ptr [ %158, %152 ], [ %12, %44 ]
  %57 = phi i32 [ %156, %152 ], [ %51, %44 ]
  %58 = phi i32 [ %155, %152 ], [ %50, %44 ]
  %59 = phi i32 [ %154, %152 ], [ %10, %44 ]
  %60 = phi ptr [ %153, %152 ], [ %45, %44 ]
  %61 = add i32 %58, -6
  %62 = icmp eq ptr %60, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %54
  %64 = tail call fastcc ptr @radix_tree_node_alloc(i32 noundef %2, ptr noundef %55, ptr noundef %0, i32 noundef %61, i32 noundef %59, i32 noundef 0)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %197, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.xa_node, ptr %64, i32 0, i32 8
  store i64 -1, ptr %67, align 4
  %68 = ptrtoint ptr %64 to i32
  %69 = or i32 %68, 2
  %70 = inttoptr i32 %69 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  store volatile ptr %70, ptr %56, align 4
  %71 = icmp eq ptr %55, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.xa_node, ptr %55, i32 0, i32 2
  %74 = load i8, ptr %73, align 2
  %75 = add i8 %74, 1
  store i8 %75, ptr %73, align 2
  br label %80

76:                                               ; preds = %54
  %77 = ptrtoint ptr %60 to i32
  %78 = and i32 %77, 3
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %160

80:                                               ; preds = %76, %72, %66
  %81 = phi i32 [ %77, %76 ], [ %68, %66 ], [ %68, %72 ]
  %82 = and i32 %81, -3
  %83 = inttoptr i32 %82 to ptr
  %84 = load i8, ptr %83, align 4
  %85 = zext i8 %84 to i32
  %86 = lshr i32 %57, %85
  %87 = and i32 %86, 63
  %88 = getelementptr %struct.xa_node, ptr %83, i32 0, i32 7, i32 %87
  %89 = load volatile ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.xa_node, ptr %83, i32 0, i32 8
  %91 = lshr i32 %87, 5
  %92 = getelementptr i32, ptr %90, i32 %91
  %93 = load volatile i32, ptr %92, align 4
  %94 = and i32 %86, 31
  %95 = shl nuw i32 1, %94
  %96 = and i32 %95, %93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %152

98:                                               ; preds = %80
  %99 = add nuw nsw i32 %87, 1
  %100 = icmp eq i32 %87, 63
  br i1 %100, label %122, label %101

101:                                              ; preds = %98
  %102 = lshr i32 %99, 5
  %103 = getelementptr i32, ptr %90, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %99, 31
  %106 = lshr i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = tail call i32 @llvm.cttz.i32(i32 %106, i1 true) #13, !range !26
  %110 = add nuw nsw i32 %109, %99
  br label %122

111:                                              ; preds = %101
  %112 = add nuw nsw i32 %87, 33
  %113 = and i32 %112, 96
  %114 = icmp ult i32 %113, 64
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = getelementptr i32, ptr %103, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = tail call i32 @llvm.cttz.i32(i32 %117, i1 true) #13, !range !26
  %121 = or i32 %120, %113
  br label %122

122:                                              ; preds = %119, %115, %111, %108, %98
  %123 = phi i32 [ 64, %98 ], [ %121, %119 ], [ %110, %108 ], [ 64, %111 ], [ 64, %115 ]
  %124 = shl i32 -64, %85
  %125 = and i32 %124, %57
  %126 = shl i32 %123, %85
  %127 = add i32 %126, %125
  %128 = add i32 %127, -1
  %129 = icmp ult i32 %128, %3
  br i1 %129, label %130, label %197

130:                                              ; preds = %122
  %131 = icmp eq i32 %123, 64
  br i1 %131, label %132, label %146

132:                                              ; preds = %141, %130
  %133 = phi ptr [ %139, %141 ], [ %83, %130 ]
  %134 = getelementptr inbounds %struct.xa_node, ptr %133, i32 0, i32 1
  %135 = load i8, ptr %134, align 1
  %136 = zext i8 %135 to i32
  %137 = add nuw nsw i32 %136, 1
  %138 = getelementptr inbounds %struct.xa_node, ptr %133, i32 0, i32 4
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %9, label %141

141:                                              ; preds = %132
  %142 = icmp eq i32 %137, 64
  br i1 %142, label %132, label %143

143:                                              ; preds = %141
  %144 = load i8, ptr %139, align 4
  %145 = zext i8 %144 to i32
  br label %146

146:                                              ; preds = %143, %130
  %147 = phi i32 [ %137, %143 ], [ %123, %130 ]
  %148 = phi i32 [ %145, %143 ], [ %61, %130 ]
  %149 = phi ptr [ %139, %143 ], [ %83, %130 ]
  %150 = getelementptr %struct.xa_node, ptr %149, i32 0, i32 7, i32 %147
  %151 = load volatile ptr, ptr %150, align 4
  br label %152

152:                                              ; preds = %146, %80
  %153 = phi ptr [ %151, %146 ], [ %89, %80 ]
  %154 = phi i32 [ %147, %146 ], [ %87, %80 ]
  %155 = phi i32 [ %148, %146 ], [ %61, %80 ]
  %156 = phi i32 [ %127, %146 ], [ %57, %80 ]
  %157 = phi ptr [ %149, %146 ], [ %83, %80 ]
  %158 = getelementptr %struct.xa_node, ptr %157, i32 0, i32 7, i32 %154
  %159 = icmp eq i32 %155, 0
  br i1 %159, label %160, label %54

160:                                              ; preds = %152, %76
  %161 = phi i32 [ %154, %152 ], [ %59, %76 ]
  %162 = phi i32 [ %156, %152 ], [ %57, %76 ]
  %163 = phi ptr [ %158, %152 ], [ %56, %76 ]
  %164 = phi ptr [ %157, %152 ], [ %55, %76 ]
  store i32 %162, ptr %1, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %160, %53
  %167 = phi ptr [ %12, %53 ], [ %163, %160 ]
  store i32 1, ptr %6, align 4
  %168 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3
  store ptr null, ptr %168, align 4
  %169 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2
  store i32 1, ptr %169, align 4
  br label %197

170:                                              ; preds = %160
  %171 = load i8, ptr %164, align 4
  %172 = zext i8 %171 to i32
  %173 = shl i32 64, %172
  %174 = add i32 %173, -1
  %175 = or i32 %174, %162
  %176 = tail call i32 @llvm.umin.i32(i32 %175, i32 %3)
  %177 = add i32 %176, 1
  store i32 %177, ptr %6, align 4
  %178 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 3
  store ptr %164, ptr %178, align 4
  %179 = and i32 %161, 31
  %180 = lshr i32 %161, 5
  %181 = getelementptr inbounds %struct.xa_node, ptr %164, i32 0, i32 8
  %182 = getelementptr [3 x [2 x i32]], ptr %181, i32 0, i32 0, i32 %180
  %183 = load i32, ptr %182, align 4
  %184 = lshr i32 %183, %179
  %185 = getelementptr inbounds %struct.radix_tree_iter, ptr %1, i32 0, i32 2
  store i32 %184, ptr %185, align 4
  %186 = icmp ult i32 %161, 32
  br i1 %186, label %187, label %197

187:                                              ; preds = %170
  %188 = icmp eq i32 %179, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %187
  %190 = getelementptr %struct.xa_node, ptr %164, i32 0, i32 8, i32 0, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  %192 = sub nuw nsw i32 32, %179
  %193 = shl i32 %191, %192
  %194 = or i32 %193, %184
  store i32 %194, ptr %185, align 4
  br label %195

195:                                              ; preds = %189, %187
  %196 = add i32 %162, 32
  store i32 %196, ptr %6, align 4
  br label %197

197:                                              ; preds = %195, %170, %166, %122, %63, %40, %25
  %198 = phi ptr [ %41, %40 ], [ %167, %166 ], [ %163, %170 ], [ %163, %195 ], [ inttoptr (i32 -28 to ptr), %122 ], [ inttoptr (i32 -12 to ptr), %63 ], [ inttoptr (i32 -28 to ptr), %25 ]
  ret ptr %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @radix_tree_extend(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi i32 [ %3, %4 ], [ %10, %5 ]
  %7 = shl i32 64, %6
  %8 = add i32 %7, -1
  %9 = icmp ult i32 %8, %2
  %10 = add i32 %6, 6
  br i1 %9, label %5, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 33554436
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %88

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  br label %22

22:                                               ; preds = %81, %20
  %23 = phi ptr [ %13, %20 ], [ %85, %81 ]
  %24 = phi i32 [ %3, %20 ], [ %86, %81 ]
  %25 = tail call fastcc ptr @radix_tree_node_alloc(i32 noundef %1, ptr noundef null, ptr noundef %0, i32 noundef %24, i32 noundef 0, i32 noundef 1)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %88, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %21, align 4
  %29 = and i32 %28, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = and i32 %28, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %40

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 8
  store i64 -1, ptr %35, align 4
  %36 = load i32, ptr %21, align 4
  %37 = and i32 %36, 33554432
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  store i32 -2, ptr %35, align 4
  br label %60

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 8
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 1
  store i32 %43, ptr %41, align 4
  %44 = load i32, ptr %21, align 4
  br label %45

45:                                               ; preds = %40, %31
  %46 = phi i32 [ %28, %31 ], [ %44, %40 ]
  %47 = and i32 %46, 67108864
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.xa_node, ptr %25, i32 0, i32 8, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = load i32, ptr %21, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i32 [ %53, %49 ], [ %46, %45 ]
  %56 = and i32 %55, 134217728
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.xa_node, ptr %25, i32 0, i32 8, i32 0, i32 2
  br label %60

60:                                               ; preds = %58, %39
  %61 = phi ptr [ %59, %58 ], [ %21, %39 ]
  %62 = phi i32 [ 1, %58 ], [ 33554432, %39 ]
  %63 = load i32, ptr %61, align 4
  %64 = or i32 %63, %62
  store i32 %64, ptr %61, align 4
  br label %65

65:                                               ; preds = %60, %54, %34
  %66 = icmp ugt i32 %24, 32
  br i1 %66, label %67, label %68, !prof !15

67:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #13, !srcloc !29
  unreachable

68:                                               ; preds = %65
  %69 = ptrtoint ptr %23 to i32
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = and i32 %69, -3
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.xa_node, ptr %74, i32 0, i32 4
  store ptr %25, ptr %75, align 4
  br label %81

76:                                               ; preds = %68
  %77 = and i32 %69, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 3
  store i8 1, ptr %80, align 1
  br label %81

81:                                               ; preds = %79, %76, %72
  %82 = getelementptr inbounds %struct.xa_node, ptr %25, i32 0, i32 7
  store ptr %23, ptr %82, align 4
  %83 = ptrtoint ptr %25 to i32
  %84 = or i32 %83, 2
  %85 = inttoptr i32 %84 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !30
  store volatile ptr %85, ptr %12, align 4
  %86 = add nuw nsw i32 %24, 6
  %87 = icmp ugt i32 %86, %6
  br i1 %87, label %88, label %22

88:                                               ; preds = %81, %22, %15
  %89 = phi i32 [ %10, %15 ], [ -12, %22 ], [ %10, %81 ]
  ret i32 %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @radix_tree_node_alloc(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = and i32 %0, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #13
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 15728640
  %14 = load volatile i32, ptr %11, align 4
  %15 = and i32 %14, 983040
  %16 = or i32 %15, %13
  %17 = load volatile i32, ptr %11, align 4
  %18 = and i32 %17, 65280
  %19 = or i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %9
  %22 = load ptr, ptr @radix_tree_node_cachep, align 4
  %23 = or i32 %0, 8192
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %22, i32 noundef %23) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #10, !srcloc !11
  %30 = add i32 %29, ptrtoint (ptr @radix_tree_preloads to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.radix_tree_preload, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.radix_tree_preload, ptr %31, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.xa_node, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  store ptr %39, ptr %36, align 4
  %40 = add i32 %33, -1
  store i32 %40, ptr %32, align 4
  br label %44

41:                                               ; preds = %9, %6
  %42 = load ptr, ptr @radix_tree_node_cachep, align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %42, i32 noundef %0) #13
  br label %44

44:                                               ; preds = %41, %35, %21
  %45 = phi ptr [ %43, %41 ], [ %24, %21 ], [ %37, %35 ]
  %46 = ptrtoint ptr %45 to i32
  %47 = and i32 %46, 3
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %50, !prof !15

49:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/radix-tree.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 276, 0\0A.popsection", ""() #13, !srcloc !31
  unreachable

50:                                               ; preds = %44
  %51 = icmp eq ptr %45, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %50
  %53 = trunc i32 %3 to i8
  store i8 %53, ptr %45, align 4
  %54 = trunc i32 %4 to i8
  %55 = getelementptr inbounds %struct.xa_node, ptr %45, i32 0, i32 1
  store i8 %54, ptr %55, align 1
  %56 = trunc i32 %5 to i8
  %57 = getelementptr inbounds %struct.xa_node, ptr %45, i32 0, i32 2
  store i8 %56, ptr %57, align 2
  %58 = getelementptr inbounds %struct.xa_node, ptr %45, i32 0, i32 3
  store i8 0, ptr %58, align 1
  %59 = getelementptr inbounds %struct.xa_node, ptr %45, i32 0, i32 4
  store ptr %1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.xa_node, ptr %45, i32 0, i32 5
  store ptr %2, ptr %60, align 4
  br label %61

61:                                               ; preds = %52, %50, %26
  %62 = phi ptr [ null, %50 ], [ %45, %52 ], [ null, %26 ]
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @idr_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %50

7:                                                ; preds = %1
  %8 = and i32 %4, -3
  %9 = inttoptr i32 %8 to ptr
  br label %10

10:                                               ; preds = %27, %7
  %11 = phi ptr [ %9, %7 ], [ %28, %27 ]
  %12 = phi i32 [ 0, %7 ], [ %29, %27 ]
  %13 = getelementptr %struct.xa_node, ptr %11, i32 0, i32 7, i32 %12
  %14 = load volatile ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 2
  %18 = icmp ugt ptr %14, inttoptr (i32 4096 to ptr)
  %19 = and i1 %18, %17
  br i1 %19, label %21, label %20

20:                                               ; preds = %21, %10
  br label %30

21:                                               ; preds = %10
  %22 = load i8, ptr %11, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %20, label %24

24:                                               ; preds = %21
  %25 = and i32 %15, -3
  %26 = inttoptr i32 %25 to ptr
  br label %27

27:                                               ; preds = %30, %24
  %28 = phi ptr [ %26, %24 ], [ %31, %30 ]
  %29 = phi i32 [ 0, %24 ], [ %33, %30 ]
  br label %10

30:                                               ; preds = %48, %20
  %31 = phi ptr [ %40, %48 ], [ %11, %20 ]
  %32 = phi i32 [ %38, %48 ], [ %12, %20 ]
  %33 = add i32 %32, 1
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %27

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.xa_node, ptr %31, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.xa_node, ptr %31, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.xa_node, ptr %31, i32 0, i32 6
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp ne ptr %42, %41
  %44 = load i1, ptr @radix_tree_free_nodes.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !15

47:                                               ; preds = %35
  store i1 true, ptr @radix_tree_free_nodes.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 671, i32 noundef 9, ptr noundef null) #13
  br label %48

48:                                               ; preds = %47, %35
  tail call void @call_rcu(ptr noundef %41, ptr noundef nonnull @radix_tree_node_rcu_free) #13
  %49 = icmp eq ptr %31, %9
  br i1 %49, label %50, label %30

50:                                               ; preds = %48, %1
  store ptr null, ptr %2, align 4
  %51 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 33554432
  store i32 %53, ptr %51, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @radix_tree_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 300, i32 noundef 0, i32 noundef 393216, ptr noundef nonnull @radix_tree_node_ctor) #13
  store ptr %1, ptr @radix_tree_node_cachep, align 4
  %2 = tail call i32 @__cpuhp_setup_state(i32 noundef 32, ptr noundef nonnull @.str.2, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @radix_tree_cpu_dead, i1 noundef zeroext false) #13
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5, !prof !15

4:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1606, i32 noundef 9, ptr noundef null) #13
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @radix_tree_node_ctor(ptr noundef %0) #9 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(300) %0, i8 0, i32 300, i1 false)
  %2 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 6
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.xa_node, ptr %0, i32 0, i32 6, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @radix_tree_cpu_dead(i32 noundef %0) #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @radix_tree_preloads to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.radix_tree_preload, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.radix_tree_preload, ptr %5, i32 0, i32 2
  br label %11

11:                                               ; preds = %11, %9
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.xa_node, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %10, align 4
  %15 = load ptr, ptr @radix_tree_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %12) #13
  %16 = load i32, ptr %6, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2151313881}
!11 = !{i64 340753}
!12 = !{i64 2151316629}
!13 = !{i64 2151316857}
!14 = !{i64 2151321646}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2151374089, i64 2151374570, i64 2151374126, i64 2151374182, i64 2151374216, i64 2151374240, i64 2151374281, i64 2151374302, i64 2151374330, i64 2151374364}
!17 = !{i64 2151359853}
!18 = !{i64 2151371543}
!19 = !{i64 2151375120, i64 2151375601, i64 2151375157, i64 2151375213, i64 2151375247, i64 2151375271, i64 2151375312, i64 2151375333, i64 2151375361, i64 2151375395}
!20 = !{i64 2151376151, i64 2151376632, i64 2151376188, i64 2151376244, i64 2151376278, i64 2151376302, i64 2151376343, i64 2151376364, i64 2151376392, i64 2151376426}
!21 = !{i64 2151377182, i64 2151377663, i64 2151377219, i64 2151377275, i64 2151377309, i64 2151377333, i64 2151377374, i64 2151377395, i64 2151377423, i64 2151377457}
!22 = !{i64 2151378203, i64 2151378684, i64 2151378240, i64 2151378296, i64 2151378330, i64 2151378354, i64 2151378395, i64 2151378416, i64 2151378444, i64 2151378478}
!23 = !{i64 2151387563}
!24 = !{i64 2151395723, i64 2151396204, i64 2151395760, i64 2151395816, i64 2151395850, i64 2151395874, i64 2151395915, i64 2151395936, i64 2151395964, i64 2151395998}
!25 = !{i64 2151396716, i64 2151397197, i64 2151396753, i64 2151396809, i64 2151396843, i64 2151396867, i64 2151396908, i64 2151396929, i64 2151396957, i64 2151396991}
!26 = !{i32 0, i32 33}
!27 = !{!"auto-init"}
!28 = !{i64 2151451628}
!29 = !{i64 2151331063, i64 2151331544, i64 2151331100, i64 2151331156, i64 2151331190, i64 2151331214, i64 2151331255, i64 2151331276, i64 2151331304, i64 2151331338}
!30 = !{i64 2151336892}
!31 = !{i64 2151307351, i64 2151307832, i64 2151307388, i64 2151307444, i64 2151307478, i64 2151307502, i64 2151307543, i64 2151307564, i64 2151307592, i64 2151307626}
