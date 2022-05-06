; ModuleID = '/llk/IR/lib/kfifo.c_pt.bc'
source_filename = "../lib/kfifo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_free\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_init:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_init\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_in:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_in\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_in:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out_peek\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out_peek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_from_user\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_to_user\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_in_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_in_prepare\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_in_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_out_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_out_prepare\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_out_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_max_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_max_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_max_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_len_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_len_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_len_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_in_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_in_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_in_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out_peek_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out_peek_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out_peek_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_out_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_out_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_out_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_skip_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_skip_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_skip_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_from_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_from_user_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_from_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_to_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_to_user_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_to_user_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_in_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_in_prepare_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_in_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_in_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_in_finish_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_in_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_out_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_out_prepare_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_out_prepare_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kfifo_dma_out_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22__kfifo_dma_out_finish_r\22\09\09\09\09\09"
module asm "__kstrtabns___kfifo_dma_out_finish_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.35, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.35 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__kstrtab___kfifo_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_alloc to i32), ptr @__kstrtab___kfifo_alloc, ptr @__kstrtabns___kfifo_alloc }, section "___ksymtab+__kfifo_alloc", align 4
@__kstrtab___kfifo_free = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_free = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_free to i32), ptr @__kstrtab___kfifo_free, ptr @__kstrtabns___kfifo_free }, section "___ksymtab+__kfifo_free", align 4
@__kstrtab___kfifo_init = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_init = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_init to i32), ptr @__kstrtab___kfifo_init, ptr @__kstrtabns___kfifo_init }, section "___ksymtab+__kfifo_init", align 4
@__kstrtab___kfifo_in = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_in = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_in = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_in to i32), ptr @__kstrtab___kfifo_in, ptr @__kstrtabns___kfifo_in }, section "___ksymtab+__kfifo_in", align 4
@__kstrtab___kfifo_out_peek = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out_peek = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out_peek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out_peek to i32), ptr @__kstrtab___kfifo_out_peek, ptr @__kstrtabns___kfifo_out_peek }, section "___ksymtab+__kfifo_out_peek", align 4
@__kstrtab___kfifo_out = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out to i32), ptr @__kstrtab___kfifo_out, ptr @__kstrtabns___kfifo_out }, section "___ksymtab+__kfifo_out", align 4
@__kstrtab___kfifo_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_from_user to i32), ptr @__kstrtab___kfifo_from_user, ptr @__kstrtabns___kfifo_from_user }, section "___ksymtab+__kfifo_from_user", align 4
@__kstrtab___kfifo_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_to_user to i32), ptr @__kstrtab___kfifo_to_user, ptr @__kstrtabns___kfifo_to_user }, section "___ksymtab+__kfifo_to_user", align 4
@__kstrtab___kfifo_dma_in_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_in_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_in_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_in_prepare to i32), ptr @__kstrtab___kfifo_dma_in_prepare, ptr @__kstrtabns___kfifo_dma_in_prepare }, section "___ksymtab+__kfifo_dma_in_prepare", align 4
@__kstrtab___kfifo_dma_out_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_out_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_out_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_out_prepare to i32), ptr @__kstrtab___kfifo_dma_out_prepare, ptr @__kstrtabns___kfifo_dma_out_prepare }, section "___ksymtab+__kfifo_dma_out_prepare", align 4
@__kstrtab___kfifo_max_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_max_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_max_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_max_r to i32), ptr @__kstrtab___kfifo_max_r, ptr @__kstrtabns___kfifo_max_r }, section "___ksymtab+__kfifo_max_r", align 4
@__kstrtab___kfifo_len_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_len_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_len_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_len_r to i32), ptr @__kstrtab___kfifo_len_r, ptr @__kstrtabns___kfifo_len_r }, section "___ksymtab+__kfifo_len_r", align 4
@__kstrtab___kfifo_in_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_in_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_in_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_in_r to i32), ptr @__kstrtab___kfifo_in_r, ptr @__kstrtabns___kfifo_in_r }, section "___ksymtab+__kfifo_in_r", align 4
@__kstrtab___kfifo_out_peek_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out_peek_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out_peek_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out_peek_r to i32), ptr @__kstrtab___kfifo_out_peek_r, ptr @__kstrtabns___kfifo_out_peek_r }, section "___ksymtab+__kfifo_out_peek_r", align 4
@__kstrtab___kfifo_out_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_out_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_out_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_out_r to i32), ptr @__kstrtab___kfifo_out_r, ptr @__kstrtabns___kfifo_out_r }, section "___ksymtab+__kfifo_out_r", align 4
@__kstrtab___kfifo_skip_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_skip_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_skip_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_skip_r to i32), ptr @__kstrtab___kfifo_skip_r, ptr @__kstrtabns___kfifo_skip_r }, section "___ksymtab+__kfifo_skip_r", align 4
@__kstrtab___kfifo_from_user_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_from_user_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_from_user_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_from_user_r to i32), ptr @__kstrtab___kfifo_from_user_r, ptr @__kstrtabns___kfifo_from_user_r }, section "___ksymtab+__kfifo_from_user_r", align 4
@__kstrtab___kfifo_to_user_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_to_user_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_to_user_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_to_user_r to i32), ptr @__kstrtab___kfifo_to_user_r, ptr @__kstrtabns___kfifo_to_user_r }, section "___ksymtab+__kfifo_to_user_r", align 4
@__kstrtab___kfifo_dma_in_prepare_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_in_prepare_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_in_prepare_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_in_prepare_r to i32), ptr @__kstrtab___kfifo_dma_in_prepare_r, ptr @__kstrtabns___kfifo_dma_in_prepare_r }, section "___ksymtab+__kfifo_dma_in_prepare_r", align 4
@__kstrtab___kfifo_dma_in_finish_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_in_finish_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_in_finish_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_in_finish_r to i32), ptr @__kstrtab___kfifo_dma_in_finish_r, ptr @__kstrtabns___kfifo_dma_in_finish_r }, section "___ksymtab+__kfifo_dma_in_finish_r", align 4
@__kstrtab___kfifo_dma_out_prepare_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_out_prepare_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_out_prepare_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_out_prepare_r to i32), ptr @__kstrtab___kfifo_dma_out_prepare_r, ptr @__kstrtabns___kfifo_dma_out_prepare_r }, section "___ksymtab+__kfifo_dma_out_prepare_r", align 4
@__kstrtab___kfifo_dma_out_finish_r = external dso_local constant [0 x i8], align 1
@__kstrtabns___kfifo_dma_out_finish_r = external dso_local constant [0 x i8], align 1
@__ksymtab___kfifo_dma_out_finish_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kfifo_dma_out_finish_r to i32), ptr @__kstrtab___kfifo_dma_out_finish_r, ptr @__kstrtabns___kfifo_dma_out_finish_r }, section "___ksymtab+__kfifo_dma_out_finish_r", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab___kfifo_alloc, ptr @__ksymtab___kfifo_dma_in_finish_r, ptr @__ksymtab___kfifo_dma_in_prepare, ptr @__ksymtab___kfifo_dma_in_prepare_r, ptr @__ksymtab___kfifo_dma_out_finish_r, ptr @__ksymtab___kfifo_dma_out_prepare, ptr @__ksymtab___kfifo_dma_out_prepare_r, ptr @__ksymtab___kfifo_free, ptr @__ksymtab___kfifo_from_user, ptr @__ksymtab___kfifo_from_user_r, ptr @__ksymtab___kfifo_in, ptr @__ksymtab___kfifo_in_r, ptr @__ksymtab___kfifo_init, ptr @__ksymtab___kfifo_len_r, ptr @__ksymtab___kfifo_max_r, ptr @__ksymtab___kfifo_out, ptr @__ksymtab___kfifo_out_peek, ptr @__ksymtab___kfifo_out_peek_r, ptr @__ksymtab___kfifo_out_r, ptr @__ksymtab___kfifo_skip_r, ptr @__ksymtab___kfifo_to_user, ptr @__ksymtab___kfifo_to_user_r], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_alloc(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %1, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  store i32 0, ptr %0, align 4
  %8 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  store i32 %2, ptr %9, align 4
  br label %26

10:                                               ; preds = %4
  %11 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #12, !range !8
  %12 = sub nuw nsw i32 32, %11
  %13 = shl nuw i32 1, %12
  store i32 0, ptr %0, align 4
  %14 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  store i32 %2, ptr %15, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %13) #12
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %26, label %18, !prof !9

