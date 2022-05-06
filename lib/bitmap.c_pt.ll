; ModuleID = '/llk/IR/lib/bitmap.c_pt.bc'
source_filename = "../lib/bitmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_equal\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_complement:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_complement\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_complement:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_shift_right:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_shift_right\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_shift_right:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_shift_left:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_shift_left\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_shift_left:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_cut:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_cut\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_cut:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_and:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_and\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_and:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_or:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_or\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_or:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_xor\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_andnot:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_andnot\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_andnot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_replace\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_intersects:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_intersects\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_intersects:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_subset:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_subset\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_subset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_weight:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_weight\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_weight:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_set:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_set\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bitmap_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22__bitmap_clear\22\09\09\09\09\09"
module asm "__kstrtabns___bitmap_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_find_next_zero_area_off:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_find_next_zero_area_off\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_find_next_zero_area_off:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parse_user:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parse_user\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parse_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_print_to_pagebuf:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_print_to_pagebuf\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_print_to_pagebuf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_print_bitmask_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_print_bitmask_to_buf\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_print_bitmask_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_print_list_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_print_list_to_buf\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_print_list_to_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parselist:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parselist\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parselist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parselist_user:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parselist_user\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parselist_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_parse\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_parse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_remap:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_remap\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_remap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_bitremap:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_bitremap\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_bitremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_find_free_region:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_find_free_region\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_find_free_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_release_region\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_allocate_region:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_allocate_region\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_allocate_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_zalloc\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_alloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_alloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_zalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_zalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_zalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bitmap_free:\09\09\09\09\09"
module asm "\09.asciz \09\22bitmap_free\22\09\09\09\09\09"
module asm "__kstrtabns_bitmap_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_bitmap_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_bitmap_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_bitmap_zalloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_bitmap_zalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab___bitmap_equal = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_equal = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_equal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_equal to i32), ptr @__kstrtab___bitmap_equal, ptr @__kstrtabns___bitmap_equal }, section "___ksymtab+__bitmap_equal", align 4
@__kstrtab___bitmap_complement = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_complement = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_complement = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_complement to i32), ptr @__kstrtab___bitmap_complement, ptr @__kstrtabns___bitmap_complement }, section "___ksymtab+__bitmap_complement", align 4
@__kstrtab___bitmap_shift_right = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_shift_right = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_shift_right = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_shift_right to i32), ptr @__kstrtab___bitmap_shift_right, ptr @__kstrtabns___bitmap_shift_right }, section "___ksymtab+__bitmap_shift_right", align 4
@__kstrtab___bitmap_shift_left = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_shift_left = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_shift_left = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_shift_left to i32), ptr @__kstrtab___bitmap_shift_left, ptr @__kstrtabns___bitmap_shift_left }, section "___ksymtab+__bitmap_shift_left", align 4
@__kstrtab_bitmap_cut = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_cut = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_cut = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_cut to i32), ptr @__kstrtab_bitmap_cut, ptr @__kstrtabns_bitmap_cut }, section "___ksymtab+bitmap_cut", align 4
@__kstrtab___bitmap_and = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_and = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_and = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_and to i32), ptr @__kstrtab___bitmap_and, ptr @__kstrtabns___bitmap_and }, section "___ksymtab+__bitmap_and", align 4
@__kstrtab___bitmap_or = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_or = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_or = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_or to i32), ptr @__kstrtab___bitmap_or, ptr @__kstrtabns___bitmap_or }, section "___ksymtab+__bitmap_or", align 4
@__kstrtab___bitmap_xor = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_xor = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_xor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_xor to i32), ptr @__kstrtab___bitmap_xor, ptr @__kstrtabns___bitmap_xor }, section "___ksymtab+__bitmap_xor", align 4
@__kstrtab___bitmap_andnot = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_andnot = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_andnot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_andnot to i32), ptr @__kstrtab___bitmap_andnot, ptr @__kstrtabns___bitmap_andnot }, section "___ksymtab+__bitmap_andnot", align 4
@__kstrtab___bitmap_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_replace = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_replace to i32), ptr @__kstrtab___bitmap_replace, ptr @__kstrtabns___bitmap_replace }, section "___ksymtab+__bitmap_replace", align 4
@__kstrtab___bitmap_intersects = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_intersects = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_intersects = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_intersects to i32), ptr @__kstrtab___bitmap_intersects, ptr @__kstrtabns___bitmap_intersects }, section "___ksymtab+__bitmap_intersects", align 4
@__kstrtab___bitmap_subset = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_subset = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_subset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_subset to i32), ptr @__kstrtab___bitmap_subset, ptr @__kstrtabns___bitmap_subset }, section "___ksymtab+__bitmap_subset", align 4
@__kstrtab___bitmap_weight = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_weight = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_weight = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_weight to i32), ptr @__kstrtab___bitmap_weight, ptr @__kstrtabns___bitmap_weight }, section "___ksymtab+__bitmap_weight", align 4
@__kstrtab___bitmap_set = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_set = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_set to i32), ptr @__kstrtab___bitmap_set, ptr @__kstrtabns___bitmap_set }, section "___ksymtab+__bitmap_set", align 4
@__kstrtab___bitmap_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns___bitmap_clear = external dso_local constant [0 x i8], align 1
@__ksymtab___bitmap_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bitmap_clear to i32), ptr @__kstrtab___bitmap_clear, ptr @__kstrtabns___bitmap_clear }, section "___ksymtab+__bitmap_clear", align 4
@__kstrtab_bitmap_find_next_zero_area_off = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_find_next_zero_area_off = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_find_next_zero_area_off = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_find_next_zero_area_off to i32), ptr @__kstrtab_bitmap_find_next_zero_area_off, ptr @__kstrtabns_bitmap_find_next_zero_area_off }, section "___ksymtab+bitmap_find_next_zero_area_off", align 4
@__kstrtab_bitmap_parse_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parse_user = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parse_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parse_user to i32), ptr @__kstrtab_bitmap_parse_user, ptr @__kstrtabns_bitmap_parse_user }, section "___ksymtab+bitmap_parse_user", align 4
@.str = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1
@__kstrtab_bitmap_print_to_pagebuf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_print_to_pagebuf = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_print_to_pagebuf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_print_to_pagebuf to i32), ptr @__kstrtab_bitmap_print_to_pagebuf, ptr @__kstrtabns_bitmap_print_to_pagebuf }, section "___ksymtab+bitmap_print_to_pagebuf", align 4
@__kstrtab_bitmap_print_bitmask_to_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_print_bitmask_to_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_print_bitmask_to_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_print_bitmask_to_buf to i32), ptr @__kstrtab_bitmap_print_bitmask_to_buf, ptr @__kstrtabns_bitmap_print_bitmask_to_buf }, section "___ksymtab+bitmap_print_bitmask_to_buf", align 4
@__kstrtab_bitmap_print_list_to_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_print_list_to_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_print_list_to_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_print_list_to_buf to i32), ptr @__kstrtab_bitmap_print_list_to_buf, ptr @__kstrtabns_bitmap_print_list_to_buf }, section "___ksymtab+bitmap_print_list_to_buf", align 4
@__kstrtab_bitmap_parselist = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parselist = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parselist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parselist to i32), ptr @__kstrtab_bitmap_parselist, ptr @__kstrtabns_bitmap_parselist }, section "___ksymtab+bitmap_parselist", align 4
@__kstrtab_bitmap_parselist_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parselist_user = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parselist_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parselist_user to i32), ptr @__kstrtab_bitmap_parselist_user, ptr @__kstrtabns_bitmap_parselist_user }, section "___ksymtab+bitmap_parselist_user", align 4
@__kstrtab_bitmap_parse = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_parse = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_parse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_parse to i32), ptr @__kstrtab_bitmap_parse, ptr @__kstrtabns_bitmap_parse }, section "___ksymtab+bitmap_parse", align 4
@__kstrtab_bitmap_remap = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_remap = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_remap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_remap to i32), ptr @__kstrtab_bitmap_remap, ptr @__kstrtabns_bitmap_remap }, section "___ksymtab+bitmap_remap", align 4
@__kstrtab_bitmap_bitremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_bitremap = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_bitremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_bitremap to i32), ptr @__kstrtab_bitmap_bitremap, ptr @__kstrtabns_bitmap_bitremap }, section "___ksymtab+bitmap_bitremap", align 4
@__kstrtab_bitmap_find_free_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_find_free_region = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_find_free_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_find_free_region to i32), ptr @__kstrtab_bitmap_find_free_region, ptr @__kstrtabns_bitmap_find_free_region }, section "___ksymtab+bitmap_find_free_region", align 4
@__kstrtab_bitmap_release_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_release_region = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_release_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_release_region to i32), ptr @__kstrtab_bitmap_release_region, ptr @__kstrtabns_bitmap_release_region }, section "___ksymtab+bitmap_release_region", align 4
@__kstrtab_bitmap_allocate_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_allocate_region = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_allocate_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_allocate_region to i32), ptr @__kstrtab_bitmap_allocate_region, ptr @__kstrtabns_bitmap_allocate_region }, section "___ksymtab+bitmap_allocate_region", align 4
@__kstrtab_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_alloc to i32), ptr @__kstrtab_bitmap_alloc, ptr @__kstrtabns_bitmap_alloc }, section "___ksymtab+bitmap_alloc", align 4
@__kstrtab_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_zalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_zalloc to i32), ptr @__kstrtab_bitmap_zalloc, ptr @__kstrtabns_bitmap_zalloc }, section "___ksymtab+bitmap_zalloc", align 4
@__kstrtab_bitmap_alloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_alloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_alloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_alloc_node to i32), ptr @__kstrtab_bitmap_alloc_node, ptr @__kstrtabns_bitmap_alloc_node }, section "___ksymtab+bitmap_alloc_node", align 4
@__kstrtab_bitmap_zalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_zalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_zalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_zalloc_node to i32), ptr @__kstrtab_bitmap_zalloc_node, ptr @__kstrtabns_bitmap_zalloc_node }, section "___ksymtab+bitmap_zalloc_node", align 4
@__kstrtab_bitmap_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_bitmap_free = external dso_local constant [0 x i8], align 1
@__ksymtab_bitmap_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bitmap_free to i32), ptr @__kstrtab_bitmap_free, ptr @__kstrtabns_bitmap_free }, section "___ksymtab+bitmap_free", align 4
@__kstrtab_devm_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_bitmap_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_bitmap_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_bitmap_alloc to i32), ptr @__kstrtab_devm_bitmap_alloc, ptr @__kstrtabns_devm_bitmap_alloc }, section "___ksymtab_gpl+devm_bitmap_alloc", align 4
@__kstrtab_devm_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_bitmap_zalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_bitmap_zalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_bitmap_zalloc to i32), ptr @__kstrtab_devm_bitmap_zalloc, ptr @__kstrtabns_devm_bitmap_zalloc }, section "___ksymtab_gpl+devm_bitmap_zalloc", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__ksymtab___bitmap_and, ptr @__ksymtab___bitmap_andnot, ptr @__ksymtab___bitmap_clear, ptr @__ksymtab___bitmap_complement, ptr @__ksymtab___bitmap_equal, ptr @__ksymtab___bitmap_intersects, ptr @__ksymtab___bitmap_or, ptr @__ksymtab___bitmap_replace, ptr @__ksymtab___bitmap_set, ptr @__ksymtab___bitmap_shift_left, ptr @__ksymtab___bitmap_shift_right, ptr @__ksymtab___bitmap_subset, ptr @__ksymtab___bitmap_weight, ptr @__ksymtab___bitmap_xor, ptr @__ksymtab_bitmap_alloc, ptr @__ksymtab_bitmap_alloc_node, ptr @__ksymtab_bitmap_allocate_region, ptr @__ksymtab_bitmap_bitremap, ptr @__ksymtab_bitmap_cut, ptr @__ksymtab_bitmap_find_free_region, ptr @__ksymtab_bitmap_find_next_zero_area_off, ptr @__ksymtab_bitmap_free, ptr @__ksymtab_bitmap_parse, ptr @__ksymtab_bitmap_parse_user, ptr @__ksymtab_bitmap_parselist, ptr @__ksymtab_bitmap_parselist_user, ptr @__ksymtab_bitmap_print_bitmask_to_buf, ptr @__ksymtab_bitmap_print_list_to_buf, ptr @__ksymtab_bitmap_print_to_pagebuf, ptr @__ksymtab_bitmap_release_region, ptr @__ksymtab_bitmap_remap, ptr @__ksymtab_bitmap_zalloc, ptr @__ksymtab_bitmap_zalloc_node, ptr @__ksymtab_devm_bitmap_alloc, ptr @__ksymtab_devm_bitmap_zalloc], section "llvm.metadata"

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @__bitmap_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 32
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 5
  br label %7

