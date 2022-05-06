; ModuleID = '/llk/IR/lib/sbitmap.c_pt.bc'
source_filename = "../lib/sbitmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_init_node\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_resize\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_get:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_get\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_get_shallow:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_get_shallow\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_get_shallow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_any_bit_set:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_any_bit_set\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_any_bit_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_weight:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_weight\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_weight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_show:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_show\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_bitmap_show:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_bitmap_show\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_bitmap_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_init_node\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_init_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_recalculate_wake_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_recalculate_wake_batch\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_recalculate_wake_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_resize\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_resize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sbitmap_queue_get:\09\09\09\09\09"
module asm "\09.asciz \09\22__sbitmap_queue_get\22\09\09\09\09\09"
module asm "__kstrtabns___sbitmap_queue_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sbitmap_queue_get_shallow:\09\09\09\09\09"
module asm "\09.asciz \09\22__sbitmap_queue_get_shallow\22\09\09\09\09\09"
module asm "__kstrtabns___sbitmap_queue_get_shallow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_min_shallow_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_min_shallow_depth\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_min_shallow_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_wake_up\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_wake_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_clear\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_wake_all:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_wake_all\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_wake_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_queue_show:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_queue_show\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_queue_show:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_add_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_del_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_del_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_del_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_prepare_to_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_prepare_to_wait\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_prepare_to_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbitmap_finish_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22sbitmap_finish_wait\22\09\09\09\09\09"
module asm "__kstrtabns_sbitmap_finish_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.sbitmap_word = type { i32, [60 x i8], i32, [60 x i8], i32, [60 x i8] }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.atomic_t = type { i32 }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [48 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sbq_wait = type { ptr, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_sbitmap_init_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_init_node = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_init_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_init_node to i32), ptr @__kstrtab_sbitmap_init_node, ptr @__kstrtabns_sbitmap_init_node }, section "___ksymtab_gpl+sbitmap_init_node", align 4
@__kstrtab_sbitmap_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_resize to i32), ptr @__kstrtab_sbitmap_resize, ptr @__kstrtabns_sbitmap_resize }, section "___ksymtab_gpl+sbitmap_resize", align 4
@sbitmap_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [14 x i8] c"lib/sbitmap.c\00", align 1
@__kstrtab_sbitmap_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_get = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_get to i32), ptr @__kstrtab_sbitmap_get, ptr @__kstrtabns_sbitmap_get }, section "___ksymtab_gpl+sbitmap_get", align 4
@sbitmap_get_shallow.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sbitmap_get_shallow = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_get_shallow = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_get_shallow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_get_shallow to i32), ptr @__kstrtab_sbitmap_get_shallow, ptr @__kstrtabns_sbitmap_get_shallow }, section "___ksymtab_gpl+sbitmap_get_shallow", align 4
@__kstrtab_sbitmap_any_bit_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_any_bit_set = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_any_bit_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_any_bit_set to i32), ptr @__kstrtab_sbitmap_any_bit_set, ptr @__kstrtabns_sbitmap_any_bit_set }, section "___ksymtab_gpl+sbitmap_any_bit_set", align 4
@__kstrtab_sbitmap_weight = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_weight = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_weight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_weight to i32), ptr @__kstrtab_sbitmap_weight, ptr @__kstrtabns_sbitmap_weight }, section "___ksymtab_gpl+sbitmap_weight", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"depth=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"busy=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cleared=%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"bits_per_word=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"map_nr=%u\0A\00", align 1
@__kstrtab_sbitmap_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_show = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_show to i32), ptr @__kstrtab_sbitmap_show, ptr @__kstrtabns_sbitmap_show }, section "___ksymtab_gpl+sbitmap_show", align 4
@__kstrtab_sbitmap_bitmap_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_bitmap_show = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_bitmap_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_bitmap_show to i32), ptr @__kstrtab_sbitmap_bitmap_show, ptr @__kstrtabns_sbitmap_bitmap_show }, section "___ksymtab_gpl+sbitmap_bitmap_show", align 4
@sbitmap_queue_init_node.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"&sbq->ws[i].wait\00", align 1
@__kstrtab_sbitmap_queue_init_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_init_node = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_init_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_init_node to i32), ptr @__kstrtab_sbitmap_queue_init_node, ptr @__kstrtabns_sbitmap_queue_init_node }, section "___ksymtab_gpl+sbitmap_queue_init_node", align 4
@__kstrtab_sbitmap_queue_recalculate_wake_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_recalculate_wake_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_recalculate_wake_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_recalculate_wake_batch to i32), ptr @__kstrtab_sbitmap_queue_recalculate_wake_batch, ptr @__kstrtabns_sbitmap_queue_recalculate_wake_batch }, section "___ksymtab_gpl+sbitmap_queue_recalculate_wake_batch", align 4
@__kstrtab_sbitmap_queue_resize = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_resize = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_resize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_resize to i32), ptr @__kstrtab_sbitmap_queue_resize, ptr @__kstrtabns_sbitmap_queue_resize }, section "___ksymtab_gpl+sbitmap_queue_resize", align 4
@__kstrtab___sbitmap_queue_get = external dso_local constant [0 x i8], align 1
@__kstrtabns___sbitmap_queue_get = external dso_local constant [0 x i8], align 1
@__ksymtab___sbitmap_queue_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sbitmap_queue_get to i32), ptr @__kstrtab___sbitmap_queue_get, ptr @__kstrtabns___sbitmap_queue_get }, section "___ksymtab_gpl+__sbitmap_queue_get", align 4
@__sbitmap_queue_get_shallow.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___sbitmap_queue_get_shallow = external dso_local constant [0 x i8], align 1
@__kstrtabns___sbitmap_queue_get_shallow = external dso_local constant [0 x i8], align 1
@__ksymtab___sbitmap_queue_get_shallow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sbitmap_queue_get_shallow to i32), ptr @__kstrtab___sbitmap_queue_get_shallow, ptr @__kstrtabns___sbitmap_queue_get_shallow }, section "___ksymtab_gpl+__sbitmap_queue_get_shallow", align 4
@__kstrtab_sbitmap_queue_min_shallow_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_min_shallow_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_min_shallow_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_min_shallow_depth to i32), ptr @__kstrtab_sbitmap_queue_min_shallow_depth, ptr @__kstrtabns_sbitmap_queue_min_shallow_depth }, section "___ksymtab_gpl+sbitmap_queue_min_shallow_depth", align 4
@__kstrtab_sbitmap_queue_wake_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_wake_up = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_wake_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_wake_up to i32), ptr @__kstrtab_sbitmap_queue_wake_up, ptr @__kstrtabns_sbitmap_queue_wake_up }, section "___ksymtab_gpl+sbitmap_queue_wake_up", align 4
@__kstrtab_sbitmap_queue_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_clear to i32), ptr @__kstrtab_sbitmap_queue_clear, ptr @__kstrtabns_sbitmap_queue_clear }, section "___ksymtab_gpl+sbitmap_queue_clear", align 4
@__kstrtab_sbitmap_queue_wake_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_wake_all = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_wake_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_wake_all to i32), ptr @__kstrtab_sbitmap_queue_wake_all, ptr @__kstrtabns_sbitmap_queue_wake_all }, section "___ksymtab_gpl+sbitmap_queue_wake_all", align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"alloc_hint={\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"wake_batch=%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"wake_index=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"ws_active=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"ws={\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"\09{.wait_cnt=%d, .wait=%s},\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"round_robin=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"min_shallow_depth=%u\0A\00", align 1
@__kstrtab_sbitmap_queue_show = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_queue_show = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_queue_show = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_queue_show to i32), ptr @__kstrtab_sbitmap_queue_show, ptr @__kstrtabns_sbitmap_queue_show }, section "___ksymtab_gpl+sbitmap_queue_show", align 4
@__kstrtab_sbitmap_add_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_add_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_add_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_add_wait_queue to i32), ptr @__kstrtab_sbitmap_add_wait_queue, ptr @__kstrtabns_sbitmap_add_wait_queue }, section "___ksymtab_gpl+sbitmap_add_wait_queue", align 4
@__kstrtab_sbitmap_del_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_del_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_del_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_del_wait_queue to i32), ptr @__kstrtab_sbitmap_del_wait_queue, ptr @__kstrtabns_sbitmap_del_wait_queue }, section "___ksymtab_gpl+sbitmap_del_wait_queue", align 4
@__kstrtab_sbitmap_prepare_to_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_prepare_to_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_prepare_to_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_prepare_to_wait to i32), ptr @__kstrtab_sbitmap_prepare_to_wait, ptr @__kstrtabns_sbitmap_prepare_to_wait }, section "___ksymtab_gpl+sbitmap_prepare_to_wait", align 4
@__kstrtab_sbitmap_finish_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbitmap_finish_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_sbitmap_finish_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbitmap_finish_wait to i32), ptr @__kstrtab_sbitmap_finish_wait, ptr @__kstrtabns_sbitmap_finish_wait }, section "___ksymtab_gpl+sbitmap_finish_wait", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"%08x:\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab___sbitmap_queue_get, ptr @__ksymtab___sbitmap_queue_get_shallow, ptr @__ksymtab_sbitmap_add_wait_queue, ptr @__ksymtab_sbitmap_any_bit_set, ptr @__ksymtab_sbitmap_bitmap_show, ptr @__ksymtab_sbitmap_del_wait_queue, ptr @__ksymtab_sbitmap_finish_wait, ptr @__ksymtab_sbitmap_get, ptr @__ksymtab_sbitmap_get_shallow, ptr @__ksymtab_sbitmap_init_node, ptr @__ksymtab_sbitmap_prepare_to_wait, ptr @__ksymtab_sbitmap_queue_clear, ptr @__ksymtab_sbitmap_queue_init_node, ptr @__ksymtab_sbitmap_queue_min_shallow_depth, ptr @__ksymtab_sbitmap_queue_recalculate_wake_batch, ptr @__ksymtab_sbitmap_queue_resize, ptr @__ksymtab_sbitmap_queue_show, ptr @__ksymtab_sbitmap_queue_wake_all, ptr @__ksymtab_sbitmap_queue_wake_up, ptr @__ksymtab_sbitmap_resize, ptr @__ksymtab_sbitmap_show, ptr @__ksymtab_sbitmap_weight], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sbitmap_init_node(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 {
  %8 = zext i1 %5 to i8
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = icmp ugt i32 %1, 3
  br i1 %11, label %12, label %21

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %16, %12 ], [ 5, %10 ]
  %14 = shl i32 4, %13
  %15 = icmp ugt i32 %14, %1
  %16 = add i32 %13, -1
  br i1 %15, label %12, label %17