18:                                               ; preds = %10
  %19 = extractvalue { i32, i1 } %16, 0
  %20 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %19, i32 noundef %3) #13
  %21 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  %23 = add i32 %13, -1
  %24 = select i1 %22, i32 0, i32 %23
  %25 = select i1 %22, i32 -12, i32 0
  br label %29

26:                                               ; preds = %10, %7
  %27 = phi i32 [ -22, %7 ], [ -12, %10 ]
  %28 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  store ptr null, ptr %28, align 4
  br label %29

29:                                               ; preds = %26, %18
  %30 = phi i32 [ %24, %18 ], [ 0, %26 ]
  %31 = phi i32 [ %25, %18 ], [ %27, %26 ]
  %32 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  store i32 %30, ptr %32, align 4
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__kfifo_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @__kfifo_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = udiv i32 %2, %3
  %6 = icmp ule i32 %3, %2
  %7 = tail call i32 @llvm.ctpop.i32(i32 %5) #12, !range !8
  %8 = icmp ult i32 %7, 2
  %9 = and i1 %6, %8
  %10 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #12, !range !8
  %11 = lshr i32 -2147483648, %10
  %12 = select i1 %9, i32 %5, i32 %11
  store i32 0, ptr %0, align 4
  %13 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  store i32 %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  store ptr %1, ptr %15, align 4
  %16 = icmp ult i32 %12, 2
  %17 = select i1 %16, i32 -22, i32 0
  %18 = add i32 %12, -1
  %19 = select i1 %16, i32 0, i32 %18
  %20 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_in(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %5, 1
  %10 = sub i32 %9, %6
  %11 = add i32 %10, %8
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %2)
  %13 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %6, %5
  %16 = mul i32 %14, %15
  %17 = mul i32 %14, %9
  %18 = mul i32 %12, %14
  %19 = sub i32 %17, %16
  %20 = tail call i32 @llvm.umin.i32(i32 %18, i32 %19) #12
  %21 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %1, i32 %20, i1 false) #12
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr i8, ptr %1, i32 %20
  %26 = sub i32 %18, %20
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %25, i32 %26, i1 false) #12
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !10
  %27 = load i32, ptr %0, align 4
  %28 = add i32 %27, %12
  store i32 %28, ptr %0, align 4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out_peek(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %2)
  %9 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %10, %6
  %15 = mul i32 %14, %13
  %16 = mul i32 %11, %13
  %17 = mul i32 %13, %8
  %18 = sub i32 %16, %15
  %19 = tail call i32 @llvm.umin.i32(i32 %17, i32 %18) #12
  %20 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %22, i32 %19, i1 false) #12
  %23 = getelementptr i8, ptr %1, i32 %19
  %24 = load ptr, ptr %20, align 4
  %25 = sub i32 %17, %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %24, i32 %25, i1 false) #12
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !11
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #0 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %2) #12
  %9 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %10, %6
  %15 = mul i32 %14, %13
  %16 = mul i32 %11, %13
  %17 = mul i32 %13, %8
  %18 = sub i32 %16, %15
  %19 = tail call i32 @llvm.umin.i32(i32 %17, i32 %18) #12
  %20 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %22, i32 %19, i1 false) #12
  %23 = getelementptr i8, ptr %1, i32 %19
  %24 = load ptr, ptr %20, align 4
  %25 = sub i32 %17, %19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %24, i32 %25, i1 false) #12
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !11
  %26 = load i32, ptr %5, align 4
  %27 = add i32 %26, %8
  store i32 %27, ptr %5, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_from_user(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = udiv i32 %2, %6
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ %2, %4 ]
  %12 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %13, 1
  %18 = sub i32 %17, %14
  %19 = add i32 %18, %16
  %20 = tail call i32 @llvm.umin.i32(i32 %11, i32 %19)
  %21 = tail call fastcc i32 @kfifo_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %20, i32 noundef %14, ptr noundef %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !12