7:                                                ; preds = %14, %5
  %8 = phi i32 [ %15, %14 ], [ 0, %5 ]
  %9 = getelementptr i32, ptr %0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %1, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %7
  %15 = add nuw nsw i32 %8, 1
  %16 = icmp eq i32 %15, %6
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %3
  %18 = phi i32 [ 0, %3 ], [ %6, %14 ]
  %19 = and i32 %2, 31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr i32, ptr %0, i32 %18
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i32, ptr %1, i32 %18
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %25, %23
  %27 = sub i32 0, %2
  %28 = and i32 %27, 31
  %29 = lshr i32 -1, %28
  %30 = and i32 %26, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21, %17
  br label %33

33:                                               ; preds = %32, %21, %7
  %34 = phi i32 [ 1, %32 ], [ 0, %21 ], [ 0, %7 ]
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @__bitmap_or_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i32 %3, 32
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %3, 5
  br label %8

8:                                                ; preds = %18, %6
  %9 = phi i32 [ %19, %18 ], [ 0, %6 ]
  %10 = getelementptr i32, ptr %0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i32, ptr %1, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %11
  %15 = getelementptr i32, ptr %2, i32 %9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %8
  %19 = add nuw nsw i32 %9, 1
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %8

21:                                               ; preds = %18, %4
  %22 = phi i32 [ 0, %4 ], [ %7, %18 ]
  %23 = and i32 %3, 31
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = getelementptr i32, ptr %0, i32 %22
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %1, i32 %22
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %27
  %31 = getelementptr i32, ptr %2, i32 %22
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %30, %32
  %34 = sub i32 0, %3
  %35 = and i32 %34, 31
  %36 = lshr i32 -1, %35
  %37 = and i32 %33, %36
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %25, %21, %8
  %40 = phi i1 [ %38, %25 ], [ true, %21 ], [ false, %8 ]
  ret i1 %40
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_complement(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = add i32 %2, 31
  %5 = icmp ult i32 %4, 32
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = lshr i32 %4, 5
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %14, %8 ], [ 0, %6 ]
  %10 = getelementptr i32, ptr %1, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = xor i32 %11, -1
  %13 = getelementptr i32, ptr %0, i32 %9
  store i32 %12, ptr %13, align 4
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, %7
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_shift_right(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = add i32 %3, 31
  %6 = lshr i32 %5, 5
  %7 = lshr i32 %2, 5
  %8 = and i32 %2, 31
  %9 = sub i32 0, %3
  %10 = and i32 %9, 31
  %11 = lshr i32 -1, %10
  %12 = icmp ugt i32 %6, %7
  br i1 %12, label %13, label %45

13:                                               ; preds = %4
  %14 = icmp eq i32 %8, 0
  %15 = add nsw i32 %6, -2
  %16 = sub nuw nsw i32 32, %8
  %17 = add nsw i32 %6, -1
  %18 = sub nsw i32 %6, %7
  br label %19

19:                                               ; preds = %32, %13
  %20 = phi i32 [ %7, %13 ], [ %43, %32 ]
  %21 = phi i32 [ 0, %13 ], [ %42, %32 ]
  br i1 %14, label %32, label %22

22:                                               ; preds = %19
  %23 = add nuw nsw i32 %20, 1
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = getelementptr i32, ptr %1, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %20, %15
  %29 = select i1 %28, i32 %11, i32 -1
  %30 = and i32 %27, %29
  %31 = shl i32 %30, %16
  br label %32

32:                                               ; preds = %25, %22, %19
  %33 = phi i32 [ %31, %25 ], [ 0, %22 ], [ 0, %19 ]
  %34 = getelementptr i32, ptr %1, i32 %20
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %20, %17
  %37 = select i1 %36, i32 %11, i32 -1
  %38 = and i32 %35, %37
  %39 = lshr i32 %38, %8
  %40 = or i32 %39, %33
  %41 = getelementptr i32, ptr %0, i32 %21
  store i32 %40, ptr %41, align 4
  %42 = add nuw nsw i32 %21, 1
  %43 = add nuw nsw i32 %42, %7
  %44 = icmp eq i32 %42, %18
  br i1 %44, label %45, label %19

45:                                               ; preds = %32, %4
  %46 = icmp ult i32 %2, 32
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = sub nsw i32 %6, %7
  %49 = getelementptr i32, ptr %0, i32 %48
  %50 = shl nuw nsw i32 %7, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %49, i8 0, i32 %50, i1 false)
  br label %51

51:                                               ; preds = %47, %45
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_shift_left(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = add i32 %3, 31
  %6 = lshr i32 %5, 5
  %7 = lshr i32 %2, 5
  %8 = and i32 %2, 31
  %9 = xor i32 %7, -1
  %10 = add nsw i32 %6, %9
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = icmp ne i32 %8, 0
  %14 = sub nuw nsw i32 32, %8
  br label %15

15:                                               ; preds = %24, %12
  %16 = phi i32 [ %10, %12 ], [ %19, %24 ]
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %13, i1 %17, i1 false
  %19 = add nsw i32 %16, -1
  br i1 %18, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr i32, ptr %1, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, %14
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i32 [ %23, %20 ], [ 0, %15 ]
  %26 = getelementptr i32, ptr %1, i32 %16
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, %8
  %29 = or i32 %28, %25
  %30 = add i32 %16, %7
  %31 = getelementptr i32, ptr %0, i32 %30
  store i32 %29, ptr %31, align 4
  %32 = icmp sgt i32 %16, 0
  br i1 %32, label %15, label %33

33:                                               ; preds = %24, %4
  %34 = icmp ult i32 %2, 32
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = shl nuw nsw i32 %7, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %36, i1 false)
  br label %37