17:                                               ; preds = %12, %7
  %18 = phi i32 [ %2, %7 ], [ %13, %12 ]
  %19 = shl nuw i32 1, %18
  %20 = icmp ugt i32 %18, 5
  br i1 %20, label %91, label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %19, %17 ], [ 32, %10 ]
  %23 = phi i32 [ %18, %17 ], [ 5, %10 ]
  %24 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  store i32 %1, ptr %0, align 4
  %25 = add i32 %1, -1
  %26 = add i32 %25, %22
  %27 = lshr i32 %26, %23
  %28 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 3
  store i8 %8, ptr %29, align 4
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  store ptr null, ptr %32, align 4
  br label %91

33:                                               ; preds = %21
  br i1 %6, label %34, label %58

34:                                               ; preds = %33
  %35 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %3) #9
  %36 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %91, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %29, align 4, !range !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %45, %41
  %46 = phi i32 [ %55, %45 ], [ %42, %41 ]
  %47 = tail call i32 @prandom_u32() #11
  %48 = urem i32 %47, %1
  %49 = load ptr, ptr %36, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %50
  %54 = inttoptr i32 %53 to ptr
  store i32 %48, ptr %54, align 4
  %55 = tail call i32 @cpumask_next(i32 noundef %46, ptr noundef nonnull @__cpu_possible_mask) #10
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %45, label %60

58:                                               ; preds = %33
  %59 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  store ptr null, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %45, %41, %38
  %61 = load i32, ptr %28, align 4
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 192) #11
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %63, label %64, label %66, !prof !10

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  store ptr null, ptr %65, align 4
  br label %75

66:                                               ; preds = %60
  %67 = extractvalue { i32, i1 } %62, 0
  %68 = or i32 %3, 256
  %69 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef %68) #9
  %70 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  store ptr %69, ptr %70, align 4
  %71 = icmp eq ptr %69, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %28, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %91, label %78

75:                                               ; preds = %66, %64
  %76 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  tail call void @free_percpu(ptr noundef %77) #11
  br label %91

78:                                               ; preds = %78, %72
  %79 = phi ptr [ %84, %78 ], [ %69, %72 ]
  %80 = phi i32 [ %87, %78 ], [ %1, %72 ]
  %81 = phi i32 [ %88, %78 ], [ 0, %72 ]
  %82 = tail call i32 @llvm.umin.i32(i32 %80, i32 %22)
  %83 = getelementptr %struct.sbitmap_word, ptr %79, i32 %81
  store i32 %82, ptr %83, align 64
  %84 = load ptr, ptr %70, align 4
  %85 = getelementptr %struct.sbitmap_word, ptr %84, i32 %81
  %86 = load i32, ptr %85, align 64
  %87 = sub i32 %80, %86
  %88 = add nuw i32 %81, 1
  %89 = load i32, ptr %28, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %78, label %91

91:                                               ; preds = %78, %75, %72, %34, %31, %17
  %92 = phi i32 [ 0, %31 ], [ -12, %75 ], [ -22, %17 ], [ -12, %34 ], [ 0, %72 ], [ 0, %78 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_resize(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %11

11:                                               ; preds = %24, %9
  %12 = phi i32 [ %7, %9 ], [ %25, %24 ]
  %13 = phi i32 [ 0, %9 ], [ %26, %24 ]
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr %struct.sbitmap_word, ptr %14, i32 %13, i32 4
  %16 = load volatile i32, ptr %15, align 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #11, !srcloc !12
  %19 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %15) #11, !srcloc !13
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %21 = getelementptr %struct.sbitmap_word, ptr %14, i32 %13, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !12
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %20, ptr elementtype(i32) %21) #11, !srcloc !15
  %23 = load i32, ptr %6, align 4
  br label %24

24:                                               ; preds = %18, %11
  %25 = phi i32 [ %12, %11 ], [ %23, %18 ]
  %26 = add nuw i32 %13, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %11, label %28

28:                                               ; preds = %24, %2
  store i32 %1, ptr %0, align 4
  %29 = add i32 %1, -1
  %30 = add i32 %29, %5
  %31 = lshr i32 %30, %4
  store i32 %31, ptr %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %35, %33 ], [ %42, %36 ]
  %38 = phi i32 [ %1, %33 ], [ %45, %36 ]
  %39 = phi i32 [ 0, %33 ], [ %46, %36 ]
  %40 = tail call i32 @llvm.umin.i32(i32 %38, i32 %5)
  %41 = getelementptr %struct.sbitmap_word, ptr %37, i32 %39
  store i32 %40, ptr %41, align 64
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr %struct.sbitmap_word, ptr %42, i32 %39
  %44 = load i32, ptr %43, align 64
  %45 = sub i32 %38, %44
  %46 = add nuw i32 %39, 1
  %47 = load i32, ptr %6, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %36, label %49

49:                                               ; preds = %36, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sbitmap_get(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @sbitmap_get.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !10

8:                                                ; preds = %1
  store i1 true, ptr @sbitmap_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %140, label %10

10:                                               ; preds = %9
  %11 = load volatile i32, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %12 = load ptr, ptr %2, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !17
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load volatile i32, ptr %18, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %20 = icmp ult i32 %19, %11
  br i1 %20, label %36, label %21, !prof !19

21:                                               ; preds = %10
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = tail call i32 @prandom_u32() #11
  %25 = urem i32 %24, %11
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i32 [ %25, %23 ], [ 0, %21 ]
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %29 = load ptr, ptr %2, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #7, !srcloc !17
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  store i32 %27, ptr %35, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #11, !srcloc !21
  br label %36

36:                                               ; preds = %26, %10
  %37 = phi i32 [ %27, %26 ], [ %19, %10 ]
  %38 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %39 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %113, label %43

43:                                               ; preds = %36
  %44 = load i8, ptr %39, align 4, !range !9
  %45 = icmp eq i8 %44, 0
  %46 = load i32, ptr %38, align 4
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %37, %48
  %50 = select i1 %45, i32 0, i32 %49
  %51 = lshr i32 %37, %46
  %52 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %53

53:                                               ; preds = %101, %43
  %54 = phi i32 [ %51, %43 ], [ %105, %101 ]
  %55 = phi i32 [ 0, %43 ], [ %106, %101 ]
  %56 = phi i32 [ %50, %43 ], [ 0, %101 ]
  %57 = load ptr, ptr %52, align 4
  %58 = getelementptr %struct.sbitmap_word, ptr %57, i32 %54
  %59 = getelementptr %struct.sbitmap_word, ptr %57, i32 %54, i32 2
  %60 = icmp ne i32 %56, 0
  %61 = getelementptr %struct.sbitmap_word, ptr %57, i32 %54, i32 4
  br label %62

62:                                               ; preds = %97, %53
  %63 = load i32, ptr %58, align 64
  %64 = load i8, ptr %39, align 4, !range !9
  %65 = icmp eq i8 %64, 0
  %66 = and i1 %60, %65
  %67 = add i32 %63, -1
  br label %68

68:                                               ; preds = %92, %62
  %69 = phi i32 [ %56, %62 ], [ %93, %92 ]
  %70 = tail call i32 @_find_next_zero_bit_le(ptr noundef %59, i32 noundef %63, i32 noundef %69) #11
  %71 = icmp ult i32 %70, %63
  br i1 %71, label %75, label %72, !prof !19

72:                                               ; preds = %68
  %73 = icmp ne i32 %69, 0
  %74 = and i1 %66, %73
  br i1 %74, label %92, label %94

75:                                               ; preds = %68
  %76 = and i32 %70, 31
  %77 = shl nuw i32 1, %76
  %78 = lshr i32 %70, 5
  %79 = getelementptr i32, ptr %59, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, %77
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %79) #11, !srcloc !12
  %84 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %79, ptr %79, i32 %77, ptr elementtype(i32) %79) #11, !srcloc !22
  %85 = extractvalue { i32, i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  %86 = and i32 %85, %77
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %83, %75
  %89 = add nuw i32 %70, 1
  %90 = icmp ult i32 %89, %67
  %91 = select i1 %90, i32 %89, i32 0
  br label %92

92:                                               ; preds = %88, %72
  %93 = phi i32 [ %91, %88 ], [ 0, %72 ]
  br label %68

94:                                               ; preds = %72
  %95 = load volatile i32, ptr %61, align 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %61) #11, !srcloc !12
  %98 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %61) #11, !srcloc !13
  %99 = extractvalue { i32, i32 } %98, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #11, !srcloc !12
  %100 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 %99, ptr elementtype(i32) %59) #11, !srcloc !15
  br label %62