23:                                               ; preds = %10
  %24 = sub i32 %20, %21
  br label %25

25:                                               ; preds = %23, %10
  %26 = phi i32 [ %24, %23 ], [ %20, %10 ]
  %27 = phi i32 [ -14, %23 ], [ 0, %10 ]
  %28 = load i32, ptr %0, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %0, align 4
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kfifo_copy_from_user(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %7, %3
  %12 = mul i32 %11, %10
  %13 = mul i32 %8, %10
  %14 = mul i32 %10, %2
  %15 = sub i32 %13, %12
  %16 = tail call i32 @llvm.umin.i32(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  %20 = icmp slt i32 %16, 0
  %21 = load i1, ptr @check_copy_size.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %5
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %25

25:                                               ; preds = %24, %5
  br i1 %20, label %43, label %26, !prof !9

26:                                               ; preds = %25
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %16, i32 -1090519040) #14, !srcloc !13
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37, !prof !12

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #15, !srcloc !14
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  %36 = tail call i32 @arm_copy_from_user(ptr noundef %19, ptr noundef %1, i32 noundef %16) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i32 [ %36, %30 ], [ %16, %26 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40, !prof !12

40:                                               ; preds = %37
  %41 = sub i32 %16, %38
  %42 = getelementptr i8, ptr %19, i32 %41
  tail call void @llvm.memset.p0.i32(ptr align 1 %42, i8 0, i32 %38, i1 false) #12
  br label %43

43:                                               ; preds = %40, %25
  %44 = phi i32 [ %38, %40 ], [ %16, %25 ]
  %45 = add i32 %10, -1
  %46 = add i32 %45, %14
  %47 = sub i32 %46, %16
  %48 = add i32 %47, %44
  br label %80

49:                                               ; preds = %37
  %50 = load ptr, ptr %17, align 4
  %51 = getelementptr i8, ptr %1, i32 %16
  %52 = sub i32 %14, %16
  %53 = icmp slt i32 %52, 0
  %54 = load i1, ptr @check_copy_size.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58, !prof !9

57:                                               ; preds = %49
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %58

58:                                               ; preds = %57, %49
  br i1 %53, label %76, label %59, !prof !9

59:                                               ; preds = %58
  %60 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %51, i32 %52, i32 -1090519040) #14, !srcloc !13
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70, !prof !12

63:                                               ; preds = %59
  %64 = tail call ptr @llvm.thread.pointer() #12
  %65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %66 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %65) #15, !srcloc !14
  %67 = and i32 %66, -13
  %68 = or i32 %67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  %69 = tail call i32 @arm_copy_from_user(ptr noundef %50, ptr noundef %51, i32 noundef %52) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  br label %70

