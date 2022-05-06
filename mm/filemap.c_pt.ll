; ModuleID = '/llk/IR/mm/filemap.c_pt.bc'
source_filename = "../mm/filemap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_check_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_check_errors\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_check_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_fdatawrite_wbc:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_fdatawrite_wbc\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_fdatawrite_wbc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_fdatawrite:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_fdatawrite\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_fdatawrite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_fdatawrite_range:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_fdatawrite_range\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_fdatawrite_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_flush\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_range_has_page:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_range_has_page\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_range_has_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_fdatawait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_fdatawait_range\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_fdatawait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_fdatawait_range_keep_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_fdatawait_range_keep_errors\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_fdatawait_range_keep_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_fdatawait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22file_fdatawait_range\22\09\09\09\09\09"
module asm "__kstrtabns_file_fdatawait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_fdatawait_keep_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_fdatawait_keep_errors\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_fdatawait_keep_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_range_has_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_range_has_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_range_has_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_write_and_wait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_write_and_wait_range\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_write_and_wait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___filemap_set_wb_err:\09\09\09\09\09"
module asm "\09.asciz \09\22__filemap_set_wb_err\22\09\09\09\09\09"
module asm "__kstrtabns___filemap_set_wb_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_check_and_advance_wb_err:\09\09\09\09\09"
module asm "\09.asciz \09\22file_check_and_advance_wb_err\22\09\09\09\09\09"
module asm "__kstrtabns_file_check_and_advance_wb_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_write_and_wait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22file_write_and_wait_range\22\09\09\09\09\09"
module asm "__kstrtabns_file_write_and_wait_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_replace_page_cache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22replace_page_cache_page\22\09\09\09\09\09"
module asm "__kstrtabns_replace_page_cache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_to_page_cache_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22add_to_page_cache_locked\22\09\09\09\09\09"
module asm "__kstrtabns_add_to_page_cache_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_add_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_add_folio\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_add_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_invalidate_lock_two:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_invalidate_lock_two\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_invalidate_lock_two:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_invalidate_unlock_two:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_invalidate_unlock_two\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_invalidate_unlock_two:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_bit\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_bit_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_bit_killable\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_bit_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_add_wait_queue\22\09\09\09\09\09"
module asm "__kstrtabns_folio_add_wait_queue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_folio_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_end_private_2:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_end_private_2\22\09\09\09\09\09"
module asm "__kstrtabns_folio_end_private_2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_private_2:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_private_2\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_private_2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_wait_private_2_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_wait_private_2_killable\22\09\09\09\09\09"
module asm "__kstrtabns_folio_wait_private_2_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_end_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_end_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_folio_end_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_endio:\09\09\09\09\09"
module asm "\09.asciz \09\22page_endio\22\09\09\09\09\09"
module asm "__kstrtabns_page_endio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___folio_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__folio_lock\22\09\09\09\09\09"
module asm "__kstrtabns___folio_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___folio_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22__folio_lock_killable\22\09\09\09\09\09"
module asm "__kstrtabns___folio_lock_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_next_miss:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_next_miss\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_next_miss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_cache_prev_miss:\09\09\09\09\09"
module asm "\09.asciz \09\22page_cache_prev_miss\22\09\09\09\09\09"
module asm "__kstrtabns_page_cache_prev_miss:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___filemap_get_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22__filemap_get_folio\22\09\09\09\09\09"
module asm "__kstrtabns___filemap_get_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_get_pages_contig:\09\09\09\09\09"
module asm "\09.asciz \09\22find_get_pages_contig\22\09\09\09\09\09"
module asm "__kstrtabns_find_get_pages_contig:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_get_pages_range_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22find_get_pages_range_tag\22\09\09\09\09\09"
module asm "__kstrtabns_find_get_pages_range_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_read\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_read_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_read_iter\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_read_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_fault\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_fault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_map_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_map_pages\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_map_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_page_mkwrite\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_readonly_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_readonly_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_readonly_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_cache_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22read_cache_folio\22\09\09\09\09\09"
module asm "__kstrtabns_read_cache_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_cache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22read_cache_page\22\09\09\09\09\09"
module asm "__kstrtabns_read_cache_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_read_cache_page_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22read_cache_page_gfp\22\09\09\09\09\09"
module asm "__kstrtabns_read_cache_page_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagecache_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22pagecache_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_pagecache_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pagecache_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22pagecache_write_end\22\09\09\09\09\09"
module asm "__kstrtabns_pagecache_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_direct_write:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_direct_write\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_direct_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_perform_write:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_perform_write\22\09\09\09\09\09"
module asm "__kstrtabns_generic_perform_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___generic_file_write_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22__generic_file_write_iter\22\09\09\09\09\09"
module asm "__kstrtabns___generic_file_write_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_write_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_write_iter\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_write_iter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_filemap_release_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22filemap_release_folio\22\09\09\09\09\09"
module asm "__kstrtabns_filemap_release_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.96 }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.98, %struct.trace_event, ptr, ptr, %union.anon.99, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.98 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.99 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_event_state = type { [71 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mm_filemap_op_page_cache = type { %struct.trace_entry, i32, i32, i32, i32, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.anon = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.page = type { i32, %union.anon.2, %union.anon.71, %struct.atomic_t }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.anon.6 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.trace_event_raw_filemap_set_wb_err = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_file_check_and_advance_wb_err = type { %struct.trace_entry, ptr, i32, i32, i32, i32, [0 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.folio_batch = type { i8, i8, [15 x ptr] }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.100, [64 x ptr], %union.anon.101 }
%union.anon.100 = type { %struct.list_head }
%union.anon.101 = type { [3 x [2 x i32]] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.wait_page_queue = type { ptr, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.wait_page_key = type { ptr, i32, i32 }
%struct.anon.10 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.64, %union.anon.65 }
%union.anon.64 = type { ptr }
%union.anon.65 = type { i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mm_filemap_delete_from_page_cache = internal constant [34 x i8] c"mm_filemap_delete_from_page_cache\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_filemap_delete_from_page_cache = dso_local global %struct.static_call_key { ptr @__traceiter_mm_filemap_delete_from_page_cache }, align 4
@__tracepoint_mm_filemap_delete_from_page_cache = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_filemap_delete_from_page_cache, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_filemap_delete_from_page_cache, ptr null, ptr @__traceiter_mm_filemap_delete_from_page_cache, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_filemap_delete_from_page_cache = internal constant ptr @__tracepoint_mm_filemap_delete_from_page_cache, section "__tracepoints_ptrs", align 4
@__tpstrtab_mm_filemap_add_to_page_cache = internal constant [29 x i8] c"mm_filemap_add_to_page_cache\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mm_filemap_add_to_page_cache = dso_local global %struct.static_call_key { ptr @__traceiter_mm_filemap_add_to_page_cache }, align 4
@__tracepoint_mm_filemap_add_to_page_cache = dso_local global %struct.tracepoint { ptr @__tpstrtab_mm_filemap_add_to_page_cache, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mm_filemap_add_to_page_cache, ptr null, ptr @__traceiter_mm_filemap_add_to_page_cache, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mm_filemap_add_to_page_cache = internal constant ptr @__tracepoint_mm_filemap_add_to_page_cache, section "__tracepoints_ptrs", align 4
@__tpstrtab_filemap_set_wb_err = internal constant [19 x i8] c"filemap_set_wb_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_filemap_set_wb_err = dso_local global %struct.static_call_key { ptr @__traceiter_filemap_set_wb_err }, align 4
@__tracepoint_filemap_set_wb_err = dso_local global %struct.tracepoint { ptr @__tpstrtab_filemap_set_wb_err, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_filemap_set_wb_err, ptr null, ptr @__traceiter_filemap_set_wb_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_filemap_set_wb_err = internal constant ptr @__tracepoint_filemap_set_wb_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_file_check_and_advance_wb_err = internal constant [30 x i8] c"file_check_and_advance_wb_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_file_check_and_advance_wb_err = dso_local global %struct.static_call_key { ptr @__traceiter_file_check_and_advance_wb_err }, align 4
@__tracepoint_file_check_and_advance_wb_err = dso_local global %struct.tracepoint { ptr @__tpstrtab_file_check_and_advance_wb_err, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_file_check_and_advance_wb_err, ptr null, ptr @__traceiter_file_check_and_advance_wb_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_file_check_and_advance_wb_err = internal constant ptr @__tracepoint_file_check_and_advance_wb_err, section "__tracepoints_ptrs", align 4
@str__filemap__trace_system_name = internal constant [8 x i8] c"filemap\00", align 1
@trace_event_fields_mm_filemap_op_page_cache = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.96 { %struct.anon.97 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.96 { %struct.anon.97 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.96 { %struct.anon.97 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.96 { %struct.anon.97 { ptr @.str.12, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mm_filemap_op_page_cache = internal global %struct.trace_event_class { ptr @str__filemap__trace_system_name, ptr @trace_event_raw_event_mm_filemap_op_page_cache, ptr @perf_trace_mm_filemap_op_page_cache, ptr @trace_event_reg, ptr @trace_event_fields_mm_filemap_op_page_cache, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mm_filemap_op_page_cache, i64 24), ptr getelementptr (i8, ptr @event_class_mm_filemap_op_page_cache, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mm_filemap_op_page_cache = internal global %struct.trace_event_functions { ptr @trace_raw_output_mm_filemap_op_page_cache, ptr null, ptr null, ptr null }, align 4
@print_fmt_mm_filemap_op_page_cache = internal global [190 x i8] c"\22dev %d:%d ino %lx pfn=0x%lx ofs=%lu order=%u\22, ((unsigned int) ((REC->s_dev) >> 20)), ((unsigned int) ((REC->s_dev) & ((1U << 20) - 1))), REC->i_ino, REC->pfn, REC->index << 12, REC->order\00", align 1
@event_mm_filemap_delete_from_page_cache = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_filemap_op_page_cache, %union.anon.98 { ptr @__tracepoint_mm_filemap_delete_from_page_cache }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_filemap_op_page_cache }, ptr @print_fmt_mm_filemap_op_page_cache, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_filemap_delete_from_page_cache = internal global ptr @event_mm_filemap_delete_from_page_cache, section "_ftrace_events", align 4
@event_mm_filemap_add_to_page_cache = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mm_filemap_op_page_cache, %union.anon.98 { ptr @__tracepoint_mm_filemap_add_to_page_cache }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mm_filemap_op_page_cache }, ptr @print_fmt_mm_filemap_op_page_cache, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mm_filemap_add_to_page_cache = internal global ptr @event_mm_filemap_add_to_page_cache, section "_ftrace_events", align 4
@trace_event_fields_filemap_set_wb_err = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.96 { %struct.anon.97 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.96 { %struct.anon.97 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_filemap_set_wb_err = internal global %struct.trace_event_class { ptr @str__filemap__trace_system_name, ptr @trace_event_raw_event_filemap_set_wb_err, ptr @perf_trace_filemap_set_wb_err, ptr @trace_event_reg, ptr @trace_event_fields_filemap_set_wb_err, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_filemap_set_wb_err, i64 24), ptr getelementptr (i8, ptr @event_class_filemap_set_wb_err, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_filemap_set_wb_err = internal global %struct.trace_event_functions { ptr @trace_raw_output_filemap_set_wb_err, ptr null, ptr null, ptr null }, align 4
@print_fmt_filemap_set_wb_err = internal global [150 x i8] c"\22dev=%d:%d ino=0x%lx errseq=0x%x\22, ((unsigned int) ((REC->s_dev) >> 20)), ((unsigned int) ((REC->s_dev) & ((1U << 20) - 1))), REC->i_ino, REC->errseq\00", align 1
@event_filemap_set_wb_err = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_filemap_set_wb_err, %union.anon.98 { ptr @__tracepoint_filemap_set_wb_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_filemap_set_wb_err }, ptr @print_fmt_filemap_set_wb_err, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_filemap_set_wb_err = internal global ptr @event_filemap_set_wb_err, section "_ftrace_events", align 4
@trace_event_fields_file_check_and_advance_wb_err = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.96 { %struct.anon.97 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.96 { %struct.anon.97 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.96 { %struct.anon.97 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.96 { %struct.anon.97 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.96 { %struct.anon.97 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_file_check_and_advance_wb_err = internal global %struct.trace_event_class { ptr @str__filemap__trace_system_name, ptr @trace_event_raw_event_file_check_and_advance_wb_err, ptr @perf_trace_file_check_and_advance_wb_err, ptr @trace_event_reg, ptr @trace_event_fields_file_check_and_advance_wb_err, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_file_check_and_advance_wb_err, i64 24), ptr getelementptr (i8, ptr @event_class_file_check_and_advance_wb_err, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_file_check_and_advance_wb_err = internal global %struct.trace_event_functions { ptr @trace_raw_output_file_check_and_advance_wb_err, ptr null, ptr null, ptr null }, align 4
@print_fmt_file_check_and_advance_wb_err = internal global [182 x i8] c"\22file=%p dev=%d:%d ino=0x%lx old=0x%x new=0x%x\22, REC->file, ((unsigned int) ((REC->s_dev) >> 20)), ((unsigned int) ((REC->s_dev) & ((1U << 20) - 1))), REC->i_ino, REC->old, REC->new\00", align 1
@event_file_check_and_advance_wb_err = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_file_check_and_advance_wb_err, %union.anon.98 { ptr @__tracepoint_file_check_and_advance_wb_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_file_check_and_advance_wb_err }, ptr @print_fmt_file_check_and_advance_wb_err, ptr null, %union.anon.99 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_file_check_and_advance_wb_err = internal global ptr @event_file_check_and_advance_wb_err, section "_ftrace_events", align 4
@__kstrtab_filemap_check_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_check_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_check_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_check_errors to i32), ptr @__kstrtab_filemap_check_errors, ptr @__kstrtabns_filemap_check_errors }, section "___ksymtab+filemap_check_errors", align 4
@__kstrtab_filemap_fdatawrite_wbc = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_fdatawrite_wbc = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_fdatawrite_wbc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_fdatawrite_wbc to i32), ptr @__kstrtab_filemap_fdatawrite_wbc, ptr @__kstrtabns_filemap_fdatawrite_wbc }, section "___ksymtab+filemap_fdatawrite_wbc", align 4
@__kstrtab_filemap_fdatawrite = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_fdatawrite = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_fdatawrite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_fdatawrite to i32), ptr @__kstrtab_filemap_fdatawrite, ptr @__kstrtabns_filemap_fdatawrite }, section "___ksymtab+filemap_fdatawrite", align 4
@__kstrtab_filemap_fdatawrite_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_fdatawrite_range = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_fdatawrite_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_fdatawrite_range to i32), ptr @__kstrtab_filemap_fdatawrite_range, ptr @__kstrtabns_filemap_fdatawrite_range }, section "___ksymtab+filemap_fdatawrite_range", align 4
@__kstrtab_filemap_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_flush to i32), ptr @__kstrtab_filemap_flush, ptr @__kstrtabns_filemap_flush }, section "___ksymtab+filemap_flush", align 4
@__kstrtab_filemap_range_has_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_range_has_page = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_range_has_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_range_has_page to i32), ptr @__kstrtab_filemap_range_has_page, ptr @__kstrtabns_filemap_range_has_page }, section "___ksymtab+filemap_range_has_page", align 4
@__kstrtab_filemap_fdatawait_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_fdatawait_range = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_fdatawait_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_fdatawait_range to i32), ptr @__kstrtab_filemap_fdatawait_range, ptr @__kstrtabns_filemap_fdatawait_range }, section "___ksymtab+filemap_fdatawait_range", align 4
@__kstrtab_filemap_fdatawait_range_keep_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_fdatawait_range_keep_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_fdatawait_range_keep_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_fdatawait_range_keep_errors to i32), ptr @__kstrtab_filemap_fdatawait_range_keep_errors, ptr @__kstrtabns_filemap_fdatawait_range_keep_errors }, section "___ksymtab+filemap_fdatawait_range_keep_errors", align 4
@__kstrtab_file_fdatawait_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_fdatawait_range = external dso_local constant [0 x i8], align 1
@__ksymtab_file_fdatawait_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_fdatawait_range to i32), ptr @__kstrtab_file_fdatawait_range, ptr @__kstrtabns_file_fdatawait_range }, section "___ksymtab+file_fdatawait_range", align 4
@__kstrtab_filemap_fdatawait_keep_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_fdatawait_keep_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_fdatawait_keep_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_fdatawait_keep_errors to i32), ptr @__kstrtab_filemap_fdatawait_keep_errors, ptr @__kstrtabns_filemap_fdatawait_keep_errors }, section "___ksymtab+filemap_fdatawait_keep_errors", align 4
@__kstrtab_filemap_range_has_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_range_has_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_range_has_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_range_has_writeback to i32), ptr @__kstrtab_filemap_range_has_writeback, ptr @__kstrtabns_filemap_range_has_writeback }, section "___ksymtab_gpl+filemap_range_has_writeback", align 4
@__kstrtab_filemap_write_and_wait_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_write_and_wait_range = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_write_and_wait_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_write_and_wait_range to i32), ptr @__kstrtab_filemap_write_and_wait_range, ptr @__kstrtabns_filemap_write_and_wait_range }, section "___ksymtab+filemap_write_and_wait_range", align 4
@__kstrtab___filemap_set_wb_err = external dso_local constant [0 x i8], align 1
@__kstrtabns___filemap_set_wb_err = external dso_local constant [0 x i8], align 1
@__ksymtab___filemap_set_wb_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__filemap_set_wb_err to i32), ptr @__kstrtab___filemap_set_wb_err, ptr @__kstrtabns___filemap_set_wb_err }, section "___ksymtab+__filemap_set_wb_err", align 4
@__kstrtab_file_check_and_advance_wb_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_check_and_advance_wb_err = external dso_local constant [0 x i8], align 1
@__ksymtab_file_check_and_advance_wb_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_check_and_advance_wb_err to i32), ptr @__kstrtab_file_check_and_advance_wb_err, ptr @__kstrtabns_file_check_and_advance_wb_err }, section "___ksymtab+file_check_and_advance_wb_err", align 4
@__kstrtab_file_write_and_wait_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_write_and_wait_range = external dso_local constant [0 x i8], align 1
@__ksymtab_file_write_and_wait_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_write_and_wait_range to i32), ptr @__kstrtab_file_write_and_wait_range, ptr @__kstrtabns_file_write_and_wait_range }, section "___ksymtab+file_write_and_wait_range", align 4
@__kstrtab_replace_page_cache_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_replace_page_cache_page = external dso_local constant [0 x i8], align 1
@__ksymtab_replace_page_cache_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @replace_page_cache_page to i32), ptr @__kstrtab_replace_page_cache_page, ptr @__kstrtabns_replace_page_cache_page }, section "___ksymtab_gpl+replace_page_cache_page", align 4
@__kstrtab_add_to_page_cache_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_to_page_cache_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_add_to_page_cache_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_to_page_cache_locked to i32), ptr @__kstrtab_add_to_page_cache_locked, ptr @__kstrtabns_add_to_page_cache_locked }, section "___ksymtab+add_to_page_cache_locked", align 4
@filemap_add_folio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [13 x i8] c"mm/filemap.c\00", align 1
@__kstrtab_filemap_add_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_add_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_add_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_add_folio to i32), ptr @__kstrtab_filemap_add_folio, ptr @__kstrtabns_filemap_add_folio }, section "___ksymtab_gpl+filemap_add_folio", align 4
@__kstrtab_filemap_invalidate_lock_two = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_invalidate_lock_two = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_invalidate_lock_two = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_invalidate_lock_two to i32), ptr @__kstrtab_filemap_invalidate_lock_two, ptr @__kstrtabns_filemap_invalidate_lock_two }, section "___ksymtab+filemap_invalidate_lock_two", align 4
@__kstrtab_filemap_invalidate_unlock_two = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_invalidate_unlock_two = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_invalidate_unlock_two = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_invalidate_unlock_two to i32), ptr @__kstrtab_filemap_invalidate_unlock_two, ptr @__kstrtabns_filemap_invalidate_unlock_two }, section "___ksymtab+filemap_invalidate_unlock_two", align 4
@pagecache_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@folio_wait_table = internal global [256 x %struct.wait_queue_head] zeroinitializer, section ".data..cacheline_aligned", align 64
@.str.1 = private unnamed_addr constant [21 x i8] c"&folio_wait_table[i]\00", align 1
@sysctl_page_lock_unfairness = dso_local local_unnamed_addr global i32 5, align 4
@__kstrtab_folio_wait_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_bit to i32), ptr @__kstrtab_folio_wait_bit, ptr @__kstrtabns_folio_wait_bit }, section "___ksymtab+folio_wait_bit", align 4
@__kstrtab_folio_wait_bit_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_bit_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_bit_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_bit_killable to i32), ptr @__kstrtab_folio_wait_bit_killable, ptr @__kstrtabns_folio_wait_bit_killable }, section "___ksymtab+folio_wait_bit_killable", align 4
@__kstrtab_folio_add_wait_queue = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_add_wait_queue = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_add_wait_queue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_add_wait_queue to i32), ptr @__kstrtab_folio_add_wait_queue, ptr @__kstrtabns_folio_add_wait_queue }, section "___ksymtab_gpl+folio_add_wait_queue", align 4
@__kstrtab_folio_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_unlock to i32), ptr @__kstrtab_folio_unlock, ptr @__kstrtabns_folio_unlock }, section "___ksymtab+folio_unlock", align 4
@__kstrtab_folio_end_private_2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_end_private_2 = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_end_private_2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_end_private_2 to i32), ptr @__kstrtab_folio_end_private_2, ptr @__kstrtabns_folio_end_private_2 }, section "___ksymtab+folio_end_private_2", align 4
@__kstrtab_folio_wait_private_2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_private_2 = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_private_2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_private_2 to i32), ptr @__kstrtab_folio_wait_private_2, ptr @__kstrtabns_folio_wait_private_2 }, section "___ksymtab+folio_wait_private_2", align 4
@__kstrtab_folio_wait_private_2_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_wait_private_2_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_wait_private_2_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_wait_private_2_killable to i32), ptr @__kstrtab_folio_wait_private_2_killable, ptr @__kstrtabns_folio_wait_private_2_killable }, section "___ksymtab+folio_wait_private_2_killable", align 4
@__kstrtab_folio_end_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_end_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_end_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_end_writeback to i32), ptr @__kstrtab_folio_end_writeback, ptr @__kstrtabns_folio_end_writeback }, section "___ksymtab+folio_end_writeback", align 4
@__kstrtab_page_endio = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_endio = external dso_local constant [0 x i8], align 1
@__ksymtab_page_endio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_endio to i32), ptr @__kstrtab_page_endio, ptr @__kstrtabns_page_endio }, section "___ksymtab_gpl+page_endio", align 4
@__kstrtab___folio_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___folio_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___folio_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__folio_lock to i32), ptr @__kstrtab___folio_lock, ptr @__kstrtabns___folio_lock }, section "___ksymtab+__folio_lock", align 4
@__kstrtab___folio_lock_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns___folio_lock_killable = external dso_local constant [0 x i8], align 1
@__ksymtab___folio_lock_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__folio_lock_killable to i32), ptr @__kstrtab___folio_lock_killable, ptr @__kstrtabns___folio_lock_killable }, section "___ksymtab_gpl+__folio_lock_killable", align 4
@__kstrtab_page_cache_next_miss = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_next_miss = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_next_miss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_next_miss to i32), ptr @__kstrtab_page_cache_next_miss, ptr @__kstrtabns_page_cache_next_miss }, section "___ksymtab+page_cache_next_miss", align 4
@__kstrtab_page_cache_prev_miss = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_cache_prev_miss = external dso_local constant [0 x i8], align 1
@__ksymtab_page_cache_prev_miss = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_cache_prev_miss to i32), ptr @__kstrtab_page_cache_prev_miss, ptr @__kstrtabns_page_cache_prev_miss }, section "___ksymtab+page_cache_prev_miss", align 4
@__filemap_get_folio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___filemap_get_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns___filemap_get_folio = external dso_local constant [0 x i8], align 1
@__ksymtab___filemap_get_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__filemap_get_folio to i32), ptr @__kstrtab___filemap_get_folio, ptr @__kstrtabns___filemap_get_folio }, section "___ksymtab+__filemap_get_folio", align 4
@__kstrtab_find_get_pages_contig = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_get_pages_contig = external dso_local constant [0 x i8], align 1
@__ksymtab_find_get_pages_contig = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_get_pages_contig to i32), ptr @__kstrtab_find_get_pages_contig, ptr @__kstrtabns_find_get_pages_contig }, section "___ksymtab+find_get_pages_contig", align 4
@__kstrtab_find_get_pages_range_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_get_pages_range_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_find_get_pages_range_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_get_pages_range_tag to i32), ptr @__kstrtab_find_get_pages_range_tag, ptr @__kstrtabns_find_get_pages_range_tag }, section "___ksymtab+find_get_pages_range_tag", align 4
@__kstrtab_filemap_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_read = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_read to i32), ptr @__kstrtab_filemap_read, ptr @__kstrtabns_filemap_read }, section "___ksymtab_gpl+filemap_read", align 4
@__kstrtab_generic_file_read_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_read_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_read_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_read_iter to i32), ptr @__kstrtab_generic_file_read_iter, ptr @__kstrtabns_generic_file_read_iter }, section "___ksymtab+generic_file_read_iter", align 4
@__kstrtab_filemap_fault = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_fault = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_fault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_fault to i32), ptr @__kstrtab_filemap_fault, ptr @__kstrtabns_filemap_fault }, section "___ksymtab+filemap_fault", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_filemap_map_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_map_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_map_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_map_pages to i32), ptr @__kstrtab_filemap_map_pages, ptr @__kstrtabns_filemap_map_pages }, section "___ksymtab+filemap_map_pages", align 4
@generic_file_vm_ops = dso_local constant %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @filemap_fault, ptr null, ptr @filemap_map_pages, ptr null, ptr @filemap_page_mkwrite, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_filemap_page_mkwrite = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_page_mkwrite = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_page_mkwrite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_page_mkwrite to i32), ptr @__kstrtab_filemap_page_mkwrite, ptr @__kstrtabns_filemap_page_mkwrite }, section "___ksymtab+filemap_page_mkwrite", align 4
@__kstrtab_generic_file_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_mmap to i32), ptr @__kstrtab_generic_file_mmap, ptr @__kstrtabns_generic_file_mmap }, section "___ksymtab+generic_file_mmap", align 4
@__kstrtab_generic_file_readonly_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_readonly_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_readonly_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_readonly_mmap to i32), ptr @__kstrtab_generic_file_readonly_mmap, ptr @__kstrtabns_generic_file_readonly_mmap }, section "___ksymtab+generic_file_readonly_mmap", align 4
@__kstrtab_read_cache_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_cache_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_read_cache_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_cache_folio to i32), ptr @__kstrtab_read_cache_folio, ptr @__kstrtabns_read_cache_folio }, section "___ksymtab+read_cache_folio", align 4
@__kstrtab_read_cache_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_cache_page = external dso_local constant [0 x i8], align 1
@__ksymtab_read_cache_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_cache_page to i32), ptr @__kstrtab_read_cache_page, ptr @__kstrtabns_read_cache_page }, section "___ksymtab+read_cache_page", align 4
@__kstrtab_read_cache_page_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns_read_cache_page_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab_read_cache_page_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @read_cache_page_gfp to i32), ptr @__kstrtab_read_cache_page_gfp, ptr @__kstrtabns_read_cache_page_gfp }, section "___ksymtab+read_cache_page_gfp", align 4
@__kstrtab_pagecache_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagecache_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_pagecache_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagecache_write_begin to i32), ptr @__kstrtab_pagecache_write_begin, ptr @__kstrtabns_pagecache_write_begin }, section "___ksymtab+pagecache_write_begin", align 4
@__kstrtab_pagecache_write_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_pagecache_write_end = external dso_local constant [0 x i8], align 1
@__ksymtab_pagecache_write_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pagecache_write_end to i32), ptr @__kstrtab_pagecache_write_end, ptr @__kstrtabns_pagecache_write_end }, section "___ksymtab+pagecache_write_end", align 4
@dio_warn_stale_pagecache._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 8640000, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.dio_warn_stale_pagecache = private unnamed_addr constant [25 x i8] c"dio_warn_stale_pagecache\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.3 = private unnamed_addr constant [112 x i8] c"\012Page cache invalidation failure on direct I/O.  Possible data corruption due to collision with buffered I/O!\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\012File: %s PID: %d Comm: %.20s\0A\00", align 1
@__kstrtab_generic_file_direct_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_direct_write = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_direct_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_direct_write to i32), ptr @__kstrtab_generic_file_direct_write, ptr @__kstrtabns_generic_file_direct_write }, section "___ksymtab+generic_file_direct_write", align 4
@__kstrtab_generic_perform_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_perform_write = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_perform_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_perform_write to i32), ptr @__kstrtab_generic_perform_write, ptr @__kstrtabns_generic_perform_write }, section "___ksymtab+generic_perform_write", align 4
@__kstrtab___generic_file_write_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns___generic_file_write_iter = external dso_local constant [0 x i8], align 1
@__ksymtab___generic_file_write_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__generic_file_write_iter to i32), ptr @__kstrtab___generic_file_write_iter, ptr @__kstrtabns___generic_file_write_iter }, section "___ksymtab+__generic_file_write_iter", align 4
@__kstrtab_generic_file_write_iter = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_write_iter = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_write_iter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_write_iter to i32), ptr @__kstrtab_generic_file_write_iter, ptr @__kstrtabns_generic_file_write_iter }, section "___ksymtab+generic_file_write_iter", align 4
@__kstrtab_filemap_release_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_filemap_release_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_filemap_release_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @filemap_release_folio to i32), ptr @__kstrtab_filemap_release_folio, ptr @__kstrtabns_filemap_release_folio }, section "___ksymtab+filemap_release_folio", align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pfn\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"i_ino\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"dev_t\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"s_dev\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"dev %d:%d ino %lx pfn=0x%lx ofs=%lu order=%u\0A\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"errseq_t\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"errseq\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"dev=%d:%d ino=0x%lx errseq=0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"struct file *\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"file=%p dev=%d:%d ino=0x%lx old=0x%x new=0x%x\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.23 = private unnamed_addr constant [48 x i8] c"\011BUG: Bad page cache in process %s  pfn:%05lx\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"still mapped when deleted\00", align 1
@filemap_unaccount_folio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@page_cache_delete_batch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@shmem_aops = external dso_local constant %struct.address_space_operations, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [72 x ptr] [ptr @__event_file_check_and_advance_wb_err, ptr @__event_filemap_set_wb_err, ptr @__event_mm_filemap_add_to_page_cache, ptr @__event_mm_filemap_delete_from_page_cache, ptr @__ksymtab___filemap_get_folio, ptr @__ksymtab___filemap_set_wb_err, ptr @__ksymtab___folio_lock, ptr @__ksymtab___folio_lock_killable, ptr @__ksymtab___generic_file_write_iter, ptr @__ksymtab_add_to_page_cache_locked, ptr @__ksymtab_file_check_and_advance_wb_err, ptr @__ksymtab_file_fdatawait_range, ptr @__ksymtab_file_write_and_wait_range, ptr @__ksymtab_filemap_add_folio, ptr @__ksymtab_filemap_check_errors, ptr @__ksymtab_filemap_fault, ptr @__ksymtab_filemap_fdatawait_keep_errors, ptr @__ksymtab_filemap_fdatawait_range, ptr @__ksymtab_filemap_fdatawait_range_keep_errors, ptr @__ksymtab_filemap_fdatawrite, ptr @__ksymtab_filemap_fdatawrite_range, ptr @__ksymtab_filemap_fdatawrite_wbc, ptr @__ksymtab_filemap_flush, ptr @__ksymtab_filemap_invalidate_lock_two, ptr @__ksymtab_filemap_invalidate_unlock_two, ptr @__ksymtab_filemap_map_pages, ptr @__ksymtab_filemap_page_mkwrite, ptr @__ksymtab_filemap_range_has_page, ptr @__ksymtab_filemap_range_has_writeback, ptr @__ksymtab_filemap_read, ptr @__ksymtab_filemap_release_folio, ptr @__ksymtab_filemap_write_and_wait_range, ptr @__ksymtab_find_get_pages_contig, ptr @__ksymtab_find_get_pages_range_tag, ptr @__ksymtab_folio_add_wait_queue, ptr @__ksymtab_folio_end_private_2, ptr @__ksymtab_folio_end_writeback, ptr @__ksymtab_folio_unlock, ptr @__ksymtab_folio_wait_bit, ptr @__ksymtab_folio_wait_bit_killable, ptr @__ksymtab_folio_wait_private_2, ptr @__ksymtab_folio_wait_private_2_killable, ptr @__ksymtab_generic_file_direct_write, ptr @__ksymtab_generic_file_mmap, ptr @__ksymtab_generic_file_read_iter, ptr @__ksymtab_generic_file_readonly_mmap, ptr @__ksymtab_generic_file_write_iter, ptr @__ksymtab_generic_perform_write, ptr @__ksymtab_page_cache_next_miss, ptr @__ksymtab_page_cache_prev_miss, ptr @__ksymtab_page_endio, ptr @__ksymtab_pagecache_write_begin, ptr @__ksymtab_pagecache_write_end, ptr @__ksymtab_read_cache_folio, ptr @__ksymtab_read_cache_page, ptr @__ksymtab_read_cache_page_gfp, ptr @__ksymtab_replace_page_cache_page, ptr @__tracepoint_file_check_and_advance_wb_err, ptr @__tracepoint_filemap_set_wb_err, ptr @__tracepoint_mm_filemap_add_to_page_cache, ptr @__tracepoint_mm_filemap_delete_from_page_cache, ptr @__tracepoint_ptr_file_check_and_advance_wb_err, ptr @__tracepoint_ptr_filemap_set_wb_err, ptr @__tracepoint_ptr_mm_filemap_add_to_page_cache, ptr @__tracepoint_ptr_mm_filemap_delete_from_page_cache, ptr @event_class_file_check_and_advance_wb_err, ptr @event_class_filemap_set_wb_err, ptr @event_class_mm_filemap_op_page_cache, ptr @event_file_check_and_advance_wb_err, ptr @event_filemap_set_wb_err, ptr @event_mm_filemap_add_to_page_cache, ptr @event_mm_filemap_delete_from_page_cache], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_filemap_delete_from_page_cache(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_delete_from_page_cache, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #11
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mm_filemap_add_to_page_cache(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_add_to_page_cache, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #11
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_filemap_set_wb_err(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_filemap_set_wb_err, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #11
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_file_check_and_advance_wb_err(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_file_check_and_advance_wb_err, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #11
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mm_filemap_op_page_cache(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %12, label %54, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 28) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %1 to i32
  %19 = ptrtoint ptr %17 to i32
  %20 = sub i32 %18, %19
  %21 = ashr exact i32 %20, 5
  %22 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %14, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %14, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %14, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %25, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 12
  %40 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 1
  %41 = select i1 %38, ptr %39, ptr %40
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %14, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = load volatile i32, ptr %1, align 4
  %45 = and i32 %44, 65536
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %16
  %48 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %49 = getelementptr inbounds %struct.anon.6, ptr %48, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  br label %51

51:                                               ; preds = %47, %16
  %52 = phi i8 [ %50, %47 ], [ 0, %16 ]
  %53 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %14, i32 0, i32 5
  store i8 %52, ptr %53, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #11
  br label %54

54:                                               ; preds = %51, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mm_filemap_op_page_cache(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #8, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %72, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #11
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #11
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %1 to i32
  %35 = ptrtoint ptr %33 to i32
  %36 = sub i32 %34, %35
  %37 = ashr exact i32 %36, 5
  %38 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %39 = add i32 %37, %38
  %40 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %20, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %20, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %20, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = load ptr, ptr %41, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 12
  %56 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 1
  %57 = select i1 %54, ptr %55, ptr %56
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %20, i32 0, i32 4
  store i32 %58, ptr %59, align 4
  %60 = load volatile i32, ptr %1, align 4
  %61 = and i32 %60, 65536
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %22
  %64 = getelementptr %struct.page, ptr %1, i32 1, i32 1
  %65 = getelementptr inbounds %struct.anon.6, ptr %64, i32 0, i32 2
  %66 = load i8, ptr %65, align 1
  br label %67

67:                                               ; preds = %63, %22
  %68 = phi i8 [ %66, %63 ], [ 0, %22 ]
  %69 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %20, i32 0, i32 5
  store i8 %68, ptr %69, align 4
  %70 = load i32, ptr %4, align 4
  %71 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %70, ptr noundef %0, i64 noundef 1, ptr noundef %71, ptr noundef %12, ptr noundef null) #11
  br label %72

72:                                               ; preds = %67, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_filemap_set_wb_err(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %13, label %32, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 20) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %15, i32 0, i32 3
  store i32 %2, ptr %22, align 4
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 12
  %28 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 1
  %29 = select i1 %26, ptr %27, ptr %28
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %15, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #11
  br label %32

32:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_filemap_set_wb_err(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #11
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #11
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %21, i32 0, i32 3
  store i32 %2, ptr %38, align 4
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 12
  %44 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 1
  %45 = select i1 %42, ptr %43, ptr %44
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %21, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %5, align 4
  %49 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %13, ptr noundef null) #11
  br label %50

50:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_file_check_and_advance_wb_err(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %13, label %39, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 28) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %15, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %19, align 8
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 12
  %31 = getelementptr inbounds %struct.super_block, ptr %28, i32 0, i32 1
  %32 = select i1 %29, ptr %30, ptr %31
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %15, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %15, i32 0, i32 4
  store i32 %2, ptr %35, align 4
  %36 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %15, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #11
  br label %39

39:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_file_check_and_advance_wb_err(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #11
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #11
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 17
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %21, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %35, align 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 12
  %47 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 1
  %48 = select i1 %45, ptr %46, ptr %47
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %21, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %21, i32 0, i32 4
  store i32 %2, ptr %51, align 4
  %52 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 18
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %21, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %5, align 4
  %56 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %13, ptr noundef null) #11
  br label %57

57:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__filemap_remove_folio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.xa_state, align 4
  %4 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_delete_from_page_cache, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #11
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_delete_from_page_cache, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void %24(ptr noundef %26, ptr noundef %0) #11
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %31

31:                                               ; preds = %30, %8, %2
  tail call fastcc void @filemap_unaccount_folio(ptr noundef %5, ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %32 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 1
  store ptr %32, ptr %3, align 4
  %33 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  %34 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %37 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %36, align 4
  %38 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  %40 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, @shmem_aops
  %43 = select i1 %42, ptr null, ptr @workingset_update_node
  store ptr %43, ptr %39, align 4
  %44 = load volatile i32, ptr %0, align 4
  %45 = and i32 %44, 65536
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %31
  %48 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %49 = getelementptr inbounds %struct.anon.6, ptr %48, i32 0, i32 2
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/xarray.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1616, 0\0A.popsection", ""() #11, !srcloc !15
  unreachable

53:                                               ; preds = %47, %31
  store i32 %35, ptr %33, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %37, align 4
  %54 = load volatile i32, ptr %0, align 4
  %55 = and i32 %54, 65536
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i32 [ %59, %57 ], [ 1, %53 ]
  %62 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef %1) #11
  call void @xas_init_marks(ptr noundef nonnull %3) #11
  store ptr null, ptr %4, align 4
  %63 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %64, %61
  store i32 %65, ptr %63, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @filemap_unaccount_folio(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i1 @folio_mapped(ptr noundef %1) #11
  br i1 %3, label %4, label %28, !prof !11

4:                                                ; preds = %2
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %1 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 5
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = add i32 %11, %12
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %6, i32 noundef %13) #12
  tail call void @dump_page(ptr noundef %1, ptr noundef nonnull @.str.24) #11
  tail call void @dump_stack() #12
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #11
  %15 = tail call fastcc i32 @page_mapcount(ptr noundef %1)
  %16 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  %22 = load volatile i32, ptr %21, align 4
  %23 = add i32 %15, 2
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 2
  store volatile i32 -1, ptr %26, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !16
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %15, ptr elementtype(i32) %21) #11, !srcloc !17
  br label %28

28:                                               ; preds = %25, %20, %4, %2
  %29 = load volatile i32, ptr %1, align 4
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %34, %32 ], [ 1, %28 ]
  %37 = sub i32 0, %36
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef %37) #11
  %38 = load volatile i32, ptr %1, align 4
  %39 = and i32 %38, 524288
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 23, i32 noundef %37) #11
  br label %42