101:                                              ; preds = %94
  %102 = add i32 %54, 1
  %103 = load i32, ptr %40, align 4
  %104 = icmp ult i32 %102, %103
  %105 = select i1 %104, i32 %102, i32 0
  %106 = add nuw i32 %55, 1
  %107 = icmp ult i32 %106, %103
  br i1 %107, label %53, label %113

108:                                              ; preds = %83
  %109 = load i32, ptr %38, align 4
  %110 = shl i32 %54, %109
  %111 = add i32 %110, %70
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %122

113:                                              ; preds = %108, %101, %36
  %114 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %115 = load ptr, ptr %2, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %118 = inttoptr i32 %117 to ptr
  %119 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %118) #7, !srcloc !17
  %120 = add i32 %119, %116
  %121 = inttoptr i32 %120 to ptr
  store i32 0, ptr %121, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %114) #11, !srcloc !21
  br label %140

122:                                              ; preds = %108
  %123 = icmp eq i32 %111, %37
  br i1 %123, label %127, label %124

124:                                              ; preds = %122
  %125 = load i8, ptr %39, align 4, !range !9
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %140, label %127, !prof !19

127:                                              ; preds = %124, %122
  %128 = add nuw i32 %111, 1
  %129 = add i32 %11, -1
  %130 = icmp ult i32 %128, %129
  %131 = select i1 %130, i32 %128, i32 0
  %132 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %133 = load ptr, ptr %2, align 4
  %134 = ptrtoint ptr %133 to i32
  %135 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %136 = inttoptr i32 %135 to ptr
  %137 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #7, !srcloc !17
  %138 = add i32 %137, %134
  %139 = inttoptr i32 %138 to ptr
  store i32 %131, ptr %139, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %132) #11, !srcloc !21
  br label %140

140:                                              ; preds = %127, %124, %113, %9
  %141 = phi i32 [ -1, %9 ], [ -1, %113 ], [ %111, %124 ], [ %111, %127 ]
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sbitmap_get_shallow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @sbitmap_get_shallow.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %2
  store i1 true, ptr @sbitmap_get_shallow.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 288, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %2
  br i1 %5, label %144, label %11

11:                                               ; preds = %10
  %12 = load volatile i32, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %13 = load ptr, ptr %3, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !17
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %21 = icmp ult i32 %20, %12
  br i1 %21, label %37, label %22, !prof !19

22:                                               ; preds = %11
  %23 = icmp eq i32 %12, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = tail call i32 @prandom_u32() #11
  %26 = urem i32 %25, %12
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %26, %24 ], [ 0, %22 ]
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %30 = load ptr, ptr %3, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #7, !srcloc !17
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  store i32 %28, ptr %36, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #11, !srcloc !21
  br label %37

37:                                               ; preds = %27, %11
  %38 = phi i32 [ %28, %27 ], [ %20, %11 ]
  %39 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %40 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %116, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %39, align 4
  %45 = lshr i32 %38, %44
  %46 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %47

47:                                               ; preds = %101, %43
  %48 = phi i32 [ %44, %43 ], [ %103, %101 ]
  %49 = phi i32 [ %38, %43 ], [ %108, %101 ]
  %50 = phi i32 [ 0, %43 ], [ %109, %101 ]
  %51 = phi i32 [ %45, %43 ], [ %107, %101 ]
  br label %52

52:                                               ; preds = %95, %47
  %53 = phi i32 [ %48, %47 ], [ %100, %95 ]
  %54 = load ptr, ptr %46, align 4
  %55 = getelementptr %struct.sbitmap_word, ptr %54, i32 %51
  %56 = getelementptr %struct.sbitmap_word, ptr %54, i32 %51, i32 2
  %57 = load i32, ptr %55, align 64
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 %1) #11
  %59 = shl nsw i32 -1, %53
  %60 = xor i32 %59, -1
  %61 = and i32 %49, %60
  %62 = icmp ne i32 %61, 0
  %63 = add i32 %58, -1
  br label %64

64:                                               ; preds = %88, %52
  %65 = phi i32 [ %61, %52 ], [ %89, %88 ]
  %66 = tail call i32 @_find_next_zero_bit_le(ptr noundef %56, i32 noundef %58, i32 noundef %65) #11
  %67 = icmp ult i32 %66, %58
  br i1 %67, label %71, label %68, !prof !19

68:                                               ; preds = %64
  %69 = icmp ne i32 %65, 0
  %70 = and i1 %62, %69
  br i1 %70, label %88, label %90

71:                                               ; preds = %64
  %72 = and i32 %66, 31
  %73 = shl nuw i32 1, %72
  %74 = lshr i32 %66, 5
  %75 = getelementptr i32, ptr %56, i32 %74
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, %73
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #11, !srcloc !12
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 %73, ptr elementtype(i32) %75) #11, !srcloc !22
  %81 = extractvalue { i32, i32, i32 } %80, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  %82 = and i32 %81, %73
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %111, label %84

84:                                               ; preds = %79, %71
  %85 = add nuw i32 %66, 1
  %86 = icmp ult i32 %85, %63
  %87 = select i1 %86, i32 %85, i32 0
  br label %88

88:                                               ; preds = %84, %68
  %89 = phi i32 [ %87, %84 ], [ 0, %68 ]
  br label %64

90:                                               ; preds = %68
  %91 = load ptr, ptr %46, align 4
  %92 = getelementptr %struct.sbitmap_word, ptr %91, i32 %51, i32 4
  %93 = load volatile i32, ptr %92, align 64
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #11, !srcloc !12
  %96 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %92) #11, !srcloc !13
  %97 = extractvalue { i32, i32 } %96, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %98 = getelementptr %struct.sbitmap_word, ptr %91, i32 %51, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %98) #11, !srcloc !12
  %99 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %98, ptr %98, i32 %97, ptr elementtype(i32) %98) #11, !srcloc !15
  %100 = load i32, ptr %39, align 4
  br label %52

101:                                              ; preds = %90
  %102 = add i32 %51, 1
  %103 = load i32, ptr %39, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, ptr %40, align 4
  %106 = icmp ult i32 %102, %105
  %107 = select i1 %106, i32 %102, i32 0
  %108 = select i1 %106, i32 %104, i32 0
  %109 = add nuw i32 %50, 1
  %110 = icmp ult i32 %109, %105
  br i1 %110, label %47, label %116

111:                                              ; preds = %79
  %112 = load i32, ptr %39, align 4
  %113 = shl i32 %51, %112
  %114 = add i32 %113, %66
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %125

116:                                              ; preds = %111, %101, %37
  %117 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %118 = load ptr, ptr %3, align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %121 = inttoptr i32 %120 to ptr
  %122 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %121) #7, !srcloc !17
  %123 = add i32 %122, %119
  %124 = inttoptr i32 %123 to ptr
  store i32 0, ptr %124, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #11, !srcloc !21
  br label %144