70:                                               ; preds = %63, %59
  %71 = phi i32 [ %69, %63 ], [ %52, %59 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73, !prof !12

73:                                               ; preds = %70
  %74 = sub i32 %52, %71
  %75 = getelementptr i8, ptr %50, i32 %74
  tail call void @llvm.memset.p0.i32(ptr align 1 %75, i8 0, i32 %71, i1 false) #12
  br label %76

76:                                               ; preds = %73, %58
  %77 = phi i32 [ %71, %73 ], [ %52, %58 ]
  %78 = add i32 %10, -1
  %79 = add i32 %78, %77
  br label %80

80:                                               ; preds = %76, %43
  %81 = phi i32 [ %79, %76 ], [ %48, %43 ]
  %82 = udiv i32 %81, %10
  br label %83

83:                                               ; preds = %80, %70
  %84 = phi i32 [ 0, %70 ], [ %82, %80 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !17
  %85 = mul i32 %84, %10
  %86 = sub i32 %14, %85
  store i32 %86, ptr %4, align 4
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_to_user(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = udiv i32 %2, %6
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ %2, %4 ]
  %12 = load i32, ptr %0, align 4
  %13 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = tail call i32 @llvm.umin.i32(i32 %11, i32 %15)
  %17 = tail call fastcc i32 @kfifo_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %16, i32 noundef %14, ptr noundef %3)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !12

19:                                               ; preds = %10
  %20 = sub i32 %16, %17
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %20, %19 ], [ %16, %10 ]
  %23 = phi i32 [ -14, %19 ], [ 0, %10 ]
  %24 = load i32, ptr %13, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %13, align 4
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kfifo_copy_to_user(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %7, %3
  %12 = mul i32 %11, %10
  %13 = mul i32 %8, %10
  %14 = mul i32 %10, %2
  %15 = sub i32 %13, %12
  %16 = tail call i32 @llvm.umin.i32(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %12
  %20 = icmp slt i32 %16, 0
  %21 = load i1, ptr @check_copy_size.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %5
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %25

25:                                               ; preds = %24, %5
  br i1 %20, label %40, label %26, !prof !9

26:                                               ; preds = %25
  %27 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %16, i32 -1090519040) #14, !srcloc !18
  %28 = extractvalue { i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = tail call ptr @llvm.thread.pointer() #12
  %32 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %33 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %32) #15, !srcloc !14
  %34 = and i32 %33, -13
  %35 = or i32 %34, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  %36 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %19, i32 noundef %16) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi i32 [ %36, %30 ], [ %16, %26 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40, !prof !12

40:                                               ; preds = %37, %25
  %41 = phi i32 [ %38, %37 ], [ %16, %25 ]
  %42 = add i32 %10, -1
  %43 = add i32 %42, %14
  %44 = sub i32 %43, %16
  %45 = add i32 %44, %41
  br label %74

46:                                               ; preds = %37
  %47 = getelementptr i8, ptr %1, i32 %16
  %48 = load ptr, ptr %17, align 4
  %49 = sub i32 %14, %16
  %50 = icmp slt i32 %49, 0
  %51 = load i1, ptr @check_copy_size.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !9

54:                                               ; preds = %46
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %55

55:                                               ; preds = %54, %46
  br i1 %50, label %70, label %56, !prof !9

56:                                               ; preds = %55
  %57 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %47, i32 %49, i32 -1090519040) #14, !srcloc !18
  %58 = extractvalue { i32, i32 } %57, 0
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #12
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 3
  %63 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %62) #15, !srcloc !14
  %64 = and i32 %63, -13
  %65 = or i32 %64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  %66 = tail call i32 @arm_copy_to_user(ptr noundef %47, ptr noundef %48, i32 noundef %49) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #12, !srcloc !15
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !16
  br label %67