42:                                               ; preds = %41, %35
  %43 = load volatile i32, ptr %1, align 4
  %44 = and i32 %43, 8
  %45 = icmp ne i32 %44, 0
  %46 = load i1, ptr @filemap_unaccount_folio.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !11

49:                                               ; preds = %42
  store i1 true, ptr @filemap_unaccount_folio.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 203, i32 noundef 9, ptr noundef null) #11
  br label %50

50:                                               ; preds = %49, %42
  br i1 %45, label %51, label %55

51:                                               ; preds = %50
  %52 = load ptr, ptr %0, align 4
  %53 = tail call ptr @inode_to_bdi(ptr noundef %52) #11
  %54 = getelementptr inbounds %struct.backing_dev_info, ptr %53, i32 0, i32 11
  tail call void @folio_account_cleaned(ptr noundef %1, ptr noundef %0, ptr noundef %54) #11
  br label %55

55:                                               ; preds = %51, %50
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @filemap_free_folio(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.address_space_operations, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %1) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = load volatile i32, ptr %1, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %1, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = phi i32 [ 1, %9 ], [ %19, %17 ], [ 1, %13 ]
  %22 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 %21, ptr elementtype(i32) %22) #11, !srcloc !19
  %24 = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @__put_page(ptr noundef %1) #11
  br label %27

27:                                               ; preds = %26, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @filemap_remove_folio(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr %0, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/filemap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 248, 0\0A.popsection", ""() #11, !srcloc !21
  unreachable

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #11
  tail call void @__filemap_remove_folio(ptr noundef %0, ptr noundef null)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %12 = load i16, ptr %11, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %14 = load ptr, ptr %3, align 4
  tail call void @inode_add_lru(ptr noundef %14) #11
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %19 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.address_space_operations, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  tail call void %22(ptr noundef %0) #11
  br label %25

25:                                               ; preds = %24, %8
  %26 = load volatile i32, ptr %0, align 4
  %27 = and i32 %26, 65536
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load volatile i32, ptr %0, align 4
  %31 = and i32 %30, 65536
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29, %25
  %37 = phi i32 [ 1, %25 ], [ %35, %33 ], [ 1, %29 ]
  %38 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #11, !srcloc !16
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 %37, ptr elementtype(i32) %38) #11, !srcloc !19
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  tail call void @__put_page(ptr noundef %0) #11
  br label %43

43:                                               ; preds = %42, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_add_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @delete_from_page_cache_batch(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.xa_state, align 4
  %4 = load i8, ptr %1, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %185, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #11
  %10 = load i8, ptr %1, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %41, %6
  %13 = phi i32 [ %42, %41 ], [ 0, %6 ]
  %14 = getelementptr %struct.folio_batch, ptr %1, i32 0, i32 2, i32 %13
  %15 = load ptr, ptr %14, align 4
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_delete_from_page_cache, i32 0, i32 1), align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  %19 = tail call ptr @llvm.thread.pointer() #11
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 5
  %23 = getelementptr i32, ptr @__cpu_online_mask, i32 %22
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %21, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_delete_from_page_cache, i32 0, i32 7), align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %37, %32 ], [ %30, %29 ]
  %34 = load volatile ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tracepoint_func, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void %34(ptr noundef %36, ptr noundef %15) #11
  %37 = getelementptr %struct.tracepoint_func, ptr %33, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %32

40:                                               ; preds = %32, %29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %41

41:                                               ; preds = %40, %18, %12
  tail call fastcc void @filemap_unaccount_folio(ptr noundef %0, ptr noundef %15)
  %42 = add nuw nsw i32 %13, 1
  %43 = load i8, ptr %1, align 4
  %44 = zext i8 %43 to i32
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %12, label %46

46:                                               ; preds = %41, %6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  store ptr %9, ptr %3, align 4
  %47 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  %48 = getelementptr inbounds %struct.folio_batch, ptr %1, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.anon, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %47, align 4
  %52 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %53 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 4
  %54 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %52, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %54, align 4
  %55 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  %57 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, @shmem_aops
  %60 = select i1 %59, ptr null, ptr @workingset_update_node
  store ptr %60, ptr %56, align 4
  %61 = call ptr @xas_find(ptr noundef nonnull %3, i32 noundef -1) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %139, label %63

63:                                               ; preds = %136, %46
  %64 = phi i32 [ %100, %136 ], [ 0, %46 ]
  %65 = phi i32 [ %99, %136 ], [ 0, %46 ]
  %66 = phi ptr [ %137, %136 ], [ %61, %46 ]
  %67 = load i8, ptr %1, align 4
  %68 = zext i8 %67 to i32
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %139

70:                                               ; preds = %63
  %71 = ptrtoint ptr %66 to i32
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %70
  %75 = getelementptr %struct.folio_batch, ptr %1, i32 0, i32 2, i32 %65
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %66, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load volatile i32, ptr %66, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  %82 = load i1, ptr @page_cache_delete_batch.__already_done, align 1
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %85, label %84, !prof !10

84:                                               ; preds = %78
  store i1 true, ptr @page_cache_delete_batch.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 302, i32 noundef 9, ptr noundef null) #11
  br label %85

85:                                               ; preds = %84, %78
  %86 = getelementptr inbounds %struct.anon, ptr %66, i32 0, i32 2
  store ptr null, ptr %86, align 4
  %87 = add nuw i32 %65, 1
  %88 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef null) #11
  %89 = load volatile i32, ptr %66, align 4
  %90 = and i32 %89, 65536
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = getelementptr %struct.page, ptr %66, i32 1, i32 1, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = phi i32 [ %94, %92 ], [ 1, %85 ]
  %97 = add i32 %96, %64
  br label %98

98:                                               ; preds = %95, %74, %70
  %99 = phi i32 [ %65, %70 ], [ %65, %74 ], [ %87, %95 ]
  %100 = phi i32 [ %64, %70 ], [ %64, %74 ], [ %97, %95 ]
  %101 = load ptr, ptr %54, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = and i32 %102, 3
  %104 = icmp ne i32 %103, 0
  %105 = icmp eq ptr %101, null
  %106 = or i1 %105, %104
  br i1 %106, label %134, label %107, !prof !11

107:                                              ; preds = %98
  %108 = load i8, ptr %101, align 4
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %134, !prof !10

110:                                              ; preds = %107
  %111 = load i8, ptr %53, align 2
  %112 = zext i8 %111 to i32
  %113 = load i32, ptr %47, align 4
  %114 = and i32 %113, 63
  %115 = icmp eq i32 %114, %112
  br i1 %115, label %116, label %134, !prof !10

116:                                              ; preds = %130, %110
  %117 = phi i8 [ %131, %130 ], [ %111, %110 ]
  %118 = phi i32 [ %132, %130 ], [ %113, %110 ]
  %119 = icmp eq i32 %118, -1
  %120 = icmp eq i8 %117, 63
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %134, label %122, !prof !28

122:                                              ; preds = %116
  %123 = zext i8 %117 to i32
  %124 = add nuw nsw i32 %123, 1
  %125 = getelementptr %struct.xa_node, ptr %101, i32 0, i32 7, i32 %124
  %126 = load volatile ptr, ptr %125, align 4
  %127 = ptrtoint ptr %126 to i32
  %128 = and i32 %127, 3
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %134, label %130, !prof !11

130:                                              ; preds = %122
  %131 = add i8 %117, 1
  store i8 %131, ptr %53, align 2
  %132 = add nuw i32 %118, 1
  store i32 %132, ptr %47, align 4
  %133 = icmp eq ptr %126, null
  br i1 %133, label %116, label %136

134:                                              ; preds = %122, %116, %110, %107, %98
  %135 = call ptr @xas_find(ptr noundef nonnull %3, i32 noundef -1) #11
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi ptr [ %135, %134 ], [ %126, %130 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %63

139:                                              ; preds = %136, %63, %46
  %140 = phi i32 [ 0, %46 ], [ %100, %136 ], [ %64, %63 ]
  %141 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 7
  %142 = load i32, ptr %141, align 4
  %143 = sub i32 %142, %140
  store i32 %143, ptr %141, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %144 = load i16, ptr %9, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %146 = load ptr, ptr %0, align 4
  call void @inode_add_lru(ptr noundef %146) #11
  %147 = load ptr, ptr %0, align 4
  %148 = getelementptr inbounds %struct.inode, ptr %147, i32 0, i32 17
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %149 = load i16, ptr %148, align 4
  %150 = add i16 %149, 1
  store i16 %150, ptr %148, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %151 = load i8, ptr %1, align 4
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %185, label %153

153:                                              ; preds = %180, %139
  %154 = phi i32 [ %181, %180 ], [ 0, %139 ]
  %155 = getelementptr %struct.folio_batch, ptr %1, i32 0, i32 2, i32 %154
  %156 = load ptr, ptr %155, align 4
  %157 = load ptr, ptr %57, align 4
  %158 = getelementptr inbounds %struct.address_space_operations, ptr %157, i32 0, i32 11
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %153
  call void %159(ptr noundef %156) #11
  br label %162

162:                                              ; preds = %161, %153
  %163 = load volatile i32, ptr %156, align 4
  %164 = and i32 %163, 65536
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %162
  %167 = load volatile i32, ptr %156, align 4
  %168 = and i32 %167, 65536
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = getelementptr %struct.page, ptr %156, i32 1, i32 1, i32 0, i32 2
  %172 = load i32, ptr %171, align 4
  br label %173

173:                                              ; preds = %170, %166, %162
  %174 = phi i32 [ 1, %162 ], [ %172, %170 ], [ 1, %166 ]
  %175 = getelementptr inbounds %struct.page, ptr %156, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %175) #11, !srcloc !16
  %176 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %175, ptr %175, i32 %174, ptr elementtype(i32) %175) #11, !srcloc !19
  %177 = extractvalue { i32, i32 } %176, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  call void @__put_page(ptr noundef %156) #11
  br label %180

180:                                              ; preds = %179, %173
  %181 = add nuw nsw i32 %154, 1
  %182 = load i8, ptr %1, align 4
  %183 = zext i8 %182 to i32
  %184 = icmp ult i32 %181, %183
  br i1 %184, label %153, label %185