37:                                               ; preds = %35, %33
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bitmap_cut(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4 {
  %6 = add i32 %4, 31
  %7 = lshr i32 %6, 5
  %8 = and i32 %2, 31
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = lshr i32 %2, 5
  %12 = getelementptr i32, ptr %1, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = sub nuw nsw i32 32, %8
  %15 = lshr i32 -1, %14
  %16 = and i32 %13, %15
  br label %17

17:                                               ; preds = %10, %5
  %18 = phi i32 [ %16, %10 ], [ 0, %5 ]
  %19 = shl nuw nsw i32 %7, 2
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %0, ptr align 4 %1, i32 %19, i1 false)
  %20 = icmp eq i32 %3, 0
  %21 = lshr i32 %2, 5
  br i1 %20, label %44, label %22

22:                                               ; preds = %17
  %23 = icmp ult i32 %21, %7
  %24 = add nsw i32 %7, -1
  br label %27

25:                                               ; preds = %38, %27
  %26 = icmp eq i32 %29, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %3, %22 ], [ %29, %25 ]
  %29 = add i32 %28, -1
  br i1 %23, label %30, label %25

30:                                               ; preds = %38, %27
  %31 = phi i32 [ %33, %38 ], [ %21, %27 ]
  %32 = icmp ult i32 %31, %24
  %33 = add nuw nsw i32 %31, 1
  br i1 %32, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr i32, ptr %0, i32 %33
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %37, %34 ], [ 0, %30 ]
  %40 = getelementptr i32, ptr %0, i32 %31
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %41, i32 31)
  store i32 %42, ptr %40, align 4
  %43 = icmp eq i32 %33, %7
  br i1 %43, label %25, label %30