67:                                               ; preds = %60, %56
  %68 = phi i32 [ %66, %60 ], [ %49, %56 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70, !prof !12

70:                                               ; preds = %67, %55
  %71 = phi i32 [ %68, %67 ], [ %49, %55 ]
  %72 = add i32 %10, -1
  %73 = add i32 %72, %71
  br label %74

74:                                               ; preds = %70, %40
  %75 = phi i32 [ %73, %70 ], [ %45, %40 ]
  %76 = udiv i32 %75, %10
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi i32 [ 0, %67 ], [ %76, %74 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !19
  %79 = mul i32 %78, %10
  %80 = sub i32 %14, %79
  store i32 %80, ptr %4, align 4
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_in_prepare(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %6, 1
  %11 = sub i32 %10, %7
  %12 = add i32 %11, %9
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %3)
  %14 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %7, %6
  %17 = mul i32 %15, %16
  %18 = mul i32 %15, %10
  %19 = mul i32 %13, %15
  %20 = sub i32 %18, %17
  %21 = tail call i32 @llvm.umin.i32(i32 %19, i32 %20) #12
  %22 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %17
  %25 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %1, ptr noundef %24, i32 noundef %2, i32 noundef %21) #12
  %26 = getelementptr %struct.scatterlist, ptr %1, i32 %25
  %27 = load ptr, ptr %22, align 4
  %28 = sub i32 %2, %25
  %29 = sub i32 %19, %21
  %30 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29) #12
  %31 = add i32 %30, %25
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_out_prepare(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %3)
  %10 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  %13 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %11, %7
  %16 = mul i32 %15, %14
  %17 = mul i32 %12, %14
  %18 = mul i32 %14, %9
  %19 = sub i32 %17, %16
  %20 = tail call i32 @llvm.umin.i32(i32 %18, i32 %19) #12
  %21 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 %16
  %24 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %1, ptr noundef %23, i32 noundef %2, i32 noundef %20) #12
  %25 = getelementptr %struct.scatterlist, ptr %1, i32 %24
  %26 = load ptr, ptr %21, align 4
  %27 = sub i32 %2, %24
  %28 = sub i32 %18, %20
  %29 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28) #12
  %30 = add i32 %29, %24
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__kfifo_max_r(i32 noundef %0, i32 noundef %1) #3 {
  %3 = shl i32 %1, 3
  %4 = shl nsw i32 -1, %3
  %5 = xor i32 %4, -1
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %0)
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @__kfifo_len_r(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = add i32 %8, 1
  %16 = and i32 %15, %4
  %17 = getelementptr i8, ptr %6, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %20, %12
  br label %22

22:                                               ; preds = %14, %2
  %23 = phi i32 [ %21, %14 ], [ %12, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_in_r(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, %2
  %6 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %0, align 4
  %9 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %7, 1
  %12 = sub i32 %11, %8
  %13 = add i32 %12, %10
  %14 = icmp ugt i32 %5, %13
  br i1 %14, label %49, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = trunc i32 %2 to i8
  %19 = and i32 %8, %7
  %20 = getelementptr i8, ptr %17, i32 %19
  store i8 %18, ptr %20, align 1
  %21 = icmp ugt i32 %3, 1
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = lshr i32 %2, 8
  %24 = trunc i32 %23 to i8
  %25 = load i32, ptr %0, align 4
  %26 = add i32 %25, 1
  %27 = and i32 %26, %7
  %28 = getelementptr i8, ptr %17, i32 %27
  store i8 %24, ptr %28, align 1
  br label %29

29:                                               ; preds = %22, %15
  %30 = load i32, ptr %0, align 4
  %31 = add i32 %30, %3
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %32, %31
  %37 = mul i32 %36, %35
  %38 = mul i32 %33, %35
  %39 = mul i32 %35, %2
  %40 = sub i32 %38, %37
  %41 = tail call i32 @llvm.umin.i32(i32 %39, i32 %40) #12
  %42 = load ptr, ptr %16, align 4
  %43 = getelementptr i8, ptr %42, i32 %37
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr align 1 %1, i32 %41, i1 false) #12
  %44 = load ptr, ptr %16, align 4
  %45 = getelementptr i8, ptr %1, i32 %41
  %46 = sub i32 %39, %41
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %44, ptr align 1 %45, i32 %46, i1 false) #12
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !10
  %47 = load i32, ptr %0, align 4
  %48 = add i32 %47, %5
  store i32 %48, ptr %0, align 4
  br label %49

49:                                               ; preds = %29, %4
  %50 = phi i32 [ %2, %29 ], [ 0, %4 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out_peek_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %44, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = and i32 %11, %7
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %3, 1
  br i1 %18, label %27, label %19

19:                                               ; preds = %9
  %20 = add i32 %7, 1
  %21 = and i32 %11, %20
  %22 = getelementptr i8, ptr %13, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %25, %17
  br label %27

27:                                               ; preds = %19, %9
  %28 = phi i32 [ %26, %19 ], [ %17, %9 ]
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %2) #12
  %30 = add i32 %7, %3
  %31 = add i32 %11, 1
  %32 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %11, %30
  %35 = mul i32 %33, %34
  %36 = mul i32 %33, %31
  %37 = mul i32 %33, %29
  %38 = sub i32 %36, %35
  %39 = tail call i32 @llvm.umin.i32(i32 %37, i32 %38) #12
  %40 = getelementptr i8, ptr %13, i32 %35
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %40, i32 %39, i1 false) #12
  %41 = getelementptr i8, ptr %1, i32 %39
  %42 = load ptr, ptr %12, align 4
  %43 = sub i32 %37, %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %42, i32 %43, i1 false) #12
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !11
  br label %44