185:                                              ; preds = %180, %139, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_check_errors(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %2) #11
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 0, i32 -28
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %6 ]
  %12 = load volatile i32, ptr %2, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %2) #11
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 %11, i32 -5
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %11, %10 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_fdatawrite_wbc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call ptr @inode_to_bdi(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.backing_dev_info, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 33554432
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @do_writepages(ptr noundef %0, ptr noundef %1) #11
  br label %16

16:                                               ; preds = %14, %9, %2
  %17 = phi i32 [ %15, %14 ], [ 0, %9 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_writepages(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__filemap_fdatawrite_range(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.writeback_control, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %6 = getelementptr inbounds i8, ptr %5, i32 24
  store i64 0, ptr %6, align 8, !annotation !9
  store i32 2147483647, ptr %5, align 8
  %7 = getelementptr inbounds %struct.writeback_control, ptr %5, i32 0, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.writeback_control, ptr %5, i32 0, i32 2
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.writeback_control, ptr %5, i32 0, i32 3
  store i64 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.writeback_control, ptr %5, i32 0, i32 4
  store i32 %3, ptr %10, align 8
  %11 = load ptr, ptr %0, align 4
  %12 = tail call ptr @inode_to_bdi(ptr noundef %11) #11
  %13 = getelementptr inbounds %struct.backing_dev_info, ptr %12, i32 0, i32 6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @do_writepages(ptr noundef %0, ptr noundef nonnull %5) #11
  br label %24

24:                                               ; preds = %22, %17, %4
  %25 = phi i32 [ %23, %22 ], [ 0, %17 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_fdatawrite(ptr noundef %0) #0 {
  %2 = alloca %struct.writeback_control, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 1, ptr %3, align 8, !annotation !9
  store i32 2147483647, ptr %2, align 8
  %4 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 2
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 3
  store i64 9223372036854775807, ptr %6, align 8
  %7 = load ptr, ptr %0, align 4
  %8 = tail call ptr @inode_to_bdi(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.backing_dev_info, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 33554432
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @do_writepages(ptr noundef %0, ptr noundef nonnull %2) #11
  br label %20

20:                                               ; preds = %18, %13, %1
  %21 = phi i32 [ %19, %18 ], [ 0, %13 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_fdatawrite_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.writeback_control, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %5 = getelementptr inbounds i8, ptr %4, i32 24
  store i64 1, ptr %5, align 8, !annotation !9
  store i32 2147483647, ptr %4, align 8
  %6 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 2
  store i64 %1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 3
  store i64 %2, ptr %8, align 8
  %9 = load ptr, ptr %0, align 4
  %10 = tail call ptr @inode_to_bdi(ptr noundef %9) #11
  %11 = getelementptr inbounds %struct.backing_dev_info, ptr %10, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 33554432
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @do_writepages(ptr noundef %0, ptr noundef nonnull %4) #11
  br label %22

22:                                               ; preds = %20, %15, %3
  %23 = phi i32 [ %21, %20 ], [ 0, %15 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_flush(ptr noundef %0) #0 {
  %2 = alloca %struct.writeback_control, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #11
  %3 = getelementptr inbounds i8, ptr %2, i32 24
  store i64 0, ptr %3, align 8, !annotation !9
  store i32 2147483647, ptr %2, align 8
  %4 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 2
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.writeback_control, ptr %2, i32 0, i32 3
  store i64 9223372036854775807, ptr %6, align 8
  %7 = load ptr, ptr %0, align 4
  %8 = tail call ptr @inode_to_bdi(ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.backing_dev_info, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 33554432
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @do_writepages(ptr noundef %0, ptr noundef nonnull %2) #11
  br label %20

20:                                               ; preds = %18, %13, %1
  %21 = phi i32 [ %19, %18 ], [ 0, %13 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #11
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @filemap_range_has_page(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %7 = lshr i64 %1, 12
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %12, align 4
  %13 = lshr i64 %2, 12
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i64 %2, %1
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %17

17:                                               ; preds = %21, %16
  %18 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %14) #11
  %19 = ptrtoint ptr %18 to i32
  switch i32 %19, label %22 [
    i32 1030, label %21
    i32 1026, label %20
  ]

20:                                               ; preds = %17
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  br label %21

21:                                               ; preds = %22, %20, %17
  br label %17

22:                                               ; preds = %17
  %23 = and i32 %19, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %21

25:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %26 = icmp ne ptr %18, null
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi i1 [ %26, %25 ], [ false, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  tail call fastcc void @__filemap_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  %4 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %4) #11
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 0, i32 -28
  br label %12

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 0, %3 ], [ %11, %8 ]
  %14 = load volatile i32, ptr %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %4) #11
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %13, i32 -5
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i32 [ %13, %12 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__filemap_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pagevec, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %6 = lshr i64 %1, 12
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %4, align 4
  %8 = lshr i64 %2, 12
  %9 = trunc i64 %8 to i32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false), !annotation !9
  %10 = icmp slt i64 %2, %1
  %11 = icmp ugt i32 %7, %9
  %12 = or i1 %10, %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %37, %3
  %14 = call i32 @pagevec_lookup_range_tag(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %4, i32 noundef %9, i32 noundef 1) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %28, %13
  %17 = phi i32 [ %31, %28 ], [ 0, %13 ]
  %18 = getelementptr %struct.pagevec, ptr %5, i32 0, i32 2, i32 %17
  %19 = load ptr, ptr %18, align 4
  call void @wait_on_page_writeback(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 1
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !10

24:                                               ; preds = %16
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %16
  %27 = ptrtoint ptr %19 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  call void @_clear_bit(i32 noundef 8, ptr noundef %30) #11
  %31 = add nuw i32 %17, 1
  %32 = icmp eq i32 %31, %14
  br i1 %32, label %33, label %16

33:                                               ; preds = %28
  %34 = load i8, ptr %5, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call void @__pagevec_release(ptr noundef nonnull %5) #11
  br label %37

37:                                               ; preds = %36, %33
  %38 = call i32 @__cond_resched() #11
  %39 = load i32, ptr %4, align 4
  %40 = icmp ugt i32 %39, %9
  br i1 %40, label %41, label %13

41:                                               ; preds = %37, %13, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_fdatawait_range_keep_errors(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  tail call fastcc void @__filemap_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2)
  %4 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %4, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 -28
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ -5, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @file_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @__filemap_fdatawait_range(ptr noundef %5, i64 noundef %1, i64 noundef %2)
  %6 = tail call i32 @file_check_and_advance_wb_err(ptr noundef %0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @file_check_and_advance_wb_err(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 18
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 11
  %7 = tail call i32 @errseq_check(ptr noundef %6, i32 noundef %3) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %10) #11
  %11 = load i32, ptr %2, align 4
  %12 = tail call i32 @errseq_check_and_advance(ptr noundef %6, ptr noundef %2) #11
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_file_check_and_advance_wb_err, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = tail call ptr @llvm.thread.pointer() #11
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !31
  %27 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_file_check_and_advance_wb_err, i32 0, i32 7), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %26
  %30 = phi ptr [ %34, %29 ], [ %27, %26 ]
  %31 = load volatile ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tracepoint_func, ptr %30, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %31(ptr noundef %33, ptr noundef %0, i32 noundef %11) #11
  %34 = getelementptr %struct.tracepoint_func, ptr %30, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !32
  br label %38

38:                                               ; preds = %37, %15, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %39 = load i16, ptr %10, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi i32 [ %12, %38 ], [ 0, %1 ]
  %43 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %43) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %43) #11
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_fdatawait_keep_errors(ptr noundef %0) #0 {
  tail call fastcc void @__filemap_fdatawait_range(ptr noundef %0, i64 noundef 0, i64 noundef 9223372036854775807)
  %2 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 0, i32 -28
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ -5, %1 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @filemap_range_has_writeback(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %7 = lshr i64 %1, 12
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr %6, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %13, align 4
  %14 = lshr i64 %2, 12
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i64 %2, %1
  br i1 %16, label %105, label %17

17:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %18 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %15) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %103, label %20

20:                                               ; preds = %100, %17
  %21 = phi ptr [ %101, %100 ], [ %18, %17 ]
  %22 = ptrtoint ptr %21 to i32
  switch i32 %22, label %24 [
    i32 1030, label %64
    i32 1026, label %23
  ]

23:                                               ; preds = %20
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  br label %64

24:                                               ; preds = %20
  %25 = and i32 %22, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %27
  %33 = add i32 %29, -1
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi i32 [ %33, %32 ], [ %22, %27 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %103

40:                                               ; preds = %34
  %41 = load volatile i32, ptr %28, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !10

44:                                               ; preds = %40
  %45 = add i32 %41, -1
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %45, %44 ], [ %22, %40 ]
  %48 = inttoptr i32 %47 to ptr
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %46
  %53 = load volatile i32, ptr %28, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !10

56:                                               ; preds = %52
  %57 = add i32 %53, -1
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %57, %56 ], [ %22, %52 ]
  %60 = inttoptr i32 %59 to ptr
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 32768
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %58, %24, %23, %20
  %65 = load ptr, ptr %11, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  %69 = icmp eq ptr %65, null
  %70 = or i1 %69, %68
  br i1 %70, label %98, label %71, !prof !11

71:                                               ; preds = %64
  %72 = load i8, ptr %65, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %98, !prof !10

74:                                               ; preds = %71
  %75 = load i8, ptr %10, align 2
  %76 = zext i8 %75 to i32
  %77 = load i32, ptr %6, align 4
  %78 = and i32 %77, 63
  %79 = icmp eq i32 %78, %76
  br i1 %79, label %80, label %98, !prof !10

80:                                               ; preds = %94, %74
  %81 = phi i8 [ %95, %94 ], [ %75, %74 ]
  %82 = phi i32 [ %96, %94 ], [ %77, %74 ]
  %83 = icmp uge i32 %82, %15
  %84 = icmp eq i8 %81, 63
  %85 = select i1 %83, i1 true, i1 %84
  br i1 %85, label %98, label %86, !prof !28

86:                                               ; preds = %80
  %87 = zext i8 %81 to i32
  %88 = add nuw nsw i32 %87, 1
  %89 = getelementptr %struct.xa_node, ptr %65, i32 0, i32 7, i32 %88
  %90 = load volatile ptr, ptr %89, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = and i32 %91, 3
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %98, label %94, !prof !11

94:                                               ; preds = %86
  %95 = add i8 %81, 1
  store i8 %95, ptr %10, align 2
  %96 = add nuw i32 %82, 1
  store i32 %96, ptr %6, align 4
  %97 = icmp eq ptr %90, null
  br i1 %97, label %80, label %100

98:                                               ; preds = %86, %80, %74, %71, %64
  %99 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %15) #11
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi ptr [ %99, %98 ], [ %90, %94 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %20

103:                                              ; preds = %100, %58, %46, %34, %17
  %104 = phi i1 [ false, %17 ], [ true, %34 ], [ true, %46 ], [ true, %58 ], [ false, %100 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %105

105:                                              ; preds = %103, %3
  %106 = phi i1 [ %104, %103 ], [ false, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i1 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.writeback_control, align 8
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %9 = getelementptr inbounds i8, ptr %4, i32 24
  store i64 1, ptr %9, align 8, !annotation !9
  store i32 2147483647, ptr %4, align 8
  %10 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 2
  store i64 %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 3
  store i64 %2, ptr %12, align 8
  %13 = load ptr, ptr %0, align 4
  %14 = tail call ptr @inode_to_bdi(ptr noundef %13) #11
  %15 = getelementptr inbounds %struct.backing_dev_info, ptr %14, i32 0, i32 6
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 33554432
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %28

25:                                               ; preds = %19
  %26 = call i32 @do_writepages(ptr noundef %0, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  %27 = icmp eq i32 %26, -5
  br i1 %27, label %51, label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %26, %25 ]
  call fastcc void @__filemap_fdatawait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #11
  %30 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %30) #11
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 0, i32 -28
  br label %38

38:                                               ; preds = %34, %28
  %39 = phi i32 [ 0, %28 ], [ %37, %34 ]
  %40 = load volatile i32, ptr %30, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %30) #11
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %39, i32 -5
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i32 [ %39, %38 ], [ %46, %43 ]
  %49 = icmp eq i32 %29, 0
  %50 = select i1 %49, i32 %48, i32 %29
  br label %82

51:                                               ; preds = %25
  %52 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %52) #11
  br label %58

58:                                               ; preds = %56, %51
  %59 = load volatile i32, ptr %52, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %58
  %63 = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %52) #11
  br label %82

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 10
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %65) #11
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 0, i32 -28
  br label %73

73:                                               ; preds = %69, %64
  %74 = phi i32 [ 0, %64 ], [ %72, %69 ]
  %75 = load volatile i32, ptr %65, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %65) #11
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 %74, i32 -5
  br label %82

82:                                               ; preds = %78, %73, %62, %58, %47
  %83 = phi i32 [ %50, %47 ], [ -5, %58 ], [ -5, %62 ], [ %74, %73 ], [ %81, %78 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__filemap_set_wb_err(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 11
  %4 = tail call i32 @errseq_set(ptr noundef %3, i32 noundef %1) #11
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_filemap_set_wb_err, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #11
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_filemap_set_wb_err, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, ptr noundef %0, i32 noundef %4) #11
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  br label %30

30:                                               ; preds = %29, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check_and_advance(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @file_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.writeback_control, align 8
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @file_check_and_advance_wb_err(ptr noundef %0)
  br label %38

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  %13 = getelementptr inbounds i8, ptr %4, i32 24
  store i64 1, ptr %13, align 8, !annotation !9
  store i32 2147483647, ptr %4, align 8
  %14 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 2
  store i64 %1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.writeback_control, ptr %4, i32 0, i32 3
  store i64 %2, ptr %16, align 8
  %17 = load ptr, ptr %6, align 4
  %18 = tail call ptr @inode_to_bdi(ptr noundef %17) #11
  %19 = getelementptr inbounds %struct.backing_dev_info, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 33554432
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  br label %34

29:                                               ; preds = %23
  %30 = call i32 @do_writepages(ptr noundef %6, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  %31 = icmp eq i32 %30, -5
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 @file_check_and_advance_wb_err(ptr noundef %0)
  br label %40

34:                                               ; preds = %29, %28
  %35 = phi i32 [ 0, %28 ], [ %30, %29 ]
  call fastcc void @__filemap_fdatawait_range(ptr noundef %6, i64 noundef %1, i64 noundef %2)
  %36 = call i32 @file_check_and_advance_wb_err(ptr noundef %0)
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %10
  %39 = phi i32 [ %11, %10 ], [ %36, %34 ]
  br label %40

40:                                               ; preds = %38, %34, %32
  %41 = phi i32 [ %39, %38 ], [ %35, %34 ], [ -5, %32 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @replace_page_cache_page(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.xa_state, align 4
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.address_space_operations, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  %16 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 1
  store ptr %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 1
  store i32 %15, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 2
  %19 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %18, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %19, align 4
  %20 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 7
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xa_state, ptr %3, i32 0, i32 8
  store ptr null, ptr %21, align 4
  %22 = load volatile i32, ptr %6, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !10

25:                                               ; preds = %2
  %26 = add i32 %22, -1
  br label %29

27:                                               ; preds = %2
  %28 = ptrtoint ptr %1 to i32
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !16
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #11, !srcloc !35
  %34 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  store ptr %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  store i32 %15, ptr %35, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #11
  %36 = call ptr @xas_store(ptr noundef nonnull %3, ptr noundef %1) #11
  store ptr null, ptr %8, align 4
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef -1) #11
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef 1) #11
  %37 = load volatile i32, ptr %4, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !10

40:                                               ; preds = %29
  %41 = add i32 %37, -1
  br label %44

42:                                               ; preds = %29
  %43 = ptrtoint ptr %0 to i32
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = inttoptr i32 %45 to ptr
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 524288
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 23, i32 noundef -1) #11
  br label %51

51:                                               ; preds = %50, %44
  %52 = load volatile i32, ptr %6, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !10

55:                                               ; preds = %51
  %56 = add i32 %52, -1
  br label %59

57:                                               ; preds = %51
  %58 = ptrtoint ptr %1 to i32
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = inttoptr i32 %60 to ptr
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %62, 524288
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 23, i32 noundef 1) #11
  br label %66

66:                                               ; preds = %65, %59
  %67 = load ptr, ptr %3, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %68 = load i16, ptr %67, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %67, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %70 = icmp eq ptr %13, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call void %13(ptr noundef %0) #11
  br label %72

72:                                               ; preds = %71, %66
  %73 = load volatile i32, ptr %4, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76, !prof !10

76:                                               ; preds = %72
  %77 = add i32 %73, -1
  br label %80

78:                                               ; preds = %72
  %79 = ptrtoint ptr %0 to i32
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  %82 = inttoptr i32 %81 to ptr
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #11, !srcloc !16
  %84 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #11, !srcloc !19
  %85 = extractvalue { i32, i32 } %84, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  call void @__put_page(ptr noundef %82) #11
  br label %88

88:                                               ; preds = %87, %80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__filemap_add_folio(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) local_unnamed_addr #4 {
  %6 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  store i32 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  %13 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, @shmem_aops
  %16 = select i1 %15, ptr null, ptr @workingset_update_node
  store ptr %16, ptr %12, align 4
  %17 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #11, !srcloc !16
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #11, !srcloc !35
  %19 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  store i32 %2, ptr %20, align 4
  %21 = and i32 %3, 782048
  %22 = icmp eq ptr %4, null
  %23 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 7
  %24 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  br label %25

25:                                               ; preds = %68, %5
  %26 = phi ptr [ %69, %68 ], [ %7, %5 ]
  %27 = load volatile i32, ptr %1, align 4
  call void @_raw_spin_lock_irq(ptr noundef %26) #11
  %28 = call ptr @xas_find_conflict(ptr noundef nonnull %6) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %33

30:                                               ; preds = %33
  %31 = call ptr @xas_find_conflict(ptr noundef nonnull %6) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %31, %30 ], [ %28, %25 ]
  %35 = ptrtoint ptr %34 to i32
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %30

38:                                               ; preds = %33
  store ptr inttoptr (i32 -66 to ptr), ptr %10, align 4
  br label %63

39:                                               ; preds = %30
  br i1 %22, label %41, label %40

40:                                               ; preds = %39
  store ptr %34, ptr %4, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load volatile i32, ptr %1, align 4
  br label %43

43:                                               ; preds = %41, %25
  %44 = call ptr @xas_store(ptr noundef nonnull %6, ptr noundef %1) #11
  %45 = load ptr, ptr %10, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = and i32 %46, 3
  %48 = icmp ne i32 %47, 2
  %49 = icmp ult ptr %45, inttoptr (i32 -16378 to ptr)
  %50 = icmp ult ptr %45, inttoptr (i32 4 to ptr)
  %51 = or i1 %49, %48
  %52 = or i1 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %43
  %54 = load i32, ptr %23, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %23, align 4
  %56 = load volatile i32, ptr %1, align 4
  %57 = and i32 %56, 65536
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = load i32, ptr %24, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi i32 [ %60, %59 ], [ 1, %53 ]
  call void @__mod_node_page_state(ptr noundef nonnull @contig_page_data, i32 noundef 19, i32 noundef %62) #11
  br label %63

63:                                               ; preds = %61, %43, %38
  %64 = load ptr, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %65 = load i16, ptr %64, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %67 = call zeroext i1 @xas_nomem(ptr noundef nonnull %6, i32 noundef %21) #11
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load ptr, ptr %6, align 4
  br label %25

70:                                               ; preds = %63
  %71 = load ptr, ptr %10, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = and i32 %72, 3
  %74 = icmp eq i32 %73, 2
  %75 = icmp uge ptr %71, inttoptr (i32 -16378 to ptr)
  %76 = and i1 %75, %74
  %77 = ashr i32 %72, 2
  %78 = select i1 %76, i32 %77, i32 0
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  store ptr null, ptr %19, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #11, !srcloc !16
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #11, !srcloc !19
  %82 = extractvalue { i32, i32 } %81, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  call void @__put_page(ptr noundef %1) #11
  br label %111

85:                                               ; preds = %70
  %86 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_add_to_page_cache, i32 0, i32 1), align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %85
  %89 = tail call ptr @llvm.thread.pointer() #11
  %90 = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = lshr i32 %91, 5
  %93 = getelementptr i32, ptr @__cpu_online_mask, i32 %92
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %91, 31
  %96 = shl nuw i32 1, %95
  %97 = and i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %88
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  %100 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_filemap_add_to_page_cache, i32 0, i32 7), align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %102, %99
  %103 = phi ptr [ %107, %102 ], [ %100, %99 ]
  %104 = load volatile ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.tracepoint_func, ptr %103, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  call void %104(ptr noundef %106, ptr noundef %1) #11
  %107 = getelementptr %struct.tracepoint_func, ptr %103, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %102

110:                                              ; preds = %102, %99
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  br label %111