125:                                              ; preds = %111
  %126 = icmp eq i32 %114, %38
  br i1 %126, label %131, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 3
  %129 = load i8, ptr %128, align 4, !range !9
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %144, label %131, !prof !19

131:                                              ; preds = %127, %125
  %132 = add nuw i32 %114, 1
  %133 = add i32 %12, -1
  %134 = icmp ult i32 %132, %133
  %135 = select i1 %134, i32 %132, i32 0
  %136 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %137 = load ptr, ptr %3, align 4
  %138 = ptrtoint ptr %137 to i32
  %139 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %140 = inttoptr i32 %139 to ptr
  %141 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %140) #7, !srcloc !17
  %142 = add i32 %141, %138
  %143 = inttoptr i32 %142 to ptr
  store i32 %135, ptr %143, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %136) #11, !srcloc !21
  br label %144

144:                                              ; preds = %131, %127, %116, %10
  %145 = phi i32 [ -1, %10 ], [ -1, %116 ], [ %114, %127 ], [ %114, %131 ]
  ret i32 %145
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @sbitmap_any_bit_set(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.sbitmap_word, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 64
  %10 = getelementptr %struct.sbitmap_word, ptr %7, i32 0, i32 4
  %11 = load i32, ptr %10, align 64
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %19, %5
  %16 = phi i32 [ %17, %19 ], [ 0, %5 ]
  %17 = add nuw i32 %16, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.sbitmap_word, ptr %7, i32 %17, i32 2
  %21 = load i32, ptr %20, align 64
  %22 = getelementptr %struct.sbitmap_word, ptr %7, i32 %17, i32 4
  %23 = load i32, ptr %22, align 64
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %15, label %27

27:                                               ; preds = %19, %15
  %28 = icmp ult i32 %17, %3
  br label %29

29:                                               ; preds = %27, %5, %1
  %30 = phi i1 [ false, %1 ], [ true, %5 ], [ %28, %27 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sbitmap_weight(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %15, %7 ]
  %9 = phi i32 [ 0, %5 ], [ %16, %7 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.sbitmap_word, ptr %10, i32 %9
  %12 = load i32, ptr %11, align 64
  %13 = getelementptr %struct.sbitmap_word, ptr %10, i32 %9, i32 2
  %14 = tail call i32 @__bitmap_weight(ptr noundef %13, i32 noundef %12) #11
  %15 = add i32 %14, %8
  %16 = add nuw i32 %9, 1
  %17 = load i32, ptr %2, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %7, label %19

19:                                               ; preds = %7
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ %29, %21 ], [ 0, %19 ]
  %23 = phi i32 [ %30, %21 ], [ 0, %19 ]
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr %struct.sbitmap_word, ptr %24, i32 %23
  %26 = load i32, ptr %25, align 64
  %27 = getelementptr %struct.sbitmap_word, ptr %24, i32 %23, i32 4
  %28 = tail call i32 @__bitmap_weight(ptr noundef %27, i32 noundef %26) #11
  %29 = add i32 %28, %22
  %30 = add nuw i32 %23, 1
  %31 = load i32, ptr %2, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %21, label %33

33:                                               ; preds = %21, %19, %1
  %34 = phi i32 [ %15, %19 ], [ 0, %1 ], [ %15, %21 ]
  %35 = phi i32 [ 0, %19 ], [ 0, %1 ], [ %29, %21 ]
  %36 = sub i32 %34, %35
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %3) #11
  %4 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ 0, %7 ], [ %17, %9 ]
  %11 = phi i32 [ 0, %7 ], [ %18, %9 ]
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr %struct.sbitmap_word, ptr %12, i32 %11
  %14 = load i32, ptr %13, align 64
  %15 = getelementptr %struct.sbitmap_word, ptr %12, i32 %11, i32 2
  %16 = tail call i32 @__bitmap_weight(ptr noundef %15, i32 noundef %14) #11
  %17 = add i32 %16, %10
  %18 = add nuw i32 %11, 1
  %19 = load i32, ptr %4, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %9, label %21

21:                                               ; preds = %9
  %22 = icmp eq i32 %19, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ %31, %23 ], [ 0, %21 ]
  %25 = phi i32 [ %32, %23 ], [ 0, %21 ]
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr %struct.sbitmap_word, ptr %26, i32 %25
  %28 = load i32, ptr %27, align 64
  %29 = getelementptr %struct.sbitmap_word, ptr %26, i32 %25, i32 4
  %30 = tail call i32 @__bitmap_weight(ptr noundef %29, i32 noundef %28) #11
  %31 = add i32 %30, %24
  %32 = add nuw i32 %25, 1
  %33 = load i32, ptr %4, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %23, label %35

35:                                               ; preds = %23, %21, %2
  %36 = phi i32 [ %17, %21 ], [ 0, %2 ], [ %17, %23 ]
  %37 = phi i32 [ 0, %21 ], [ 0, %2 ], [ %31, %23 ]
  %38 = sub i32 %36, %37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %38) #11
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ 0, %41 ], [ %51, %43 ]
  %45 = phi i32 [ 0, %41 ], [ %52, %43 ]
  %46 = load ptr, ptr %42, align 4
  %47 = getelementptr %struct.sbitmap_word, ptr %46, i32 %45
  %48 = load i32, ptr %47, align 64
  %49 = getelementptr %struct.sbitmap_word, ptr %46, i32 %45, i32 4
  %50 = tail call i32 @__bitmap_weight(ptr noundef %49, i32 noundef %48) #11
  %51 = add i32 %50, %44
  %52 = add nuw i32 %45, 1
  %53 = load i32, ptr %4, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %43, label %55

55:                                               ; preds = %43, %35
  %56 = phi i32 [ 0, %35 ], [ %51, %43 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %56) #11
  %57 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = shl nuw i32 1, %58
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %59) #11
  %60 = load i32, ptr %4, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %60) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_bitmap_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %91, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %8

8:                                                ; preds = %64, %6
  %9 = phi i32 [ %4, %6 ], [ %65, %64 ]
  %10 = phi i8 [ 0, %6 ], [ %68, %64 ]
  %11 = phi i32 [ 0, %6 ], [ %67, %64 ]
  %12 = phi i32 [ 0, %6 ], [ %66, %64 ]
  %13 = phi i32 [ 0, %6 ], [ %69, %64 ]
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr %struct.sbitmap_word, ptr %14, i32 %13, i32 2
  %16 = load volatile i32, ptr %15, align 64
  %17 = getelementptr %struct.sbitmap_word, ptr %14, i32 %13, i32 4
  %18 = load volatile i32, ptr %17, align 64
  %19 = getelementptr %struct.sbitmap_word, ptr %14, i32 %13
  %20 = load volatile i32, ptr %19, align 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %64, label %22

22:                                               ; preds = %8
  %23 = xor i32 %18, -1
  %24 = and i32 %16, %23
  br label %25

25:                                               ; preds = %55, %22
  %26 = phi i8 [ %58, %55 ], [ %10, %22 ]
  %27 = phi i32 [ %57, %55 ], [ %11, %22 ]
  %28 = phi i32 [ %56, %55 ], [ %12, %22 ]
  %29 = phi i32 [ %60, %55 ], [ %20, %22 ]
  %30 = phi i32 [ %59, %55 ], [ %24, %22 ]
  %31 = sub i32 8, %27
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %29)
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = shl i32 %35, %27
  %37 = trunc i32 %36 to i8
  %38 = or i8 %26, %37
  %39 = add i32 %32, %27
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %55

41:                                               ; preds = %25
  %42 = and i32 %28, 15
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = icmp eq i32 %28, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %44
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 10) #11
  br label %47

47:                                               ; preds = %46, %44
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %28) #11
  br label %48

48:                                               ; preds = %47, %41
  %49 = and i32 %28, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 32) #11
  br label %52

52:                                               ; preds = %51, %48
  %53 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %53) #11
  %54 = add i32 %28, 1
  br label %55

55:                                               ; preds = %52, %25
  %56 = phi i32 [ %54, %52 ], [ %28, %25 ]
  %57 = phi i32 [ 0, %52 ], [ %39, %25 ]
  %58 = phi i8 [ 0, %52 ], [ %38, %25 ]
  %59 = lshr i32 %30, %32
  %60 = sub i32 %29, %32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %25

62:                                               ; preds = %55
  %63 = load i32, ptr %3, align 4
  br label %64

64:                                               ; preds = %62, %8
  %65 = phi i32 [ %9, %8 ], [ %63, %62 ]
  %66 = phi i32 [ %12, %8 ], [ %56, %62 ]
  %67 = phi i32 [ %11, %8 ], [ %57, %62 ]
  %68 = phi i8 [ %10, %8 ], [ %58, %62 ]
  %69 = add nuw i32 %13, 1
  %70 = icmp ult i32 %69, %65
  br i1 %70, label %8, label %71