44:                                               ; preds = %27, %4
  %45 = phi i32 [ %29, %27 ], [ 0, %4 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_out_r(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %47, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = and i32 %11, %7
  %15 = getelementptr i8, ptr %13, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %3, 1
  br i1 %18, label %27, label %19

19:                                               ; preds = %9
  %20 = add i32 %7, 1
  %21 = and i32 %11, %20
  %22 = getelementptr i8, ptr %13, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %25, %17
  br label %27

27:                                               ; preds = %19, %9
  %28 = phi i32 [ %26, %19 ], [ %17, %9 ]
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %2) #12
  %30 = add i32 %7, %3
  %31 = add i32 %11, 1
  %32 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %11, %30
  %35 = mul i32 %33, %34
  %36 = mul i32 %33, %31
  %37 = mul i32 %33, %29
  %38 = sub i32 %36, %35
  %39 = tail call i32 @llvm.umin.i32(i32 %37, i32 %38) #12
  %40 = getelementptr i8, ptr %13, i32 %35
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %40, i32 %39, i1 false) #12
  %41 = getelementptr i8, ptr %1, i32 %39
  %42 = load ptr, ptr %12, align 4
  %43 = sub i32 %37, %39
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %42, i32 %43, i1 false) #12
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #12, !srcloc !11
  %44 = add i32 %28, %3
  %45 = load i32, ptr %6, align 4
  %46 = add i32 %44, %45
  store i32 %46, ptr %6, align 4
  br label %47

47:                                               ; preds = %27, %4
  %48 = phi i32 [ %29, %27 ], [ 0, %4 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__kfifo_skip_r(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = add i32 %8, 1
  %16 = and i32 %15, %4
  %17 = getelementptr i8, ptr %6, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %20, %12
  br label %22

22:                                               ; preds = %14, %2
  %23 = phi i32 [ %21, %14 ], [ %12, %2 ]
  %24 = add i32 %8, %1
  %25 = add i32 %24, %23
  store i32 %25, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_from_user_r(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = shl i32 %4, 3
  %7 = shl nsw i32 -1, %6
  %8 = xor i32 %7, -1
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %2) #12
  %10 = add i32 %9, %4
  %11 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i32, ptr %0, align 4
  %14 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %12, 1
  %17 = sub i32 %16, %13
  %18 = add i32 %17, %15
  %19 = icmp ugt i32 %10, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 0, ptr %3, align 4
  br label %44

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = trunc i32 %9 to i8
  %25 = and i32 %13, %12
  %26 = getelementptr i8, ptr %23, i32 %25
  store i8 %24, ptr %26, align 1
  %27 = icmp ugt i32 %4, 1
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = lshr i32 %9, 8
  %30 = trunc i32 %29 to i8
  %31 = load i32, ptr %0, align 4
  %32 = add i32 %31, 1
  %33 = and i32 %32, %12
  %34 = getelementptr i8, ptr %23, i32 %33
  store i8 %30, ptr %34, align 1
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32, ptr %0, align 4
  %37 = add i32 %36, %4
  %38 = tail call fastcc i32 @kfifo_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %9, i32 noundef %37, ptr noundef %3)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !12

40:                                               ; preds = %35
  store i32 0, ptr %3, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, ptr %0, align 4
  %43 = add i32 %42, %10
  store i32 %43, ptr %0, align 4
  br label %44

44:                                               ; preds = %41, %40, %20
  %45 = phi i32 [ 0, %20 ], [ -14, %40 ], [ 0, %41 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_to_user_r(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 0, ptr %3, align 4
  br label %40

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = and i32 %13, %8
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %4, 1
  br i1 %20, label %29, label %21

21:                                               ; preds = %11
  %22 = add i32 %8, 1
  %23 = and i32 %13, %22
  %24 = getelementptr i8, ptr %15, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = or i32 %27, %19
  br label %29

29:                                               ; preds = %21, %11
  %30 = phi i32 [ %28, %21 ], [ %19, %11 ]
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %2)
  %32 = add i32 %8, %4
  %33 = tail call fastcc i32 @kfifo_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %31, i32 noundef %32, ptr noundef %3)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !12

35:                                               ; preds = %29
  store i32 0, ptr %3, align 4
  br label %40

36:                                               ; preds = %29
  %37 = add i32 %30, %4
  %38 = load i32, ptr %7, align 4
  %39 = add i32 %37, %38
  store i32 %39, ptr %7, align 4
  br label %40

40:                                               ; preds = %36, %35, %10
  %41 = phi i32 [ 0, %10 ], [ -14, %35 ], [ 0, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_in_prepare_r(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/kfifo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #12, !srcloc !20
  unreachable

8:                                                ; preds = %5
  %9 = shl i32 %4, 3
  %10 = shl nsw i32 -1, %9
  %11 = xor i32 %10, -1
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %3) #12
  %13 = add i32 %12, %4
  %14 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %0, align 4
  %17 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %15, 1
  %20 = sub i32 %19, %16
  %21 = add i32 %20, %18
  %22 = icmp ugt i32 %13, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %8
  %24 = add i32 %16, %4
  %25 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %24, %15
  %28 = mul i32 %26, %27
  %29 = mul i32 %26, %19
  %30 = mul i32 %26, %12
  %31 = sub i32 %29, %28
  %32 = tail call i32 @llvm.umin.i32(i32 %30, i32 %31) #12
  %33 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 %28
  %36 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %1, ptr noundef %35, i32 noundef %2, i32 noundef %32) #12
  %37 = getelementptr %struct.scatterlist, ptr %1, i32 %36
  %38 = load ptr, ptr %33, align 4
  %39 = sub i32 %2, %36
  %40 = sub i32 %30, %32
  %41 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %37, ptr noundef %38, i32 noundef %39, i32 noundef %40) #12
  %42 = add i32 %41, %36
  br label %43