111:                                              ; preds = %110, %88, %85, %84, %80
  %112 = phi i32 [ %78, %80 ], [ %78, %84 ], [ 0, %85 ], [ 0, %88 ], [ 0, %110 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_update_node(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_conflict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xas_nomem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @folio_put(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !16
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !19
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @__put_page(ptr noundef %0) #11
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_to_page_cache_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %4
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 @__filemap_add_folio(ptr noundef %1, ptr noundef %15, i32 noundef %2, i32 noundef %3, ptr noundef null)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_add_folio(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4
  %6 = load i32, ptr %1, align 4
  %7 = or i32 %6, 1
  store i32 %7, ptr %1, align 4
  %8 = call i32 @__filemap_add_folio(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10, !prof !10

10:                                               ; preds = %4
  %11 = load i32, ptr %1, align 4
  %12 = and i32 %11, -2
  store i32 %12, ptr %1, align 4
  br label %29

13:                                               ; preds = %4
  %14 = load volatile i32, ptr %1, align 4
  %15 = and i32 %14, 32
  %16 = icmp ne i32 %15, 0
  %17 = load i1, ptr @filemap_add_folio.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %13
  store i1 true, ptr @filemap_add_folio.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #11
  br label %21

21:                                               ; preds = %20, %13
  %22 = and i32 %3, 4096
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %5, align 4
  %25 = icmp ne ptr %24, null
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  call void @workingset_refault(ptr noundef %1, ptr noundef nonnull %24) #11
  br label %28

28:                                               ; preds = %27, %21
  call void @folio_add_lru(ptr noundef %1) #11
  br label %29

29:                                               ; preds = %28, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @workingset_refault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_add_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @filemap_invalidate_lock_two(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp ugt ptr %0, %1
  %4 = select i1 %3, ptr %0, ptr %1
  %5 = select i1 %3, ptr %1, ptr %0
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 2
  tail call void @down_write(ptr noundef %8) #11
  br label %9

9:                                                ; preds = %7, %2
  %10 = icmp eq ptr %4, null
  %11 = icmp eq ptr %5, %4
  %12 = or i1 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 2
  tail call void @down_write(ptr noundef %14) #11
  br label %15

15:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @filemap_invalidate_unlock_two(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 2
  tail call void @up_write(ptr noundef %5) #11
  br label %6

6:                                                ; preds = %4, %2
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %0, %1
  %9 = or i1 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 2
  tail call void @up_write(ptr noundef %11) #11
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @pagecache_init() local_unnamed_addr #6 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %2
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @pagecache_init.__key) #11
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %6, label %1

6:                                                ; preds = %1
  tail call void @page_writeback_init() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_writeback_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migration_entry_wait_on_locked([1 x i32] %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_page_queue, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.wait_page_queue, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr @mem_map, align 4
  %7 = extractvalue [1 x i32] %0, 0
  %8 = and i32 %7, 67108863
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %10 = sub i32 %8, %9
  %11 = getelementptr %struct.page, ptr %6, i32 %10
  %12 = and i32 %7, -134217728
  %13 = icmp eq i32 %12, 2013265920
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = getelementptr %struct.page, ptr %6, i32 %10, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !10

19:                                               ; preds = %14
  %20 = add i32 %16, -1
  br label %23

21:                                               ; preds = %14
  %22 = ptrtoint ptr %11 to i32
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = inttoptr i32 %24 to ptr
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/swapops.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 258, 0\0A.popsection", ""() #11, !srcloc !38
  unreachable

30:                                               ; preds = %23, %3
  %31 = getelementptr %struct.page, ptr %6, i32 %10, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !10

35:                                               ; preds = %30
  %36 = add i32 %32, -1
  br label %39

37:                                               ; preds = %30
  %38 = ptrtoint ptr %11 to i32
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = inttoptr i32 %40 to ptr
  %42 = mul i32 %40, 1640531527
  %43 = lshr i32 %42, 24
  %44 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %43
  %45 = load volatile i32, ptr %41, align 4
  %46 = and i32 %45, 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %55

49:                                               ; preds = %39
  %50 = load volatile i32, ptr %41, align 4
  %51 = and i32 %50, 64
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = load volatile i32, ptr %41, align 4
  br label %55

55:                                               ; preds = %53, %49, %48
  %56 = tail call ptr @llvm.thread.pointer() #11
  %57 = getelementptr inbounds %struct.wait_page_queue, ptr %4, i32 0, i32 2, i32 1
  store ptr %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.wait_page_queue, ptr %4, i32 0, i32 2, i32 2
  %59 = getelementptr inbounds %struct.wait_page_queue, ptr %4, i32 0, i32 2, i32 3
  store volatile ptr %59, ptr %59, align 4
  %60 = getelementptr inbounds %struct.wait_page_queue, ptr %4, i32 0, i32 2, i32 3, i32 1
  store ptr %59, ptr %60, align 4
  store ptr @wake_page_function, ptr %58, align 4
  store ptr %41, ptr %4, align 4
  %61 = getelementptr inbounds %struct.wait_page_queue, ptr %4, i32 0, i32 1
  store i32 0, ptr %61, align 4
  store i32 0, ptr %5, align 4
  call void @_raw_spin_lock_irq(ptr noundef %44) #11
  call void @_set_bit(i32 noundef 7, ptr noundef %41) #11
  %62 = load i32, ptr %5, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %41) #11
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, ptr %5, align 4
  br label %74

70:                                               ; preds = %55
  %71 = load volatile i32, ptr %41, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %68
  %75 = phi i32 [ %69, %68 ], [ %62, %70 ]
  %76 = or i32 %75, 18
  store i32 %76, ptr %5, align 4
  br label %81

77:                                               ; preds = %70, %65
  %78 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %43, i32 1
  %79 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %43, i32 1, i32 1
  %80 = load ptr, ptr %79, align 4
  store ptr %59, ptr %79, align 4
  store ptr %78, ptr %59, align 4
  store ptr %80, ptr %60, align 4
  store volatile ptr %59, ptr %80, align 4
  br label %81

81:                                               ; preds = %77, %74
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %82 = load i16, ptr %44, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %44, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %84 = icmp eq ptr %1, null
  call void asm sideeffect "dmb ish", "~{memory}"() #11
  %85 = load i16, ptr %2, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %2, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11
  call void asm sideeffect "", "~{memory}"() #11
  br i1 %84, label %91, label %87

87:                                               ; preds = %81
  call void @kunmap_local_indexed(ptr noundef nonnull %1) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !40
  %88 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 149
  %89 = load i32, ptr %88, align 8
  %90 = add i32 %89, -1
  store i32 %90, ptr %88, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !41
  br label %91

91:                                               ; preds = %87, %81
  %92 = getelementptr inbounds %struct.task_struct, ptr %56, i32 0, i32 1
  store volatile i32 2, ptr %92, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !42
  %93 = load volatile i32, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !43
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %96, %91
  call void @io_schedule() #11
  store volatile i32 2, ptr %92, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !42
  %97 = load volatile i32, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !43
  %98 = and i32 %97, 2
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %96, label %100

100:                                              ; preds = %96, %91
  call void @finish_wait(ptr noundef %44, ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wake_page_function(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %3, align 4
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %9, label %49

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.wait_page_key, ptr %3, i32 0, i32 2
  store i32 1, ptr %10, align 4
  %11 = getelementptr i8, ptr %0, i32 -4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.wait_page_key, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %9
  %17 = load i32, ptr %0, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = lshr i32 %12, 5
  %22 = getelementptr i32, ptr %6, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %12, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = and i32 %17, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @_test_and_set_bit(i32 noundef %12, ptr noundef %6) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = or i32 %17, 16
  %36 = and i32 %17, 1
  br label %37

37:                                               ; preds = %34, %28, %16
  %38 = phi i32 [ 1, %28 ], [ %36, %34 ], [ 0, %16 ]
  %39 = phi i32 [ %17, %28 ], [ %35, %34 ], [ %17, %16 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !44
  %40 = or i32 %39, 2
  store volatile i32 %40, ptr %0, align 4
  %41 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @wake_up_state(ptr noundef %42, i32 noundef %1) #11
  %44 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3
  %45 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 3, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %44, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr %44, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !45
  store volatile ptr %44, ptr %44, align 4
  br label %49

49:                                               ; preds = %37, %31, %20, %9, %4
  %50 = phi i32 [ %38, %37 ], [ 0, %9 ], [ -1, %20 ], [ -1, %31 ], [ 0, %4 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_wait_bit(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef %1, i32 noundef 2, i32 noundef 1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = alloca %struct.wait_page_queue, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = mul i32 %6, 1640531527
  %8 = lshr i32 %7, 24
  %9 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %8
  %10 = load i32, ptr @sysctl_page_lock_unfairness, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #11
  %11 = getelementptr inbounds %struct.wait_page_queue, ptr %5, i32 0, i32 2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load volatile i32, ptr %0, align 4
  %15 = and i32 %14, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %24

18:                                               ; preds = %13
  %19 = load volatile i32, ptr %0, align 4
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load volatile i32, ptr %0, align 4
  br label %24

24:                                               ; preds = %22, %18, %17, %4
  %25 = tail call ptr @llvm.thread.pointer() #11
  %26 = getelementptr inbounds %struct.wait_page_queue, ptr %5, i32 0, i32 2, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.wait_page_queue, ptr %5, i32 0, i32 2, i32 2
  %28 = getelementptr inbounds %struct.wait_page_queue, ptr %5, i32 0, i32 2, i32 3
  store volatile ptr %28, ptr %28, align 4
  %29 = getelementptr inbounds %struct.wait_page_queue, ptr %5, i32 0, i32 2, i32 3, i32 1
  store ptr %28, ptr %29, align 4
  store ptr @wake_page_function, ptr %27, align 4
  store ptr %0, ptr %5, align 4
  %30 = getelementptr inbounds %struct.wait_page_queue, ptr %5, i32 0, i32 1
  store i32 %1, ptr %30, align 4
  %31 = icmp eq i32 %3, 0
  %32 = lshr i32 %1, 5
  %33 = getelementptr i32, ptr %0, i32 %32
  %34 = and i32 %1, 31
  %35 = shl nuw i32 1, %34
  %36 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %8, i32 1
  %37 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %8, i32 1, i32 1
  %38 = icmp eq i32 %3, 2
  %39 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %41 = and i32 %2, 257
  %42 = icmp eq i32 %41, 0
  %43 = and i32 %2, 1
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 98, i32 1
  br label %46

46:                                               ; preds = %105, %24
  %47 = phi i32 [ %10, %24 ], [ %52, %105 ]
  %48 = add i32 %47, -1
  %49 = icmp slt i32 %48, 0
  %50 = select i1 %49, i32 9, i32 1
  %51 = select i1 %31, i32 %50, i32 0
  %52 = select i1 %31, i32 %48, i32 %47
  store i32 %51, ptr %11, align 4
  call void @_raw_spin_lock_irq(ptr noundef %9) #11
  call void @_set_bit(i32 noundef 7, ptr noundef %0) #11
  %53 = load i32, ptr %11, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %46
  %57 = call i32 @_test_and_set_bit(i32 noundef %1, ptr noundef %0) #11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32, ptr %11, align 4
  br label %65

61:                                               ; preds = %46
  %62 = load volatile i32, ptr %33, align 4
  %63 = and i32 %62, %35
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %59
  %66 = phi i32 [ %60, %59 ], [ %53, %61 ]
  %67 = or i32 %66, 18
  store i32 %67, ptr %11, align 4
  br label %70

68:                                               ; preds = %61, %56
  %69 = load ptr, ptr %37, align 4
  store ptr %28, ptr %37, align 4
  store ptr %36, ptr %28, align 4
  store ptr %69, ptr %29, align 4
  store volatile ptr %28, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %65
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %71 = load i16, ptr %9, align 4
  %72 = add i16 %71, 1
  store i16 %72, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br i1 %38, label %73, label %78

73:                                               ; preds = %70
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #11, !srcloc !16
  %74 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #11, !srcloc !19
  %75 = extractvalue { i32, i32 } %74, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  call void @__put_page(ptr noundef %0) #11
  br label %78

78:                                               ; preds = %77, %73, %70
  store volatile i32 %2, ptr %40, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !46
  %79 = load volatile i32, ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !47
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %100

82:                                               ; preds = %96, %91, %86
  call void @io_schedule() #11
  store volatile i32 %2, ptr %40, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !46
  %83 = load volatile i32, ptr %11, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !47
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %82, %78
  br i1 %42, label %82, label %87

87:                                               ; preds = %86
  %88 = load volatile i32, ptr %25, align 4
  %89 = and i32 %88, 256
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95, !prof !10

91:                                               ; preds = %87
  %92 = load volatile i32, ptr %25, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %82, label %95

95:                                               ; preds = %91, %87
  br i1 %44, label %96, label %111

96:                                               ; preds = %95
  %97 = load i32, ptr %45, align 4
  %98 = and i32 %97, 256
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %82, label %111

100:                                              ; preds = %82, %78
  %101 = phi i32 [ %79, %78 ], [ %83, %82 ]
  %102 = and i32 %101, 16
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %31, i1 %103, i1 false
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = call i32 @_test_and_set_bit(i32 noundef %1, ptr noundef %0) #11
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %46, !prof !10

108:                                              ; preds = %105
  %109 = load i32, ptr %11, align 4
  %110 = or i32 %109, 16
  store i32 %110, ptr %11, align 4
  br label %111

111:                                              ; preds = %108, %100, %96, %95
  call void @finish_wait(ptr noundef %9, ptr noundef %11) #11
  %112 = load i32, ptr %11, align 4
  %113 = select i1 %31, i32 16, i32 2
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %115, i32 -4, i32 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #11
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @folio_wait_bit_killable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef %1, i32 noundef 258, i32 noundef 1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @folio_put_wait_locked(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 0, i32 noundef %1, i32 noundef 2)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_add_wait_queue(ptr noundef %0, ptr noundef %1) #0 {
  %3 = ptrtoint ptr %0 to i32
  %4 = mul i32 %3, 1640531527
  %5 = lshr i32 %4, 24
  %6 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %5
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #11
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3
  %9 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %5, i32 1
  %10 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %5, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %8, ptr %10, align 4
  store ptr %9, ptr %8, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %1, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %8, ptr %11, align 4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %0) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_unlock(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #11, !srcloc !16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #11, !srcloc !49
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @folio_wake_bit(ptr noundef %0, i32 noundef 0)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @folio_wake_bit(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_page_key, align 4
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = ptrtoint ptr %0 to i32
  %6 = mul i32 %5, 1640531527
  %7 = lshr i32 %6, 24
  %8 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  store ptr %0, ptr %3, align 4
  %9 = getelementptr inbounds %struct.wait_page_key, ptr %3, i32 0, i32 1
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_page_key, ptr %3, i32 0, i32 2
  store i32 0, ptr %10, align 4
  store i32 0, ptr %4, align 4
  %11 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 4
  %15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  call void @__wake_up_locked_key_bookmark(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %2
  %20 = phi i32 [ %21, %19 ], [ %15, %2 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %20) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !50
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !51
  %21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  call void @__wake_up_locked_key_bookmark(ptr noundef %8, i32 noundef 3, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %19

25:                                               ; preds = %19, %2
  %26 = phi i32 [ %15, %2 ], [ %21, %19 ]
  %27 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %7, i32 1
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp ne ptr %28, %27
  %30 = load i32, ptr %10, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  call void @_clear_bit(i32 noundef 7, ptr noundef %0) #11
  br label %34

34:                                               ; preds = %33, %25
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %26) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_end_private_2(ptr noundef %0) #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #11, !srcloc !16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 16384, ptr elementtype(i32) %0) #11, !srcloc !49
  tail call fastcc void @folio_wake_bit(ptr noundef %0, i32 noundef 14)
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #11, !srcloc !16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #11, !srcloc !19
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @__put_page(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_wait_private_2(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 16384
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 14, i32 noundef 2, i32 noundef 1) #11
  %7 = load volatile i32, ptr %0, align 4
  %8 = and i32 %7, 16384
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @folio_wait_private_2_killable(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 16384
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %9

5:                                                ; preds = %9
  %6 = load volatile i32, ptr %0, align 4
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %1
  %10 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 14, i32 noundef 258, i32 noundef 1) #11
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %5

12:                                               ; preds = %9, %5, %1
  %13 = phi i32 [ 0, %1 ], [ %10, %9 ], [ %10, %5 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_end_writeback(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 262144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_clear_bit(i32 noundef 18, ptr noundef %0) #11
  tail call void @folio_rotate_reclaimable(ptr noundef %0) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #11, !srcloc !16
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #11, !srcloc !35
  %9 = tail call zeroext i1 @__folio_end_writeback(ptr noundef %0) #11
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/filemap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1645, 0\0A.popsection", ""() #11, !srcloc !52
  unreachable

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !53
  %12 = load volatile i32, ptr %0, align 4
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call fastcc void @folio_wake_bit(ptr noundef %0, i32 noundef 15) #11
  br label %16

16:                                               ; preds = %15, %11
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 11), align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @__acct_reclaim_writeback(ptr noundef nonnull @contig_page_data, ptr noundef %0, i32 noundef %17) #11
  br label %20

20:                                               ; preds = %19, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #11, !srcloc !16
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #11, !srcloc !19
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @__put_page(ptr noundef %0) #11
  br label %25

25:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_rotate_reclaimable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__folio_end_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_endio(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %1, label %30, label %5

5:                                                ; preds = %3
  br i1 %4, label %6, label %7

6:                                                ; preds = %5
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !54
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #11
  br label %29

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !10

12:                                               ; preds = %7
  %13 = add i32 %9, -1
  br label %16

14:                                               ; preds = %7
  %15 = ptrtoint ptr %0 to i32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = inttoptr i32 %17 to ptr
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %18) #11
  %19 = load volatile i32, ptr %8, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22, !prof !10

22:                                               ; preds = %16
  %23 = add i32 %19, -1
  br label %26

24:                                               ; preds = %16
  %25 = ptrtoint ptr %0 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = inttoptr i32 %27 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %28) #11
  br label %29

29:                                               ; preds = %26, %6
  tail call void @unlock_page(ptr noundef %0) #11
  br label %86

30:                                               ; preds = %3
  br i1 %4, label %85, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !10

36:                                               ; preds = %31
  %37 = add i32 %33, -1
  br label %40

38:                                               ; preds = %31
  %39 = ptrtoint ptr %0 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = inttoptr i32 %41 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %42) #11
  %43 = tail call ptr @page_mapping(ptr noundef %0) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %85, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 11
  %47 = tail call i32 @errseq_set(ptr noundef %46, i32 noundef %2) #11
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_filemap_set_wb_err, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = tail call ptr @llvm.thread.pointer() #11
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !33
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_filemap_set_wb_err, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  tail call void %66(ptr noundef %68, ptr noundef nonnull %43, i32 noundef %47) #11
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !34
  br label %73

73:                                               ; preds = %72, %50, %45
  %74 = load ptr, ptr %43, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 44
  %80 = tail call i32 @errseq_set(ptr noundef %79, i32 noundef %2) #11
  br label %81

81:                                               ; preds = %76, %73
  %82 = icmp eq i32 %2, -28
  %83 = getelementptr inbounds %struct.address_space, ptr %43, i32 0, i32 10
  %84 = zext i1 %82 to i32
  tail call void @_set_bit(i32 noundef %84, ptr noundef %83) #11
  br label %85

85:                                               ; preds = %81, %40, %30
  tail call void @end_page_writeback(ptr noundef %0) #11
  br label %86

86:                                               ; preds = %85, %29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__folio_lock(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__folio_lock_killable(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 0, i32 noundef 258, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__folio_lock_or_retry(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 36
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %26

6:                                                ; preds = %3
  %7 = and i32 %2, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %6
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #11
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.anon.10, ptr %1, i32 0, i32 15
  tail call void @up_read(ptr noundef %14) #11
  %15 = and i32 %2, 16
  %16 = icmp eq i32 %15, 0
  %17 = load volatile i32, ptr %0, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %16, label %23, label %20

20:                                               ; preds = %13
  br i1 %19, label %40, label %21

21:                                               ; preds = %20
  %22 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 0, i32 noundef 258, i32 noundef 1) #11
  br label %40

23:                                               ; preds = %13
  br i1 %19, label %40, label %24

24:                                               ; preds = %23
  %25 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 1) #11
  br label %40

26:                                               ; preds = %3
  %27 = and i32 %2, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 0, i32 noundef 258, i32 noundef 0) #11
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @__mmap_lock_do_trace_released(ptr noundef %1, i1 noundef zeroext false) #11
  br label %36

36:                                               ; preds = %35, %32
  %37 = getelementptr inbounds %struct.anon.10, ptr %1, i32 0, i32 15
  tail call void @up_read(ptr noundef %37) #11
  br label %40

38:                                               ; preds = %26
  %39 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %0, i32 noundef 0, i32 noundef 2, i32 noundef 0) #11
  br label %40

40:                                               ; preds = %38, %36, %29, %24, %23, %21, %20, %6
  %41 = phi i1 [ false, %36 ], [ false, %6 ], [ false, %20 ], [ false, %21 ], [ false, %23 ], [ false, %24 ], [ true, %38 ], [ true, %29 ]
  ret i1 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_cache_next_miss(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %11, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = phi i32 [ %1, %3 ], [ %40, %39 ]
  %14 = phi i32 [ %2, %3 ], [ %15, %39 ]
  %15 = add i32 %14, -1
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq ptr %18, null
  %23 = or i1 %22, %21
  br i1 %23, label %30, label %24, !prof !11

24:                                               ; preds = %17
  %25 = load i8, ptr %18, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30, !prof !10

27:                                               ; preds = %24
  %28 = load i8, ptr %8, align 2
  %29 = icmp eq i8 %28, 63
  br i1 %29, label %30, label %33, !prof !11

30:                                               ; preds = %27, %24, %17
  %31 = call ptr @__xas_next(ptr noundef nonnull %4) #11
  %32 = load i32, ptr %6, align 4
  br label %39

33:                                               ; preds = %27
  %34 = add i32 %13, 1
  store i32 %34, ptr %6, align 4
  %35 = add i8 %28, 1
  store i8 %35, ptr %8, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.xa_node, ptr %18, i32 0, i32 7, i32 %36
  %38 = load volatile ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i32 [ %32, %30 ], [ %34, %33 ]
  %41 = phi ptr [ %31, %30 ], [ %38, %33 ]
  %42 = icmp eq ptr %41, null
  %43 = ptrtoint ptr %41 to i32
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %42, i1 true, i1 %45
  %47 = icmp eq i32 %40, 0
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %12

49:                                               ; preds = %39, %12
  %50 = phi i32 [ %40, %39 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_cache_prev_miss(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %8 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %9, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %11, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = phi i32 [ %1, %3 ], [ %40, %39 ]
  %14 = phi i32 [ %2, %3 ], [ %15, %39 ]
  %15 = add i32 %14, -1
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq ptr %18, null
  %23 = or i1 %22, %21
  br i1 %23, label %30, label %24, !prof !11

24:                                               ; preds = %17
  %25 = load i8, ptr %18, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30, !prof !10

27:                                               ; preds = %24
  %28 = load i8, ptr %8, align 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33, !prof !11

30:                                               ; preds = %27, %24, %17
  %31 = call ptr @__xas_prev(ptr noundef nonnull %4) #11
  %32 = load i32, ptr %6, align 4
  br label %39

33:                                               ; preds = %27
  %34 = add i32 %13, -1
  store i32 %34, ptr %6, align 4
  %35 = add i8 %28, -1
  store i8 %35, ptr %8, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.xa_node, ptr %18, i32 0, i32 7, i32 %36
  %38 = load volatile ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i32 [ %32, %30 ], [ %34, %33 ]
  %41 = phi ptr [ %31, %30 ], [ %38, %33 ]
  %42 = icmp eq ptr %41, null
  %43 = ptrtoint ptr %41 to i32
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %42, i1 true, i1 %45
  %47 = icmp eq i32 %40, -1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %12

49:                                               ; preds = %39, %12
  %50 = phi i32 [ %40, %39 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__filemap_get_folio(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.xa_state, align 4
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  %8 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  %12 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  br label %13

13:                                               ; preds = %131, %4
  %14 = phi i32 [ %110, %131 ], [ %3, %4 ]
  %15 = phi i32 [ %122, %131 ], [ %2, %4 ]
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 32
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %82, %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  store ptr %6, ptr %5, align 4
  store i32 %1, ptr %7, align 4
  store i32 0, ptr %8, align 4
  store ptr null, ptr %11, align 4
  store ptr null, ptr %12, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %21

21:                                               ; preds = %47, %20
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %22 = call ptr @xas_load(ptr noundef nonnull %5) #11
  %23 = ptrtoint ptr %22 to i32
  switch i32 %23, label %26 [
    i32 1030, label %47
    i32 1026, label %25
    i32 0, label %24
  ]

24:                                               ; preds = %21
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %51

25:                                               ; preds = %21
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  br label %47

26:                                               ; preds = %21
  %27 = and i32 %23, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #11, !srcloc !16
  %31 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 0, i32 1, ptr elementtype(i32) %30) #11, !srcloc !56
  %32 = extractvalue { i32, i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %29
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %35 = load ptr, ptr %10, align 4
  %36 = icmp eq ptr %35, null
  %37 = load i8, ptr %9, align 2
  %38 = zext i8 %37 to i32
  %39 = getelementptr %struct.xa_node, ptr %35, i32 0, i32 7, i32 %38
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr inbounds %struct.xarray, ptr %40, i32 0, i32 2
  %42 = select i1 %36, ptr %41, ptr %39
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %22, %43
  br i1 %44, label %45, label %46, !prof !10

45:                                               ; preds = %34
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %51

46:                                               ; preds = %34
  call fastcc void @folio_put(ptr noundef nonnull %22) #11
  br label %47

47:                                               ; preds = %46, %29, %25, %21
  br label %21

48:                                               ; preds = %26
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  %49 = and i32 %15, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %91, label %142

51:                                               ; preds = %45, %24
  %52 = icmp eq ptr %22, null
  br i1 %52, label %91, label %53

53:                                               ; preds = %51
  br i1 %17, label %83, label %54

54:                                               ; preds = %53
  %55 = load volatile i32, ptr %22, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %19, label %70, label %58

58:                                               ; preds = %54
  br i1 %57, label %59, label %64

59:                                               ; preds = %58
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #11, !srcloc !16
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #11, !srcloc !58
  %61 = extractvalue { i32, i32, i32 } %60, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %59, %58
  %65 = getelementptr inbounds %struct.page, ptr %22, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %65) #11, !srcloc !16
  %66 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %65, ptr %65, i32 1, ptr elementtype(i32) %65) #11, !srcloc !19
  %67 = extractvalue { i32, i32 } %66, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %142

69:                                               ; preds = %64
  call void @__put_page(ptr noundef nonnull %22) #11
  br label %142

70:                                               ; preds = %54
  br i1 %57, label %71, label %76

71:                                               ; preds = %70
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %22) #11, !srcloc !16
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %22, ptr nonnull %22, i32 1, ptr nonnull elementtype(i32) %22) #11, !srcloc !58
  %73 = extractvalue { i32, i32, i32 } %72, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71, %70
  %77 = call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %22, i32 noundef 0, i32 noundef 2, i32 noundef 0) #11
  br label %78

78:                                               ; preds = %76, %71, %59
  %79 = getelementptr inbounds %struct.anon, ptr %22, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %83, label %82, !prof !10

82:                                               ; preds = %78
  call void @folio_unlock(ptr noundef nonnull %22)
  call fastcc void @folio_put(ptr noundef nonnull %22)
  br label %20

83:                                               ; preds = %78, %53
  %84 = and i32 %15, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  call void @folio_mark_accessed(ptr noundef nonnull %22) #11
  br label %87

87:                                               ; preds = %86, %83
  %88 = and i32 %15, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %142, label %90

90:                                               ; preds = %87
  call void @folio_wait_stable(ptr noundef nonnull %22) #11
  br label %142

91:                                               ; preds = %51, %48
  %92 = and i32 %15, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %142, label %94

94:                                               ; preds = %91
  %95 = and i32 %15, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %0, align 4
  %99 = call ptr @inode_to_bdi(ptr noundef %98) #11
  %100 = getelementptr inbounds %struct.backing_dev_info, ptr %99, i32 0, i32 6
  %101 = load i32, ptr %100, align 8
  %102 = shl i32 %101, 12
  %103 = and i32 %102, 4096
  %104 = or i32 %103, %14
  br label %105

105:                                              ; preds = %97, %94
  %106 = phi i32 [ %14, %94 ], [ %104, %97 ]
  %107 = and i32 %15, 16
  %108 = icmp eq i32 %107, 0
  %109 = and i32 %106, -129
  %110 = select i1 %108, i32 %106, i32 %109
  %111 = call ptr @__folio_alloc(i32 noundef %110, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %112 = icmp eq ptr %111, null
  br i1 %112, label %142, label %113

113:                                              ; preds = %105
  %114 = and i32 %15, 66
  %115 = icmp eq i32 %114, 0
  %116 = load i1, ptr @__filemap_get_folio.__already_done, align 1
  %117 = xor i1 %116, true
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %120, !prof !11

119:                                              ; preds = %113
  store i1 true, ptr @__filemap_get_folio.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1994, i32 noundef 9, ptr noundef null) #11
  br label %120

120:                                              ; preds = %119, %113
  %121 = or i32 %15, 2
  %122 = select i1 %115, i32 %121, i32 %15
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, ptr %111, align 4
  %127 = or i32 %126, 2
  store i32 %127, ptr %111, align 4
  br label %128

128:                                              ; preds = %125, %120
  %129 = call i32 @filemap_add_folio(ptr noundef %0, ptr noundef nonnull %111, i32 noundef %1, i32 noundef %110)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131, !prof !10

131:                                              ; preds = %128
  call fastcc void @folio_put(ptr noundef nonnull %111)
  %132 = icmp eq i32 %129, -17
  br i1 %132, label %13, label %142

133:                                              ; preds = %128
  %134 = and i32 %122, 64
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %133
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %111) #11, !srcloc !16
  %137 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %111, ptr nonnull %111, i32 1, ptr nonnull elementtype(i32) %111) #11, !srcloc !49
  %138 = extractvalue { i32, i32, i32 } %137, 0
  %139 = and i32 %138, 128
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  call fastcc void @folio_wake_bit(ptr noundef nonnull %111, i32 noundef 0) #11
  br label %142

142:                                              ; preds = %141, %136, %133, %131, %105, %91, %90, %87, %69, %64, %48
  %143 = phi ptr [ null, %64 ], [ null, %69 ], [ %22, %87 ], [ %22, %90 ], [ %111, %141 ], [ %111, %136 ], [ %111, %133 ], [ null, %131 ], [ null, %105 ], [ null, %91 ], [ %22, %48 ]
  ret ptr %143
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_mark_accessed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_wait_stable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @find_get_entries(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  store ptr null, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %14

14:                                               ; preds = %54, %5
  %15 = call ptr @xas_find(ptr noundef nonnull %6, i32 noundef %2) #11
  %16 = ptrtoint ptr %15 to i32
  switch i32 %16, label %17 [
    i32 1030, label %54
    i32 1026, label %41
    i32 0, label %55
  ]

17:                                               ; preds = %14
  %18 = and i32 %16, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !16
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 0, i32 1, ptr elementtype(i32) %21) #11, !srcloc !56
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %26 = load ptr, ptr %11, align 4
  %27 = icmp eq ptr %26, null
  %28 = load i8, ptr %10, align 2
  %29 = zext i8 %28 to i32
  %30 = getelementptr %struct.xa_node, ptr %26, i32 0, i32 7, i32 %29
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr inbounds %struct.xarray, ptr %31, i32 0, i32 2
  %33 = select i1 %27, ptr %32, ptr %30
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %15, %34
  br i1 %35, label %42, label %36, !prof !10

36:                                               ; preds = %25
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #11, !srcloc !16
  %37 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #11, !srcloc !19
  %38 = extractvalue { i32, i32 } %37, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @__put_page(ptr noundef %15) #11
  br label %41

41:                                               ; preds = %40, %36, %20, %14
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  br label %54

42:                                               ; preds = %25, %17
  %43 = icmp eq ptr %15, null
  br i1 %43, label %55, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %8, align 4
  %46 = load i8, ptr %3, align 4
  %47 = zext i8 %46 to i32
  %48 = getelementptr i32, ptr %4, i32 %47
  store i32 %45, ptr %48, align 4
  %49 = load i8, ptr %3, align 4
  %50 = add i8 %49, 1
  store i8 %50, ptr %3, align 4
  %51 = zext i8 %49 to i32
  %52 = getelementptr %struct.folio_batch, ptr %3, i32 0, i32 2, i32 %51
  store ptr %15, ptr %52, align 4
  %53 = icmp eq i8 %50, 15
  br i1 %53, label %55, label %54

54:                                               ; preds = %44, %41, %14
  br label %14

55:                                               ; preds = %44, %42, %14
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %56 = load i8, ptr %3, align 4
  %57 = zext i8 %56 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @find_lock_entries(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  %10 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  store i32 0, ptr %9, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  store ptr null, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %14

14:                                               ; preds = %17, %5
  %15 = call ptr @xas_find(ptr noundef nonnull %6, i32 noundef %2) #11
  %16 = ptrtoint ptr %15 to i32
  switch i32 %16, label %18 [
    i32 1030, label %17
    i32 1026, label %42
    i32 0, label %102
  ]

17:                                               ; preds = %101, %96, %80, %42, %14
  br label %14

18:                                               ; preds = %14
  %19 = and i32 %16, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !16
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 1, ptr elementtype(i32) %22) #11, !srcloc !56
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %21
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %27 = load ptr, ptr %11, align 4
  %28 = icmp eq ptr %27, null
  %29 = load i8, ptr %10, align 2
  %30 = zext i8 %29 to i32
  %31 = getelementptr %struct.xa_node, ptr %27, i32 0, i32 7, i32 %30
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.xarray, ptr %32, i32 0, i32 2
  %34 = select i1 %28, ptr %33, ptr %31
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %15, %35
  br i1 %36, label %43, label %37, !prof !10

37:                                               ; preds = %26
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !16
  %38 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #11, !srcloc !19
  %39 = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @__put_page(ptr noundef %15) #11
  br label %42

42:                                               ; preds = %41, %37, %21, %14
  store ptr inttoptr (i32 3 to ptr), ptr %11, align 4
  br label %17

43:                                               ; preds = %26
  %44 = icmp eq ptr %15, null
  br i1 %44, label %102, label %47

45:                                               ; preds = %18
  %46 = icmp eq ptr %15, null
  br i1 %46, label %102, label %80

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, %1
  br i1 %50, label %96, label %51

51:                                               ; preds = %47
  %52 = load volatile i32, ptr %15, align 4
  %53 = and i32 %52, 65536
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = getelementptr %struct.page, ptr %15, i32 1, i32 1, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = phi i32 [ %57, %55 ], [ 1, %51 ]
  %60 = add i32 %49, -1
  %61 = add i32 %60, %59
  %62 = icmp ugt i32 %61, %2
  br i1 %62, label %96, label %63

63:                                               ; preds = %58
  %64 = load volatile i32, ptr %15, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %15) #11, !srcloc !16
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #11, !srcloc !58
  %69 = extractvalue { i32, i32, i32 } %68, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.anon, ptr %15, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = load volatile i32, ptr %15, align 4
  %78 = and i32 %77, 32768
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %76, %45
  %81 = load i32, ptr %8, align 4
  %82 = load i8, ptr %3, align 4
  %83 = zext i8 %82 to i32
  %84 = getelementptr i32, ptr %4, i32 %83
  store i32 %81, ptr %84, align 4
  %85 = load i8, ptr %3, align 4
  %86 = add i8 %85, 1
  store i8 %86, ptr %3, align 4
  %87 = zext i8 %85 to i32
  %88 = getelementptr %struct.folio_batch, ptr %3, i32 0, i32 2, i32 %87
  store ptr %15, ptr %88, align 4
  %89 = icmp eq i8 %86, 15
  br i1 %89, label %102, label %17

90:                                               ; preds = %76, %72
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %15) #11, !srcloc !16
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #11, !srcloc !49
  %92 = extractvalue { i32, i32, i32 } %91, 0
  %93 = and i32 %92, 128
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  call fastcc void @folio_wake_bit(ptr noundef nonnull %15, i32 noundef 0) #11
  br label %96

96:                                               ; preds = %95, %90, %67, %63, %58, %47
  %97 = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #11, !srcloc !16
  %98 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 1, ptr elementtype(i32) %97) #11, !srcloc !19
  %99 = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %17

101:                                              ; preds = %96
  call void @__put_page(ptr noundef nonnull %15) #11
  br label %17

102:                                              ; preds = %80, %45, %43, %14
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %103 = load i8, ptr %3, align 4
  %104 = zext i8 %103 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @find_get_pages_range(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %7, ptr %6, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 1
  %9 = load i32, ptr %1, align 4
  store i32 %9, ptr %8, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 6
  store i32 0, ptr %10, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %12, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 7
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.xa_state, ptr %6, i32 0, i32 8
  store ptr null, ptr %14, align 4
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %98, label %16, !prof !11

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %18

17:                                               ; preds = %83, %70
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i32 [ 0, %16 ], [ %66, %17 ]
  br label %20

20:                                               ; preds = %47, %18
  %21 = call ptr @xas_find(ptr noundef nonnull %6, i32 noundef %2) #11
  %22 = ptrtoint ptr %21 to i32
  switch i32 %22, label %23 [
    i32 1030, label %47
    i32 1026, label %43
    i32 0, label %91
  ]

23:                                               ; preds = %20
  %24 = and i32 %22, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #11, !srcloc !16
  %28 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 0, i32 1, ptr elementtype(i32) %27) #11, !srcloc !56
  %29 = extractvalue { i32, i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %32 = load ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, null
  %34 = load i8, ptr %11, align 2
  %35 = zext i8 %34 to i32
  %36 = getelementptr %struct.xa_node, ptr %32, i32 0, i32 7, i32 %35
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.xarray, ptr %37, i32 0, i32 2
  %39 = select i1 %33, ptr %38, ptr %36
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %21, %40
  br i1 %41, label %44, label %42, !prof !10

42:                                               ; preds = %31
  call fastcc void @folio_put(ptr noundef nonnull %21) #11
  br label %43

43:                                               ; preds = %42, %26, %20
  store ptr inttoptr (i32 3 to ptr), ptr %12, align 4
  br label %47

44:                                               ; preds = %31, %23
  %45 = icmp eq ptr %21, null
  br i1 %45, label %91, label %46

46:                                               ; preds = %44
  br i1 %25, label %48, label %47

47:                                               ; preds = %46, %43, %20
  br label %20

48:                                               ; preds = %46
  %49 = getelementptr %struct.page, ptr %21, i32 1, i32 1, i32 0, i32 2
  %50 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 3
  %51 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  br label %52

52:                                               ; preds = %88, %48
  %53 = phi i32 [ %66, %88 ], [ %19, %48 ]
  %54 = load i32, ptr %8, align 4
  %55 = load volatile i32, ptr %21, align 4
  %56 = and i32 %55, 65536
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, ptr %49, align 4
  %60 = add i32 %59, -1
  br label %61

61:                                               ; preds = %58, %52
  %62 = phi i32 [ %60, %58 ], [ 0, %52 ]
  %63 = and i32 %62, %54
  %64 = getelementptr %struct.page, ptr %21, i32 %63
  %65 = getelementptr ptr, ptr %4, i32 %53
  store ptr %64, ptr %65, align 4
  %66 = add i32 %53, 1
  %67 = icmp eq i32 %66, %3
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = add i32 %54, 1
  br label %95

70:                                               ; preds = %61
  %71 = load volatile i32, ptr %21, align 4
  %72 = and i32 %71, 65536
  %73 = icmp ne i32 %72, 0
  %74 = icmp ult i32 %54, %2
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %17

76:                                               ; preds = %70
  %77 = load i32, ptr %50, align 4
  %78 = load volatile i32, ptr %21, align 4
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %49, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i32 [ %82, %81 ], [ 1, %76 ]
  %85 = add i32 %77, -1
  %86 = add i32 %85, %84
  %87 = icmp ugt i32 %86, %54
  br i1 %87, label %88, label %17

88:                                               ; preds = %83
  %89 = add nuw i32 %54, 1
  store i32 %89, ptr %8, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #11, !srcloc !16
  %90 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #11, !srcloc !35
  br label %52

91:                                               ; preds = %44, %20
  %92 = icmp eq i32 %2, -1
  %93 = add nuw i32 %2, 1
  %94 = select i1 %92, i32 -1, i32 %93
  br label %95

95:                                               ; preds = %91, %68
  %96 = phi i32 [ %69, %68 ], [ %94, %91 ]
  %97 = phi i32 [ %3, %68 ], [ %19, %91 ]
  store i32 %96, ptr %1, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %98

98:                                               ; preds = %95, %5
  %99 = phi i32 [ %97, %95 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @find_get_pages_contig(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %8, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %12, align 4
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %110, label %14, !prof !11

14:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %15 = call ptr @xas_load(ptr noundef nonnull %5) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %108, label %17

17:                                               ; preds = %105, %14
  %18 = phi i32 [ %83, %105 ], [ 0, %14 ]
  %19 = phi ptr [ %106, %105 ], [ %15, %14 ]
  %20 = ptrtoint ptr %19 to i32
  switch i32 %20, label %21 [
    i32 1030, label %82
    i32 1026, label %81
  ]

21:                                               ; preds = %17
  %22 = and i32 %20, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %108

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.page, ptr %19, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #11, !srcloc !16
  %26 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 0, i32 1, ptr elementtype(i32) %25) #11, !srcloc !56
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %81, label %29

29:                                               ; preds = %24
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %30 = load ptr, ptr %10, align 4
  %31 = icmp eq ptr %30, null
  %32 = load i8, ptr %9, align 2
  %33 = zext i8 %32 to i32
  %34 = getelementptr %struct.xa_node, ptr %30, i32 0, i32 7, i32 %33
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr inbounds %struct.xarray, ptr %35, i32 0, i32 2
  %37 = select i1 %31, ptr %36, ptr %34
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %19, %38
  br i1 %39, label %40, label %80, !prof !10

40:                                               ; preds = %29
  %41 = getelementptr %struct.page, ptr %19, i32 1, i32 1, i32 0, i32 2
  %42 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 3
  br label %43

43:                                               ; preds = %77, %40
  %44 = phi i32 [ %57, %77 ], [ %18, %40 ]
  %45 = load i32, ptr %7, align 4
  %46 = load volatile i32, ptr %19, align 4
  %47 = and i32 %46, 65536
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, ptr %41, align 4
  %51 = add i32 %50, -1
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i32 [ %51, %49 ], [ 0, %43 ]
  %54 = and i32 %53, %45
  %55 = getelementptr %struct.page, ptr %19, i32 %54
  %56 = getelementptr ptr, ptr %3, i32 %44
  store ptr %55, ptr %56, align 4
  %57 = add i32 %44, 1
  %58 = icmp eq i32 %57, %2
  br i1 %58, label %108, label %59

59:                                               ; preds = %52
  %60 = load volatile i32, ptr %19, align 4
  %61 = and i32 %60, 65536
  %62 = icmp ne i32 %61, 0
  %63 = icmp ne i32 %45, -1
  %64 = and i1 %63, %62
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i32, ptr %42, align 4
  %67 = load volatile i32, ptr %19, align 4
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load i32, ptr %41, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi i32 [ %71, %70 ], [ 1, %65 ]
  %74 = add i32 %66, -1
  %75 = add i32 %74, %73
  %76 = icmp ugt i32 %75, %45
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = add nuw i32 %45, 1
  store i32 %78, ptr %7, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #11, !srcloc !16
  %79 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #11, !srcloc !35
  br label %43

80:                                               ; preds = %29
  call fastcc void @folio_put(ptr noundef nonnull %19)
  br label %81

81:                                               ; preds = %80, %24, %17
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  br label %82

82:                                               ; preds = %81, %72, %59, %17
  %83 = phi i32 [ %18, %17 ], [ %18, %81 ], [ %57, %72 ], [ %57, %59 ]
  %84 = load ptr, ptr %10, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = and i32 %85, 3
  %87 = icmp ne i32 %86, 0
  %88 = icmp eq ptr %84, null
  %89 = or i1 %88, %87
  br i1 %89, label %96, label %90, !prof !11

90:                                               ; preds = %82
  %91 = load i8, ptr %84, align 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96, !prof !10

93:                                               ; preds = %90
  %94 = load i8, ptr %9, align 2
  %95 = icmp eq i8 %94, 63
  br i1 %95, label %96, label %98, !prof !11

96:                                               ; preds = %93, %90, %82
  %97 = call ptr @__xas_next(ptr noundef nonnull %5) #11
  br label %105

98:                                               ; preds = %93
  %99 = load i32, ptr %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %7, align 4
  %101 = add i8 %94, 1
  store i8 %101, ptr %9, align 2
  %102 = zext i8 %101 to i32
  %103 = getelementptr %struct.xa_node, ptr %84, i32 0, i32 7, i32 %102
  %104 = load volatile ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %98, %96
  %106 = phi ptr [ %97, %96 ], [ %104, %98 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %17

108:                                              ; preds = %105, %52, %21, %14
  %109 = phi i32 [ 0, %14 ], [ %2, %52 ], [ %83, %105 ], [ %18, %21 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %110

110:                                              ; preds = %108, %4
  %111 = phi i32 [ %109, %108 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i32 %111
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @find_get_pages_range_tag(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 1
  %10 = load i32, ptr %1, align 4
  store i32 %10, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 2
  %12 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 6
  store i32 0, ptr %11, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %13, align 4
  %14 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 7
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.xa_state, ptr %7, i32 0, i32 8
  store ptr null, ptr %15, align 4
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %81, label %17, !prof !11

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %18 = icmp eq i32 %3, 8
  br label %19

19:                                               ; preds = %58, %17
  %20 = phi i32 [ %60, %58 ], [ 0, %17 ]
  br label %21

21:                                               ; preds = %57, %19
  br i1 %18, label %22, label %24

22:                                               ; preds = %21
  %23 = call ptr @xas_find(ptr noundef nonnull %7, i32 noundef %2) #11
  br label %26

24:                                               ; preds = %21
  %25 = call ptr @xas_find_marked(ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3) #11
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %23, %22 ], [ %25, %24 ]
  %28 = ptrtoint ptr %27 to i32
  switch i32 %28, label %29 [
    i32 1030, label %57
    i32 1026, label %53
    i32 0, label %74
  ]

29:                                               ; preds = %26
  %30 = and i32 %28, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.page, ptr %27, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #11, !srcloc !16
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 0, i32 1, ptr elementtype(i32) %33) #11, !srcloc !56
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %32
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %38 = load ptr, ptr %13, align 4
  %39 = icmp eq ptr %38, null
  %40 = load i8, ptr %12, align 2
  %41 = zext i8 %40 to i32
  %42 = getelementptr %struct.xa_node, ptr %38, i32 0, i32 7, i32 %41
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.xarray, ptr %43, i32 0, i32 2
  %45 = select i1 %39, ptr %44, ptr %42
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %27, %46
  br i1 %47, label %54, label %48, !prof !10

48:                                               ; preds = %37
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #11, !srcloc !16
  %49 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #11, !srcloc !19
  %50 = extractvalue { i32, i32 } %49, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @__put_page(ptr noundef %27) #11
  br label %53

53:                                               ; preds = %52, %48, %32, %26
  store ptr inttoptr (i32 3 to ptr), ptr %13, align 4
  br label %57

54:                                               ; preds = %37, %29
  %55 = icmp eq ptr %27, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %54
  br i1 %31, label %58, label %57

57:                                               ; preds = %56, %53, %26
  br label %21

58:                                               ; preds = %56
  %59 = getelementptr ptr, ptr %5, i32 %20
  store ptr %27, ptr %59, align 4
  %60 = add nuw i32 %20, 1
  %61 = icmp eq i32 %60, %4
  br i1 %61, label %62, label %19

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = load volatile i32, ptr %27, align 4
  %66 = and i32 %65, 65536
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = getelementptr %struct.page, ptr %27, i32 1, i32 1, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi i32 [ %70, %68 ], [ 1, %62 ]
  %73 = add i32 %72, %64
  br label %78

74:                                               ; preds = %54, %26
  %75 = icmp eq i32 %2, -1
  %76 = add nuw i32 %2, 1
  %77 = select i1 %75, i32 -1, i32 %76
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i32 [ %73, %71 ], [ %77, %74 ]
  %80 = phi i32 [ %4, %71 ], [ %20, %74 ]
  store i32 %79, ptr %1, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %81

81:                                               ; preds = %78, %6
  %82 = phi i32 [ %80, %78 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_read(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.readahead_control, align 4
  %5 = alloca %struct.readahead_control, align 4
  %6 = alloca %struct.folio_batch, align 4
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %6, i8 0, i32 64, i1 false), !annotation !9
  %11 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  %17 = icmp slt i64 %12, %16
  br i1 %17, label %18, label %493, !prof !10

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %493, label %22, !prof !11

22:                                               ; preds = %18
  %23 = zext i32 %20 to i64
  %24 = icmp ult i64 %16, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = trunc i64 %16 to i32
  store i32 %26, ptr %19, align 8
  br label %27

27:                                               ; preds = %25, %22
  store i8 0, ptr %6, align 4
  %28 = getelementptr inbounds %struct.folio_batch, ptr %6, i32 0, i32 1
  store i8 0, ptr %28, align 1
  %29 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 22
  %31 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 13
  %32 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 2
  %34 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 3
  %35 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 4
  %36 = getelementptr inbounds %struct.readahead_control, ptr %5, i32 0, i32 5
  %37 = getelementptr inbounds %struct.readahead_control, ptr %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.readahead_control, ptr %4, i32 0, i32 2
  %39 = getelementptr inbounds %struct.readahead_control, ptr %4, i32 0, i32 3
  %40 = getelementptr inbounds %struct.readahead_control, ptr %4, i32 0, i32 4
  %41 = getelementptr inbounds %struct.readahead_control, ptr %4, i32 0, i32 5
  %42 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 7
  %43 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 4
  %44 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 13, i32 5
  %45 = getelementptr inbounds %struct.folio_batch, ptr %6, i32 0, i32 2
  br label %46

46:                                               ; preds = %476, %27
  %47 = phi i32 [ %2, %27 ], [ %472, %476 ]
  %48 = call i32 @__cond_resched() #11
  %49 = load i32, ptr %29, align 8
  %50 = and i32 %49, 524288
  %51 = icmp ne i32 %50, 0
  %52 = icmp ne i32 %47, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = or i32 %49, 8
  store i32 %55, ptr %29, align 8
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i64, ptr %11, align 8
  br label %58

58:                                               ; preds = %66, %56
  %59 = load volatile i32, ptr %30, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %62, %58
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !60
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %63 = load volatile i32, ptr %30, align 4
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %62

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %59, %58 ], [ %63, %62 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !62
  %68 = load i64, ptr %31, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !63
  %69 = load volatile i32, ptr %30, align 4
  %70 = icmp eq i32 %69, %67
  br i1 %70, label %71, label %58

71:                                               ; preds = %66
  %72 = icmp slt i64 %57, %68
  br i1 %72, label %73, label %481, !prof !10

73:                                               ; preds = %71
  %74 = load ptr, ptr %0, align 8
  %75 = getelementptr inbounds %struct.file, ptr %74, i32 0, i32 17
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.file, ptr %74, i32 0, i32 13
  %78 = load i64, ptr %11, align 8
  %79 = lshr i64 %78, 12
  %80 = trunc i64 %79 to i32
  %81 = load i32, ptr %19, align 8
  %82 = zext i32 %81 to i64
  %83 = add i64 %78, 4095
  %84 = add i64 %83, %82
  %85 = sdiv i64 %84, 4096
  %86 = trunc i64 %85 to i32
  %87 = tail call ptr @llvm.thread.pointer() #11
  %88 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 98, i32 1
  %89 = sub i32 %86, %80
  %90 = getelementptr inbounds %struct.address_space, ptr %76, i32 0, i32 2
  %91 = getelementptr inbounds %struct.address_space, ptr %76, i32 0, i32 9
  %92 = getelementptr inbounds %struct.address_space, ptr %76, i32 0, i32 3
  %93 = getelementptr inbounds %struct.file, ptr %74, i32 0, i32 13, i32 3
  br label %94

94:                                               ; preds = %364, %73
  %95 = load volatile i32, ptr %87, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, ptr %88, align 4
  %100 = and i32 %99, 256
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %481

102:                                              ; preds = %98, %94
  call fastcc void @filemap_get_read_batch(ptr noundef %76, i32 noundef %80, i32 noundef %86, ptr noundef nonnull %6) #11
  %103 = load i8, ptr %6, align 4
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %164

105:                                              ; preds = %102
  %106 = load i32, ptr %29, align 8
  %107 = and i32 %106, 1048576
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %481

109:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  store ptr %74, ptr %5, align 4
  store ptr %76, ptr %32, align 4
  store ptr %77, ptr %33, align 4
  store i32 %80, ptr %34, align 4
  store i32 0, ptr %35, align 4
  store i32 0, ptr %36, align 4
  call void @page_cache_sync_ra(ptr noundef nonnull %5, i32 noundef %89) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call fastcc void @filemap_get_read_batch(ptr noundef %76, i32 noundef %80, i32 noundef %86, ptr noundef nonnull %6) #11
  %110 = load i8, ptr %6, align 4
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %164

112:                                              ; preds = %109
  %113 = load i32, ptr %29, align 8
  %114 = and i32 %113, 524296
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %481

116:                                              ; preds = %112
  %117 = load i64, ptr %11, align 8
  %118 = load i32, ptr %92, align 4
  %119 = call ptr @__folio_alloc(i32 noundef %118, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %120 = icmp eq ptr %119, null
  br i1 %120, label %481, label %121

121:                                              ; preds = %116
  %122 = lshr i64 %117, 12
  %123 = trunc i64 %122 to i32
  call void @down_read(ptr noundef %90) #11
  %124 = load i32, ptr %92, align 4
  %125 = and i32 %124, 3264
  %126 = call i32 @filemap_add_folio(ptr noundef %76, ptr noundef nonnull %119, i32 noundef %123, i32 noundef %125) #11
  %127 = icmp eq i32 %126, -17
  %128 = select i1 %127, i32 524289, i32 %126
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %121
  call void @_clear_bit(i32 noundef 8, ptr noundef nonnull %119) #11
  %131 = load ptr, ptr %91, align 4
  %132 = getelementptr inbounds %struct.address_space_operations, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = call i32 %133(ptr noundef %74, ptr noundef nonnull %119) #11
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %155

136:                                              ; preds = %130
  %137 = load volatile i32, ptr %119, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %119, i32 noundef 0, i32 noundef 258, i32 noundef 1) #11
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %140, %136
  %144 = load volatile i32, ptr %119, align 4
  %145 = and i32 %144, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, ptr %93, align 4
  %149 = lshr i32 %148, 2
  store i32 %149, ptr %93, align 4
  br label %155

150:                                              ; preds = %143
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  call void @up_read(ptr noundef %90) #11
  %151 = load i8, ptr %6, align 4
  %152 = add i8 %151, 1
  store i8 %152, ptr %6, align 4
  %153 = zext i8 %151 to i32
  %154 = getelementptr %struct.folio_batch, ptr %6, i32 0, i32 2, i32 %153
  store ptr %119, ptr %154, align 4
  br label %368

155:                                              ; preds = %147, %140, %130, %121
  %156 = phi i32 [ %128, %121 ], [ %141, %140 ], [ %134, %130 ], [ -5, %147 ]
  call void @up_read(ptr noundef %90) #11
  %157 = getelementptr inbounds %struct.page, ptr %119, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %157) #11, !srcloc !16
  %158 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %157, ptr %157, i32 1, ptr elementtype(i32) %157) #11, !srcloc !19
  %159 = extractvalue { i32, i32 } %158, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  call void @__put_page(ptr noundef nonnull %119) #11
  br label %162

162:                                              ; preds = %161, %155
  %163 = icmp eq i32 %156, 524289
  br i1 %163, label %364, label %365

164:                                              ; preds = %109, %102
  %165 = phi i8 [ %110, %109 ], [ %103, %102 ]
  %166 = zext i8 %165 to i32
  %167 = add nsw i32 %166, -1
  %168 = getelementptr %struct.folio_batch, ptr %6, i32 0, i32 2, i32 %167
  %169 = load ptr, ptr %168, align 4
  %170 = load volatile i32, ptr %169, align 4
  %171 = and i32 %170, 262144
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  store ptr %74, ptr %4, align 4
  store ptr %76, ptr %37, align 4
  store ptr %77, ptr %38, align 4
  %174 = getelementptr inbounds %struct.anon, ptr %169, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  store i32 %175, ptr %39, align 4
  store i32 0, ptr %40, align 4
  store i32 0, ptr %41, align 4
  %176 = load i32, ptr %29, align 8
  %177 = and i32 %176, 1048576
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = sub i32 %86, %175
  call void @page_cache_async_ra(ptr noundef nonnull %4, ptr noundef %169, i32 noundef %180) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %182

181:                                              ; preds = %173
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %350

182:                                              ; preds = %179, %164
  %183 = load volatile i32, ptr %169, align 4
  %184 = and i32 %183, 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %368

187:                                              ; preds = %182
  %188 = load i32, ptr %29, align 8
  %189 = and i32 %188, 524288
  %190 = icmp ne i32 %189, 0
  %191 = load i8, ptr %6, align 4
  %192 = icmp ugt i8 %191, 1
  %193 = select i1 %190, i1 %192, i1 false
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = or i32 %188, 8
  store i32 %195, ptr %29, align 8
  br label %196

196:                                              ; preds = %194, %187
  %197 = phi i32 [ %195, %194 ], [ %188, %187 ]
  %198 = and i32 %197, 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  %201 = call i32 @down_read_trylock(ptr noundef %90) #11
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %350, label %204

203:                                              ; preds = %196
  call void @down_read(ptr noundef %90) #11
  br label %204

204:                                              ; preds = %203, %200
  %205 = load volatile i32, ptr %169, align 4
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %169) #11, !srcloc !16
  %209 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %169, ptr %169, i32 1, ptr elementtype(i32) %169) #11, !srcloc !58
  %210 = extractvalue { i32, i32, i32 } %209, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %251, label %213

213:                                              ; preds = %208, %204
  %214 = load i32, ptr %29, align 8
  %215 = and i32 %214, 1048584
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %334

217:                                              ; preds = %213
  %218 = and i32 %214, 524288
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  call void @up_read(ptr noundef %90) #11
  %221 = call fastcc i32 @folio_wait_bit_common(ptr noundef %169, i32 noundef 0, i32 noundef 258, i32 noundef 2) #11
  br label %357

222:                                              ; preds = %217
  %223 = load ptr, ptr %42, align 8
  %224 = ptrtoint ptr %169 to i32
  %225 = mul i32 %224, 1640531527
  %226 = lshr i32 %225, 24
  %227 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %226
  store ptr %169, ptr %223, align 4
  %228 = getelementptr inbounds %struct.wait_page_queue, ptr %223, i32 0, i32 1
  store i32 0, ptr %228, align 4
  call void @_raw_spin_lock_irq(ptr noundef %227) #11
  %229 = getelementptr inbounds %struct.wait_page_queue, ptr %223, i32 0, i32 2, i32 3
  %230 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %226, i32 1
  %231 = getelementptr [256 x %struct.wait_queue_head], ptr @folio_wait_table, i32 0, i32 %226, i32 1, i32 1
  %232 = load ptr, ptr %231, align 4
  store ptr %229, ptr %231, align 4
  store ptr %230, ptr %229, align 4
  %233 = getelementptr inbounds %struct.wait_page_queue, ptr %223, i32 0, i32 2, i32 3, i32 1
  store ptr %232, ptr %233, align 4
  store volatile ptr %229, ptr %232, align 4
  call void @_set_bit(i32 noundef 7, ptr noundef %169) #11
  %234 = load volatile i32, ptr %169, align 4
  %235 = and i32 %234, 1
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %222
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %169) #11, !srcloc !16
  %238 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %169, ptr %169, i32 1, ptr elementtype(i32) %169) #11, !srcloc !58
  %239 = extractvalue { i32, i32, i32 } %238, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = load ptr, ptr %233, align 4
  %244 = load ptr, ptr %229, align 4
  %245 = getelementptr inbounds %struct.list_head, ptr %244, i32 0, i32 1
  store ptr %243, ptr %245, align 4
  store volatile ptr %244, ptr %243, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %229, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %233, align 4
  br label %246

246:                                              ; preds = %242, %237, %222
  %247 = phi i1 [ false, %222 ], [ false, %237 ], [ true, %242 ]
  %248 = phi i32 [ -529, %222 ], [ -529, %237 ], [ 0, %242 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %249 = load i16, ptr %227, align 4
  %250 = add i16 %249, 1
  store i16 %250, ptr %227, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !25
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br i1 %247, label %251, label %334

251:                                              ; preds = %246, %208
  %252 = getelementptr inbounds %struct.anon, ptr %169, i32 0, i32 2
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %327, label %255

255:                                              ; preds = %251
  %256 = load i64, ptr %11, align 8
  %257 = load volatile i32, ptr %169, align 4
  %258 = and i32 %257, 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %327

261:                                              ; preds = %255
  %262 = load i8, ptr %1, align 8
  %263 = icmp eq i8 %262, 3
  br i1 %263, label %300, label %264

264:                                              ; preds = %261
  %265 = load ptr, ptr %91, align 4
  %266 = getelementptr inbounds %struct.address_space_operations, ptr %265, i32 0, i32 17
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %300, label %269

269:                                              ; preds = %264
  %270 = load ptr, ptr %76, align 4
  %271 = getelementptr inbounds %struct.inode, ptr %270, i32 0, i32 19
  %272 = load i8, ptr %271, align 2
  %273 = zext i8 %272 to i32
  %274 = load volatile i32, ptr %169, align 4
  %275 = and i32 %274, 65536
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %283, label %277

277:                                              ; preds = %269
  %278 = getelementptr %struct.page, ptr %169, i32 1, i32 1
  %279 = getelementptr inbounds %struct.anon.6, ptr %278, i32 0, i32 2
  %280 = load i8, ptr %279, align 1
  %281 = zext i8 %280 to i32
  %282 = add nuw nsw i32 %281, 12
  br label %283

283:                                              ; preds = %277, %269
  %284 = phi i32 [ %282, %277 ], [ 12, %269 ]
  %285 = icmp ugt i32 %284, %273
  br i1 %285, label %286, label %300

286:                                              ; preds = %283
  %287 = load i32, ptr %19, align 8
  %288 = getelementptr inbounds %struct.page, ptr %169, i32 0, i32 1, i32 0, i32 2
  %289 = load i32, ptr %288, align 4
  %290 = zext i32 %289 to i64
  %291 = shl nuw nsw i64 %290, 12
  %292 = icmp slt i64 %256, %291
  %293 = sub i64 %256, %291
  %294 = trunc i64 %293 to i32
  %295 = select i1 %292, i32 0, i32 %294
  %296 = select i1 %292, i32 %294, i32 0
  %297 = add i32 %296, %287
  %298 = call i32 %267(ptr noundef %169, i32 noundef %295, i32 noundef %297) #11
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %327

300:                                              ; preds = %286, %283, %264, %261
  %301 = load i32, ptr %29, align 8
  %302 = and i32 %301, 1572872
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %327

304:                                              ; preds = %300
  %305 = load ptr, ptr %0, align 8
  call void @_clear_bit(i32 noundef 8, ptr noundef %169) #11
  %306 = load ptr, ptr %91, align 4
  %307 = getelementptr inbounds %struct.address_space_operations, ptr %306, i32 0, i32 1
  %308 = load ptr, ptr %307, align 4
  %309 = call i32 %308(ptr noundef %305, ptr noundef %169) #11
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %336

311:                                              ; preds = %304
  %312 = load volatile i32, ptr %169, align 4
  %313 = and i32 %312, 1
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %311
  %316 = call fastcc i32 @folio_wait_bit_common(ptr noundef %169, i32 noundef 0, i32 noundef 258, i32 noundef 1) #11
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %336

318:                                              ; preds = %315, %311
  %319 = load volatile i32, ptr %169, align 4
  %320 = and i32 %319, 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %318
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %334

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.file, ptr %305, i32 0, i32 13, i32 3
  %325 = load i32, ptr %324, align 4
  %326 = lshr i32 %325, 2
  store i32 %326, ptr %324, align 4
  br label %334

327:                                              ; preds = %300, %286, %260, %251
  %328 = phi i32 [ 0, %286 ], [ -11, %300 ], [ 524289, %251 ], [ 0, %260 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %169) #11, !srcloc !16
  %329 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %169, ptr %169, i32 1, ptr elementtype(i32) %169) #11, !srcloc !49
  %330 = extractvalue { i32, i32, i32 } %329, 0
  %331 = and i32 %330, 128
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %327
  call fastcc void @folio_wake_bit(ptr noundef %169, i32 noundef 0) #11
  br label %336

334:                                              ; preds = %323, %322, %246, %213
  %335 = phi i32 [ 0, %322 ], [ -5, %323 ], [ %248, %246 ], [ -11, %213 ]
  call void @up_read(ptr noundef %90) #11
  br label %345

336:                                              ; preds = %333, %327, %315, %304
  %337 = phi i32 [ %309, %304 ], [ %316, %315 ], [ %328, %327 ], [ %328, %333 ]
  call void @up_read(ptr noundef %90) #11
  %338 = icmp eq i32 %337, 524289
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.page, ptr %169, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %340) #11, !srcloc !16
  %341 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %340, ptr %340, i32 1, ptr elementtype(i32) %340) #11, !srcloc !19
  %342 = extractvalue { i32, i32 } %341, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %357

344:                                              ; preds = %339
  call void @__put_page(ptr noundef %169) #11
  br label %357

345:                                              ; preds = %336, %334
  %346 = phi i32 [ %337, %336 ], [ %335, %334 ]
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %368, label %348

348:                                              ; preds = %345
  %349 = icmp slt i32 %346, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %348, %200, %181
  %351 = phi i32 [ -11, %181 ], [ %346, %348 ], [ -11, %200 ]
  %352 = getelementptr inbounds %struct.page, ptr %169, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %352) #11, !srcloc !16
  %353 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %352, ptr %352, i32 1, ptr elementtype(i32) %352) #11, !srcloc !19
  %354 = extractvalue { i32, i32 } %353, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  call void @__put_page(ptr noundef %169) #11
  br label %357

357:                                              ; preds = %356, %350, %348, %344, %339, %220
  %358 = phi i32 [ %346, %348 ], [ %351, %350 ], [ %351, %356 ], [ 524289, %344 ], [ 524289, %339 ], [ 524289, %220 ]
  %359 = load i8, ptr %6, align 4
  %360 = add i8 %359, -1
  store i8 %360, ptr %6, align 4
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %362, label %368, !prof !11

362:                                              ; preds = %357
  %363 = icmp eq i32 %358, 524289
  br i1 %363, label %364, label %365

364:                                              ; preds = %362, %162
  br label %94

365:                                              ; preds = %362, %162
  %366 = phi i32 [ %358, %362 ], [ %156, %162 ]
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %481, label %368

368:                                              ; preds = %365, %357, %345, %186, %150
  %369 = phi i32 [ %366, %365 ], [ 0, %186 ], [ 0, %150 ], [ 0, %357 ], [ 0, %345 ]
  br label %370

370:                                              ; preds = %378, %368
  %371 = load volatile i32, ptr %30, align 4
  %372 = and i32 %371, 1
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %374, %370
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !60
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %375 = load volatile i32, ptr %30, align 4
  %376 = and i32 %375, 1
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %374

378:                                              ; preds = %374, %370
  %379 = phi i32 [ %371, %370 ], [ %375, %374 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !62
  %380 = load i64, ptr %31, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !63
  %381 = load volatile i32, ptr %30, align 4
  %382 = icmp eq i32 %381, %379
  br i1 %382, label %383, label %370

383:                                              ; preds = %378
  %384 = load i64, ptr %11, align 8
  %385 = icmp slt i64 %384, %380
  br i1 %385, label %386, label %448, !prof !10

386:                                              ; preds = %383
  %387 = load i32, ptr %19, align 8
  %388 = zext i32 %387 to i64
  %389 = add i64 %384, %388
  %390 = call i64 @llvm.smin.i64(i64 %380, i64 %389)
  %391 = load volatile i32, ptr %43, align 4
  %392 = icmp slt i32 %391, 1
  %393 = load i64, ptr %44, align 8
  %394 = xor i64 %393, %384
  %395 = icmp ult i64 %394, 4096
  br i1 %395, label %398, label %396

396:                                              ; preds = %386
  %397 = load ptr, ptr %45, align 4
  call void @folio_mark_accessed(ptr noundef %397) #11
  br label %398

398:                                              ; preds = %396, %386
  %399 = load i8, ptr %6, align 4
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %471, label %406

401:                                              ; preds = %441
  %402 = add nuw nsw i32 %408, 1
  %403 = load i8, ptr %6, align 4
  %404 = zext i8 %403 to i32
  %405 = icmp ult i32 %402, %404
  br i1 %405, label %406, label %452

406:                                              ; preds = %401, %398
  %407 = phi i32 [ %443, %401 ], [ %47, %398 ]
  %408 = phi i32 [ %402, %401 ], [ 0, %398 ]
  %409 = getelementptr %struct.folio_batch, ptr %6, i32 0, i32 2, i32 %408
  %410 = load ptr, ptr %409, align 4
  %411 = load volatile i32, ptr %410, align 4
  %412 = and i32 %411, 65536
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %419, label %414

414:                                              ; preds = %406
  %415 = getelementptr %struct.page, ptr %410, i32 1, i32 1
  %416 = getelementptr inbounds %struct.anon.6, ptr %415, i32 0, i32 2
  %417 = load i8, ptr %416, align 1
  %418 = zext i8 %417 to i32
  br label %419

419:                                              ; preds = %414, %406
  %420 = phi i32 [ %418, %414 ], [ 0, %406 ]
  %421 = shl i32 4096, %420
  %422 = load i64, ptr %11, align 8
  %423 = add i32 %421, -1
  %424 = trunc i64 %422 to i32
  %425 = and i32 %423, %424
  %426 = sub i64 %390, %422
  %427 = sub i32 %421, %425
  %428 = zext i32 %427 to i64
  %429 = call i64 @llvm.smin.i64(i64 %426, i64 %428)
  %430 = trunc i64 %429 to i32
  %431 = getelementptr inbounds %struct.page, ptr %410, i32 0, i32 1, i32 0, i32 2
  %432 = load i32, ptr %431, align 4
  %433 = zext i32 %432 to i64
  %434 = shl nuw nsw i64 %433, 12
  %435 = icmp slt i64 %390, %434
  br i1 %435, label %448, label %436

436:                                              ; preds = %419
  %437 = icmp eq i32 %408, 0
  br i1 %437, label %439, label %438

438:                                              ; preds = %436
  call void @folio_mark_accessed(ptr noundef %410) #11
  br label %439

439:                                              ; preds = %438, %436
  br i1 %392, label %441, label %440

440:                                              ; preds = %439
  call void @flush_dcache_folio(ptr noundef %410) #11
  br label %441

441:                                              ; preds = %440, %439
  %442 = call i32 @copy_page_to_iter(ptr noundef %410, i32 noundef %425, i32 noundef %430, ptr noundef %1) #11
  %443 = add i32 %442, %407
  %444 = zext i32 %442 to i64
  %445 = load i64, ptr %11, align 8
  %446 = add i64 %445, %444
  store i64 %446, ptr %11, align 8
  store i64 %446, ptr %44, align 8
  %447 = icmp ult i32 %442, %430
  br i1 %447, label %448, label %401

448:                                              ; preds = %441, %419, %383
  %449 = phi i32 [ %369, %383 ], [ -14, %441 ], [ %369, %419 ]
  %450 = phi i32 [ %47, %383 ], [ %443, %441 ], [ %407, %419 ]
  %451 = load i8, ptr %6, align 4
  br label %452

452:                                              ; preds = %448, %401
  %453 = phi i8 [ %451, %448 ], [ %403, %401 ]
  %454 = phi i32 [ %449, %448 ], [ %369, %401 ]
  %455 = phi i32 [ %450, %448 ], [ %443, %401 ]
  %456 = icmp eq i8 %453, 0
  br i1 %456, label %471, label %457

457:                                              ; preds = %466, %452
  %458 = phi i32 [ %467, %466 ], [ 0, %452 ]
  %459 = getelementptr %struct.folio_batch, ptr %6, i32 0, i32 2, i32 %458
  %460 = load ptr, ptr %459, align 4
  %461 = getelementptr inbounds %struct.page, ptr %460, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %461) #11, !srcloc !16
  %462 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %461, ptr %461, i32 1, ptr elementtype(i32) %461) #11, !srcloc !19
  %463 = extractvalue { i32, i32 } %462, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %457
  call void @__put_page(ptr noundef %460) #11
  br label %466

466:                                              ; preds = %465, %457
  %467 = add nuw nsw i32 %458, 1
  %468 = load i8, ptr %6, align 4
  %469 = zext i8 %468 to i32
  %470 = icmp ult i32 %467, %469
  br i1 %470, label %457, label %471

471:                                              ; preds = %466, %452, %398
  %472 = phi i32 [ %455, %452 ], [ %47, %398 ], [ %455, %466 ]
  %473 = phi i32 [ %454, %452 ], [ %369, %398 ], [ %454, %466 ]
  store i8 0, ptr %6, align 4
  store i8 0, ptr %28, align 1
  %474 = load i32, ptr %19, align 8
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %481, label %476

476:                                              ; preds = %471
  %477 = load i64, ptr %11, align 8
  %478 = icmp slt i64 %477, %380
  %479 = icmp eq i32 %473, 0
  %480 = select i1 %478, i1 %479, i1 false
  br i1 %480, label %46, label %481

481:                                              ; preds = %476, %471, %365, %116, %112, %105, %98, %71
  %482 = phi i32 [ -12, %116 ], [ -11, %112 ], [ -11, %105 ], [ -4, %98 ], [ %473, %471 ], [ %473, %476 ], [ %366, %365 ], [ 0, %71 ]
  %483 = phi i32 [ %47, %116 ], [ %47, %112 ], [ %47, %105 ], [ %47, %98 ], [ %472, %471 ], [ %472, %476 ], [ %47, %365 ], [ %47, %71 ]
  %484 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 7
  %485 = load i32, ptr %484, align 4
  %486 = and i32 %485, 262144
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %481
  %489 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1
  call void @touch_atime(ptr noundef %489) #11
  br label %490

490:                                              ; preds = %488, %481
  %491 = icmp eq i32 %483, 0
  %492 = select i1 %491, i32 %482, i32 %483
  br label %493

493:                                              ; preds = %490, %18, %3
  %494 = phi i32 [ %492, %490 ], [ 0, %3 ], [ 0, %18 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  ret i32 %494
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_folio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_read_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %88, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 131072
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %85, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = and i32 %8, 8
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = zext i32 %4 to i64
  %21 = add nsw i64 %20, -1
  %22 = add i64 %21, %19
  br i1 %17, label %34, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 1, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 100663296
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call zeroext i1 @filemap_range_has_writeback(ptr noundef %14, i64 noundef %19, i64 noundef %22) #11
  br i1 %33, label %88, label %37

34:                                               ; preds = %11
  %35 = tail call i32 @filemap_write_and_wait_range(ptr noundef %14, i64 noundef %19, i64 noundef %22)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %88, label %37

37:                                               ; preds = %34, %32, %27, %23
  %38 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 262144
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %43) #11
  br label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.address_space_operations, ptr %46, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %0, ptr noundef %1) #11
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = zext i32 %49 to i64
  %53 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, ptr %53, align 8
  %56 = sub i32 %4, %49
  br label %59