44:                                               ; preds = %25, %17
  %45 = shl nsw i32 -1, %8
  %46 = getelementptr i32, ptr %0, i32 %21
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, %45
  %49 = or i32 %48, %18
  store i32 %49, ptr %46, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__bitmap_and(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = icmp ult i32 %3, 32
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %3, 5
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %17, %8 ], [ 0, %6 ]
  %10 = phi i32 [ %18, %8 ], [ 0, %6 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i32, ptr %2, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  %16 = getelementptr i32, ptr %0, i32 %10
  store i32 %15, ptr %16, align 4
  %17 = or i32 %15, %9
  %18 = add nuw nsw i32 %10, 1
  %19 = icmp eq i32 %18, %7
  br i1 %19, label %20, label %8

20:                                               ; preds = %8, %4
  %21 = phi i32 [ 0, %4 ], [ %7, %8 ]
  %22 = phi i32 [ 0, %4 ], [ %17, %8 ]
  %23 = and i32 %3, 31
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = getelementptr i32, ptr %1, i32 %21
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %2, i32 %21
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 0, %3
  %31 = and i32 %30, 31
  %32 = lshr i32 -1, %31
  %33 = and i32 %27, %32
  %34 = and i32 %33, %29
  %35 = getelementptr i32, ptr %0, i32 %21
  store i32 %34, ptr %35, align 4
  %36 = or i32 %34, %22
  br label %37

37:                                               ; preds = %25, %20
  %38 = phi i32 [ %36, %25 ], [ %22, %20 ]
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_or(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = add i32 %3, 31
  %6 = icmp ult i32 %5, 32
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = lshr i32 %5, 5
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %17, %9 ], [ 0, %7 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i32, ptr %2, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %12
  %16 = getelementptr i32, ptr %0, i32 %10
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %19, label %9

19:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_xor(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = add i32 %3, 31
  %6 = icmp ult i32 %5, 32
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = lshr i32 %5, 5
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %17, %9 ], [ 0, %7 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i32, ptr %2, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, %12
  %16 = getelementptr i32, ptr %0, i32 %10
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %19, label %9

19:                                               ; preds = %9, %4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__bitmap_andnot(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #3 {
  %5 = icmp ult i32 %3, 32
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %3, 5
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %18, %8 ], [ 0, %6 ]
  %10 = phi i32 [ %19, %8 ], [ 0, %6 ]
  %11 = getelementptr i32, ptr %1, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i32, ptr %2, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = getelementptr i32, ptr %0, i32 %10
  store i32 %16, ptr %17, align 4
  %18 = or i32 %16, %9
  %19 = add nuw nsw i32 %10, 1
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %8

21:                                               ; preds = %8, %4
  %22 = phi i32 [ 0, %4 ], [ %7, %8 ]
  %23 = phi i32 [ 0, %4 ], [ %18, %8 ]
  %24 = and i32 %3, 31
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = getelementptr i32, ptr %1, i32 %22
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %2, i32 %22
  %30 = load i32, ptr %29, align 4
  %31 = xor i32 %30, -1
  %32 = sub i32 0, %3
  %33 = and i32 %32, 31
  %34 = lshr i32 -1, %33
  %35 = and i32 %28, %34
  %36 = and i32 %35, %31
  %37 = getelementptr i32, ptr %0, i32 %22
  store i32 %36, ptr %37, align 4
  %38 = or i32 %36, %23
  br label %39

39:                                               ; preds = %26, %21
  %40 = phi i32 [ %38, %26 ], [ %23, %21 ]
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_replace(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4) #3 {
  %6 = add i32 %4, 31
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = lshr i32 %6, 5
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %23, %10 ], [ 0, %8 ]
  %12 = getelementptr i32, ptr %1, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i32, ptr %3, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %13, %16
  %18 = getelementptr i32, ptr %2, i32 %11
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, %15
  %21 = or i32 %20, %17
  %22 = getelementptr i32, ptr %0, i32 %11
  store i32 %21, ptr %22, align 4
  %23 = add nuw nsw i32 %11, 1
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %25, label %10

25:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @__bitmap_intersects(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 32
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 5
  br label %7

7:                                                ; preds = %15, %5
  %8 = phi i32 [ %16, %15 ], [ 0, %5 ]
  %9 = getelementptr i32, ptr %0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %1, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %7
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, %6
  br i1 %17, label %18, label %7

18:                                               ; preds = %15, %3
  %19 = phi i32 [ 0, %3 ], [ %6, %15 ]
  %20 = and i32 %2, 31
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = getelementptr i32, ptr %0, i32 %19
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i32, ptr %1, i32 %19
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 0, %2
  %28 = and i32 %27, 31
  %29 = lshr i32 -1, %28
  %30 = and i32 %24, %29
  %31 = and i32 %30, %26
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22, %18
  br label %34

34:                                               ; preds = %33, %22, %7
  %35 = phi i32 [ 0, %33 ], [ 1, %22 ], [ 1, %7 ]
  ret i32 %35
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @__bitmap_subset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 32
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 5
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i32 [ %17, %16 ], [ 0, %5 ]
  %9 = getelementptr i32, ptr %0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i32, ptr %1, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %8, 1
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %3
  %20 = phi i32 [ 0, %3 ], [ %6, %16 ]
  %21 = and i32 %2, 31
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr i32, ptr %0, i32 %20
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i32, ptr %1, i32 %20
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = sub i32 0, %2
  %30 = and i32 %29, 31
  %31 = lshr i32 -1, %30
  %32 = and i32 %25, %31
  %33 = and i32 %32, %28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23, %19
  br label %36

36:                                               ; preds = %35, %23, %7
  %37 = phi i32 [ 1, %35 ], [ 0, %23 ], [ 0, %7 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__bitmap_weight(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = icmp ult i32 %1, 32
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = lshr i32 %1, 5
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %12, %6 ], [ 0, %4 ]
  %8 = phi i32 [ %13, %6 ], [ 0, %4 ]
  %9 = getelementptr i32, ptr %0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @__sw_hweight32(i32 noundef %10) #14
  %12 = add i32 %11, %7
  %13 = add nuw nsw i32 %8, 1
  %14 = icmp eq i32 %13, %5
  br i1 %14, label %15, label %6

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %5, %6 ]
  %17 = phi i32 [ 0, %2 ], [ %12, %6 ]
  %18 = and i32 %1, 31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = getelementptr i32, ptr %0, i32 %16
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 0, %1
  %24 = and i32 %23, 31
  %25 = lshr i32 -1, %24
  %26 = and i32 %22, %25
  %27 = tail call i32 @__sw_hweight32(i32 noundef %26) #14
  %28 = add i32 %27, %17
  br label %29

29:                                               ; preds = %20, %15
  %30 = phi i32 [ %28, %20 ], [ %17, %15 ]
  ret i32 %30
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_set(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %0, i32 %4
  %6 = add i32 %1, %2
  %7 = or i32 %1, -32
  %8 = and i32 %1, 31
  %9 = shl nsw i32 -1, %8
  %10 = add i32 %7, %2
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i32, ptr %5, align 4
  %14 = or i32 %13, %9
  store i32 %14, ptr %5, align 4
  %15 = getelementptr i32, ptr %5, i32 1
  %16 = icmp ugt i32 %10, 31
  br i1 %16, label %17, label %23

17:                                               ; preds = %17, %12
  %18 = phi i32 [ %20, %17 ], [ %10, %12 ]
  %19 = phi ptr [ %21, %17 ], [ %15, %12 ]
  %20 = add nsw i32 %18, -32
  store i32 -1, ptr %19, align 4
  %21 = getelementptr i32, ptr %19, i32 1
  %22 = icmp ugt i32 %18, 63
  br i1 %22, label %17, label %23, !llvm.loop !8

23:                                               ; preds = %17, %12
  %24 = phi ptr [ %15, %12 ], [ %21, %17 ]
  %25 = and i32 %10, 31
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i32 [ %2, %3 ], [ %25, %23 ]
  %28 = phi ptr [ %5, %3 ], [ %24, %23 ]
  %29 = phi i32 [ %9, %3 ], [ -1, %23 ]
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = sub i32 0, %6
  %33 = and i32 %32, 31
  %34 = lshr i32 -1, %33
  %35 = and i32 %29, %34
  %36 = load i32, ptr %28, align 4
  %37 = or i32 %36, %35
  store i32 %37, ptr %28, align 4
  br label %38

38:                                               ; preds = %31, %26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bitmap_clear(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = lshr i32 %1, 5
  %5 = getelementptr i32, ptr %0, i32 %4
  %6 = add i32 %1, %2
  %7 = or i32 %1, -32
  %8 = and i32 %1, 31
  %9 = shl nsw i32 -1, %8
  %10 = add i32 %7, %2
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = xor i32 %9, -1
  %14 = load i32, ptr %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, ptr %5, align 4
  %16 = getelementptr i32, ptr %5, i32 1
  %17 = icmp ugt i32 %10, 31
  br i1 %17, label %18, label %24

18:                                               ; preds = %18, %12
  %19 = phi i32 [ %21, %18 ], [ %10, %12 ]
  %20 = phi ptr [ %22, %18 ], [ %16, %12 ]
  %21 = add nsw i32 %19, -32
  store i32 0, ptr %20, align 4
  %22 = getelementptr i32, ptr %20, i32 1
  %23 = icmp ugt i32 %19, 63
  br i1 %23, label %18, label %24, !llvm.loop !10

24:                                               ; preds = %18, %12
  %25 = phi ptr [ %16, %12 ], [ %22, %18 ]
  %26 = and i32 %10, 31
  br label %27

27:                                               ; preds = %24, %3
  %28 = phi i32 [ %2, %3 ], [ %26, %24 ]
  %29 = phi ptr [ %5, %3 ], [ %25, %24 ]
  %30 = phi i32 [ %9, %3 ], [ -1, %24 ]
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = sub i32 0, %6
  %34 = and i32 %33, 31
  %35 = lshr i32 -1, %34
  %36 = and i32 %30, %35
  %37 = xor i32 %36, -1
  %38 = load i32, ptr %29, align 4
  %39 = and i32 %38, %37
  store i32 %39, ptr %29, align 4
  br label %40

40:                                               ; preds = %32, %27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7 {
  %7 = tail call i32 @_find_next_zero_bit_le(ptr noundef %0, i32 noundef %1, i32 noundef %2) #14
  %8 = add i32 %5, %4
  %9 = add i32 %8, %7
  %10 = xor i32 %4, -1
  %11 = and i32 %9, %10
  %12 = sub i32 %11, %5
  %13 = add i32 %12, %3
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %28, label %23

15:                                               ; preds = %23
  %16 = add nuw i32 %26, 1
  %17 = tail call i32 @_find_next_zero_bit_le(ptr noundef %0, i32 noundef %1, i32 noundef %16) #14
  %18 = add i32 %8, %17
  %19 = and i32 %18, %10
  %20 = sub i32 %19, %5
  %21 = add i32 %20, %3
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %28, label %23

23:                                               ; preds = %15, %6
  %24 = phi i32 [ %21, %15 ], [ %13, %6 ]
  %25 = phi i32 [ %20, %15 ], [ %12, %6 ]
  %26 = tail call i32 @_find_next_bit_le(ptr noundef %0, i32 noundef %24, i32 noundef %25) #14
  %27 = icmp ult i32 %26, %24
  br i1 %27, label %15, label %28

28:                                               ; preds = %23, %15, %6
  %29 = phi i32 [ %13, %6 ], [ %25, %23 ], [ %21, %15 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_parse_user(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #7 {
  %5 = tail call ptr @memdup_user_nul(ptr noundef %0, i32 noundef %1) #14
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %11

9:                                                ; preds = %4
  %10 = tail call i32 @bitmap_parse(ptr noundef %5, i32 noundef -1, ptr noundef %2, i32 noundef %3)
  tail call void @kfree(ptr noundef %5) #14
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_parse(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #7 {
  %5 = tail call ptr @strnchrnul(ptr noundef %0, i32 noundef %1, i32 noundef 10) #14
  %6 = getelementptr i8, ptr %5, i32 -1
  %7 = add i32 %3, 31
  %8 = lshr i32 %7, 5
  br label %9

9:                                                ; preds = %173, %4
  %10 = phi ptr [ %6, %4 ], [ %175, %173 ]
  %11 = phi i32 [ %8, %4 ], [ %31, %173 ]
  %12 = phi i32 [ 0, %4 ], [ %177, %173 ]
  %13 = icmp ult ptr %10, %0
  br i1 %13, label %27, label %14

14:                                               ; preds = %24, %9
  %15 = phi ptr [ %25, %24 ], [ %10, %9 ]
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 32
  %21 = icmp ne i8 %20, 0
  %22 = icmp eq i8 %16, 44
  %23 = or i1 %22, %21
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = getelementptr i8, ptr %15, i32 -1
  %26 = icmp ult ptr %25, %0
  br i1 %26, label %27, label %14

27:                                               ; preds = %24, %14, %9
  %28 = phi ptr [ %10, %9 ], [ %15, %14 ], [ %25, %24 ]
  %29 = icmp ult ptr %28, %0
  br i1 %29, label %181, label %30

30:                                               ; preds = %27
  %31 = add nsw i32 %11, -1
  %32 = icmp eq i32 %11, 0
  br i1 %32, label %223, label %33

33:                                               ; preds = %30
  %34 = getelementptr i32, ptr %2, i32 %12
  %35 = getelementptr i8, ptr %28, i32 -1
  %36 = load i8, ptr %28, align 1
  %37 = tail call i32 @hex_to_bin(i8 noundef zeroext %36) #14
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %178, label %162

39:                                               ; preds = %164
  %40 = getelementptr i8, ptr %28, i32 -2
  %41 = tail call i32 @hex_to_bin(i8 noundef zeroext %165) #14
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %178, label %43

43:                                               ; preds = %39
  %44 = shl i32 %41, 4
  %45 = or i32 %44, %37
  %46 = icmp ult ptr %40, %0
  br i1 %46, label %173, label %47

47:                                               ; preds = %43
  %48 = load i8, ptr %40, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %49
  %51 = load i8, ptr %50, align 1
  %52 = and i8 %51, 32
  %53 = icmp ne i8 %52, 0
  %54 = icmp eq i8 %48, 44
  %55 = or i1 %54, %53
  br i1 %55, label %173, label %56

56:                                               ; preds = %47
  %57 = getelementptr i8, ptr %28, i32 -3
  %58 = tail call i32 @hex_to_bin(i8 noundef zeroext %48) #14
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %178, label %60

60:                                               ; preds = %56
  %61 = shl i32 %58, 8
  %62 = or i32 %61, %45
  %63 = icmp ult ptr %57, %0
  br i1 %63, label %173, label %64

64:                                               ; preds = %60
  %65 = load i8, ptr %57, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 32
  %70 = icmp ne i8 %69, 0
  %71 = icmp eq i8 %65, 44
  %72 = or i1 %71, %70
  br i1 %72, label %173, label %73

73:                                               ; preds = %64
  %74 = getelementptr i8, ptr %28, i32 -4
  %75 = tail call i32 @hex_to_bin(i8 noundef zeroext %65) #14
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %178, label %77

77:                                               ; preds = %73
  %78 = shl i32 %75, 12
  %79 = or i32 %78, %62
  %80 = icmp ult ptr %74, %0
  br i1 %80, label %173, label %81

81:                                               ; preds = %77
  %82 = load i8, ptr %74, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %83
  %85 = load i8, ptr %84, align 1
  %86 = and i8 %85, 32
  %87 = icmp ne i8 %86, 0
  %88 = icmp eq i8 %82, 44
  %89 = or i1 %88, %87
  br i1 %89, label %173, label %90

90:                                               ; preds = %81
  %91 = getelementptr i8, ptr %28, i32 -5
  %92 = tail call i32 @hex_to_bin(i8 noundef zeroext %82) #14
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %178, label %94

94:                                               ; preds = %90
  %95 = shl i32 %92, 16
  %96 = or i32 %95, %79
  %97 = icmp ult ptr %91, %0
  br i1 %97, label %173, label %98

98:                                               ; preds = %94
  %99 = load i8, ptr %91, align 1
  %100 = zext i8 %99 to i32
  %101 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %100
  %102 = load i8, ptr %101, align 1
  %103 = and i8 %102, 32
  %104 = icmp ne i8 %103, 0
  %105 = icmp eq i8 %99, 44
  %106 = or i1 %105, %104
  br i1 %106, label %173, label %107

107:                                              ; preds = %98
  %108 = getelementptr i8, ptr %28, i32 -6
  %109 = tail call i32 @hex_to_bin(i8 noundef zeroext %99) #14
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %178, label %111

111:                                              ; preds = %107
  %112 = shl i32 %109, 20
  %113 = or i32 %112, %96
  %114 = icmp ult ptr %108, %0
  br i1 %114, label %173, label %115

115:                                              ; preds = %111
  %116 = load i8, ptr %108, align 1
  %117 = zext i8 %116 to i32
  %118 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %117
  %119 = load i8, ptr %118, align 1
  %120 = and i8 %119, 32
  %121 = icmp ne i8 %120, 0
  %122 = icmp eq i8 %116, 44
  %123 = or i1 %122, %121
  br i1 %123, label %173, label %124

124:                                              ; preds = %115
  %125 = getelementptr i8, ptr %28, i32 -7
  %126 = tail call i32 @hex_to_bin(i8 noundef zeroext %116) #14
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %178, label %128

128:                                              ; preds = %124
  %129 = shl i32 %126, 24
  %130 = or i32 %129, %113
  %131 = icmp ult ptr %125, %0
  br i1 %131, label %173, label %132

132:                                              ; preds = %128
  %133 = load i8, ptr %125, align 1
  %134 = zext i8 %133 to i32
  %135 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %134
  %136 = load i8, ptr %135, align 1
  %137 = and i8 %136, 32
  %138 = icmp ne i8 %137, 0
  %139 = icmp eq i8 %133, 44
  %140 = or i1 %139, %138
  br i1 %140, label %173, label %141

141:                                              ; preds = %132
  %142 = getelementptr i8, ptr %28, i32 -8
  %143 = tail call i32 @hex_to_bin(i8 noundef zeroext %133) #14
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %178, label %145

145:                                              ; preds = %141
  %146 = shl i32 %143, 28
  %147 = or i32 %146, %130
  %148 = icmp ult ptr %142, %0
  br i1 %148, label %173, label %149

149:                                              ; preds = %145
  %150 = load i8, ptr %142, align 1
  %151 = zext i8 %150 to i32
  %152 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %151
  %153 = load i8, ptr %152, align 1
  %154 = and i8 %153, 32
  %155 = icmp ne i8 %154, 0
  %156 = icmp eq i8 %150, 44
  %157 = or i1 %156, %155
  br i1 %157, label %173, label %158

158:                                              ; preds = %149
  %159 = getelementptr i8, ptr %28, i32 -9
  %160 = tail call i32 @hex_to_bin(i8 noundef zeroext %150) #14
  %161 = icmp sgt i32 %160, -1
  br i1 %161, label %178, label %173

162:                                              ; preds = %33
  %163 = icmp ult ptr %35, %0
  br i1 %163, label %173, label %164

164:                                              ; preds = %162
  %165 = load i8, ptr %35, align 1
  %166 = zext i8 %165 to i32
  %167 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %166
  %168 = load i8, ptr %167, align 1
  %169 = and i8 %168, 32
  %170 = icmp ne i8 %169, 0
  %171 = icmp eq i8 %165, 44
  %172 = or i1 %171, %170
  br i1 %172, label %173, label %39

173:                                              ; preds = %164, %162, %158, %149, %145, %132, %128, %115, %111, %98, %94, %81, %77, %64, %60, %47, %43
  %174 = phi i32 [ %147, %158 ], [ %37, %164 ], [ %37, %162 ], [ %45, %43 ], [ %45, %47 ], [ %62, %60 ], [ %62, %64 ], [ %79, %77 ], [ %79, %81 ], [ %96, %94 ], [ %96, %98 ], [ %113, %111 ], [ %113, %115 ], [ %130, %128 ], [ %130, %132 ], [ %147, %145 ], [ %147, %149 ]
  %175 = phi ptr [ %159, %158 ], [ %35, %164 ], [ %35, %162 ], [ %40, %43 ], [ %40, %47 ], [ %57, %60 ], [ %57, %64 ], [ %74, %77 ], [ %74, %81 ], [ %91, %94 ], [ %91, %98 ], [ %108, %111 ], [ %108, %115 ], [ %125, %128 ], [ %125, %132 ], [ %142, %145 ], [ %142, %149 ]
  store i32 %174, ptr %34, align 4
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  %177 = add nuw nsw i32 %12, 1
  br i1 %176, label %178, label %9

178:                                              ; preds = %173, %158, %141, %124, %107, %90, %73, %56, %39, %33
  %179 = phi ptr [ %175, %173 ], [ inttoptr (i32 -22 to ptr), %33 ], [ inttoptr (i32 -22 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %56 ], [ inttoptr (i32 -22 to ptr), %73 ], [ inttoptr (i32 -22 to ptr), %90 ], [ inttoptr (i32 -22 to ptr), %107 ], [ inttoptr (i32 -22 to ptr), %124 ], [ inttoptr (i32 -22 to ptr), %141 ], [ inttoptr (i32 -75 to ptr), %158 ]
  %180 = ptrtoint ptr %179 to i32
  br label %223

181:                                              ; preds = %27
  %182 = sub i32 %8, %11
  %183 = shl i32 %182, 5
  %184 = icmp slt i32 %183, %3
  br i1 %184, label %185, label %219

185:                                              ; preds = %181
  %186 = sub i32 %3, %183
  %187 = and i32 %182, 134217727
  %188 = getelementptr i32, ptr %2, i32 %187
  %189 = add i32 %186, -32
  %190 = icmp sgt i32 %189, -1
  br i1 %190, label %191, label %208

191:                                              ; preds = %185
  store i32 0, ptr %188, align 4
  %192 = getelementptr i32, ptr %188, i32 1
  %193 = icmp ugt i32 %189, 31
  br i1 %193, label %194, label %205

194:                                              ; preds = %191
  %195 = tail call i32 @llvm.umin.i32(i32 %189, i32 63) #14
  %196 = xor i32 %195, -1
  %197 = add i32 %186, %196
  %198 = lshr i32 %197, 3
  %199 = and i32 %198, 536870908
  %200 = add nuw nsw i32 %199, 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 %192, i8 0, i32 %200, i1 false) #14
  %201 = shl nuw nsw i32 %187, 2
  %202 = add nuw nsw i32 %201, 8
  %203 = add nuw nsw i32 %202, %199
  %204 = getelementptr i8, ptr %2, i32 %203
  br label %205

205:                                              ; preds = %194, %191
  %206 = phi ptr [ %192, %191 ], [ %204, %194 ]
  %207 = and i32 %186, 31
  br label %208

208:                                              ; preds = %205, %185
  %209 = phi i32 [ %186, %185 ], [ %207, %205 ]
  %210 = phi ptr [ %188, %185 ], [ %206, %205 ]
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %208
  %213 = sub nsw i32 0, %3
  %214 = and i32 %213, 31
  %215 = lshr i32 -1, %214
  %216 = xor i32 %215, -1
  %217 = load i32, ptr %210, align 4
  %218 = and i32 %217, %216
  store i32 %218, ptr %210, align 4
  br label %223

219:                                              ; preds = %181
  %220 = tail call i32 @_find_next_bit_le(ptr noundef %2, i32 noundef %183, i32 noundef %3) #14
  %221 = icmp eq i32 %220, %183
  %222 = select i1 %221, i32 0, i32 -75
  br label %223

223:                                              ; preds = %219, %212, %208, %178, %30
  %224 = phi i32 [ %180, %178 ], [ %222, %219 ], [ 0, %208 ], [ 0, %212 ], [ -75, %30 ]
  ret i32 %224
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7 {
  %5 = ptrtoint ptr %1 to i32
  %6 = and i32 %5, 4095
  %7 = sub nuw nsw i32 4096, %6
  %8 = select i1 %0, ptr @.str, ptr @.str.1
  %9 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %1, i32 noundef %7, ptr noundef nonnull %8, i32 noundef %3, ptr noundef %2) #14
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_print_bitmask_to_buf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #7 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store i64 %3, ptr %6, align 8
  %7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %2, ptr noundef %1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @strlen(ptr noundef nonnull %7) #14
  %11 = add i32 %10, 1
  %12 = call i32 @memory_read_from_buffer(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %11) #14
  call void @kfree(ptr noundef nonnull %7) #14
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_print_list_to_buf(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) #7 {
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store i64 %3, ptr %6, align 8
  %7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef %1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @strlen(ptr noundef nonnull %7) #14
  %11 = add i32 %10, 1
  %12 = call i32 @memory_read_from_buffer(ptr noundef %0, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %11) #14
  call void @kfree(ptr noundef nonnull %7) #14
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_parselist(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #7 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = add i32 %2, 31
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %1, i8 0, i32 %10, i1 false) #14
  %11 = icmp eq ptr %0, null
  br i1 %11, label %226, label %12

12:                                               ; preds = %3
  %13 = add i32 %2, -1
  br label %16

14:                                               ; preds = %223
  %15 = icmp eq ptr %166, null
  br i1 %15, label %226, label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %0, %12 ], [ %166, %14 ]
  %18 = phi i32 [ 0, %12 ], [ %167, %14 ]
  %19 = phi i32 [ 0, %12 ], [ %168, %14 ]
  %20 = phi i32 [ 0, %12 ], [ %169, %14 ]
  br label %21

21:                                               ; preds = %21, %16
  %22 = phi ptr [ %31, %21 ], [ %17, %16 ]
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = and i8 %26, 32
  %28 = icmp ne i8 %27, 0
  %29 = icmp eq i8 %23, 44
  %30 = or i1 %29, %28
  %31 = getelementptr i8, ptr %22, i32 1
  br i1 %30, label %21, label %32

32:                                               ; preds = %21
  %33 = icmp eq ptr %22, null
  br i1 %33, label %226, label %34

34:                                               ; preds = %32
  switch i8 %23, label %35 [
    i8 10, label %226
    i8 0, label %226
  ]

35:                                               ; preds = %34
  %36 = call i32 @strncasecmp(ptr noundef nonnull %22, ptr noundef nonnull @.str.2, i32 noundef 3) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %22, i32 3
  br label %91

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store i64 0, ptr %7, align 8, !annotation !11
  %41 = load i8, ptr %22, align 1
  %42 = icmp eq i8 %41, 78
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = call i32 @_parse_integer(ptr noundef nonnull %22, i32 noundef 10, ptr noundef nonnull %7) #14
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = icmp sgt i32 %44, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = load i64, ptr %7, align 8
  %50 = icmp ult i64 %49, 4294967296
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = trunc i64 %49 to i32
  br label %55

53:                                               ; preds = %48, %46, %43
  %54 = phi ptr [ inttoptr (i32 -75 to ptr), %46 ], [ inttoptr (i32 -75 to ptr), %48 ], [ inttoptr (i32 -22 to ptr), %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %162

55:                                               ; preds = %51, %40
  %56 = phi i32 [ %52, %51 ], [ %13, %40 ]
  %57 = phi i32 [ %44, %51 ], [ 1, %40 ]
  %58 = getelementptr i8, ptr %22, i32 %57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  %59 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %155, label %60

60:                                               ; preds = %55
  %61 = load i8, ptr %58, align 1
  %62 = zext i8 %61 to i32
  %63 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = and i8 %64, 32
  %66 = icmp ne i8 %65, 0
  %67 = icmp eq i8 %61, 44
  %68 = or i1 %67, %66
  br i1 %68, label %149, label %69

69:                                               ; preds = %60
  switch i8 %61, label %162 [
    i8 10, label %149
    i8 0, label %149
    i8 45, label %70
  ]

70:                                               ; preds = %69
  %71 = getelementptr i8, ptr %58, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store i64 0, ptr %6, align 8, !annotation !11
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 78
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = call i32 @_parse_integer(ptr noundef %71, i32 noundef 10, ptr noundef nonnull %6) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = icmp sgt i32 %75, -1
  br i1 %78, label %79, label %84

79:                                               ; preds = %77
  %80 = load i64, ptr %6, align 8
  %81 = icmp ult i64 %80, 4294967296
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = trunc i64 %80 to i32
  br label %86

84:                                               ; preds = %79, %77, %74
  %85 = phi ptr [ inttoptr (i32 -75 to ptr), %77 ], [ inttoptr (i32 -75 to ptr), %79 ], [ inttoptr (i32 -22 to ptr), %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %162

86:                                               ; preds = %82, %70
  %87 = phi i32 [ %83, %82 ], [ %13, %70 ]
  %88 = phi i32 [ %75, %82 ], [ 1, %70 ]
  %89 = getelementptr i8, ptr %71, i32 %88
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %155, label %91

91:                                               ; preds = %86, %38
  %92 = phi i32 [ 0, %38 ], [ %56, %86 ]
  %93 = phi i32 [ %13, %38 ], [ %87, %86 ]
  %94 = phi ptr [ %39, %38 ], [ %89, %86 ]
  %95 = load i8, ptr %94, align 1
  %96 = zext i8 %95 to i32
  %97 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %96
  %98 = load i8, ptr %97, align 1
  %99 = and i8 %98, 32
  %100 = icmp ne i8 %99, 0
  %101 = icmp eq i8 %95, 44
  %102 = or i1 %101, %100
  br i1 %102, label %149, label %103

103:                                              ; preds = %91
  switch i8 %95, label %162 [
    i8 10, label %149
    i8 0, label %149
    i8 58, label %104
  ]

104:                                              ; preds = %103
  %105 = getelementptr i8, ptr %94, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !annotation !11
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 78
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = call i32 @_parse_integer(ptr noundef %105, i32 noundef 10, ptr noundef nonnull %5) #14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = icmp sgt i32 %109, -1
  br i1 %112, label %113, label %118

113:                                              ; preds = %111
  %114 = load i64, ptr %5, align 8
  %115 = icmp ult i64 %114, 4294967296
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = trunc i64 %114 to i32
  br label %120

118:                                              ; preds = %113, %111, %108
  %119 = phi ptr [ inttoptr (i32 -75 to ptr), %111 ], [ inttoptr (i32 -75 to ptr), %113 ], [ inttoptr (i32 -22 to ptr), %108 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %162

120:                                              ; preds = %116, %104
  %121 = phi i32 [ %117, %116 ], [ %13, %104 ]
  %122 = phi i32 [ %109, %116 ], [ 1, %104 ]
  %123 = getelementptr i8, ptr %105, i32 %122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %155, label %125

125:                                              ; preds = %120
  %126 = load i8, ptr %123, align 1
  %127 = icmp eq i8 %126, 47
  br i1 %127, label %128, label %162

128:                                              ; preds = %125
  %129 = getelementptr i8, ptr %123, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store i64 0, ptr %4, align 8, !annotation !11
  %130 = load i8, ptr %129, align 1
  %131 = icmp eq i8 %130, 78
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  %133 = call i32 @_parse_integer(ptr noundef %129, i32 noundef 10, ptr noundef nonnull %4) #14
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %132
  %136 = icmp sgt i32 %133, -1
  br i1 %136, label %137, label %146

137:                                              ; preds = %135
  %138 = load i64, ptr %4, align 8
  %139 = icmp ult i64 %138, 4294967296
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = trunc i64 %138 to i32
  br label %142

142:                                              ; preds = %140, %128
  %143 = phi i32 [ %141, %140 ], [ %13, %128 ]
  %144 = phi i32 [ %133, %140 ], [ 1, %128 ]
  %145 = getelementptr i8, ptr %129, i32 %144
  br label %146

146:                                              ; preds = %142, %137, %135, %132
  %147 = phi i32 [ %143, %142 ], [ %19, %132 ], [ %19, %137 ], [ %19, %135 ]
  %148 = phi ptr [ %145, %142 ], [ inttoptr (i32 -22 to ptr), %132 ], [ inttoptr (i32 -75 to ptr), %137 ], [ inttoptr (i32 -75 to ptr), %135 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %155

149:                                              ; preds = %103, %103, %91, %69, %69, %60
  %150 = phi i8 [ %95, %91 ], [ %95, %103 ], [ %95, %103 ], [ %61, %69 ], [ %61, %69 ], [ %61, %60 ]
  %151 = phi i32 [ %92, %91 ], [ %92, %103 ], [ %92, %103 ], [ %56, %69 ], [ %56, %69 ], [ %56, %60 ]
  %152 = phi i32 [ %93, %91 ], [ %93, %103 ], [ %93, %103 ], [ %56, %69 ], [ %56, %69 ], [ %56, %60 ]
  %153 = phi ptr [ %94, %91 ], [ %94, %103 ], [ %94, %103 ], [ %58, %69 ], [ %58, %69 ], [ %58, %60 ]
  %154 = add i32 %152, 1
  switch i8 %150, label %155 [
    i8 10, label %165
    i8 0, label %165
  ]

155:                                              ; preds = %149, %146, %120, %86, %55
  %156 = phi i32 [ %151, %149 ], [ %92, %120 ], [ %92, %146 ], [ %56, %55 ], [ %56, %86 ]
  %157 = phi i32 [ %154, %149 ], [ %121, %120 ], [ %121, %146 ], [ %20, %55 ], [ %20, %86 ]
  %158 = phi i32 [ %154, %149 ], [ %19, %120 ], [ %147, %146 ], [ %19, %55 ], [ %19, %86 ]
  %159 = phi i32 [ %152, %149 ], [ %93, %120 ], [ %93, %146 ], [ %18, %55 ], [ %87, %86 ]
  %160 = phi ptr [ %153, %149 ], [ %123, %120 ], [ %148, %146 ], [ %58, %55 ], [ %89, %86 ]
  %161 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  br i1 %161, label %162, label %165

162:                                              ; preds = %155, %125, %118, %103, %84, %69, %53
  %163 = phi ptr [ %119, %118 ], [ %85, %84 ], [ %54, %53 ], [ inttoptr (i32 -22 to ptr), %125 ], [ inttoptr (i32 -22 to ptr), %69 ], [ inttoptr (i32 -22 to ptr), %103 ], [ %160, %155 ]
  %164 = ptrtoint ptr %163 to i32
  br label %226

165:                                              ; preds = %155, %149, %149
  %166 = phi ptr [ %160, %155 ], [ null, %149 ], [ null, %149 ]
  %167 = phi i32 [ %159, %155 ], [ %152, %149 ], [ %152, %149 ]
  %168 = phi i32 [ %158, %155 ], [ %154, %149 ], [ %154, %149 ]
  %169 = phi i32 [ %157, %155 ], [ %154, %149 ], [ %154, %149 ]
  %170 = phi i32 [ %156, %155 ], [ %151, %149 ], [ %151, %149 ]
  %171 = icmp ugt i32 %170, %167
  %172 = icmp eq i32 %168, 0
  %173 = select i1 %171, i1 true, i1 %172
  %174 = icmp ugt i32 %169, %168
  %175 = select i1 %173, i1 true, i1 %174
  br i1 %175, label %226, label %176

176:                                              ; preds = %165
  %177 = icmp ult i32 %167, %2
  br i1 %177, label %178, label %226

178:                                              ; preds = %176
  %179 = add nuw i32 %167, 1
  br label %180

180:                                              ; preds = %223, %178
  %181 = phi i32 [ %224, %223 ], [ %170, %178 ]
  %182 = sub i32 %179, %181
  %183 = call i32 @llvm.umin.i32(i32 %182, i32 %169) #14
  %184 = lshr i32 %181, 5
  %185 = getelementptr i32, ptr %1, i32 %184
  %186 = add i32 %181, %183
  %187 = or i32 %181, -32
  %188 = and i32 %181, 31
  %189 = shl nsw i32 -1, %188
  %190 = add i32 %183, %187
  %191 = icmp sgt i32 %190, -1
  br i1 %191, label %192, label %211

192:                                              ; preds = %180
  %193 = load i32, ptr %185, align 4
  %194 = or i32 %193, %189
  store i32 %194, ptr %185, align 4
  %195 = getelementptr i32, ptr %185, i32 1
  %196 = icmp ugt i32 %190, 31
  br i1 %196, label %197, label %208

197:                                              ; preds = %192
  %198 = add nuw i32 %190, 31
  %199 = call i32 @llvm.umin.i32(i32 %190, i32 63) #14
  %200 = sub nuw i32 %198, %199
  %201 = lshr i32 %200, 3
  %202 = and i32 %201, 536870908
  %203 = add nuw nsw i32 %202, 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 %195, i8 -1, i32 %203, i1 false) #14
  %204 = shl nuw nsw i32 %184, 2
  %205 = add nuw nsw i32 %204, 8
  %206 = add nuw nsw i32 %205, %202
  %207 = getelementptr i8, ptr %1, i32 %206
  br label %208

208:                                              ; preds = %197, %192
  %209 = phi ptr [ %195, %192 ], [ %207, %197 ]
  %210 = and i32 %190, 31
  br label %211

211:                                              ; preds = %208, %180
  %212 = phi i32 [ %183, %180 ], [ %210, %208 ]
  %213 = phi ptr [ %185, %180 ], [ %209, %208 ]
  %214 = phi i32 [ %189, %180 ], [ -1, %208 ]
  %215 = icmp eq i32 %212, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %211
  %217 = sub i32 0, %186
  %218 = and i32 %217, 31
  %219 = lshr i32 -1, %218
  %220 = and i32 %214, %219
  %221 = load i32, ptr %213, align 4
  %222 = or i32 %221, %220
  store i32 %222, ptr %213, align 4
  br label %223

223:                                              ; preds = %216, %211
  %224 = add i32 %181, %168
  %225 = icmp ult i32 %167, %224
  br i1 %225, label %14, label %180

226:                                              ; preds = %176, %165, %162, %34, %34, %32, %14, %3
  %227 = phi i32 [ %164, %162 ], [ 0, %3 ], [ 0, %14 ], [ -22, %165 ], [ -34, %176 ], [ 0, %32 ], [ 0, %34 ], [ 0, %34 ]
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_parselist_user(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) #7 {
  %5 = tail call ptr @memdup_user_nul(ptr noundef %0, i32 noundef %1) #14
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %11

9:                                                ; preds = %4
  %10 = tail call i32 @bitmap_parselist(ptr noundef %5, ptr noundef %2, i32 noundef %3)
  tail call void @kfree(ptr noundef %5) #14
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchrnul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_ord_to_pos(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = tail call i32 @_find_first_bit_le(ptr noundef %0, i32 noundef %2) #14
  %5 = icmp ult i32 %4, %2
  %6 = icmp ne i32 %1, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %8, %3
  %9 = phi i32 [ %13, %8 ], [ %4, %3 ]
  %10 = phi i32 [ %11, %8 ], [ %1, %3 ]
  %11 = add i32 %10, -1
  %12 = add nuw i32 %9, 1
  %13 = tail call i32 @_find_next_bit_le(ptr noundef %0, i32 noundef %2, i32 noundef %12) #14
  %14 = icmp ult i32 %13, %2
  %15 = icmp ne i32 %11, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %8, label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %4, %3 ], [ %13, %8 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bitmap_remap(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #7 {
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %100, label %7

7:                                                ; preds = %5
  %8 = add i32 %4, 31
  %9 = lshr i32 %8, 3
  %10 = and i32 %9, 536870908
  tail call void @llvm.memset.p0.i32(ptr align 4 %0, i8 0, i32 %10, i1 false) #14
  %11 = icmp ult i32 %4, 32
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = lshr i32 %4, 5
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %20, %14 ], [ 0, %12 ]
  %16 = phi i32 [ %21, %14 ], [ 0, %12 ]
  %17 = getelementptr i32, ptr %3, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @__sw_hweight32(i32 noundef %18) #14
  %20 = add i32 %19, %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %13
  br i1 %22, label %23, label %14

23:                                               ; preds = %14, %7
  %24 = phi i32 [ 0, %7 ], [ %13, %14 ]
  %25 = phi i32 [ 0, %7 ], [ %20, %14 ]
  %26 = and i32 %4, 31
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = getelementptr i32, ptr %3, i32 %24
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 0, %4
  %32 = and i32 %31, 31
  %33 = lshr i32 -1, %32
  %34 = and i32 %30, %33
  %35 = tail call i32 @__sw_hweight32(i32 noundef %34) #14
  %36 = add i32 %35, %25
  br label %37

37:                                               ; preds = %28, %23
  %38 = phi i32 [ %36, %28 ], [ %25, %23 ]
  %39 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %4, i32 noundef 0) #14
  %40 = icmp ult i32 %39, %4
  br i1 %40, label %41, label %100

41:                                               ; preds = %37
  %42 = icmp eq i32 %38, 0
  br label %43

43:                                               ; preds = %95, %41
  %44 = phi i32 [ %39, %41 ], [ %98, %95 ]
  %45 = lshr i32 %44, 5
  %46 = getelementptr i32, ptr %2, i32 %45
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %95, label %52

52:                                               ; preds = %43
  %53 = icmp ult i32 %44, 32
  br i1 %53, label %63, label %54

54:                                               ; preds = %54, %52
  %55 = phi i32 [ %60, %54 ], [ 0, %52 ]
  %56 = phi i32 [ %61, %54 ], [ 0, %52 ]
  %57 = getelementptr i32, ptr %2, i32 %56
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @__sw_hweight32(i32 noundef %58) #14
  %60 = add i32 %59, %55
  %61 = add nuw nsw i32 %56, 1
  %62 = icmp eq i32 %61, %45
  br i1 %62, label %63, label %54

63:                                               ; preds = %54, %52
  %64 = phi i32 [ 0, %52 ], [ %45, %54 ]
  %65 = phi i32 [ 0, %52 ], [ %60, %54 ]
  %66 = icmp eq i32 %48, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = getelementptr i32, ptr %2, i32 %64
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 0, %44
  %71 = and i32 %70, 31
  %72 = lshr i32 -1, %71
  %73 = and i32 %69, %72
  %74 = tail call i32 @__sw_hweight32(i32 noundef %73) #14
  %75 = add i32 %74, %65
  br label %76

76:                                               ; preds = %67, %63
  %77 = phi i32 [ %75, %67 ], [ %65, %63 ]
  %78 = icmp slt i32 %77, 0
  %79 = select i1 %78, i1 true, i1 %42
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = urem i32 %77, %38
  %82 = tail call i32 @_find_first_bit_le(ptr noundef %3, i32 noundef %4) #14
  %83 = icmp ult i32 %82, %4
  %84 = icmp ne i32 %81, 0
  %85 = and i1 %84, %83
  br i1 %85, label %86, label %95

86:                                               ; preds = %86, %80
  %87 = phi i32 [ %91, %86 ], [ %82, %80 ]
  %88 = phi i32 [ %89, %86 ], [ %81, %80 ]
  %89 = add i32 %88, -1
  %90 = add nuw i32 %87, 1
  %91 = tail call i32 @_find_next_bit_le(ptr noundef %3, i32 noundef %4, i32 noundef %90) #14
  %92 = icmp ult i32 %91, %4
  %93 = icmp ne i32 %89, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %86, label %95

95:                                               ; preds = %86, %80, %76, %43
  %96 = phi i32 [ %44, %43 ], [ %44, %76 ], [ %82, %80 ], [ %91, %86 ]
  tail call void @_set_bit(i32 noundef %96, ptr noundef %0) #14
  %97 = add i32 %44, 1
  %98 = tail call i32 @_find_next_bit_le(ptr noundef %1, i32 noundef %4, i32 noundef %97) #14
  %99 = icmp ult i32 %98, %4
  br i1 %99, label %43, label %100

100:                                              ; preds = %95, %37, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_bitremap(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7 {
  %5 = icmp ult i32 %3, 32
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = lshr i32 %3, 5
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %14, %8 ], [ 0, %6 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %6 ]
  %11 = getelementptr i32, ptr %2, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @__sw_hweight32(i32 noundef %12) #14
  %14 = add i32 %13, %9
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %15, %7
  br i1 %16, label %17, label %8

17:                                               ; preds = %8, %4
  %18 = phi i32 [ 0, %4 ], [ %7, %8 ]
  %19 = phi i32 [ 0, %4 ], [ %14, %8 ]
  %20 = and i32 %3, 31
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %17
  %23 = getelementptr i32, ptr %2, i32 %18
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 0, %3
  %26 = and i32 %25, 31
  %27 = lshr i32 -1, %26
  %28 = and i32 %24, %27
  %29 = tail call i32 @__sw_hweight32(i32 noundef %28) #14
  %30 = add i32 %29, %19
  br label %31

31:                                               ; preds = %22, %17
  %32 = phi i32 [ %30, %22 ], [ %19, %17 ]
  %33 = icmp ult i32 %0, %3
  br i1 %33, label %34, label %86

34:                                               ; preds = %31
  %35 = lshr i32 %0, 5
  %36 = getelementptr i32, ptr %1, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %0, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %86, label %42

42:                                               ; preds = %34
  %43 = icmp ult i32 %0, 32
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %42
  %45 = phi i32 [ %50, %44 ], [ 0, %42 ]
  %46 = phi i32 [ %51, %44 ], [ 0, %42 ]
  %47 = getelementptr i32, ptr %1, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 @__sw_hweight32(i32 noundef %48) #14
  %50 = add i32 %49, %45
  %51 = add nuw nsw i32 %46, 1
  %52 = icmp eq i32 %51, %35
  br i1 %52, label %53, label %44

53:                                               ; preds = %44, %42
  %54 = phi i32 [ 0, %42 ], [ %35, %44 ]
  %55 = phi i32 [ 0, %42 ], [ %50, %44 ]
  %56 = icmp eq i32 %38, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = getelementptr i32, ptr %1, i32 %54
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 0, %0
  %61 = and i32 %60, 31
  %62 = lshr i32 -1, %61
  %63 = and i32 %59, %62
  %64 = tail call i32 @__sw_hweight32(i32 noundef %63) #14
  %65 = add i32 %64, %55
  br label %66

66:                                               ; preds = %57, %53
  %67 = phi i32 [ %65, %57 ], [ %55, %53 ]
  %68 = icmp slt i32 %67, 0
  %69 = icmp eq i32 %32, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = srem i32 %67, %32
  %73 = tail call i32 @_find_first_bit_le(ptr noundef %2, i32 noundef %3) #14
  %74 = icmp ult i32 %73, %3
  %75 = icmp ne i32 %72, 0
  %76 = and i1 %75, %74
  br i1 %76, label %77, label %86

77:                                               ; preds = %77, %71
  %78 = phi i32 [ %82, %77 ], [ %73, %71 ]
  %79 = phi i32 [ %80, %77 ], [ %72, %71 ]
  %80 = add i32 %79, -1
  %81 = add nuw i32 %78, 1
  %82 = tail call i32 @_find_next_bit_le(ptr noundef %2, i32 noundef %3, i32 noundef %81) #14
  %83 = icmp ult i32 %82, %3
  %84 = icmp ne i32 %80, 0
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %77, label %86

86:                                               ; preds = %77, %71, %66, %34, %31
  %87 = phi i32 [ %0, %66 ], [ %73, %71 ], [ %0, %34 ], [ %0, %31 ], [ %82, %77 ]
  ret i32 %87
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_find_free_region(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = shl nuw i32 1, %2
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = add nuw i32 %4, 31
  %8 = lshr i32 %7, 5
  %9 = tail call i32 @llvm.smin.i32(i32 %4, i32 32) #14
  %10 = add i32 %9, -1
  %11 = shl i32 2, %10
  %12 = add i32 %11, -1
  %13 = tail call i32 @llvm.umax.i32(i32 %8, i32 1) #14
  br label %17

14:                                               ; preds = %26
  %15 = add i32 %18, %4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %41, label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %4, %6 ], [ %15, %14 ]
  %19 = phi i32 [ 0, %6 ], [ %18, %14 ]
  %20 = lshr i32 %19, 5
  %21 = and i32 %19, 31
  %22 = shl i32 %12, %21
  br label %26

23:                                               ; preds = %26
  %24 = add nuw nsw i32 %27, 1
  %25 = icmp eq i32 %24, %13
  br i1 %25, label %33, label %26

26:                                               ; preds = %23, %17
  %27 = phi i32 [ %24, %23 ], [ 0, %17 ]
  %28 = add nuw nsw i32 %27, %20
  %29 = getelementptr i32, ptr %0, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %23, label %14

33:                                               ; preds = %33, %23
  %34 = phi i32 [ %39, %33 ], [ 0, %23 ]
  %35 = add nuw nsw i32 %34, %20
  %36 = getelementptr i32, ptr %0, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, %22
  store i32 %38, ptr %36, align 4
  %39 = add nuw nsw i32 %34, 1
  %40 = icmp eq i32 %39, %13
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %14, %3
  %42 = phi i32 [ -12, %3 ], [ %19, %33 ], [ -12, %14 ]
  ret i32 %42
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bitmap_release_region(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = shl nuw i32 1, %2
  %5 = lshr i32 %1, 5
  %6 = and i32 %1, 31
  %7 = add nuw i32 %4, 31
  %8 = lshr i32 %7, 5
  %9 = tail call i32 @llvm.smin.i32(i32 %4, i32 32) #14
  %10 = add i32 %9, -1
  %11 = shl i32 2, %10
  %12 = add i32 %11, -1
  %13 = shl i32 %12, %6
  %14 = xor i32 %13, -1
  %15 = tail call i32 @llvm.umax.i32(i32 %8, i32 1) #14
  br label %16

16:                                               ; preds = %16, %3
  %17 = phi i32 [ 0, %3 ], [ %22, %16 ]
  %18 = add nuw nsw i32 %17, %5
  %19 = getelementptr i32, ptr %0, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %14
  store i32 %21, ptr %19, align 4
  %22 = add nuw nsw i32 %17, 1
  %23 = icmp eq i32 %22, %15
  br i1 %23, label %24, label %16

24:                                               ; preds = %16
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bitmap_allocate_region(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = shl nuw i32 1, %2
  %5 = lshr i32 %1, 5
  %6 = and i32 %1, 31
  %7 = add nuw i32 %4, 31
  %8 = lshr i32 %7, 5
  %9 = tail call i32 @llvm.smin.i32(i32 %4, i32 32) #14
  %10 = add i32 %9, -1
  %11 = shl i32 2, %10
  %12 = add i32 %11, -1
  %13 = shl i32 %12, %6
  %14 = tail call i32 @llvm.umax.i32(i32 %8, i32 1) #14
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i32 %19, 1
  %17 = icmp eq i32 %16, %14
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %3
  %19 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %20 = add nuw nsw i32 %19, %5
  %21 = getelementptr i32, ptr %0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %15, label %33

25:                                               ; preds = %25, %15
  %26 = phi i32 [ %31, %25 ], [ 0, %15 ]
  %27 = add nuw nsw i32 %26, %5
  %28 = getelementptr i32, ptr %0, i32 %27
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, %13
  store i32 %30, ptr %28, align 4
  %31 = add nuw nsw i32 %26, 1
  %32 = icmp eq i32 %31, %14
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %18
  %34 = phi i32 [ 0, %25 ], [ -16, %18 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bitmap_alloc(i32 noundef %0, i32 noundef %1) #7 {
  %3 = add i32 %0, 31
  %4 = lshr i32 %3, 3
  %5 = and i32 %4, 536870908
  %6 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef %1) #15
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bitmap_zalloc(i32 noundef %0, i32 noundef %1) #7 {
  %3 = add i32 %0, 31
  %4 = lshr i32 %3, 3
  %5 = and i32 %4, 536870908
  %6 = or i32 %1, 256
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %5, i32 noundef %6) #15
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bitmap_alloc_node(i32 noundef %0, i32 noundef %1, i32 %2) #7 {
  %4 = add i32 %0, 31
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 536870908
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef %1) #15
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bitmap_zalloc_node(i32 noundef %0, i32 noundef %1, i32 %2) #7 {
  %4 = add i32 %0, 31
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 536870908
  %7 = or i32 %1, 256
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef %7) #15
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bitmap_free(ptr noundef %0) #7 {
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_bitmap_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = add i32 %1, 31
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 536870908
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef %2) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_bitmap_free, ptr noundef nonnull %7) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @kfree(ptr noundef nonnull %7) #14
  br label %13

13:                                               ; preds = %12, %9, %3
  %14 = phi ptr [ null, %3 ], [ %7, %9 ], [ null, %12 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_bitmap_free(ptr noundef %0) #7 {
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_bitmap_zalloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = add i32 %1, 31
  %5 = lshr i32 %4, 3
  %6 = and i32 %5, 536870908
  %7 = or i32 %2, 256
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_bitmap_free, ptr noundef nonnull %8) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #14
  br label %14

14:                                               ; preds = %13, %10, %3
  %15 = phi ptr [ null, %3 ], [ %8, %10 ], [ null, %13 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_parse_integer(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.peeled.count", i32 1}
!10 = distinct !{!10, !9}
!11 = !{!"auto-init"}