43:                                               ; preds = %23, %8
  %44 = phi i32 [ %42, %23 ], [ 0, %8 ]
  ret i32 %44
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__kfifo_dma_in_finish_r(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = shl i32 %2, 3
  %5 = shl nsw i32 -1, %4
  %6 = xor i32 %5, -1
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 %1) #12
  %8 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = trunc i32 %7 to i8
  %13 = load i32, ptr %0, align 4
  %14 = and i32 %13, %9
  %15 = getelementptr i8, ptr %11, i32 %14
  store i8 %12, ptr %15, align 1
  %16 = icmp ugt i32 %2, 1
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = lshr i32 %7, 8
  %19 = trunc i32 %18 to i8
  %20 = load i32, ptr %0, align 4
  %21 = add i32 %20, 1
  %22 = and i32 %21, %9
  %23 = getelementptr i8, ptr %11, i32 %22
  store i8 %19, ptr %23, align 1
  br label %24

24:                                               ; preds = %17, %3
  %25 = add i32 %7, %2
  %26 = load i32, ptr %0, align 4
  %27 = add i32 %25, %26
  store i32 %27, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kfifo_dma_out_prepare_r(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/kfifo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 574, 0\0A.popsection", ""() #12, !srcloc !21
  unreachable

8:                                                ; preds = %5
  %9 = shl i32 %4, 3
  %10 = shl nsw i32 -1, %9
  %11 = xor i32 %10, -1
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %3) #12
  %13 = add i32 %12, %4
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = icmp ugt i32 %13, %17
  br i1 %18, label %42, label %19

19:                                               ; preds = %8
  %20 = add i32 %16, %4
  %21 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  %24 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %22, %20
  %27 = mul i32 %26, %25
  %28 = mul i32 %23, %25
  %29 = mul i32 %25, %12
  %30 = sub i32 %28, %27
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %30) #12
  %32 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 %27
  %35 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %1, ptr noundef %34, i32 noundef %2, i32 noundef %31) #12
  %36 = getelementptr %struct.scatterlist, ptr %1, i32 %35
  %37 = load ptr, ptr %32, align 4
  %38 = sub i32 %2, %35
  %39 = sub i32 %29, %31
  %40 = tail call fastcc i32 @setup_sgl_buf(ptr noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %39) #12
  %41 = add i32 %40, %35
  br label %42