71:                                               ; preds = %64
  %72 = icmp eq i32 %67, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %71
  %74 = and i32 %66, 15
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = icmp eq i32 %66, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 10) #11
  br label %79

79:                                               ; preds = %78, %76
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %66) #11
  br label %80

80:                                               ; preds = %79, %73
  %81 = and i32 %66, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 32) #11
  br label %84

84:                                               ; preds = %83, %80
  %85 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %85) #11
  %86 = add i32 %66, 1
  br label %87

87:                                               ; preds = %84, %71
  %88 = phi i32 [ %86, %84 ], [ %66, %71 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void @seq_putc(ptr noundef %1, i8 noundef zeroext 10) #11
  br label %91

91:                                               ; preds = %90, %87, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sbitmap_queue_init_node(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 %5) #0 {
  %7 = tail call i32 @sbitmap_init_node(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %4, i32 undef, i1 noundef zeroext %3, i1 noundef zeroext true)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %84

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 5
  store i32 -1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl nuw i32 1, %12
  %14 = shl nsw i32 -1, %12
  %15 = and i32 %14, %1
  %16 = add i32 %13, -1
  %17 = and i32 %16, %1
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %13) #11
  %19 = add i32 %18, %15
  %20 = lshr i32 %19, 3
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 1) #11
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 8) #11
  %23 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 2
  store volatile i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 4
  store volatile i32 0, ptr %25, align 4
  %26 = and i32 %4, 17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !19

28:                                               ; preds = %9
  %29 = and i32 %4, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 1, i32 2
  br label %32

32:                                               ; preds = %28, %9
  %33 = phi i32 [ 0, %9 ], [ %31, %28 ]
  %34 = or i32 %4, 256
  %35 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %33, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef %34, i32 noundef 512) #12
  %38 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %32
  %41 = getelementptr %struct.sbq_wait_state, ptr %37, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %41, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %42 = load ptr, ptr %38, align 4
  %43 = load i32, ptr %23, align 4
  store volatile i32 %43, ptr %42, align 4
  %44 = load ptr, ptr %38, align 4
  %45 = getelementptr %struct.sbq_wait_state, ptr %44, i32 1, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %45, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr %struct.sbq_wait_state, ptr %46, i32 1
  %48 = load i32, ptr %23, align 4
  store volatile i32 %48, ptr %47, align 4
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr %struct.sbq_wait_state, ptr %49, i32 2, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %50, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr %struct.sbq_wait_state, ptr %51, i32 2
  %53 = load i32, ptr %23, align 4
  store volatile i32 %53, ptr %52, align 4
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr %struct.sbq_wait_state, ptr %54, i32 3, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %55, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %56 = load ptr, ptr %38, align 4
  %57 = getelementptr %struct.sbq_wait_state, ptr %56, i32 3
  %58 = load i32, ptr %23, align 4
  store volatile i32 %58, ptr %57, align 4
  %59 = load ptr, ptr %38, align 4
  %60 = getelementptr %struct.sbq_wait_state, ptr %59, i32 4, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %60, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %61 = load ptr, ptr %38, align 4
  %62 = getelementptr %struct.sbq_wait_state, ptr %61, i32 4
  %63 = load i32, ptr %23, align 4
  store volatile i32 %63, ptr %62, align 4
  %64 = load ptr, ptr %38, align 4
  %65 = getelementptr %struct.sbq_wait_state, ptr %64, i32 5, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %65, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %66 = load ptr, ptr %38, align 4
  %67 = getelementptr %struct.sbq_wait_state, ptr %66, i32 5
  %68 = load i32, ptr %23, align 4
  store volatile i32 %68, ptr %67, align 4
  %69 = load ptr, ptr %38, align 4
  %70 = getelementptr %struct.sbq_wait_state, ptr %69, i32 6, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %70, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %71 = load ptr, ptr %38, align 4
  %72 = getelementptr %struct.sbq_wait_state, ptr %71, i32 6
  %73 = load i32, ptr %23, align 4
  store volatile i32 %73, ptr %72, align 4
  %74 = load ptr, ptr %38, align 4
  %75 = getelementptr %struct.sbq_wait_state, ptr %74, i32 7, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %75, ptr noundef nonnull @.str.6, ptr noundef nonnull @sbitmap_queue_init_node.__key) #11
  %76 = load ptr, ptr %38, align 4
  %77 = getelementptr %struct.sbq_wait_state, ptr %76, i32 7
  %78 = load i32, ptr %23, align 4
  store volatile i32 %78, ptr %77, align 4
  br label %84

79:                                               ; preds = %32
  %80 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  tail call void @free_percpu(ptr noundef %81) #11
  %82 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  tail call void @kfree(ptr noundef %83) #11
  store ptr null, ptr %82, align 4
  br label %84

84:                                               ; preds = %79, %40, %6
  %85 = phi i32 [ -12, %79 ], [ %7, %6 ], [ 0, %40 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_recalculate_wake_batch(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr %0, align 4
  %4 = add i32 %1, -1
  %5 = add i32 %4, %3
  %6 = udiv i32 %5, %1
  %7 = icmp ugt i32 %3, 31
  %8 = select i1 %7, i32 4, i32 1
  %9 = lshr i32 %6, 3
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %8)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 8)
  %12 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %11
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  store volatile i32 %11, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %16 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  store volatile i32 1, ptr %17, align 4
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr %struct.sbq_wait_state, ptr %18, i32 1
  store volatile i32 1, ptr %19, align 4
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr %struct.sbq_wait_state, ptr %20, i32 2
  store volatile i32 1, ptr %21, align 4
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr %struct.sbq_wait_state, ptr %22, i32 3
  store volatile i32 1, ptr %23, align 4
  %24 = load ptr, ptr %16, align 4
  %25 = getelementptr %struct.sbq_wait_state, ptr %24, i32 4
  store volatile i32 1, ptr %25, align 4
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr %struct.sbq_wait_state, ptr %26, i32 5
  store volatile i32 1, ptr %27, align 4
  %28 = load ptr, ptr %16, align 4
  %29 = getelementptr %struct.sbq_wait_state, ptr %28, i32 6
  store volatile i32 1, ptr %29, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = getelementptr %struct.sbq_wait_state, ptr %30, i32 7
  store volatile i32 1, ptr %31, align 4
  br label %32

32:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_resize(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = shl nuw i32 1, %4
  %6 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7) #11
  %9 = lshr i32 %1, %4
  %10 = mul i32 %8, %9
  %11 = add i32 %5, -1
  %12 = and i32 %11, %1
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %8) #11
  %14 = add i32 %13, %10
  %15 = lshr i32 %14, 3
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 1) #11
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 8) #11
  %18 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %40, label %21

21:                                               ; preds = %2
  store volatile i32 %17, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %22 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  store volatile i32 1, ptr %23, align 4
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr %struct.sbq_wait_state, ptr %24, i32 1
  store volatile i32 1, ptr %25, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr %struct.sbq_wait_state, ptr %26, i32 2
  store volatile i32 1, ptr %27, align 4
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr %struct.sbq_wait_state, ptr %28, i32 3
  store volatile i32 1, ptr %29, align 4
  %30 = load ptr, ptr %22, align 4
  %31 = getelementptr %struct.sbq_wait_state, ptr %30, i32 4
  store volatile i32 1, ptr %31, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr %struct.sbq_wait_state, ptr %32, i32 5
  store volatile i32 1, ptr %33, align 4
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr %struct.sbq_wait_state, ptr %34, i32 6
  store volatile i32 1, ptr %35, align 4
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr %struct.sbq_wait_state, ptr %36, i32 7
  store volatile i32 1, ptr %37, align 4
  %38 = load i32, ptr %3, align 4
  %39 = shl nuw i32 1, %38
  br label %40

40:                                               ; preds = %21, %2
  %41 = phi i32 [ %5, %2 ], [ %39, %21 ]
  %42 = phi i32 [ %4, %2 ], [ %38, %21 ]
  %43 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %48

48:                                               ; preds = %61, %46
  %49 = phi i32 [ %44, %46 ], [ %62, %61 ]
  %50 = phi i32 [ 0, %46 ], [ %63, %61 ]
  %51 = load ptr, ptr %47, align 4
  %52 = getelementptr %struct.sbitmap_word, ptr %51, i32 %50, i32 4
  %53 = load volatile i32, ptr %52, align 64
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #11, !srcloc !12
  %56 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %52) #11, !srcloc !13
  %57 = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %58 = getelementptr %struct.sbitmap_word, ptr %51, i32 %50, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #11, !srcloc !12
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 %57, ptr elementtype(i32) %58) #11, !srcloc !15
  %60 = load i32, ptr %43, align 4
  br label %61