57:                                               ; preds = %44
  %58 = icmp eq i32 %49, -529
  br i1 %58, label %88, label %59

59:                                               ; preds = %57, %51
  %60 = phi i32 [ %56, %51 ], [ %4, %57 ]
  %61 = load i32, ptr %3, align 8
  %62 = sub i32 %60, %61
  tail call void @iov_iter_revert(ptr noundef %1, i32 noundef %62) #11
  %63 = icmp ne i32 %60, 0
  %64 = select i1 %50, i1 %63, i1 false
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %67 = load i64, ptr %66, align 8
  %68 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 22
  %69 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 13
  br label %70

70:                                               ; preds = %78, %65
  %71 = load volatile i32, ptr %68, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %74, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %75 = load volatile i32, ptr %68, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %74

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %71, %70 ], [ %75, %74 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !62
  %80 = load i64, ptr %69, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !63
  %81 = load volatile i32, ptr %68, align 4
  %82 = icmp eq i32 %81, %79
  br i1 %82, label %83, label %70

83:                                               ; preds = %78
  %84 = icmp slt i64 %67, %80
  br i1 %84, label %85, label %88

85:                                               ; preds = %83, %6
  %86 = phi i32 [ %49, %83 ], [ 0, %6 ]
  %87 = tail call i32 @filemap_read(ptr noundef %0, ptr noundef %1, i32 noundef %86)
  br label %88

88:                                               ; preds = %85, %83, %59, %57, %34, %32, %2
  %89 = phi i32 [ %87, %85 ], [ %49, %83 ], [ 0, %2 ], [ %49, %59 ], [ %35, %34 ], [ -11, %32 ], [ -529, %57 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @mapping_seek_hole_data(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  %8 = lshr i64 %1, 12
  %9 = trunc i64 %8 to i32
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %10, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %12, align 4
  %13 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %14, align 4
  %15 = add i64 %2, 17592186044415
  %16 = lshr i64 %15, 12
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %3, 3
  %19 = icmp sgt i64 %2, %1
  br i1 %19, label %20, label %202

20:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %21 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %22 = zext i1 %18 to i32
  br label %23

23:                                               ; preds = %185, %20
  %24 = phi i64 [ %1, %20 ], [ %168, %185 ]
  br label %25

25:                                               ; preds = %49, %23
  %26 = call ptr @xas_find(ptr noundef nonnull %5, i32 noundef %17) #11
  %27 = ptrtoint ptr %26 to i32
  switch i32 %27, label %28 [
    i32 1030, label %49
    i32 1026, label %48
    i32 0, label %50
  ]

28:                                               ; preds = %25
  %29 = and i32 %27, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !16
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 0, i32 1, ptr elementtype(i32) %32) #11, !srcloc !56
  %34 = extractvalue { i32, i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %37 = load ptr, ptr %12, align 4
  %38 = icmp eq ptr %37, null
  %39 = load i8, ptr %11, align 2
  %40 = zext i8 %39 to i32
  %41 = getelementptr %struct.xa_node, ptr %37, i32 0, i32 7, i32 %40
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr inbounds %struct.xarray, ptr %42, i32 0, i32 2
  %44 = select i1 %38, ptr %43, ptr %41
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %26, %45
  br i1 %46, label %50, label %47, !prof !10

47:                                               ; preds = %36
  call fastcc void @folio_put(ptr noundef nonnull %26) #11
  br label %48

48:                                               ; preds = %47, %31, %25
  store ptr inttoptr (i32 3 to ptr), ptr %12, align 4
  br label %49

49:                                               ; preds = %48, %25
  br label %25

50:                                               ; preds = %36, %28, %25
  %51 = ptrtoint ptr %26 to i32
  %52 = icmp eq ptr %26, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = select i1 %18, i64 -6, i64 %24
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %199

55:                                               ; preds = %50
  %56 = load i32, ptr %7, align 4
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 12
  %59 = icmp sge i64 %24, %58
  %60 = or i1 %18, %59
  %61 = call i64 @llvm.smax.i64(i64 %24, i64 %58)
  br i1 %60, label %63, label %62

62:                                               ; preds = %55
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %188

63:                                               ; preds = %55
  %64 = and i32 %51, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load volatile i32, ptr %26, align 4
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.page, ptr %26, i32 1, i32 1
  %72 = getelementptr inbounds %struct.anon.6, ptr %71, i32 0, i32 2
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %74, %70 ], [ 0, %66 ]
  %77 = shl i32 4096, %76
  br label %78

78:                                               ; preds = %75, %63
  %79 = phi i32 [ %77, %75 ], [ 4096, %63 ]
  %80 = add i32 %79, -1
  %81 = zext i32 %80 to i64
  %82 = or i64 %58, %81
  %83 = add nuw nsw i64 %82, 1
  %84 = load ptr, ptr %21, align 4
  %85 = load ptr, ptr %0, align 4
  %86 = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 19
  %87 = load i8, ptr %86, align 2
  %88 = zext i8 %87 to i32
  %89 = shl nuw i32 1, %88
  br i1 %65, label %90, label %95

90:                                               ; preds = %78
  %91 = load volatile i32, ptr %26, align 4
  %92 = and i32 %91, 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %95

95:                                               ; preds = %94, %78
  %96 = select i1 %18, i64 %61, i64 %83
  br label %167

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.address_space_operations, ptr %84, i32 0, i32 17
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = select i1 %18, i64 %83, i64 %61
  br label %167

103:                                              ; preds = %97
  call void @xas_pause(ptr noundef nonnull %5) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %104 = load volatile i32, ptr %26, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #11, !srcloc !16
  %108 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #11, !srcloc !58
  %109 = extractvalue { i32, i32, i32 } %108, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %107, %103
  %113 = call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %26, i32 noundef 0, i32 noundef 2, i32 noundef 0) #11
  br label %114

114:                                              ; preds = %112, %107
  %115 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %0
  br i1 %117, label %118, label %159, !prof !10

118:                                              ; preds = %114
  %119 = trunc i64 %61 to i32
  %120 = load volatile i32, ptr %26, align 4
  %121 = and i32 %120, 65536
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = getelementptr %struct.page, ptr %26, i32 1, i32 1
  %125 = getelementptr inbounds %struct.anon.6, ptr %124, i32 0, i32 2
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i32 [ %127, %123 ], [ 0, %118 ]
  %130 = shl i32 4096, %129
  %131 = add i32 %130, -1
  %132 = sub i32 0, %89
  %133 = and i32 %132, %119
  %134 = and i32 %133, %131
  %135 = zext i32 %89 to i64
  %136 = zext i32 %132 to i64
  %137 = getelementptr %struct.page, ptr %26, i32 1, i32 1
  %138 = getelementptr inbounds %struct.anon.6, ptr %137, i32 0, i32 2
  br label %139

139:                                              ; preds = %155, %128
  %140 = phi i64 [ %61, %128 ], [ %147, %155 ]
  %141 = phi i32 [ %134, %128 ], [ %148, %155 ]
  %142 = load ptr, ptr %98, align 4
  %143 = call i32 %142(ptr noundef nonnull %26, i32 noundef %141, i32 noundef %89) #11
  %144 = icmp eq i32 %143, %22
  br i1 %144, label %159, label %145

145:                                              ; preds = %139
  %146 = add i64 %140, %135
  %147 = and i64 %146, %136
  %148 = add i32 %141, %89
  %149 = load volatile i32, ptr %26, align 4
  %150 = and i32 %149, 65536
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %145
  %153 = load i8, ptr %138, align 1
  %154 = zext i8 %153 to i32
  br label %155

155:                                              ; preds = %152, %145
  %156 = phi i32 [ %154, %152 ], [ 0, %145 ]
  %157 = shl i32 4096, %156
  %158 = icmp ult i32 %148, %157
  br i1 %158, label %139, label %159

159:                                              ; preds = %155, %139, %114
  %160 = phi i64 [ %61, %114 ], [ %140, %139 ], [ %147, %155 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %26) #11, !srcloc !16
  %161 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %26, ptr nonnull %26, i32 1, ptr nonnull elementtype(i32) %26) #11, !srcloc !49
  %162 = extractvalue { i32, i32, i32 } %161, 0
  %163 = and i32 %162, 128
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  call fastcc void @folio_wake_bit(ptr noundef nonnull %26, i32 noundef 0) #11
  br label %166