42:                                               ; preds = %19, %8
  %43 = phi i32 [ %41, %19 ], [ 0, %8 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__kfifo_dma_out_finish_r(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.__kfifo, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %4
  %10 = getelementptr i8, ptr %6, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = add i32 %8, 1
  %16 = and i32 %15, %4
  %17 = getelementptr i8, ptr %6, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 8
  %21 = or i32 %20, %12
  br label %22

22:                                               ; preds = %14, %2
  %23 = phi i32 [ %21, %14 ], [ %12, %2 ]
  %24 = add i32 %8, %1
  %25 = add i32 %24, %23
  store i32 %25, ptr %7, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @setup_sgl_buf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  %6 = icmp eq i32 %3, 0
  %7 = or i1 %5, %6
  br i1 %7, label %93, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %1 to i32
  %11 = add i32 %10, 1073741824
  %12 = lshr i32 %11, 12
  %13 = getelementptr %struct.page, ptr %9, i32 %12
  %14 = and i32 %10, 4095
  %15 = sub nuw nsw i32 4096, %14
  %16 = icmp ugt i32 %15, %3
  br i1 %16, label %76, label %17

17:                                               ; preds = %8
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %19

19:                                               ; preds = %64, %17
  %20 = phi i32 [ %65, %64 ], [ %18, %17 ]
  %21 = phi ptr [ %66, %64 ], [ %9, %17 ]
  %22 = phi i32 [ %74, %64 ], [ %15, %17 ]
  %23 = phi i32 [ %73, %64 ], [ 4096, %17 ]
  %24 = phi ptr [ %72, %64 ], [ %13, %17 ]
  %25 = phi i32 [ %71, %64 ], [ %14, %17 ]
  %26 = phi i32 [ %69, %64 ], [ 0, %17 ]
  %27 = phi i32 [ %68, %64 ], [ %3, %17 ]
  %28 = phi ptr [ %30, %64 ], [ %1, %17 ]
  %29 = phi ptr [ %67, %64 ], [ %0, %17 ]
  %30 = getelementptr i8, ptr %28, i32 4096
  %31 = ptrtoint ptr %30 to i32
  %32 = add i32 %31, 1073741824
  %33 = lshr i32 %32, 12
  %34 = getelementptr %struct.page, ptr %21, i32 %33
  %35 = ptrtoint ptr %24 to i32
  %36 = ptrtoint ptr %21 to i32
  %37 = sub i32 %35, %36
  %38 = lshr exact i32 %37, 5
  %39 = add i32 %38, %20
  %40 = shl i32 %39, 12
  %41 = add i32 %20, %33
  %42 = shl i32 %41, 12
  %43 = sub i32 %42, %23
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %64, label %45

45:                                               ; preds = %19
  %46 = and i32 %35, 3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !12

48:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

49:                                               ; preds = %45
  %50 = load i32, ptr %29, align 4
  %51 = and i32 %50, 3
  %52 = or i32 %51, %35
  store i32 %52, ptr %29, align 4
  %53 = getelementptr inbounds %struct.scatterlist, ptr %29, i32 0, i32 1
  store i32 %25, ptr %53, align 4
  %54 = getelementptr inbounds %struct.scatterlist, ptr %29, i32 0, i32 2
  store i32 %22, ptr %54, align 4
  %55 = tail call ptr @sg_next(ptr noundef %29) #12
  %56 = add i32 %26, 1
  %57 = icmp eq i32 %56, %2
  %58 = icmp eq ptr %55, null
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %93, label %60

60:                                               ; preds = %49
  %61 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %62 = load ptr, ptr @mem_map, align 4
  %63 = sub i32 %27, %22
  br label %64

64:                                               ; preds = %60, %19
  %65 = phi i32 [ %61, %60 ], [ %20, %19 ]
  %66 = phi ptr [ %62, %60 ], [ %21, %19 ]
  %67 = phi ptr [ %55, %60 ], [ %29, %19 ]
  %68 = phi i32 [ %63, %60 ], [ %27, %19 ]
  %69 = phi i32 [ %56, %60 ], [ %26, %19 ]
  %70 = phi i32 [ 0, %60 ], [ %23, %19 ]
  %71 = phi i32 [ 0, %60 ], [ %25, %19 ]
  %72 = phi ptr [ %34, %60 ], [ %24, %19 ]
  %73 = add i32 %70, 4096
  %74 = sub i32 %73, %71
  %75 = icmp ult i32 %68, %74
  br i1 %75, label %76, label %19

76:                                               ; preds = %64, %8
  %77 = phi ptr [ %0, %8 ], [ %67, %64 ]
  %78 = phi i32 [ %3, %8 ], [ %68, %64 ]
  %79 = phi i32 [ 0, %8 ], [ %69, %64 ]
  %80 = phi i32 [ %14, %8 ], [ %71, %64 ]
  %81 = phi ptr [ %13, %8 ], [ %72, %64 ]
  %82 = ptrtoint ptr %81 to i32
  %83 = and i32 %82, 3
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85, !prof !12

85:                                               ; preds = %76
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !22
  unreachable

86:                                               ; preds = %76
  %87 = load i32, ptr %77, align 4
  %88 = and i32 %87, 3
  %89 = or i32 %88, %82
  store i32 %89, ptr %77, align 4
  %90 = getelementptr inbounds %struct.scatterlist, ptr %77, i32 0, i32 1
  store i32 %80, ptr %90, align 4
  %91 = getelementptr inbounds %struct.scatterlist, ptr %77, i32 0, i32 2
  store i32 %78, ptr %91, align 4
  %92 = add i32 %79, 1
  br label %93

93:                                               ; preds = %86, %49, %4
  %94 = phi i32 [ %92, %86 ], [ 0, %4 ], [ %56, %49 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind readonly }

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
!8 = !{i32 0, i32 33}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152172830}
!11 = !{i64 2152175398}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2150661584, i64 2150661609}
!14 = !{i64 3157696}
!15 = !{i64 3157893}
!16 = !{i64 2150643172}
!17 = !{i64 2152179407}
!18 = !{i64 2150662162, i64 2150662187}
!19 = !{i64 2152186420}
!20 = !{i64 2152203787, i64 2152204263, i64 2152203824, i64 2152203880, i64 2152203914, i64 2152203938, i64 2152203979, i64 2152204000, i64 2152204028, i64 2152204062}
!21 = !{i64 2152207543, i64 2152208019, i64 2152207580, i64 2152207636, i64 2152207670, i64 2152207694, i64 2152207735, i64 2152207756, i64 2152207784, i64 2152207818}
!22 = !{i64 2152161674, i64 2152162166, i64 2152161711, i64 2152161767, i64 2152161801, i64 2152161825, i64 2152161866, i64 2152161887, i64 2152161915, i64 2152161949}