61:                                               ; preds = %55, %48
  %62 = phi i32 [ %49, %48 ], [ %60, %55 ]
  %63 = add nuw i32 %50, 1
  %64 = icmp ult i32 %63, %62
  br i1 %64, label %48, label %65

65:                                               ; preds = %61, %40
  store i32 %1, ptr %0, align 4
  %66 = add i32 %1, -1
  %67 = add i32 %66, %41
  %68 = lshr i32 %67, %42
  store i32 %68, ptr %43, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi ptr [ %72, %70 ], [ %79, %73 ]
  %75 = phi i32 [ %1, %70 ], [ %82, %73 ]
  %76 = phi i32 [ 0, %70 ], [ %83, %73 ]
  %77 = tail call i32 @llvm.umin.i32(i32 %75, i32 %41) #11
  %78 = getelementptr %struct.sbitmap_word, ptr %74, i32 %76
  store i32 %77, ptr %78, align 64
  %79 = load ptr, ptr %71, align 4
  %80 = getelementptr %struct.sbitmap_word, ptr %79, i32 %76
  %81 = load i32, ptr %80, align 64
  %82 = sub i32 %75, %81
  %83 = add nuw i32 %76, 1
  %84 = load i32, ptr %43, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %73, label %86

86:                                               ; preds = %73, %65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sbitmap_queue_get(ptr noundef %0) #0 {
  %2 = tail call i32 @sbitmap_get(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sbitmap_queue_get_batch(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %135, !prof !19

7:                                                ; preds = %3
  %8 = load volatile i32, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %9 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #7, !srcloc !17
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = load volatile i32, ptr %16, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !18
  %18 = icmp ult i32 %17, %8
  br i1 %18, label %34, label %19, !prof !19

19:                                               ; preds = %7
  %20 = icmp eq i32 %8, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @prandom_u32() #11
  %23 = urem i32 %22, %8
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %23, %21 ], [ 0, %19 ]
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %27 = load ptr, ptr %9, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #7, !srcloc !17
  %32 = add i32 %31, %28
  %33 = inttoptr i32 %32 to ptr
  store i32 %25, ptr %33, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #11, !srcloc !21
  br label %34

34:                                               ; preds = %24, %7
  %35 = phi i32 [ %25, %24 ], [ %17, %7 ]
  %36 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %37 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %135, label %40

40:                                               ; preds = %34
  %41 = load i32, ptr %36, align 4
  %42 = lshr i32 %35, %41
  %43 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  br label %44

44:                                               ; preds = %130, %40
  %45 = phi i32 [ %42, %40 ], [ %132, %130 ]
  %46 = phi i32 [ 0, %40 ], [ %133, %130 ]
  %47 = load ptr, ptr %43, align 4
  %48 = getelementptr %struct.sbitmap_word, ptr %47, i32 %45
  %49 = getelementptr %struct.sbitmap_word, ptr %47, i32 %45, i32 4
  %50 = load volatile i32, ptr %49, align 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %49) #11, !srcloc !12
  %53 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %49) #11, !srcloc !13
  %54 = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !14
  %55 = getelementptr %struct.sbitmap_word, ptr %47, i32 %45, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #11, !srcloc !12
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %55, ptr %55, i32 %54, ptr elementtype(i32) %55) #11, !srcloc !15
  br label %57

57:                                               ; preds = %52, %44
  %58 = getelementptr %struct.sbitmap_word, ptr %47, i32 %45, i32 2
  %59 = load i32, ptr %58, align 64
  %60 = load i32, ptr %48, align 64
  %61 = add i32 %60, -1
  %62 = shl nsw i32 -1, %61
  %63 = xor i32 %62, -1
  %64 = icmp eq i32 %59, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, ptr %37, align 4
  br label %130

67:                                               ; preds = %57
  %68 = tail call i32 @_find_first_zero_bit_le(ptr noundef %58, i32 noundef %60) #11
  %69 = add i32 %68, %1
  %70 = load i32, ptr %48, align 64
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %125, label %72

72:                                               ; preds = %67
  %73 = tail call i32 @llvm.smin.i32(i32 %70, i32 %1)
  %74 = shl nsw i32 -1, %73
  %75 = xor i32 %74, -1
  %76 = shl i32 %75, %68
  br label %77

77:                                               ; preds = %84, %72
  %78 = load volatile i32, ptr %58, align 64
  %79 = or i32 %78, %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #11, !srcloc !12
  br label %80

80:                                               ; preds = %80, %77
  %81 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 %78, i32 %79, ptr elementtype(i32) %58) #11, !srcloc !26
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %80

84:                                               ; preds = %80
  %85 = extractvalue { i32, i32 } %81, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  %86 = icmp eq i32 %85, %78
  br i1 %86, label %87, label %77

87:                                               ; preds = %84
  %88 = xor i32 %78, -1
  %89 = and i32 %76, %88
  %90 = lshr i32 %89, %68
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %125, label %92

92:                                               ; preds = %87
  %93 = load i32, ptr %36, align 4
  %94 = shl i32 %45, %93
  %95 = add i32 %94, %68
  store i32 %95, ptr %2, align 4
  %96 = add i32 %95, %73
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %100 = load ptr, ptr %9, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %103 = inttoptr i32 %102 to ptr
  %104 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %103) #7, !srcloc !17
  %105 = add i32 %104, %101
  %106 = inttoptr i32 %105 to ptr
  store i32 0, ptr %106, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %99) #11, !srcloc !21
  br label %135

107:                                              ; preds = %92
  %108 = add i32 %96, -1
  %109 = icmp eq i32 %108, %35
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i8, ptr %4, align 4, !range !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %135, label %113, !prof !19

113:                                              ; preds = %110, %107
  %114 = add i32 %8, -1
  %115 = icmp ult i32 %96, %114
  %116 = select i1 %115, i32 %96, i32 0
  %117 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !20
  %118 = load ptr, ptr %9, align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %121 = inttoptr i32 %120 to ptr
  %122 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %121) #7, !srcloc !17
  %123 = add i32 %122, %119
  %124 = inttoptr i32 %123 to ptr
  store i32 %116, ptr %124, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %117) #11, !srcloc !21
  br label %135

125:                                              ; preds = %87, %67
  %126 = add i32 %45, 1
  %127 = load i32, ptr %37, align 4
  %128 = icmp ult i32 %126, %127
  %129 = select i1 %128, i32 %126, i32 0
  br label %130

130:                                              ; preds = %125, %65
  %131 = phi i32 [ %66, %65 ], [ %127, %125 ]
  %132 = phi i32 [ %45, %65 ], [ %129, %125 ]
  %133 = add nuw i32 %46, 1
  %134 = icmp ult i32 %133, %131
  br i1 %134, label %44, label %135

135:                                              ; preds = %130, %113, %110, %98, %34, %3
  %136 = phi i32 [ 0, %3 ], [ %90, %113 ], [ %90, %110 ], [ %90, %98 ], [ 0, %34 ], [ 0, %130 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sbitmap_queue_get_shallow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, %1
  %6 = load i1, ptr @__sbitmap_queue_get_shallow.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %2
  store i1 true, ptr @__sbitmap_queue_get_shallow.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 569, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %2
  %11 = tail call i32 @sbitmap_get_shallow(ptr noundef %0, i32 noundef %1)
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_min_shallow_depth(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 5
  store i32 %1, ptr %3, align 4
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1) #11
  %9 = lshr i32 %4, %6
  %10 = mul i32 %8, %9
  %11 = add i32 %7, -1
  %12 = and i32 %11, %4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %8) #11
  %14 = add i32 %13, %10
  %15 = lshr i32 %14, 3
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 1) #11
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 8) #11
  %18 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %17
  br i1 %20, label %38, label %21

21:                                               ; preds = %2
  store volatile i32 %17, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  %22 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  store volatile i32 1, ptr %23, align 4
  %24 = load ptr, ptr %22, align 4
  %25 = getelementptr %struct.sbq_wait_state, ptr %24, i32 1
  store volatile i32 1, ptr %25, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr %struct.sbq_wait_state, ptr %26, i32 2
  store volatile i32 1, ptr %27, align 4
  %28 = load ptr, ptr %22, align 4
  %29 = getelementptr %struct.sbq_wait_state, ptr %28, i32 3
  store volatile i32 1, ptr %29, align 4
  %30 = load ptr, ptr %22, align 4
  %31 = getelementptr %struct.sbq_wait_state, ptr %30, i32 4
  store volatile i32 1, ptr %31, align 4
  %32 = load ptr, ptr %22, align 4
  %33 = getelementptr %struct.sbq_wait_state, ptr %32, i32 5
  store volatile i32 1, ptr %33, align 4
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr %struct.sbq_wait_state, ptr %34, i32 6
  store volatile i32 1, ptr %35, align 4
  %36 = load ptr, ptr %22, align 4
  %37 = getelementptr %struct.sbq_wait_state, ptr %36, i32 7
  store volatile i32 1, ptr %37, align 4
  br label %38

38:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_wake_up(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %91, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %88, %5
  %10 = load volatile i32, ptr %6, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %10, i32 1, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %21, label %15

15:                                               ; preds = %57, %51, %45, %39, %33, %27, %21, %9
  %16 = phi i32 [ %10, %9 ], [ %23, %21 ], [ %29, %27 ], [ %35, %33 ], [ %41, %39 ], [ %47, %45 ], [ %53, %51 ], [ %59, %57 ]
  %17 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %16
  %18 = load volatile i32, ptr %6, align 4
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  store volatile i32 %16, ptr %6, align 4
  br label %63

21:                                               ; preds = %9
  %22 = add i32 %10, 1
  %23 = and i32 %22, 7
  %24 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %23, i32 1, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %15

27:                                               ; preds = %21
  %28 = add i32 %10, 2
  %29 = and i32 %28, 7
  %30 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %29, i32 1, i32 1
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %33, label %15

33:                                               ; preds = %27
  %34 = add i32 %10, 3
  %35 = and i32 %34, 7
  %36 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %35, i32 1, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %15

39:                                               ; preds = %33
  %40 = add i32 %10, 4
  %41 = and i32 %40, 7
  %42 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %41, i32 1, i32 1
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %45, label %15

45:                                               ; preds = %39
  %46 = add i32 %10, 5
  %47 = and i32 %46, 7
  %48 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %47, i32 1, i32 1
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %51, label %15

51:                                               ; preds = %45
  %52 = add i32 %10, 6
  %53 = and i32 %52, 7
  %54 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %53, i32 1, i32 1
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %57, label %15

57:                                               ; preds = %51
  %58 = add i32 %10, 7
  %59 = and i32 %58, 7
  %60 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %59, i32 1, i32 1
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %91, label %15

63:                                               ; preds = %20, %15
  %64 = icmp eq ptr %17, null
  br i1 %64, label %91, label %65

65:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %17) #11, !srcloc !12
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #11, !srcloc !29
  %67 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !30
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load volatile i32, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %17) #11, !srcloc !12
  br label %71

71:                                               ; preds = %71, %69
  %72 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 %67, i32 %70, ptr nonnull elementtype(i32) %17) #11, !srcloc !26
  %73 = extractvalue { i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %71

75:                                               ; preds = %71
  %76 = extractvalue { i32, i32 } %72, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  %77 = icmp eq i32 %76, %67
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load volatile i32, ptr %6, align 4
  %80 = add i32 %79, 1
  %81 = and i32 %80, 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #11, !srcloc !12
  br label %82

82:                                               ; preds = %82, %78
  %83 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 %79, i32 %81, ptr elementtype(i32) %6) #11, !srcloc !26
  %84 = extractvalue { i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %82

86:                                               ; preds = %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !27
  %87 = getelementptr %struct.sbq_wait_state, ptr %11, i32 %16, i32 1
  tail call void @__wake_up(ptr noundef %87, i32 noundef 3, i32 noundef %70, ptr noundef null) #11
  br label %91

88:                                               ; preds = %75
  %89 = load volatile i32, ptr %2, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %9

91:                                               ; preds = %88, %86, %65, %63, %57, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_clear_batch(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !32
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %27, %6
  %11 = phi i32 [ %9, %6 ], [ %28, %27 ]
  %12 = phi i32 [ 0, %6 ], [ %36, %27 ]
  %13 = phi i32 [ 0, %6 ], [ %35, %27 ]
  %14 = phi ptr [ null, %6 ], [ %29, %27 ]
  %15 = getelementptr i32, ptr %2, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %16, %1
  %18 = load ptr, ptr %7, align 4
  %19 = ashr i32 %17, %11
  %20 = getelementptr %struct.sbitmap_word, ptr %18, i32 %19, i32 2
  %21 = icmp eq ptr %14, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %10
  %23 = icmp eq ptr %14, %20
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %14) #11, !srcloc !12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 %13, ptr nonnull elementtype(i32) %14) #11, !srcloc !15
  %26 = load i32, ptr %8, align 4
  br label %27

27:                                               ; preds = %24, %22, %10
  %28 = phi i32 [ %26, %24 ], [ %11, %22 ], [ %11, %10 ]
  %29 = phi ptr [ %20, %24 ], [ %14, %22 ], [ %20, %10 ]
  %30 = phi i32 [ 0, %24 ], [ %13, %22 ], [ %13, %10 ]
  %31 = shl nsw i32 -1, %28
  %32 = xor i32 %31, -1
  %33 = and i32 %17, %32
  %34 = shl nuw i32 1, %33
  %35 = or i32 %34, %30
  %36 = add nuw nsw i32 %12, 1
  %37 = icmp eq i32 %36, %3
  br i1 %37, label %38, label %10

38:                                               ; preds = %27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #11, !srcloc !12
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_andnot\0A1:\09ldrex\09$0, [$3]\0A\09bic\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 %35, ptr elementtype(i32) %29) #11, !srcloc !15
  br label %40

40:                                               ; preds = %38, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !33
  tail call void @sbitmap_queue_wake_up(ptr noundef %0)
  %41 = tail call ptr @llvm.thread.pointer() #11
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %3, -1
  %45 = getelementptr i32, ptr %2, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %46, %1
  %48 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 3
  %49 = load i8, ptr %48, align 4, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %62, !prof !19

51:                                               ; preds = %40
  %52 = load i32, ptr %0, align 4
  %53 = icmp ugt i32 %52, %47
  br i1 %53, label %54, label %62, !prof !19

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  %61 = inttoptr i32 %60 to ptr
  store i32 %47, ptr %61, align 4
  br label %62

62:                                               ; preds = %54, %51, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !34
  %4 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %1, %7
  %9 = getelementptr %struct.sbitmap_word, ptr %5, i32 %8, i32 4
  %10 = shl nsw i32 -1, %7
  %11 = xor i32 %10, -1
  %12 = and i32 %11, %1
  tail call void @_set_bit(i32 noundef %12, ptr noundef %9) #11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !35
  tail call void @sbitmap_queue_wake_up(ptr noundef %0)
  %13 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %27, !prof !19

16:                                               ; preds = %3
  %17 = load i32, ptr %0, align 4
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %27, !prof !19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %2
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = inttoptr i32 %25 to ptr
  store i32 %1, ptr %26, align 4
  br label %27