166:                                              ; preds = %165, %159
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %167

167:                                              ; preds = %166, %101, %95
  %168 = phi i64 [ %96, %95 ], [ %160, %166 ], [ %102, %101 ]
  %169 = icmp sgt i64 %168, %82
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br label %188

171:                                              ; preds = %167
  %172 = icmp slt i64 %168, %2
  br i1 %172, label %173, label %186

173:                                              ; preds = %171
  %174 = icmp ugt i32 %79, 4096
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = lshr exact i64 %83, 12
  %177 = trunc i64 %176 to i32
  store i32 %177, ptr %7, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %12, align 4
  br label %178

178:                                              ; preds = %175, %173
  br i1 %65, label %179, label %185

179:                                              ; preds = %178
  %180 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %180) #11, !srcloc !16
  %181 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %180, ptr %180, i32 1, ptr elementtype(i32) %180) #11, !srcloc !19
  %182 = extractvalue { i32, i32 } %181, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  call void @__put_page(ptr noundef nonnull %26) #11
  br label %185

185:                                              ; preds = %184, %179, %178
  br label %23

186:                                              ; preds = %171
  %187 = select i1 %18, i64 -6, i64 %168
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  br i1 %52, label %199, label %188

188:                                              ; preds = %186, %170, %62
  %189 = phi i64 [ %24, %62 ], [ %168, %170 ], [ %187, %186 ]
  %190 = ptrtoint ptr %26 to i32
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %194) #11, !srcloc !16
  %195 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %194, ptr %194, i32 1, ptr elementtype(i32) %194) #11, !srcloc !19
  %196 = extractvalue { i32, i32 } %195, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  call void @__put_page(ptr noundef nonnull %26) #11
  br label %199

199:                                              ; preds = %198, %193, %188, %186, %53
  %200 = phi i64 [ %189, %198 ], [ %189, %193 ], [ %189, %188 ], [ %187, %186 ], [ %54, %53 ]
  %201 = call i64 @llvm.smin.i64(i64 %200, i64 %2)
  br label %202

202:                                              ; preds = %199, %4
  %203 = phi i64 [ -6, %4 ], [ %201, %199 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret i64 %203
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_fault(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.readahead_control, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.anon.13, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %12 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  br label %13

13:                                               ; preds = %21, %1
  %14 = load volatile i32, ptr %11, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %18 = load volatile i32, ptr %11, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %14, %13 ], [ %18, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !62
  %23 = load i64, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !63
  %24 = load volatile i32, ptr %11, align 4
  %25 = icmp eq i32 %24, %22
  br i1 %25, label %26, label %13

26:                                               ; preds = %21
  %27 = add i64 %23, 4095
  %28 = sdiv i64 %27, 4096
  %29 = trunc i64 %28 to i32
  %30 = icmp ult i32 %10, %29
  br i1 %30, label %31, label %269, !prof !10

31:                                               ; preds = %26
  %32 = tail call ptr @__filemap_get_folio(ptr noundef %7, i32 noundef %10, i32 noundef 0, i32 noundef 0) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %102, label %34, !prof !11

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %94

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 4
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %40, i32 0, i32 14
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  store ptr %42, ptr %2, align 4
  %44 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 17
  %46 = load ptr, ptr %45, align 8
  store ptr %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 2
  store ptr %43, ptr %47, align 4
  %48 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 3
  %49 = load i32, ptr %9, align 4
  store i32 %49, ptr %48, align 4
  %50 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 4
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 5
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.vm_area_struct, ptr %40, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 65536
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %92

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 13, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %92, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 13, i32 4
  %62 = load volatile i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = add i32 %62, -1
  store volatile i32 %65, ptr %61, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = load volatile i32, ptr %32, align 4
  %68 = and i32 %67, 262144
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %92, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %35, align 4
  %72 = and i32 %71, 44
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load ptr, ptr %0, align 4
  %76 = getelementptr inbounds %struct.vm_area_struct, ptr %75, i32 0, i32 14
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.file, ptr %77, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %78) #11, !srcloc !16
  %79 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %78, ptr %78, i32 1, ptr elementtype(i32) %78) #11, !srcloc !35
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.vm_area_struct, ptr %80, i32 0, i32 6
  %82 = load ptr, ptr %81, align 4
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  tail call void @__mmap_lock_do_trace_released(ptr noundef %82, i1 noundef zeroext false) #11
  br label %86

86:                                               ; preds = %85, %74
  %87 = getelementptr inbounds %struct.anon.10, ptr %82, i32 0, i32 15
  tail call void @up_read(ptr noundef %87) #11
  %88 = load i32, ptr %57, align 4
  br label %89

89:                                               ; preds = %86, %70
  %90 = phi i32 [ %88, %86 ], [ %58, %70 ]
  %91 = phi ptr [ %77, %86 ], [ null, %70 ]
  call void @page_cache_async_ra(ptr noundef nonnull %2, ptr noundef nonnull %32, i32 noundef %90) #11
  br label %92

92:                                               ; preds = %89, %66, %56, %39
  %93 = phi ptr [ null, %56 ], [ null, %39 ], [ %91, %89 ], [ null, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  br label %94

94:                                               ; preds = %92, %34
  %95 = phi ptr [ %93, %92 ], [ null, %34 ]
  %96 = load volatile i32, ptr %32, align 4
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %127

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 2
  call void @down_read(ptr noundef %101) #11
  br label %127

102:                                              ; preds = %31
  %103 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %104 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %105 = inttoptr i32 %104 to ptr
  %106 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %105) #8, !srcloc !12
  %107 = add i32 %106, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 21) to i32)
  %108 = inttoptr i32 %107 to ptr
  %109 = load i32, ptr %108, align 4
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %103) #11, !srcloc !65
  %111 = tail call fastcc ptr @do_sync_mmap_readahead(ptr noundef %0)
  br label %112

112:                                              ; preds = %247, %247, %197, %191, %102
  %113 = phi ptr [ %111, %102 ], [ null, %247 ], [ null, %247 ], [ %187, %197 ], [ %187, %191 ]
  %114 = phi i32 [ 4, %102 ], [ %130, %247 ], [ %130, %247 ], [ %130, %197 ], [ %130, %191 ]
  %115 = phi i1 [ false, %102 ], [ true, %247 ], [ true, %247 ], [ false, %197 ], [ %131, %191 ]
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 2
  call void @down_read(ptr noundef %117) #11
  br label %118

118:                                              ; preds = %116, %112
  %119 = getelementptr inbounds %struct.anon.13, ptr %0, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = call ptr @__filemap_get_folio(ptr noundef %7, i32 noundef %10, i32 noundef 68, i32 noundef %120)
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = icmp eq ptr %113, null
  br i1 %124, label %125, label %258

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 2
  call void @up_read(ptr noundef %126) #11
  br label %269

127:                                              ; preds = %118, %100, %99
  %128 = phi ptr [ %113, %118 ], [ %95, %100 ], [ %95, %99 ]
  %129 = phi ptr [ %121, %118 ], [ %32, %100 ], [ %32, %99 ]
  %130 = phi i32 [ %114, %118 ], [ 0, %100 ], [ 0, %99 ]
  %131 = phi i1 [ true, %118 ], [ true, %100 ], [ false, %99 ]
  %132 = load volatile i32, ptr %129, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %129) #11, !srcloc !16
  %136 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %129, ptr nonnull %129, i32 1, ptr nonnull elementtype(i32) %129) #11, !srcloc !58
  %137 = extractvalue { i32, i32, i32 } %136, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %186, label %140

140:                                              ; preds = %135, %127
  %141 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %250

145:                                              ; preds = %140
  %146 = icmp eq ptr %128, null
  br i1 %146, label %147, label %165

147:                                              ; preds = %145
  %148 = and i32 %142, 44
  %149 = icmp eq i32 %148, 4
  br i1 %149, label %150, label %165

150:                                              ; preds = %147
  %151 = load ptr, ptr %0, align 4
  %152 = getelementptr inbounds %struct.vm_area_struct, ptr %151, i32 0, i32 14
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.file, ptr %153, i32 0, i32 6
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %154) #11, !srcloc !16
  %155 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %154, ptr %154, i32 1, ptr elementtype(i32) %154) #11, !srcloc !35
  %156 = load ptr, ptr %0, align 4
  %157 = getelementptr inbounds %struct.vm_area_struct, ptr %156, i32 0, i32 6
  %158 = load ptr, ptr %157, align 4
  %159 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  call void @__mmap_lock_do_trace_released(ptr noundef %158, i1 noundef zeroext false) #11
  br label %162

162:                                              ; preds = %161, %150
  %163 = getelementptr inbounds %struct.anon.10, ptr %158, i32 0, i32 15
  call void @up_read(ptr noundef %163) #11
  %164 = load i32, ptr %141, align 4
  br label %165

165:                                              ; preds = %162, %147, %145
  %166 = phi i32 [ %142, %145 ], [ %164, %162 ], [ %142, %147 ]
  %167 = phi ptr [ %128, %145 ], [ %153, %162 ], [ null, %147 ]
  %168 = and i32 %166, 16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %165
  %171 = call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %129, i32 noundef 0, i32 noundef 258, i32 noundef 0) #11
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %186, label %173

173:                                              ; preds = %170
  %174 = icmp eq ptr %167, null
  br i1 %174, label %175, label %250

175:                                              ; preds = %173
  %176 = load ptr, ptr %0, align 4
  %177 = getelementptr inbounds %struct.vm_area_struct, ptr %176, i32 0, i32 6
  %178 = load ptr, ptr %177, align 4
  %179 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  call void @__mmap_lock_do_trace_released(ptr noundef %178, i1 noundef zeroext false) #11
  br label %182

182:                                              ; preds = %181, %175
  %183 = getelementptr inbounds %struct.anon.10, ptr %178, i32 0, i32 15
  call void @up_read(ptr noundef %183) #11
  br label %250

184:                                              ; preds = %165
  %185 = call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %129, i32 noundef 0, i32 noundef 2, i32 noundef 0) #11
  br label %186

186:                                              ; preds = %184, %170, %135
  %187 = phi ptr [ %128, %135 ], [ %167, %184 ], [ %167, %170 ]
  %188 = getelementptr inbounds %struct.anon, ptr %129, i32 0, i32 2
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, %7
  br i1 %190, label %192, label %191, !prof !10

191:                                              ; preds = %186
  call void @folio_unlock(ptr noundef nonnull %129)
  call fastcc void @folio_put(ptr noundef nonnull %129)
  br label %112

192:                                              ; preds = %186
  %193 = load volatile i32, ptr %129, align 4
  %194 = and i32 %193, 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  br i1 %131, label %243, label %197

197:                                              ; preds = %196
  call void @folio_unlock(ptr noundef nonnull %129)
  call fastcc void @folio_put(ptr noundef nonnull %129)
  br label %112

198:                                              ; preds = %192
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  %199 = icmp eq ptr %187, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %198
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %129) #11, !srcloc !16
  %201 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %129, ptr nonnull %129, i32 1, ptr nonnull elementtype(i32) %129) #11, !srcloc !49
  %202 = extractvalue { i32, i32, i32 } %201, 0
  %203 = and i32 %202, 128
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %250, label %205

205:                                              ; preds = %200
  call fastcc void @folio_wake_bit(ptr noundef nonnull %129, i32 noundef 0) #11
  br label %250

206:                                              ; preds = %198
  br i1 %131, label %207, label %209

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 2
  call void @up_read(ptr noundef %208) #11
  br label %209

209:                                              ; preds = %207, %206
  br label %210

210:                                              ; preds = %218, %209
  %211 = load volatile i32, ptr %11, align 4
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %214, %210
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !60
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %215 = load volatile i32, ptr %11, align 4
  %216 = and i32 %215, 1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %214

218:                                              ; preds = %214, %210
  %219 = phi i32 [ %211, %210 ], [ %215, %214 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !62
  %220 = load i64, ptr %12, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !63
  %221 = load volatile i32, ptr %11, align 4
  %222 = icmp eq i32 %221, %219
  br i1 %222, label %223, label %210

223:                                              ; preds = %218
  %224 = add i64 %220, 4095
  %225 = sdiv i64 %224, 4096
  %226 = trunc i64 %225 to i32
  %227 = icmp ult i32 %10, %226
  br i1 %227, label %229, label %228, !prof !10

228:                                              ; preds = %223
  call void @folio_unlock(ptr noundef %129)
  call fastcc void @folio_put(ptr noundef %129)
  br label %269

229:                                              ; preds = %223
  %230 = load volatile i32, ptr %129, align 4
  %231 = and i32 %230, 65536
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = getelementptr %struct.page, ptr %129, i32 1, i32 1, i32 0, i32 2
  %235 = load i32, ptr %234, align 4
  %236 = add i32 %235, -1
  br label %237

237:                                              ; preds = %233, %229
  %238 = phi i32 [ %236, %233 ], [ 0, %229 ]
  %239 = and i32 %238, %10
  %240 = getelementptr %struct.page, ptr %129, i32 %239
  %241 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %240, ptr %241, align 4
  %242 = or i32 %130, 512
  br label %269

243:                                              ; preds = %196
  %244 = call fastcc ptr @maybe_unlock_mmap_for_io(ptr noundef %0, ptr noundef %187)
  %245 = call fastcc i32 @filemap_read_folio(ptr noundef %5, ptr noundef %7, ptr noundef nonnull %129)
  %246 = icmp eq ptr %244, null
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  call fastcc void @folio_put(ptr noundef nonnull %129)
  switch i32 %245, label %248 [
    i32 524289, label %112
    i32 0, label %112
  ]

248:                                              ; preds = %247
  %249 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 2
  call void @up_read(ptr noundef %249) #11
  br label %269

250:                                              ; preds = %243, %205, %200, %182, %173, %140
  %251 = phi ptr [ %187, %205 ], [ %187, %200 ], [ %244, %243 ], [ %128, %140 ], [ %167, %173 ], [ null, %182 ]
  %252 = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %252) #11, !srcloc !16
  %253 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %252, ptr %252, i32 1, ptr elementtype(i32) %252) #11, !srcloc !19
  %254 = extractvalue { i32, i32 } %253, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  call void @__put_page(ptr noundef nonnull %129) #11
  br i1 %131, label %258, label %262

257:                                              ; preds = %250
  br i1 %131, label %258, label %262

258:                                              ; preds = %257, %256, %123
  %259 = phi ptr [ %251, %257 ], [ %251, %256 ], [ %113, %123 ]
  %260 = phi i32 [ %130, %257 ], [ %130, %256 ], [ %114, %123 ]
  %261 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 2
  call void @up_read(ptr noundef %261) #11
  br label %262

262:                                              ; preds = %258, %257, %256
  %263 = phi ptr [ %259, %258 ], [ %251, %257 ], [ %251, %256 ]
  %264 = phi i32 [ %260, %258 ], [ %130, %257 ], [ %130, %256 ]
  %265 = icmp eq ptr %263, null
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  call void @fput(ptr noundef nonnull %263) #11
  br label %267

267:                                              ; preds = %266, %262
  %268 = or i32 %264, 1024
  br label %269

269:                                              ; preds = %267, %248, %237, %228, %125, %26
  %270 = phi i32 [ %268, %267 ], [ 1, %125 ], [ 2, %248 ], [ 2, %228 ], [ %242, %237 ], [ 2, %26 ]
  ret i32 %270
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @do_sync_mmap_readahead(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.readahead_control, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 13
  %7 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  store ptr %5, ptr %2, align 4
  %9 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 2
  store ptr %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 3
  %12 = getelementptr inbounds %struct.anon.13, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 4
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.readahead_control, ptr %2, i32 0, i32 5
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 13, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %84, label %24

24:                                               ; preds = %20
  %25 = and i32 %17, 32768
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 44
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #11, !srcloc !16
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #11, !srcloc !35
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  tail call void @__mmap_lock_do_trace_released(ptr noundef %37, i1 noundef zeroext false) #11
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr inbounds %struct.anon.10, ptr %37, i32 0, i32 15
  tail call void @up_read(ptr noundef %42) #11
  %43 = load i32, ptr %21, align 4
  br label %44

44:                                               ; preds = %41, %27
  %45 = phi i32 [ %43, %41 ], [ %22, %27 ]
  %46 = phi ptr [ %5, %41 ], [ null, %27 ]
  call void @page_cache_sync_ra(ptr noundef nonnull %2, i32 noundef %45) #11
  br label %84

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 13, i32 4
  %49 = load volatile i32, ptr %48, align 8
  %50 = icmp ult i32 %49, 1000
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = add nuw nsw i32 %49, 1
  store volatile i32 %52, ptr %48, align 8
  %53 = icmp ugt i32 %49, 99
  br i1 %53, label %84, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 44
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load ptr, ptr %0, align 4
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %60, i32 0, i32 14
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.file, ptr %62, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #11, !srcloc !16
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #11, !srcloc !35
  %65 = load ptr, ptr %0, align 4
  %66 = getelementptr inbounds %struct.vm_area_struct, ptr %65, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %59
  tail call void @__mmap_lock_do_trace_released(ptr noundef %67, i1 noundef zeroext false) #11
  br label %71

71:                                               ; preds = %70, %59
  %72 = getelementptr inbounds %struct.anon.10, ptr %67, i32 0, i32 15
  tail call void @up_read(ptr noundef %72) #11
  %73 = load i32, ptr %21, align 4
  br label %74

74:                                               ; preds = %71, %54
  %75 = phi i32 [ %73, %71 ], [ %22, %54 ]
  %76 = phi ptr [ %62, %71 ], [ null, %54 ]
  %77 = load i32, ptr %12, align 4
  %78 = lshr i32 %75, 1
  %79 = sub i32 %77, %78
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 0)
  store i32 %80, ptr %6, align 8
  %81 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 13, i32 1
  store i32 %75, ptr %81, align 4
  %82 = lshr i32 %75, 2
  %83 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 13, i32 2
  store i32 %82, ptr %83, align 8
  store i32 %80, ptr %11, align 4
  call void @do_page_cache_ra(ptr noundef nonnull %2, i32 noundef %75, i32 noundef %82) #11
  br label %84

84:                                               ; preds = %74, %51, %47, %44, %20, %1
  %85 = phi ptr [ %46, %44 ], [ %76, %74 ], [ null, %1 ], [ null, %20 ], [ null, %51 ], [ null, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret ptr %85
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @maybe_unlock_mmap_for_io(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %23

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 44
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #11, !srcloc !16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #11, !srcloc !35
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void @__mmap_lock_do_trace_released(ptr noundef %17, i1 noundef zeroext false) #11
  br label %21

21:                                               ; preds = %20, %9
  %22 = getelementptr inbounds %struct.anon.10, ptr %17, i32 0, i32 15
  tail call void @up_read(ptr noundef %22) #11
  br label %23

23:                                               ; preds = %21, %4, %2
  %24 = phi ptr [ %1, %2 ], [ %12, %21 ], [ null, %4 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @filemap_read_folio(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.address_space_operations, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, ptr noundef %2) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = load volatile i32, ptr %2, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %2, i32 noundef 0, i32 noundef 258, i32 noundef 1) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14, %10
  %18 = load volatile i32, ptr %2, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 13, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 2
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %21, %14, %3
  %27 = phi i32 [ -5, %22 ], [ %8, %3 ], [ %15, %14 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_map_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.xa_state, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 1
  store ptr %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %12, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %14, align 4
  %15 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 13, i32 4
  %18 = load volatile i32, ptr %17, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %19 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %2) #11
  %20 = call fastcc ptr @next_uptodate_page(ptr noundef %19, ptr noundef %9, ptr noundef nonnull %4, i32 noundef %2) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %211, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 9
  call void @pmd_install(ptr noundef %30, ptr noundef %24, ptr noundef %31) #11
  %32 = load ptr, ptr %23, align 4
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %27, %22
  %35 = phi i32 [ %25, %22 ], [ %33, %27 ]
  %36 = load i32, ptr %5, align 4
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %5, i32 0, i32 13
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 %1, %38
  %40 = shl i32 %39, 12
  %41 = add i32 %40, %36
  %42 = load ptr, ptr @mem_map, align 4
  %43 = lshr i32 %35, 12
  %44 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %45 = sub i32 %43, %44
  %46 = getelementptr %struct.page, ptr %42, i32 %45, i32 1, i32 0, i32 3
  %47 = getelementptr %struct.page, ptr %42, i32 %45
  %48 = load i32, ptr @pgprot_kernel, align 4
  %49 = or i32 %48, 512
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !66
  %50 = tail call ptr @llvm.thread.pointer() #11
  %51 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 149
  %52 = load i32, ptr %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, ptr %51, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !67
  %54 = call ptr @__kmap_local_page_prot(ptr noundef %47, i32 noundef %49) #11
  %55 = lshr i32 %41, 12
  %56 = and i32 %55, 511
  %57 = getelementptr i32, ptr %54, i32 %56
  %58 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 8
  store ptr %46, ptr %58, align 4
  call void @_raw_spin_lock(ptr noundef %46) #11
  %59 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 7
  store ptr %57, ptr %59, align 4
  %60 = getelementptr inbounds %struct.anon.13, ptr %0, i32 0, i32 3
  br label %61

61:                                               ; preds = %200, %34
  %62 = phi i32 [ %41, %34 ], [ %94, %200 ]
  %63 = phi ptr [ %20, %34 ], [ %202, %200 ]
  %64 = phi i32 [ %18, %34 ], [ %91, %200 ]
  %65 = phi i32 [ %1, %34 ], [ %77, %200 ]
  %66 = phi i32 [ 0, %34 ], [ %164, %200 ]
  %67 = getelementptr %struct.page, ptr %63, i32 1, i32 1, i32 0, i32 2
  %68 = getelementptr inbounds %struct.anon, ptr %63, i32 0, i32 3
  %69 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  br label %70

70:                                               ; preds = %123, %61
  %71 = phi i32 [ %94, %123 ], [ %62, %61 ]
  %72 = phi i32 [ %91, %123 ], [ %64, %61 ]
  %73 = phi i32 [ %77, %123 ], [ %65, %61 ]
  %74 = phi i32 [ %104, %123 ], [ %66, %61 ]
  %75 = load i32, ptr %11, align 4
  br label %76

76:                                               ; preds = %150, %70
  %77 = phi i32 [ %151, %150 ], [ %75, %70 ]
  %78 = phi i32 [ %94, %150 ], [ %71, %70 ]
  %79 = phi i32 [ %91, %150 ], [ %72, %70 ]
  %80 = phi i32 [ %77, %150 ], [ %73, %70 ]
  %81 = load volatile i32, ptr %63, align 4
  %82 = and i32 %81, 65536
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load i32, ptr %67, align 4
  %86 = add i32 %85, -1
  br label %87

87:                                               ; preds = %84, %76
  %88 = phi i32 [ %86, %84 ], [ 0, %76 ]
  %89 = icmp eq i32 %79, 0
  %90 = add i32 %79, -1
  %91 = select i1 %89, i32 0, i32 %90
  %92 = sub i32 %77, %80
  %93 = shl i32 %92, 12
  %94 = add i32 %93, %78
  %95 = load ptr, ptr %59, align 4
  %96 = getelementptr i32, ptr %95, i32 %92
  store ptr %96, ptr %59, align 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %87
  %100 = and i32 %88, %77
  %101 = getelementptr %struct.page, ptr %63, i32 %100
  %102 = load i32, ptr %60, align 4
  %103 = icmp eq i32 %102, %94
  %104 = select i1 %103, i32 256, i32 %74
  call void @do_set_pte(ptr noundef %0, ptr noundef %101, i32 noundef %94) #11
  %105 = load i32, ptr %11, align 4
  %106 = load volatile i32, ptr %63, align 4
  %107 = and i32 %106, 65536
  %108 = icmp ne i32 %107, 0
  %109 = icmp ult i32 %105, %2
  %110 = and i1 %109, %108
  br i1 %110, label %111, label %126

111:                                              ; preds = %99
  %112 = load i32, ptr %68, align 4
  %113 = load volatile i32, ptr %63, align 4
  %114 = and i32 %113, 65536
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111
  %117 = load i32, ptr %67, align 4
  br label %118

118:                                              ; preds = %116, %111
  %119 = phi i32 [ %117, %116 ], [ 1, %111 ]
  %120 = add i32 %112, -1
  %121 = add i32 %120, %119
  %122 = icmp ugt i32 %121, %105
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = add nuw i32 %105, 1
  store i32 %124, ptr %11, align 4
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #11, !srcloc !16
  %125 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #11, !srcloc !35
  br label %70

126:                                              ; preds = %118, %99
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #11, !srcloc !16
  %127 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #11, !srcloc !49
  %128 = extractvalue { i32, i32, i32 } %127, 0
  %129 = and i32 %128, 128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %163, label %131

131:                                              ; preds = %126
  call fastcc void @folio_wake_bit(ptr noundef %63, i32 noundef 0) #11
  br label %163

132:                                              ; preds = %87
  %133 = load volatile i32, ptr %63, align 4
  %134 = and i32 %133, 65536
  %135 = icmp ne i32 %134, 0
  %136 = icmp ult i32 %77, %2
  %137 = and i1 %136, %135
  br i1 %137, label %138, label %152

138:                                              ; preds = %132
  %139 = load i32, ptr %68, align 4
  %140 = load volatile i32, ptr %63, align 4
  %141 = and i32 %140, 65536
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %138
  %144 = load i32, ptr %67, align 4
  br label %145

145:                                              ; preds = %143, %138
  %146 = phi i32 [ %144, %143 ], [ 1, %138 ]
  %147 = add i32 %139, -1
  %148 = add i32 %147, %146
  %149 = icmp ugt i32 %148, %77
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = add nuw i32 %77, 1
  store i32 %151, ptr %11, align 4
  br label %76

152:                                              ; preds = %145, %132
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %63) #11, !srcloc !16
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %63, ptr %63, i32 1, ptr elementtype(i32) %63) #11, !srcloc !49
  %154 = extractvalue { i32, i32, i32 } %153, 0
  %155 = and i32 %154, 128
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  call fastcc void @folio_wake_bit(ptr noundef %63, i32 noundef 0) #11
  br label %158

158:                                              ; preds = %157, %152
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %69) #11, !srcloc !16
  %159 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %69, ptr %69, i32 1, ptr elementtype(i32) %69) #11, !srcloc !19
  %160 = extractvalue { i32, i32 } %159, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  call void @__put_page(ptr noundef %63) #11
  br label %163

163:                                              ; preds = %162, %158, %131, %126
  %164 = phi i32 [ %104, %126 ], [ %104, %131 ], [ %74, %158 ], [ %74, %162 ]
  %165 = load ptr, ptr %14, align 4
  %166 = ptrtoint ptr %165 to i32
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  %169 = icmp eq ptr %165, null
  %170 = or i1 %169, %168
  br i1 %170, label %198, label %171, !prof !11

171:                                              ; preds = %163
  %172 = load i8, ptr %165, align 4
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %198, !prof !10

174:                                              ; preds = %171
  %175 = load i8, ptr %13, align 2
  %176 = zext i8 %175 to i32
  %177 = load i32, ptr %11, align 4
  %178 = and i32 %177, 63
  %179 = icmp eq i32 %178, %176
  br i1 %179, label %180, label %198, !prof !10

180:                                              ; preds = %194, %174
  %181 = phi i8 [ %195, %194 ], [ %175, %174 ]
  %182 = phi i32 [ %196, %194 ], [ %177, %174 ]
  %183 = icmp uge i32 %182, %2
  %184 = icmp eq i8 %181, 63
  %185 = select i1 %183, i1 true, i1 %184
  br i1 %185, label %198, label %186, !prof !28

186:                                              ; preds = %180
  %187 = zext i8 %181 to i32
  %188 = add nuw nsw i32 %187, 1
  %189 = getelementptr %struct.xa_node, ptr %165, i32 0, i32 7, i32 %188
  %190 = load volatile ptr, ptr %189, align 4
  %191 = ptrtoint ptr %190 to i32
  %192 = and i32 %191, 3
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %198, label %194, !prof !11

194:                                              ; preds = %186
  %195 = add i8 %181, 1
  store i8 %195, ptr %13, align 2
  %196 = add nuw i32 %182, 1
  store i32 %196, ptr %11, align 4
  %197 = icmp eq ptr %190, null
  br i1 %197, label %180, label %200

198:                                              ; preds = %186, %180, %174, %171, %163
  %199 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %2) #11
  br label %200

200:                                              ; preds = %198, %194
  %201 = phi ptr [ %199, %198 ], [ %190, %194 ]
  %202 = call fastcc ptr @next_uptodate_page(ptr noundef %201, ptr noundef %9, ptr noundef nonnull %4, i32 noundef %2) #11
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %61

204:                                              ; preds = %200
  %205 = load ptr, ptr %58, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !22
  %206 = load i16, ptr %205, align 4
  %207 = add i16 %206, 1
  store i16 %207, ptr %205, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !27
  %208 = load ptr, ptr %59, align 4
  call void @kunmap_local_indexed(ptr noundef %208) #11
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !40
  %209 = load i32, ptr %51, align 8
  %210 = add i32 %209, -1
  store i32 %210, ptr %51, align 8
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !41
  br label %211

211:                                              ; preds = %204, %3
  %212 = phi i32 [ %91, %204 ], [ %18, %3 ]
  %213 = phi i32 [ %164, %204 ], [ 0, %3 ]
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  store volatile i32 %212, ptr %17, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %213
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_set_pte(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filemap_page_mkwrite(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !10

13:                                               ; preds = %1
  %14 = add i32 %10, -1
  br label %17

15:                                               ; preds = %1
  %16 = ptrtoint ptr %8 to i32
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %6, align 4
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.super_block, ptr %22, i32 0, i32 26, i32 2, i32 1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38, !prof !10

26:                                               ; preds = %17
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %28 = getelementptr %struct.super_block, ptr %22, i32 0, i32 26, i32 2, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %32 = inttoptr i32 %31 to ptr
  %33 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %32) #8, !srcloc !12
  %34 = add i32 %33, %30
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #11, !srcloc !65
  br label %40

38:                                               ; preds = %17
  %39 = tail call zeroext i1 @__percpu_down_read(ptr noundef %23, i1 noundef zeroext false) #11
  br label %40

40:                                               ; preds = %38, %26
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 14
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @file_update_time(ptr noundef %43) #11
  %45 = load volatile i32, ptr %19, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #11, !srcloc !16
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #11, !srcloc !58
  %50 = extractvalue { i32, i32, i32 } %49, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48, %40
  %54 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef %19, i32 noundef 0, i32 noundef 2, i32 noundef 0) #11
  br label %55

55:                                               ; preds = %53, %48
  %56 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %6
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #11, !srcloc !16
  %60 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #11, !srcloc !49
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = and i32 %61, 128
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  tail call fastcc void @folio_wake_bit(ptr noundef %19, i32 noundef 0) #11
  br label %67

65:                                               ; preds = %55
  %66 = tail call zeroext i1 @folio_mark_dirty(ptr noundef %19) #11
  tail call void @folio_wait_stable(ptr noundef %19) #11
  br label %67

67:                                               ; preds = %65, %64, %59
  %68 = phi i32 [ 512, %65 ], [ 256, %59 ], [ 256, %64 ]
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.inode, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr %struct.super_block, ptr %71, i32 0, i32 26, i32 2, i32 1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %73 = load volatile i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %87, !prof !10

75:                                               ; preds = %67
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %77 = getelementptr %struct.super_block, ptr %71, i32 0, i32 26, i32 2, i32 1, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #8, !srcloc !12
  %83 = add i32 %82, %79
  %84 = inttoptr i32 %83 to ptr
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, -1
  store i32 %86, ptr %84, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #11, !srcloc !65
  br label %101

87:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !71
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !64
  %89 = getelementptr %struct.super_block, ptr %71, i32 0, i32 26, i32 2, i32 1, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %93 = inttoptr i32 %92 to ptr
  %94 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %93) #8, !srcloc !12
  %95 = add i32 %94, %91
  %96 = inttoptr i32 %95 to ptr
  %97 = load i32, ptr %96, align 4
  %98 = add i32 %97, -1
  store i32 %98, ptr %96, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #11, !srcloc !65
  %99 = getelementptr %struct.super_block, ptr %71, i32 0, i32 26, i32 2, i32 1, i32 2
  %100 = tail call i32 @rcuwait_wake_up(ptr noundef %99) #11
  br label %101

101:                                              ; preds = %87, %75
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_update_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_mmap(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.address_space_operations, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %16) #11
  br label %17