27:                                               ; preds = %19, %16, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_wake_all(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !36
  %2 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.sbq_wait_state, ptr %5, i32 %3, i32 1, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.sbq_wait_state, ptr %5, i32 %3, i32 1
  tail call void @__wake_up(ptr noundef %10, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %11 = load ptr, ptr %4, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ %5, %1 ]
  %14 = add i32 %3, 1
  %15 = and i32 %14, 7
  %16 = getelementptr %struct.sbq_wait_state, ptr %13, i32 %15, i32 1, i32 1
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr %struct.sbq_wait_state, ptr %13, i32 %15, i32 1
  tail call void @__wake_up(ptr noundef %20, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %21 = load ptr, ptr %4, align 4
  br label %22

22:                                               ; preds = %19, %12
  %23 = phi ptr [ %21, %19 ], [ %13, %12 ]
  %24 = add i32 %3, 2
  %25 = and i32 %24, 7
  %26 = getelementptr %struct.sbq_wait_state, ptr %23, i32 %25, i32 1, i32 1
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr %struct.sbq_wait_state, ptr %23, i32 %25, i32 1
  tail call void @__wake_up(ptr noundef %30, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %31 = load ptr, ptr %4, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi ptr [ %31, %29 ], [ %23, %22 ]
  %34 = add i32 %3, 3
  %35 = and i32 %34, 7
  %36 = getelementptr %struct.sbq_wait_state, ptr %33, i32 %35, i32 1, i32 1
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr %struct.sbq_wait_state, ptr %33, i32 %35, i32 1
  tail call void @__wake_up(ptr noundef %40, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %41 = load ptr, ptr %4, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi ptr [ %41, %39 ], [ %33, %32 ]
  %44 = add i32 %3, 4
  %45 = and i32 %44, 7
  %46 = getelementptr %struct.sbq_wait_state, ptr %43, i32 %45, i32 1, i32 1
  %47 = load volatile ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %46
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = getelementptr %struct.sbq_wait_state, ptr %43, i32 %45, i32 1
  tail call void @__wake_up(ptr noundef %50, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %51 = load ptr, ptr %4, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = phi ptr [ %51, %49 ], [ %43, %42 ]
  %54 = add i32 %3, 5
  %55 = and i32 %54, 7
  %56 = getelementptr %struct.sbq_wait_state, ptr %53, i32 %55, i32 1, i32 1
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = getelementptr %struct.sbq_wait_state, ptr %53, i32 %55, i32 1
  tail call void @__wake_up(ptr noundef %60, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %61 = load ptr, ptr %4, align 4
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi ptr [ %61, %59 ], [ %53, %52 ]
  %64 = add i32 %3, 6
  %65 = and i32 %64, 7
  %66 = getelementptr %struct.sbq_wait_state, ptr %63, i32 %65, i32 1, i32 1
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = getelementptr %struct.sbq_wait_state, ptr %63, i32 %65, i32 1
  tail call void @__wake_up(ptr noundef %70, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %71 = load ptr, ptr %4, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = phi ptr [ %71, %69 ], [ %63, %62 ]
  %74 = add i32 %3, 7
  %75 = and i32 %74, 7
  %76 = getelementptr %struct.sbq_wait_state, ptr %73, i32 %75, i32 1, i32 1
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = getelementptr %struct.sbq_wait_state, ptr %73, i32 %75, i32 1
  tail call void @__wake_up(ptr noundef %80, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %81

81:                                               ; preds = %79, %72
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_queue_show(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @sbitmap_show(ptr noundef %0, ptr noundef %1)
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.7) #11
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #10
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %10 = load i32, ptr %9, align 4
  %11 = ptrtoint ptr %8 to i32
  %12 = add i32 %10, %11
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %14) #11
  %15 = tail call i32 @cpumask_next(i32 noundef %3, ptr noundef nonnull @__cpu_possible_mask) #10
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %18, %6
  %19 = phi i32 [ %27, %18 ], [ %15, %6 ]
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.8) #11
  %20 = load ptr, ptr %7, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %26) #11
  %27 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull @__cpu_possible_mask) #10
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %18, label %30, !llvm.loop !37

30:                                               ; preds = %18, %6, %2
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.10) #11
  %31 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %32) #11
  %33 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 2
  %34 = load volatile i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %34) #11
  %35 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 4
  %36 = load volatile i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %36) #11
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.14) #11
  %37 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load volatile i32, ptr %38, align 4
  %40 = getelementptr %struct.sbq_wait_state, ptr %38, i32 0, i32 1, i32 1
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  %43 = select i1 %42, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %39, ptr noundef nonnull %43) #11
  %44 = load ptr, ptr %37, align 4
  %45 = getelementptr %struct.sbq_wait_state, ptr %44, i32 1
  %46 = load volatile i32, ptr %45, align 4
  %47 = getelementptr %struct.sbq_wait_state, ptr %44, i32 1, i32 1, i32 1
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  %50 = select i1 %49, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %46, ptr noundef nonnull %50) #11
  %51 = load ptr, ptr %37, align 4
  %52 = getelementptr %struct.sbq_wait_state, ptr %51, i32 2
  %53 = load volatile i32, ptr %52, align 4
  %54 = getelementptr %struct.sbq_wait_state, ptr %51, i32 2, i32 1, i32 1
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  %57 = select i1 %56, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %53, ptr noundef nonnull %57) #11
  %58 = load ptr, ptr %37, align 4
  %59 = getelementptr %struct.sbq_wait_state, ptr %58, i32 3
  %60 = load volatile i32, ptr %59, align 4
  %61 = getelementptr %struct.sbq_wait_state, ptr %58, i32 3, i32 1, i32 1
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  %64 = select i1 %63, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %60, ptr noundef nonnull %64) #11
  %65 = load ptr, ptr %37, align 4
  %66 = getelementptr %struct.sbq_wait_state, ptr %65, i32 4
  %67 = load volatile i32, ptr %66, align 4
  %68 = getelementptr %struct.sbq_wait_state, ptr %65, i32 4, i32 1, i32 1
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  %71 = select i1 %70, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %67, ptr noundef nonnull %71) #11
  %72 = load ptr, ptr %37, align 4
  %73 = getelementptr %struct.sbq_wait_state, ptr %72, i32 5
  %74 = load volatile i32, ptr %73, align 4
  %75 = getelementptr %struct.sbq_wait_state, ptr %72, i32 5, i32 1, i32 1
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  %78 = select i1 %77, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %74, ptr noundef nonnull %78) #11
  %79 = load ptr, ptr %37, align 4
  %80 = getelementptr %struct.sbq_wait_state, ptr %79, i32 6
  %81 = load volatile i32, ptr %80, align 4
  %82 = getelementptr %struct.sbq_wait_state, ptr %79, i32 6, i32 1, i32 1
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  %85 = select i1 %84, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %81, ptr noundef nonnull %85) #11
  %86 = load ptr, ptr %37, align 4
  %87 = getelementptr %struct.sbq_wait_state, ptr %86, i32 7
  %88 = load volatile i32, ptr %87, align 4
  %89 = getelementptr %struct.sbq_wait_state, ptr %86, i32 7, i32 1, i32 1
  %90 = load volatile ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  %92 = select i1 %91, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.15, i32 noundef %88, ptr noundef nonnull %92) #11
  tail call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.10) #11
  %93 = getelementptr inbounds %struct.sbitmap, ptr %0, i32 0, i32 3
  %94 = load i8, ptr %93, align 4, !range !9
  %95 = zext i8 %94 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef %95) #11
  %96 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %97) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_add_wait_queue(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  store ptr %0, ptr %2, align 4
  %7 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #11, !srcloc !12
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #11, !srcloc !39
  %9 = getelementptr inbounds %struct.sbq_wait_state, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sbq_wait, ptr %2, i32 0, i32 1
  tail call void @add_wait_queue(ptr noundef %9, ptr noundef %10) #11
  br label %11

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_del_wait_queue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sbq_wait, ptr %0, i32 0, i32 1, i32 3
  %3 = getelementptr inbounds %struct.sbq_wait, ptr %0, i32 0, i32 1, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sbitmap_queue, ptr %7, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !40
  store ptr null, ptr %0, align 4
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_prepare_to_wait(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %2, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #11, !srcloc !12
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #11, !srcloc !39
  store ptr %0, ptr %2, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = getelementptr inbounds %struct.sbq_wait_state, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.sbq_wait, ptr %2, i32 0, i32 1
  %13 = tail call zeroext i1 @prepare_to_wait_exclusive(ptr noundef %11, ptr noundef %12, i32 noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @prepare_to_wait_exclusive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sbitmap_finish_wait(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sbq_wait_state, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.sbq_wait, ptr %2, i32 0, i32 1
  tail call void @finish_wait(ptr noundef %4, ptr noundef %5) #11
  %6 = load ptr, ptr %2, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sbitmap_queue, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #11, !srcloc !12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #11, !srcloc !40
  store ptr null, ptr %2, align 4
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2151666833}
!12 = !{i64 534502, i64 2148036068, i64 2148036094, i64 2148036141, i64 2148036163, i64 2148036191, i64 2148036211}
!13 = !{i64 606594, i64 606611, i64 606635, i64 606661, i64 606679}
!14 = !{i64 2151667150}
!15 = !{i64 2148105536, i64 2148105562, i64 2148105591, i64 2148105625, i64 2148105656, i64 2148105679}
!16 = !{i64 2151605379}
!17 = !{i64 570354}
!18 = !{i64 2151620898}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 563249, i64 563310}
!21 = !{i64 566266}
!22 = !{i64 2148107792, i64 2148107824, i64 2148107853, i64 2148107887, i64 2148107918, i64 2148107941}
!23 = !{i64 2148209132}
!24 = !{i64 2151722540}
!25 = !{i64 2148212756}
!26 = !{i64 520565, i64 520589, i64 520610, i64 520627, i64 520644}
!27 = !{i64 2148212956}
!28 = !{i64 2148200009}
!29 = !{i64 2148102371, i64 2148102403, i64 2148102432, i64 2148102466, i64 2148102497, i64 2148102520}
!30 = !{i64 2148200212}
!31 = !{i64 2151761115}
!32 = !{i64 2151766496}
!33 = !{i64 2151766725}
!34 = !{i64 2151766952}
!35 = !{i64 2151767103}
!36 = !{i64 2151768542}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = !{i64 2148099330, i64 2148099356, i64 2148099385, i64 2148099419, i64 2148099450, i64 2148099473}
!40 = !{i64 2148101687, i64 2148101713, i64 2148101742, i64 2148101776, i64 2148101807, i64 2148101830}