17:                                               ; preds = %15, %10
  %18 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @generic_file_vm_ops, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %2
  %20 = phi i32 [ 0, %17 ], [ -8, %2 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_readonly_mmap(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 40
  %6 = icmp eq i32 %5, 40
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.address_space_operations, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 262144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  tail call void @touch_atime(ptr noundef %21) #11
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  store ptr @generic_file_vm_ops, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %7, %2
  %25 = phi i32 [ -22, %2 ], [ 0, %22 ], [ -8, %7 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @read_cache_folio(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc ptr @do_read_cache_folio(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6)
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @do_read_cache_folio(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %88, %5
  %7 = tail call ptr @__filemap_get_folio(ptr noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %56

9:                                                ; preds = %6
  %10 = tail call ptr @__folio_alloc(i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %97, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @filemap_add_folio(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %1, i32 noundef %4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %12
  tail call fastcc void @folio_put(ptr noundef nonnull %10)
  %16 = icmp eq i32 %13, -17
  br i1 %16, label %88, label %17

17:                                               ; preds = %15
  %18 = inttoptr i32 %13 to ptr
  br label %97

19:                                               ; preds = %94, %12
  %20 = phi ptr [ %7, %94 ], [ %10, %12 ]
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.address_space_operations, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi ptr [ %26, %22 ], [ %2, %19 ]
  %29 = tail call i32 %28(ptr noundef %3, ptr noundef nonnull %20) #11
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #11, !srcloc !16
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #11, !srcloc !19
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @__put_page(ptr noundef nonnull %20) #11
  br label %37

37:                                               ; preds = %36, %31
  %38 = inttoptr i32 %29 to ptr
  br label %97

39:                                               ; preds = %27
  %40 = load volatile i32, ptr %20, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %20, i32 noundef 0, i32 noundef 2, i32 noundef 1) #11
  br label %45

45:                                               ; preds = %43, %39
  %46 = load volatile i32, ptr %20, align 4
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %95

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #11, !srcloc !16
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #11, !srcloc !19
  %53 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %50
  tail call void @__put_page(ptr noundef nonnull %20) #11
  br label %97

56:                                               ; preds = %6
  %57 = load volatile i32, ptr %7, align 4
  %58 = and i32 %57, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  br label %95

61:                                               ; preds = %56
  %62 = load volatile i32, ptr %7, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #11, !srcloc !16
  %66 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #11, !srcloc !58
  %67 = extractvalue { i32, i32, i32 } %66, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65, %61
  %71 = tail call fastcc i32 @folio_wait_bit_common(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 2, i32 noundef 2) #11
  br label %88

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #11, !srcloc !16
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #11, !srcloc !49
  %78 = extractvalue { i32, i32, i32 } %77, 0
  %79 = and i32 %78, 128
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  tail call fastcc void @folio_wake_bit(ptr noundef nonnull %7, i32 noundef 0) #11
  br label %82

82:                                               ; preds = %81, %76
  %83 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #11, !srcloc !16
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #11, !srcloc !19
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  tail call void @__put_page(ptr noundef nonnull %7) #11
  br label %88

88:                                               ; preds = %87, %82, %70, %15
  br label %6

89:                                               ; preds = %72
  %90 = load volatile i32, ptr %7, align 4
  %91 = and i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  tail call void @folio_unlock(ptr noundef nonnull %7)
  br label %95

94:                                               ; preds = %89
  tail call void @_clear_bit(i32 noundef 8, ptr noundef nonnull %7) #11
  br label %19

95:                                               ; preds = %93, %60, %49
  %96 = phi ptr [ %7, %93 ], [ %20, %49 ], [ %7, %60 ]
  tail call void @folio_mark_accessed(ptr noundef nonnull %96) #11
  br label %97

97:                                               ; preds = %95, %55, %50, %37, %17, %9
  %98 = phi ptr [ %96, %95 ], [ %38, %37 ], [ %18, %17 ], [ inttoptr (i32 -5 to ptr), %50 ], [ inttoptr (i32 -5 to ptr), %55 ], [ inttoptr (i32 -12 to ptr), %9 ]
  ret ptr %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @read_cache_page(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = tail call fastcc ptr @do_read_cache_folio(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %6) #11
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.page, ptr %7, i32 1, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -1
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %16, %13 ], [ 0, %9 ]
  %19 = and i32 %18, %1
  %20 = getelementptr %struct.page, ptr %7, i32 %19
  br label %21

21:                                               ; preds = %17, %4
  %22 = phi ptr [ %20, %17 ], [ %7, %4 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @read_cache_page_gfp(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call fastcc ptr @do_read_cache_folio(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef null, i32 noundef %2) #11
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = load volatile i32, ptr %4, align 4
  %8 = and i32 %7, 65536
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.page, ptr %4, i32 1, i32 1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %13, %10 ], [ 0, %6 ]
  %16 = and i32 %15, %1
  %17 = getelementptr %struct.page, ptr %4, i32 %16
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi ptr [ %17, %14 ], [ %4, %3 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pagecache_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.address_space_operations, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pagecache_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = getelementptr inbounds %struct.address_space, ptr %1, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.address_space_operations, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dio_warn_stale_pagecache(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 11
  %6 = tail call i32 @errseq_set(ptr noundef %5, i32 noundef -5) #11
  %7 = tail call i32 @___ratelimit(ptr noundef nonnull @dio_warn_stale_pagecache._rs, ptr noundef nonnull @__func__.dio_warn_stale_pagecache) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = call ptr @file_path(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 128) #11
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %12 = select i1 %11, ptr @.str.2, ptr %10
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  %14 = tail call ptr @llvm.thread.pointer() #11
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 52
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 85
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %12, i32 noundef %16, ptr noundef %17) #12
  br label %19

19:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_direct_write(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [128 x i8], align 1
  %4 = alloca %struct.xa_state, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  %14 = add i64 %10, -1
  %15 = add i64 %14, %13
  %16 = lshr i64 %15, 12
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %23 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 1
  store ptr %23, ptr %4, align 4
  %24 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 1
  %25 = lshr i64 %10, 12
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 2
  %28 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 6
  store i32 0, ptr %27, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %28, align 4
  %29 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 7
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.xa_state, ptr %4, i32 0, i32 8
  store ptr null, ptr %30, align 4
  %31 = icmp slt i64 %15, %10
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br label %50

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  br label %34

34:                                               ; preds = %41, %33
  %35 = call ptr @xas_find(ptr noundef nonnull %4, i32 noundef %17) #11
  %36 = ptrtoint ptr %35 to i32
  switch i32 %36, label %38 [
    i32 1030, label %41
    i32 1026, label %37
  ]

37:                                               ; preds = %34
  store ptr inttoptr (i32 3 to ptr), ptr %28, align 4
  br label %41

38:                                               ; preds = %34
  %39 = and i32 %36, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %37, %34
  br label %34

42:                                               ; preds = %38
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %43 = icmp eq ptr %35, null
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  br i1 %43, label %50, label %123

44:                                               ; preds = %2
  %45 = tail call i32 @filemap_write_and_wait_range(ptr noundef %7, i64 noundef %10, i64 noundef %15)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %121

47:                                               ; preds = %44
  %48 = lshr i64 %10, 12
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %47, %42, %32
  %51 = phi i32 [ %49, %47 ], [ %26, %32 ], [ %26, %42 ]
  %52 = call i32 @invalidate_inode_pages2_range(ptr noundef %7, i32 noundef %51, i32 noundef %17) #11
  switch i32 %52, label %121 [
    i32 0, label %53
    i32 -16, label %123
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.address_space_operations, ptr %55, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %0, ptr noundef %1) #11
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %115

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 7
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %60
  %65 = call i32 @invalidate_inode_pages2_range(ptr noundef %7, i32 noundef %51, i32 noundef %17) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false) #11, !annotation !9
  %68 = load ptr, ptr %6, align 8
  %69 = getelementptr inbounds %struct.address_space, ptr %68, i32 0, i32 11
  %70 = call i32 @errseq_set(ptr noundef %69, i32 noundef -5) #11
  %71 = call i32 @___ratelimit(ptr noundef nonnull @dio_warn_stale_pagecache._rs, ptr noundef nonnull @__func__.dio_warn_stale_pagecache) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %67
  %74 = call ptr @file_path(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 128) #11
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  %76 = select i1 %75, ptr @.str.2, ptr %74
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  %78 = tail call ptr @llvm.thread.pointer() #11
  %79 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 52
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 85
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %76, i32 noundef %80, ptr noundef %81) #12
  br label %83

83:                                               ; preds = %73, %67
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #11
  br label %84

84:                                               ; preds = %83, %64, %60
  %85 = zext i32 %58 to i64
  %86 = add i64 %10, %85
  %87 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %88 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  br label %89

89:                                               ; preds = %97, %84
  %90 = load volatile i32, ptr %87, align 4
  %91 = and i32 %90, 1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %93, %89
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !60
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %94 = load volatile i32, ptr %87, align 4
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %93

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %90, %89 ], [ %94, %93 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !62
  %99 = load i64, ptr %88, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !63
  %100 = load volatile i32, ptr %87, align 4
  %101 = icmp eq i32 %100, %98
  br i1 %101, label %102, label %89

102:                                              ; preds = %97
  %103 = sub i32 %12, %58
  %104 = icmp sgt i64 %86, %99
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i16, ptr %8, align 8
  %107 = and i16 %106, -4096
  %108 = icmp eq i16 %107, 24576
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !73
  %110 = load i32, ptr %87, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %87, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !74
  store i64 %86, ptr %88, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #11, !srcloc !75
  %112 = load i32, ptr %87, align 4
  %113 = add i32 %112, 1
  store i32 %113, ptr %87, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !76
  call void @__mark_inode_dirty(ptr noundef %8, i32 noundef 7) #11
  br label %114

114:                                              ; preds = %109, %105, %102
  store i64 %86, ptr %9, align 8
  br label %115

115:                                              ; preds = %114, %53
  %116 = phi i32 [ %103, %114 ], [ %12, %53 ]
  %117 = icmp eq i32 %58, -529
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, ptr %11, align 8
  %120 = sub i32 %116, %119
  call void @iov_iter_revert(ptr noundef %1, i32 noundef %120) #11
  br label %121

121:                                              ; preds = %118, %115, %50, %44
  %122 = phi i32 [ %58, %118 ], [ -529, %115 ], [ %45, %44 ], [ %52, %50 ]
  br label %123

123:                                              ; preds = %121, %50, %42
  %124 = phi i32 [ %122, %121 ], [ -11, %42 ], [ 0, %50 ]
  ret i32 %124
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_inode_pages2_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_perform_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %11 = getelementptr inbounds %struct.address_space_operations, ptr %9, i32 0, i32 6
  %12 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 4
  %13 = getelementptr inbounds %struct.address_space_operations, ptr %9, i32 0, i32 7
  %14 = load i32, ptr %10, align 8
  br label %15

15:                                               ; preds = %69, %3
  %16 = phi i32 [ %14, %3 ], [ %73, %69 ]
  %17 = phi i32 [ 0, %3 ], [ %72, %69 ]
  %18 = phi i64 [ %2, %3 ], [ %71, %69 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store ptr null, ptr %5, align 4, !annotation !9
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 4095
  %21 = sub nuw nsw i32 4096, %20
  %22 = call i32 @llvm.umin.i32(i32 %21, i32 %16)
  %23 = call i32 @fault_in_iov_iter_readable(ptr noundef %1, i32 noundef %22) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %67, !prof !10

25:                                               ; preds = %15
  %26 = tail call ptr @llvm.thread.pointer() #11
  %27 = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 98, i32 1
  br label %28

28:                                               ; preds = %62, %25
  %29 = phi i32 [ %22, %25 ], [ %64, %62 ]
  %30 = load volatile i32, ptr %26, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %27, align 4
  %35 = and i32 %34, 256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %67

37:                                               ; preds = %33, %28
  %38 = load ptr, ptr %11, align 4
  %39 = call i32 %38(ptr noundef %0, ptr noundef %7, i64 noundef %18, i32 noundef %29, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %67, label %41, !prof !11

41:                                               ; preds = %37
  %42 = load volatile i32, ptr %12, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 4
  call void @flush_dcache_page(ptr noundef %45) #11
  br label %46

46:                                               ; preds = %44, %41
  %47 = load ptr, ptr %4, align 4
  %48 = call i32 @copy_page_from_iter_atomic(ptr noundef %47, i32 noundef %20, i32 noundef %29, ptr noundef %1) #11
  %49 = load ptr, ptr %4, align 4
  call void @flush_dcache_page(ptr noundef %49) #11
  %50 = load ptr, ptr %13, align 4
  %51 = load ptr, ptr %4, align 4
  %52 = load ptr, ptr %5, align 4
  %53 = call i32 %50(ptr noundef %0, ptr noundef %7, i64 noundef %18, i32 noundef %29, i32 noundef %48, ptr noundef %51, ptr noundef %52) #11
  %54 = icmp eq i32 %53, %48
  br i1 %54, label %59, label %55, !prof !10

55:                                               ; preds = %46
  %56 = call i32 @llvm.smax.i32(i32 %53, i32 0)
  %57 = sub i32 %48, %56
  call void @iov_iter_revert(ptr noundef %1, i32 noundef %57) #11
  %58 = icmp slt i32 %53, 0
  br i1 %58, label %67, label %59, !prof !11

59:                                               ; preds = %55, %46
  %60 = call i32 @__cond_resched() #11
  %61 = icmp eq i32 %53, 0
  br i1 %61, label %62, label %69, !prof !11

62:                                               ; preds = %59
  %63 = icmp eq i32 %48, 0
  %64 = select i1 %63, i32 %29, i32 %48
  %65 = call i32 @fault_in_iov_iter_readable(ptr noundef %1, i32 noundef %64) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %28, label %67, !prof !10

67:                                               ; preds = %62, %55, %37, %33, %15
  %68 = phi i32 [ -14, %62 ], [ -4, %33 ], [ %39, %37 ], [ %53, %55 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %75

69:                                               ; preds = %59
  %70 = sext i32 %53 to i64
  %71 = add i64 %18, %70
  %72 = add i32 %53, %17
  call void @balance_dirty_pages_ratelimited(ptr noundef %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %73 = load i32, ptr %10, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %15

75:                                               ; preds = %69, %67
  %76 = phi i32 [ %68, %67 ], [ %53, %69 ]
  %77 = phi i32 [ %17, %67 ], [ %72, %69 ]
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 %76, i32 %77
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_iov_iter_readable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter_atomic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__generic_file_write_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @inode_to_bdi(ptr noundef %6) #11
  %8 = tail call ptr @llvm.thread.pointer() #11
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 117
  store ptr %7, ptr %9, align 4
  %10 = tail call i32 @file_remove_privs(ptr noundef %3) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = tail call i32 @file_update_time(ptr noundef %3) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 131072
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @generic_file_direct_write(ptr noundef %0, ptr noundef %1)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.iov_iter, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = tail call i32 @generic_perform_write(ptr noundef %3, ptr noundef %1, i64 noundef %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %58, label %32, !prof !11

32:                                               ; preds = %27
  %33 = zext i32 %30 to i64
  %34 = add i64 %29, %33
  %35 = add i64 %34, -1
  %36 = tail call i32 @filemap_write_and_wait_range(ptr noundef %5, i64 noundef %29, i64 noundef %35)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %32
  store i64 %34, ptr %28, align 8
  %39 = add nuw i32 %30, %21
  %40 = lshr i64 %29, 12
  %41 = trunc i64 %40 to i32
  %42 = lshr i64 %35, 12
  %43 = trunc i64 %42 to i32
  %44 = tail call i32 @invalidate_mapping_pages(ptr noundef %5, i32 noundef %41, i32 noundef %43) #11
  br label %58

45:                                               ; preds = %15
  %46 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = tail call i32 @generic_perform_write(ptr noundef %3, ptr noundef %1, i64 noundef %47)
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58, !prof !10

50:                                               ; preds = %45
  %51 = zext i32 %48 to i64
  %52 = load i64, ptr %46, align 8
  %53 = add i64 %52, %51
  store i64 %53, ptr %46, align 8
  br label %56

54:                                               ; preds = %12, %2
  %55 = phi i32 [ %13, %12 ], [ %10, %2 ]
  store ptr null, ptr %9, align 4
  br label %62

56:                                               ; preds = %50, %20
  %57 = phi i32 [ %21, %20 ], [ %48, %50 ]
  store ptr null, ptr %9, align 4
  br label %64

58:                                               ; preds = %45, %38, %32, %27, %23
  %59 = phi i32 [ %48, %45 ], [ %21, %23 ], [ %21, %27 ], [ %39, %38 ], [ %21, %32 ]
  %60 = phi i32 [ 0, %45 ], [ 0, %23 ], [ %30, %27 ], [ 0, %38 ], [ %36, %32 ]
  store ptr null, ptr %9, align 4
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %55, %54 ], [ %60, %58 ]
  br label %64

64:                                               ; preds = %62, %58, %56
  %65 = phi i32 [ %63, %62 ], [ %59, %58 ], [ %57, %56 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_remove_privs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_write_iter(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %7) #11
  %8 = tail call i32 @generic_write_checks(ptr noundef %0, ptr noundef %1) #11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @up_write(ptr noundef %7) #11
  br label %32

11:                                               ; preds = %2
  %12 = tail call i32 @__generic_file_write_iter(ptr noundef %0, ptr noundef %1)
  tail call void @up_write(ptr noundef %7) #11
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.kiocb, ptr %0, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = zext i32 %12 to i64
  %24 = sub i64 %22, %23
  %25 = add i64 %22, -1
  %26 = lshr i32 %16, 2
  %27 = and i32 %26, 1
  %28 = xor i32 %27, 1
  %29 = tail call i32 @vfs_fsync_range(ptr noundef %20, i64 noundef %24, i64 noundef %25, i32 noundef %28) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19, %14
  br label %32

32:                                               ; preds = %31, %19, %11, %10
  %33 = phi i32 [ %12, %11 ], [ %8, %10 ], [ %29, %19 ], [ %12, %31 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_write_checks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @filemap_release_folio(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/filemap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3954, 0\0A.popsection", ""() #11, !srcloc !77
  unreachable

9:                                                ; preds = %2
  %10 = load volatile i32, ptr %0, align 4
  %11 = and i32 %10, 32768
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = icmp eq ptr %4, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.address_space_operations, ptr %17, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef %0, i32 noundef %1) #11
  %23 = icmp ne i32 %22, 0
  br label %27

24:                                               ; preds = %15, %13
  %25 = tail call i32 @try_to_free_buffers(ptr noundef %0) #11
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %21, %9
  %28 = phi i1 [ %23, %21 ], [ %26, %24 ], [ false, %9 ]
  ret i1 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mm_filemap_op_page_cache(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %5, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %5, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 12
  %21 = getelementptr inbounds %struct.trace_event_raw_mm_filemap_op_page_cache, ptr %5, i32 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %20, i32 noundef %23) #11
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #11
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_filemap_set_wb_err(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_filemap_set_wb_err, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %12, i32 noundef %13, i32 noundef %15, i32 noundef %17) #11
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #11
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_file_check_and_advance_wb_err(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 20
  %15 = and i32 %13, 1048575
  %16 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_file_check_and_advance_wb_err, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %11, i32 noundef %14, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #11
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #11
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @folio_mapped(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @page_mapcount(ptr noundef %0) unnamed_addr #5 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %5, %1
  %11 = tail call i32 @__page_mapcount(ptr noundef %0) #11
  br label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %14 = load volatile i32, ptr %13, align 4
  %15 = add i32 %14, 1
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i32 [ %11, %10 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_account_cleaned(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_mapcount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_node_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_init_marks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range_tag(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_on_page_writeback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up_locked_key_bookmark(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__acct_reclaim_writeback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xas_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__folio_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find_marked(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @filemap_get_read_batch(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.xa_state, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1
  store ptr %6, ptr %5, align 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 1
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 2
  %9 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 6
  store i32 0, ptr %8, align 4
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  %11 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 7
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.xa_state, ptr %5, i32 0, i32 8
  store ptr null, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !29
  %13 = call ptr @xas_load(ptr noundef nonnull %5) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %111, label %15

15:                                               ; preds = %108, %4
  %16 = phi ptr [ %109, %108 ], [ %13, %4 ]
  %17 = ptrtoint ptr %16 to i32
  switch i32 %17, label %21 [
    i32 1030, label %18
    i32 1026, label %20
  ]

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 4
  br label %86

20:                                               ; preds = %15
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  br label %86

21:                                               ; preds = %15
  %22 = load i32, ptr %7, align 4
  %23 = icmp ugt i32 %22, %2
  %24 = and i32 %17, 1
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %111, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #11, !srcloc !16
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 1, ptr elementtype(i32) %28) #11, !srcloc !56
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %85, label %32

32:                                               ; preds = %27
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %33 = load ptr, ptr %10, align 4
  %34 = icmp eq ptr %33, null
  %35 = load i8, ptr %9, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.xa_node, ptr %33, i32 0, i32 7, i32 %36
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr inbounds %struct.xarray, ptr %38, i32 0, i32 2
  %40 = select i1 %34, ptr %39, ptr %37
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %16, %41
  br i1 %42, label %43, label %84, !prof !10

43:                                               ; preds = %32
  %44 = load i8, ptr %3, align 4
  %45 = add i8 %44, 1
  store i8 %45, ptr %3, align 4
  %46 = zext i8 %44 to i32
  %47 = getelementptr %struct.folio_batch, ptr %3, i32 0, i32 2, i32 %46
  store ptr %16, ptr %47, align 4
  %48 = icmp eq i8 %45, 15
  br i1 %48, label %111, label %49

49:                                               ; preds = %43
  %50 = load volatile i32, ptr %16, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %111, label %53

53:                                               ; preds = %49
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  %54 = load volatile i32, ptr %16, align 4
  %55 = and i32 %54, 262144
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %111

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = load volatile i32, ptr %16, align 4
  %61 = and i32 %60, 65536
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = getelementptr %struct.page, ptr %16, i32 1, i32 1, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi i32 [ %65, %63 ], [ 1, %57 ]
  %68 = add i32 %59, -1
  %69 = add i32 %68, %67
  %70 = load ptr, ptr %10, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = and i32 %71, 3
  %73 = icmp eq i32 %72, 0
  %74 = icmp ne ptr %70, null
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i8, ptr %70, align 4
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %76, %66
  %80 = phi i32 [ %78, %76 ], [ 0, %66 ]
  store i32 %69, ptr %7, align 4
  %81 = lshr i32 %69, %80
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 63
  store i8 %83, ptr %9, align 2
  br label %86

84:                                               ; preds = %32
  call fastcc void @folio_put(ptr noundef nonnull %16)
  br label %85

85:                                               ; preds = %84, %27
  store ptr inttoptr (i32 3 to ptr), ptr %10, align 4
  br label %86

86:                                               ; preds = %85, %79, %20, %18
  %87 = phi ptr [ %19, %18 ], [ inttoptr (i32 3 to ptr), %20 ], [ inttoptr (i32 3 to ptr), %85 ], [ %70, %79 ]
  %88 = ptrtoint ptr %87 to i32
  %89 = and i32 %88, 3
  %90 = icmp ne i32 %89, 0
  %91 = icmp eq ptr %87, null
  %92 = or i1 %91, %90
  br i1 %92, label %99, label %93, !prof !11

93:                                               ; preds = %86
  %94 = load i8, ptr %87, align 4
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %99, !prof !10

96:                                               ; preds = %93
  %97 = load i8, ptr %9, align 2
  %98 = icmp eq i8 %97, 63
  br i1 %98, label %99, label %101, !prof !11

99:                                               ; preds = %96, %93, %86
  %100 = call ptr @__xas_next(ptr noundef nonnull %5) #11
  br label %108

101:                                              ; preds = %96
  %102 = load i32, ptr %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %7, align 4
  %104 = add i8 %97, 1
  store i8 %104, ptr %9, align 2
  %105 = zext i8 %104 to i32
  %106 = getelementptr %struct.xa_node, ptr %87, i32 0, i32 7, i32 %105
  %107 = load volatile ptr, ptr %106, align 4
  br label %108

108:                                              ; preds = %101, %99
  %109 = phi ptr [ %100, %99 ], [ %107, %101 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %15

111:                                              ; preds = %108, %53, %49, %43, %21, %4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_sync_ra(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_cache_async_ra(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xas_pause(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_page_cache_ra(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @next_uptodate_page(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 6
  %6 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 4
  %7 = getelementptr inbounds %struct.xa_state, ptr %2, i32 0, i32 1
  br label %8

8:                                                ; preds = %135, %4
  %9 = phi ptr [ %0, %4 ], [ %136, %135 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %138, label %11

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  switch i32 %12, label %14 [
    i32 1030, label %99
    i32 1026, label %13
  ]

13:                                               ; preds = %11
  store ptr inttoptr (i32 3 to ptr), ptr %5, align 4
  br label %99

14:                                               ; preds = %11
  %15 = and i32 %12, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %99

17:                                               ; preds = %14
  %18 = load volatile i32, ptr %9, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !55
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !16
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 0, i32 1, ptr elementtype(i32) %22) #11, !srcloc !56
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %99, label %26

26:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !57
  %27 = load ptr, ptr %5, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr inbounds %struct.xarray, ptr %30, i32 0, i32 2
  br label %36

32:                                               ; preds = %26
  %33 = load i8, ptr %6, align 2
  %34 = zext i8 %33 to i32
  %35 = getelementptr %struct.xa_node, ptr %27, i32 0, i32 7, i32 %34
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi ptr [ %35, %32 ], [ %31, %29 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %9, %38
  br i1 %39, label %40, label %94, !prof !10

40:                                               ; preds = %36
  %41 = load volatile i32, ptr %9, align 4
  %42 = and i32 %41, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %94, label %44

44:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  %45 = load volatile i32, ptr %9, align 4
  %46 = and i32 %45, 262144
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load volatile i32, ptr %9, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #11, !srcloc !16
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #11, !srcloc !58
  %54 = extractvalue { i32, i32, i32 } %53, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !59
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %94

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load volatile i32, ptr %9, align 4
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !39
  %66 = load ptr, ptr %1, align 4
  %67 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 22
  %68 = getelementptr inbounds %struct.inode, ptr %66, i32 0, i32 13
  br label %69

69:                                               ; preds = %77, %65
  %70 = load volatile i32, ptr %67, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %73, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !61
  %74 = load volatile i32, ptr %67, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %70, %69 ], [ %74, %73 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !62
  %79 = load i64, ptr %68, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !63
  %80 = load volatile i32, ptr %67, align 4
  %81 = icmp eq i32 %80, %78
  br i1 %81, label %82, label %69

82:                                               ; preds = %77
  %83 = add i64 %79, 4095
  %84 = sdiv i64 %83, 4096
  %85 = trunc i64 %84 to i32
  %86 = load i32, ptr %7, align 4
  %87 = icmp ult i32 %86, %85
  br i1 %87, label %138, label %88

88:                                               ; preds = %82, %61, %57
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #11, !srcloc !16
  %89 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #11, !srcloc !49
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = and i32 %90, 128
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  tail call fastcc void @folio_wake_bit(ptr noundef %9, i32 noundef 0) #11
  br label %94

94:                                               ; preds = %93, %88, %52, %48, %44, %40, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #11, !srcloc !16
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #11, !srcloc !19
  %96 = extractvalue { i32, i32 } %95, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  tail call void @__put_page(ptr noundef %9) #11
  br label %99

99:                                               ; preds = %98, %94, %21, %17, %14, %13, %11
  %100 = load ptr, ptr %5, align 4
  %101 = ptrtoint ptr %100 to i32
  %102 = and i32 %101, 3
  %103 = icmp ne i32 %102, 0
  %104 = icmp eq ptr %100, null
  %105 = or i1 %104, %103
  br i1 %105, label %133, label %106, !prof !11

106:                                              ; preds = %99
  %107 = load i8, ptr %100, align 4
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %133, !prof !10

109:                                              ; preds = %106
  %110 = load i8, ptr %6, align 2
  %111 = zext i8 %110 to i32
  %112 = load i32, ptr %7, align 4
  %113 = and i32 %112, 63
  %114 = icmp eq i32 %113, %111
  br i1 %114, label %115, label %133, !prof !10

115:                                              ; preds = %129, %109
  %116 = phi i8 [ %130, %129 ], [ %110, %109 ]
  %117 = phi i32 [ %131, %129 ], [ %112, %109 ]
  %118 = icmp uge i32 %117, %3
  %119 = icmp eq i8 %116, 63
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %133, label %121, !prof !28

121:                                              ; preds = %115
  %122 = zext i8 %116 to i32
  %123 = add nuw nsw i32 %122, 1
  %124 = getelementptr %struct.xa_node, ptr %100, i32 0, i32 7, i32 %123
  %125 = load volatile ptr, ptr %124, align 4
  %126 = ptrtoint ptr %125 to i32
  %127 = and i32 %126, 3
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %133, label %129, !prof !11

129:                                              ; preds = %121
  %130 = add i8 %116, 1
  store i8 %130, ptr %6, align 2
  %131 = add nuw i32 %117, 1
  store i32 %131, ptr %7, align 4
  %132 = icmp eq ptr %125, null
  br i1 %132, label %115, label %135

133:                                              ; preds = %121, %115, %109, %106, %99
  %134 = tail call ptr @xas_find(ptr noundef %2, i32 noundef %3) #11
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi ptr [ %134, %133 ], [ %125, %129 ]
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %8

138:                                              ; preds = %135, %82, %8
  %139 = phi ptr [ null, %8 ], [ %9, %82 ], [ null, %135 ]
  ret ptr %139
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 869626}
!13 = !{i64 2153953220}
!14 = !{i64 2153953408}
!15 = !{i64 2150563748, i64 2150564236, i64 2150563785, i64 2150563841, i64 2150563875, i64 2150563899, i64 2150563940, i64 2150563961, i64 2150563989, i64 2150564023}
!16 = !{i64 945248, i64 2148435219, i64 2148435245, i64 2148435292, i64 2148435314, i64 2148435342, i64 2148435362}
!17 = !{i64 2148448991, i64 2148449017, i64 2148449046, i64 2148449080, i64 2148449111, i64 2148449134}
!18 = !{i64 2148547313}
!19 = !{i64 2148449675, i64 2148449707, i64 2148449736, i64 2148449770, i64 2148449801, i64 2148449824}
!20 = !{i64 2148547516}
!21 = !{i64 2154787912, i64 2154788389, i64 2154787949, i64 2154788005, i64 2154788039, i64 2154788063, i64 2154788104, i64 2154788125, i64 2154788153, i64 2154788187}
!22 = !{i64 2149113852}
!23 = !{i64 2149109676}
!24 = !{i64 2149109751, i64 2149109778, i64 2149109825, i64 2149109847, i64 2149109875, i64 2149109895}
!25 = !{i64 851171}
!26 = !{i64 2149137996}
!27 = !{i64 2149136855}
!28 = !{!"branch_weights", i32 4001, i32 4000000}
!29 = !{i64 2149266556}
!30 = !{i64 2149266773}
!31 = !{i64 2154008428}
!32 = !{i64 2154008616}
!33 = !{i64 2153991605}
!34 = !{i64 2153991779}
!35 = !{i64 2148446634, i64 2148446660, i64 2148446689, i64 2148446723, i64 2148446754, i64 2148446777}
!36 = !{i64 2153970496}
!37 = !{i64 2153970674}
!38 = !{i64 2153449417, i64 2153449905, i64 2153449454, i64 2153449510, i64 2153449544, i64 2153449568, i64 2153449609, i64 2153449630, i64 2153449658, i64 2153449692}
!39 = !{i64 2150280659}
!40 = !{i64 2151081620}
!41 = !{i64 2152962921}
!42 = !{i64 2154858244}
!43 = !{i64 2154863934}
!44 = !{i64 2154840396}
!45 = !{i64 2148093717}
!46 = !{i64 2154847178}
!47 = !{i64 2154852868}
!48 = !{i64 2148555401}
!49 = !{i64 2148453555, i64 2148453587, i64 2148453616, i64 2148453650, i64 2148453681, i64 2148453704}
!50 = !{i64 2154843245}
!51 = !{i64 2154843087}
!52 = !{i64 2154876230, i64 2154876708, i64 2154876267, i64 2154876323, i64 2154876357, i64 2154876381, i64 2154876422, i64 2154876443, i64 2154876471, i64 2154876505}
!53 = !{i64 2154877081}
!54 = !{i64 2150281680}
!55 = !{i64 2148446141}
!56 = !{i64 931817, i64 931842, i64 931864, i64 931880, i64 931892, i64 931912, i64 931936, i64 931952, i64 931964}
!57 = !{i64 2148446267}
!58 = !{i64 2148455096, i64 2148455128, i64 2148455157, i64 2148455191, i64 2148455222, i64 2148455245}
!59 = !{i64 2148556436}
!60 = !{i64 2151397889}
!61 = !{i64 2151397731}
!62 = !{i64 2151398033}
!63 = !{i64 2149592276}
!64 = !{i64 850926, i64 850987}
!65 = !{i64 853943}
!66 = !{i64 2152960296}
!67 = !{i64 2151081413}
!68 = !{i64 2151243483}
!69 = !{i64 2151251100}
!70 = !{i64 2151259565}
!71 = !{i64 2151267876}
!72 = !{i64 2151276094}
!73 = !{i64 2151399671}
!74 = !{i64 2149592575}
!75 = !{i64 2149592876}
!76 = !{i64 2151407229}
!77 = !{i64 2154959807, i64 2154960285, i64 2154959844, i64 2154959900, i64 2154959934, i64 2154959958, i64 2154959999, i64 2154960020, i64 2154960048, i64 2154960082}
