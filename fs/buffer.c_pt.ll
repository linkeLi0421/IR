; ModuleID = '/llk/IR/fs/buffer.c_pt.bc'
source_filename = "../fs/buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touch_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22touch_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_touch_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___lock_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22__lock_buffer\22\09\09\09\09\09"
module asm "__kstrtabns___lock_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_buffer_check_dirty_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22buffer_check_dirty_writeback\22\09\09\09\09\09"
module asm "__kstrtabns_buffer_check_dirty_writeback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___wait_on_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22__wait_on_buffer\22\09\09\09\09\09"
module asm "__kstrtabns___wait_on_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_end_buffer_read_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22end_buffer_read_sync\22\09\09\09\09\09"
module asm "__kstrtabns_end_buffer_read_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_end_buffer_write_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22end_buffer_write_sync\22\09\09\09\09\09"
module asm "__kstrtabns_end_buffer_write_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_end_buffer_async_write:\09\09\09\09\09"
module asm "\09.asciz \09\22end_buffer_async_write\22\09\09\09\09\09"
module asm "__kstrtabns_end_buffer_async_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_buffer_async_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_buffer_async_write\22\09\09\09\09\09"
module asm "__kstrtabns_mark_buffer_async_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_mapping_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_mapping_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_sync_mapping_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_buffer_dirty_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_buffer_dirty_inode\22\09\09\09\09\09"
module asm "__kstrtabns_mark_buffer_dirty_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___set_page_dirty_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22__set_page_dirty_buffers\22\09\09\09\09\09"
module asm "__kstrtabns___set_page_dirty_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_invalidate_inode_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22invalidate_inode_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_invalidate_inode_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_page_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_page_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_page_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_buffer_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_buffer_dirty\22\09\09\09\09\09"
module asm "__kstrtabns_mark_buffer_dirty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mark_buffer_write_io_error:\09\09\09\09\09"
module asm "\09.asciz \09\22mark_buffer_write_io_error\22\09\09\09\09\09"
module asm "__kstrtabns_mark_buffer_write_io_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___brelse:\09\09\09\09\09"
module asm "\09.asciz \09\22__brelse\22\09\09\09\09\09"
module asm "__kstrtabns___brelse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bforget:\09\09\09\09\09"
module asm "\09.asciz \09\22__bforget\22\09\09\09\09\09"
module asm "__kstrtabns___bforget:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___find_get_block:\09\09\09\09\09"
module asm "\09.asciz \09\22__find_get_block\22\09\09\09\09\09"
module asm "__kstrtabns___find_get_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___getblk_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22__getblk_gfp\22\09\09\09\09\09"
module asm "__kstrtabns___getblk_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___breadahead:\09\09\09\09\09"
module asm "\09.asciz \09\22__breadahead\22\09\09\09\09\09"
module asm "__kstrtabns___breadahead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___breadahead_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22__breadahead_gfp\22\09\09\09\09\09"
module asm "__kstrtabns___breadahead_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bread_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22__bread_gfp\22\09\09\09\09\09"
module asm "__kstrtabns___bread_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_invalidate_bh_lrus:\09\09\09\09\09"
module asm "\09.asciz \09\22invalidate_bh_lrus\22\09\09\09\09\09"
module asm "__kstrtabns_invalidate_bh_lrus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_bh_page:\09\09\09\09\09"
module asm "\09.asciz \09\22set_bh_page\22\09\09\09\09\09"
module asm "__kstrtabns_set_bh_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22block_invalidatepage\22\09\09\09\09\09"
module asm "__kstrtabns_block_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_create_empty_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22create_empty_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_create_empty_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clean_bdev_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22clean_bdev_aliases\22\09\09\09\09\09"
module asm "__kstrtabns_clean_bdev_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___block_write_full_page:\09\09\09\09\09"
module asm "\09.asciz \09\22__block_write_full_page\22\09\09\09\09\09"
module asm "__kstrtabns___block_write_full_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_zero_new_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22page_zero_new_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_page_zero_new_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___block_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22__block_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns___block_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22block_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_block_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22block_write_end\22\09\09\09\09\09"
module asm "__kstrtabns_block_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_write_end\22\09\09\09\09\09"
module asm "__kstrtabns_generic_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_is_partially_uptodate:\09\09\09\09\09"
module asm "\09.asciz \09\22block_is_partially_uptodate\22\09\09\09\09\09"
module asm "__kstrtabns_block_is_partially_uptodate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_read_full_page:\09\09\09\09\09"
module asm "\09.asciz \09\22block_read_full_page\22\09\09\09\09\09"
module asm "__kstrtabns_block_read_full_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_cont_expand_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_cont_expand_simple\22\09\09\09\09\09"
module asm "__kstrtabns_generic_cont_expand_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cont_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22cont_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_cont_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_commit_write:\09\09\09\09\09"
module asm "\09.asciz \09\22block_commit_write\22\09\09\09\09\09"
module asm "__kstrtabns_block_commit_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22block_page_mkwrite\22\09\09\09\09\09"
module asm "__kstrtabns_block_page_mkwrite:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nobh_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22nobh_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_nobh_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nobh_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22nobh_write_end\22\09\09\09\09\09"
module asm "__kstrtabns_nobh_write_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nobh_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22nobh_writepage\22\09\09\09\09\09"
module asm "__kstrtabns_nobh_writepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nobh_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22nobh_truncate_page\22\09\09\09\09\09"
module asm "__kstrtabns_nobh_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22block_truncate_page\22\09\09\09\09\09"
module asm "__kstrtabns_block_truncate_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_block_write_full_page:\09\09\09\09\09"
module asm "\09.asciz \09\22block_write_full_page\22\09\09\09\09\09"
module asm "__kstrtabns_block_write_full_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_block_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_block_bmap\22\09\09\09\09\09"
module asm "__kstrtabns_generic_block_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_submit_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22submit_bh\22\09\09\09\09\09"
module asm "__kstrtabns_submit_bh:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ll_rw_block:\09\09\09\09\09"
module asm "\09.asciz \09\22ll_rw_block\22\09\09\09\09\09"
module asm "__kstrtabns_ll_rw_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_write_dirty_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22write_dirty_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_write_dirty_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sync_dirty_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22__sync_dirty_buffer\22\09\09\09\09\09"
module asm "__kstrtabns___sync_dirty_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sync_dirty_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22sync_dirty_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_sync_dirty_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_to_free_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22try_to_free_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_try_to_free_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_buffer_head:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_buffer_head\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_buffer_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_buffer_head:\09\09\09\09\09"
module asm "\09.asciz \09\22free_buffer_head\22\09\09\09\09\09"
module asm "__kstrtabns_free_buffer_head:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bh_uptodate_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22bh_uptodate_or_lock\22\09\09\09\09\09"
module asm "__kstrtabns_bh_uptodate_or_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bh_submit_read:\09\09\09\09\09"
module asm "\09.asciz \09\22bh_submit_read\22\09\09\09\09\09"
module asm "__kstrtabns_bh_submit_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bh_lru = type { [16 x ptr] }
%struct.bh_accounting = type { i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i32, ptr, ptr, i64, i32, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.spinlock }
%struct.page = type { i32, %union.anon, %union.anon.102, %struct.atomic_t }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.102 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.104, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.105, ptr, %struct.address_space, %struct.list_head, %union.anon.106, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.103 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.104 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.106 = type { ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.anon.108 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.37 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.62 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_fault = type { %struct.anon.22, i32, ptr, ptr, %union.anon.23, ptr, ptr, ptr, ptr, ptr }
%struct.anon.22 = type { ptr, i32, i32, i32 }
%union.anon.23 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.20, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_touch_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_touch_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_touch_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touch_buffer to i32), ptr @__kstrtab_touch_buffer, ptr @__kstrtabns_touch_buffer }, section "___ksymtab+touch_buffer", align 4
@__kstrtab___lock_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns___lock_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab___lock_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__lock_buffer to i32), ptr @__kstrtab___lock_buffer, ptr @__kstrtabns___lock_buffer }, section "___ksymtab+__lock_buffer", align 4
@__kstrtab_unlock_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_buffer to i32), ptr @__kstrtab_unlock_buffer, ptr @__kstrtabns_unlock_buffer }, section "___ksymtab+unlock_buffer", align 4
@__kstrtab_buffer_check_dirty_writeback = external dso_local constant [0 x i8], align 1
@__kstrtabns_buffer_check_dirty_writeback = external dso_local constant [0 x i8], align 1
@__ksymtab_buffer_check_dirty_writeback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @buffer_check_dirty_writeback to i32), ptr @__kstrtab_buffer_check_dirty_writeback, ptr @__kstrtabns_buffer_check_dirty_writeback }, section "___ksymtab+buffer_check_dirty_writeback", align 4
@__kstrtab___wait_on_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns___wait_on_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab___wait_on_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__wait_on_buffer to i32), ptr @__kstrtab___wait_on_buffer, ptr @__kstrtabns___wait_on_buffer }, section "___ksymtab+__wait_on_buffer", align 4
@__kstrtab_end_buffer_read_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_end_buffer_read_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_end_buffer_read_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @end_buffer_read_sync to i32), ptr @__kstrtab_end_buffer_read_sync, ptr @__kstrtabns_end_buffer_read_sync }, section "___ksymtab+end_buffer_read_sync", align 4
@.str = private unnamed_addr constant [23 x i8] c", lost sync page write\00", align 1
@__kstrtab_end_buffer_write_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_end_buffer_write_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_end_buffer_write_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @end_buffer_write_sync to i32), ptr @__kstrtab_end_buffer_write_sync, ptr @__kstrtabns_end_buffer_write_sync }, section "___ksymtab+end_buffer_write_sync", align 4
@.str.1 = private unnamed_addr constant [24 x i8] c", lost async page write\00", align 1
@__kstrtab_end_buffer_async_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_end_buffer_async_write = external dso_local constant [0 x i8], align 1
@__ksymtab_end_buffer_async_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @end_buffer_async_write to i32), ptr @__kstrtab_end_buffer_async_write, ptr @__kstrtabns_end_buffer_async_write }, section "___ksymtab+end_buffer_async_write", align 4
@__kstrtab_mark_buffer_async_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_buffer_async_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_buffer_async_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_buffer_async_write to i32), ptr @__kstrtab_mark_buffer_async_write, ptr @__kstrtabns_mark_buffer_async_write }, section "___ksymtab+mark_buffer_async_write", align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"\014Emergency Thaw on %pg\0A\00", align 1
@__kstrtab_sync_mapping_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_mapping_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_mapping_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_mapping_buffers to i32), ptr @__kstrtab_sync_mapping_buffers, ptr @__kstrtabns_sync_mapping_buffers }, section "___ksymtab+sync_mapping_buffers", align 4
@__kstrtab_mark_buffer_dirty_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_buffer_dirty_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_buffer_dirty_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_buffer_dirty_inode to i32), ptr @__kstrtab_mark_buffer_dirty_inode, ptr @__kstrtabns_mark_buffer_dirty_inode }, section "___ksymtab+mark_buffer_dirty_inode", align 4
@__kstrtab___set_page_dirty_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns___set_page_dirty_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab___set_page_dirty_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__set_page_dirty_buffers to i32), ptr @__kstrtab___set_page_dirty_buffers, ptr @__kstrtabns___set_page_dirty_buffers }, section "___ksymtab+__set_page_dirty_buffers", align 4
@__kstrtab_invalidate_inode_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_invalidate_inode_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_invalidate_inode_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @invalidate_inode_buffers to i32), ptr @__kstrtab_invalidate_inode_buffers, ptr @__kstrtabns_invalidate_inode_buffers }, section "___ksymtab+invalidate_inode_buffers", align 4
@__kstrtab_alloc_page_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_page_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_page_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_page_buffers to i32), ptr @__kstrtab_alloc_page_buffers, ptr @__kstrtabns_alloc_page_buffers }, section "___ksymtab_gpl+alloc_page_buffers", align 4
@mark_buffer_dirty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"fs/buffer.c\00", align 1
@__kstrtab_mark_buffer_dirty = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_buffer_dirty = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_buffer_dirty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_buffer_dirty to i32), ptr @__kstrtab_mark_buffer_dirty, ptr @__kstrtabns_mark_buffer_dirty }, section "___ksymtab+mark_buffer_dirty", align 4
@__kstrtab_mark_buffer_write_io_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_mark_buffer_write_io_error = external dso_local constant [0 x i8], align 1
@__ksymtab_mark_buffer_write_io_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mark_buffer_write_io_error to i32), ptr @__kstrtab_mark_buffer_write_io_error, ptr @__kstrtabns_mark_buffer_write_io_error }, section "___ksymtab+mark_buffer_write_io_error", align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"\013VFS: brelse: Trying to free free buffer\0A\00", align 1
@__kstrtab___brelse = external dso_local constant [0 x i8], align 1
@__kstrtabns___brelse = external dso_local constant [0 x i8], align 1
@__ksymtab___brelse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__brelse to i32), ptr @__kstrtab___brelse, ptr @__kstrtabns___brelse }, section "___ksymtab+__brelse", align 4
@__kstrtab___bforget = external dso_local constant [0 x i8], align 1
@__kstrtabns___bforget = external dso_local constant [0 x i8], align 1
@__ksymtab___bforget = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bforget to i32), ptr @__kstrtab___bforget, ptr @__kstrtabns___bforget }, section "___ksymtab+__bforget", align 4
@__kstrtab___find_get_block = external dso_local constant [0 x i8], align 1
@__kstrtabns___find_get_block = external dso_local constant [0 x i8], align 1
@__ksymtab___find_get_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__find_get_block to i32), ptr @__kstrtab___find_get_block, ptr @__kstrtabns___find_get_block }, section "___ksymtab+__find_get_block", align 4
@__kstrtab___getblk_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns___getblk_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab___getblk_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__getblk_gfp to i32), ptr @__kstrtab___getblk_gfp, ptr @__kstrtabns___getblk_gfp }, section "___ksymtab+__getblk_gfp", align 4
@__kstrtab___breadahead = external dso_local constant [0 x i8], align 1
@__kstrtabns___breadahead = external dso_local constant [0 x i8], align 1
@__ksymtab___breadahead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__breadahead to i32), ptr @__kstrtab___breadahead, ptr @__kstrtabns___breadahead }, section "___ksymtab+__breadahead", align 4
@__kstrtab___breadahead_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns___breadahead_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab___breadahead_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__breadahead_gfp to i32), ptr @__kstrtab___breadahead_gfp, ptr @__kstrtabns___breadahead_gfp }, section "___ksymtab+__breadahead_gfp", align 4
@__kstrtab___bread_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns___bread_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab___bread_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bread_gfp to i32), ptr @__kstrtab___bread_gfp, ptr @__kstrtabns___bread_gfp }, section "___ksymtab+__bread_gfp", align 4
@bh_lrus = internal global %struct.bh_lru zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_invalidate_bh_lrus = external dso_local constant [0 x i8], align 1
@__kstrtabns_invalidate_bh_lrus = external dso_local constant [0 x i8], align 1
@__ksymtab_invalidate_bh_lrus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @invalidate_bh_lrus to i32), ptr @__kstrtab_invalidate_bh_lrus, ptr @__kstrtabns_invalidate_bh_lrus }, section "___ksymtab_gpl+invalidate_bh_lrus", align 4
@__kstrtab_set_bh_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_bh_page = external dso_local constant [0 x i8], align 1
@__ksymtab_set_bh_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_bh_page to i32), ptr @__kstrtab_set_bh_page, ptr @__kstrtabns_set_bh_page }, section "___ksymtab+set_bh_page", align 4
@__kstrtab_block_invalidatepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_invalidatepage = external dso_local constant [0 x i8], align 1
@__ksymtab_block_invalidatepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_invalidatepage to i32), ptr @__kstrtab_block_invalidatepage, ptr @__kstrtabns_block_invalidatepage }, section "___ksymtab+block_invalidatepage", align 4
@__kstrtab_create_empty_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_create_empty_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_create_empty_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @create_empty_buffers to i32), ptr @__kstrtab_create_empty_buffers, ptr @__kstrtabns_create_empty_buffers }, section "___ksymtab+create_empty_buffers", align 4
@__kstrtab_clean_bdev_aliases = external dso_local constant [0 x i8], align 1
@__kstrtabns_clean_bdev_aliases = external dso_local constant [0 x i8], align 1
@__ksymtab_clean_bdev_aliases = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clean_bdev_aliases to i32), ptr @__kstrtab_clean_bdev_aliases, ptr @__kstrtabns_clean_bdev_aliases }, section "___ksymtab+clean_bdev_aliases", align 4
@__kstrtab___block_write_full_page = external dso_local constant [0 x i8], align 1
@__kstrtabns___block_write_full_page = external dso_local constant [0 x i8], align 1
@__ksymtab___block_write_full_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__block_write_full_page to i32), ptr @__kstrtab___block_write_full_page, ptr @__kstrtabns___block_write_full_page }, section "___ksymtab+__block_write_full_page", align 4
@__kstrtab_page_zero_new_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_zero_new_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_page_zero_new_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_zero_new_buffers to i32), ptr @__kstrtab_page_zero_new_buffers, ptr @__kstrtabns_page_zero_new_buffers }, section "___ksymtab+page_zero_new_buffers", align 4
@__kstrtab___block_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns___block_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab___block_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__block_write_begin to i32), ptr @__kstrtab___block_write_begin, ptr @__kstrtabns___block_write_begin }, section "___ksymtab+__block_write_begin", align 4
@__kstrtab_block_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_block_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_write_begin to i32), ptr @__kstrtab_block_write_begin, ptr @__kstrtabns_block_write_begin }, section "___ksymtab+block_write_begin", align 4
@__kstrtab_block_write_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_write_end = external dso_local constant [0 x i8], align 1
@__ksymtab_block_write_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_write_end to i32), ptr @__kstrtab_block_write_end, ptr @__kstrtabns_block_write_end }, section "___ksymtab+block_write_end", align 4
@__kstrtab_generic_write_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_write_end = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_write_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_write_end to i32), ptr @__kstrtab_generic_write_end, ptr @__kstrtabns_generic_write_end }, section "___ksymtab+generic_write_end", align 4
@__kstrtab_block_is_partially_uptodate = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_is_partially_uptodate = external dso_local constant [0 x i8], align 1
@__ksymtab_block_is_partially_uptodate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_is_partially_uptodate to i32), ptr @__kstrtab_block_is_partially_uptodate, ptr @__kstrtabns_block_is_partially_uptodate }, section "___ksymtab+block_is_partially_uptodate", align 4
@__kstrtab_block_read_full_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_read_full_page = external dso_local constant [0 x i8], align 1
@__ksymtab_block_read_full_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_read_full_page to i32), ptr @__kstrtab_block_read_full_page, ptr @__kstrtabns_block_read_full_page }, section "___ksymtab+block_read_full_page", align 4
@__kstrtab_generic_cont_expand_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_cont_expand_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_cont_expand_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_cont_expand_simple to i32), ptr @__kstrtab_generic_cont_expand_simple, ptr @__kstrtabns_generic_cont_expand_simple }, section "___ksymtab+generic_cont_expand_simple", align 4
@__kstrtab_cont_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_cont_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_cont_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cont_write_begin to i32), ptr @__kstrtab_cont_write_begin, ptr @__kstrtabns_cont_write_begin }, section "___ksymtab+cont_write_begin", align 4
@__kstrtab_block_commit_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_commit_write = external dso_local constant [0 x i8], align 1
@__ksymtab_block_commit_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_commit_write to i32), ptr @__kstrtab_block_commit_write, ptr @__kstrtabns_block_commit_write }, section "___ksymtab+block_commit_write", align 4
@__kstrtab_block_page_mkwrite = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_page_mkwrite = external dso_local constant [0 x i8], align 1
@__ksymtab_block_page_mkwrite = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_page_mkwrite to i32), ptr @__kstrtab_block_page_mkwrite, ptr @__kstrtabns_block_page_mkwrite }, section "___ksymtab+block_page_mkwrite", align 4
@__kstrtab_nobh_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_nobh_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_nobh_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nobh_write_begin to i32), ptr @__kstrtab_nobh_write_begin, ptr @__kstrtabns_nobh_write_begin }, section "___ksymtab+nobh_write_begin", align 4
@__kstrtab_nobh_write_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_nobh_write_end = external dso_local constant [0 x i8], align 1
@__ksymtab_nobh_write_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nobh_write_end to i32), ptr @__kstrtab_nobh_write_end, ptr @__kstrtabns_nobh_write_end }, section "___ksymtab+nobh_write_end", align 4
@__kstrtab_nobh_writepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_nobh_writepage = external dso_local constant [0 x i8], align 1
@__ksymtab_nobh_writepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nobh_writepage to i32), ptr @__kstrtab_nobh_writepage, ptr @__kstrtabns_nobh_writepage }, section "___ksymtab+nobh_writepage", align 4
@__kstrtab_nobh_truncate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_nobh_truncate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_nobh_truncate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nobh_truncate_page to i32), ptr @__kstrtab_nobh_truncate_page, ptr @__kstrtabns_nobh_truncate_page }, section "___ksymtab+nobh_truncate_page", align 4
@__kstrtab_block_truncate_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_truncate_page = external dso_local constant [0 x i8], align 1
@__ksymtab_block_truncate_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_truncate_page to i32), ptr @__kstrtab_block_truncate_page, ptr @__kstrtabns_block_truncate_page }, section "___ksymtab+block_truncate_page", align 4
@__kstrtab_block_write_full_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_block_write_full_page = external dso_local constant [0 x i8], align 1
@__ksymtab_block_write_full_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @block_write_full_page to i32), ptr @__kstrtab_block_write_full_page, ptr @__kstrtabns_block_write_full_page }, section "___ksymtab+block_write_full_page", align 4
@__kstrtab_generic_block_bmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_block_bmap = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_block_bmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_block_bmap to i32), ptr @__kstrtab_generic_block_bmap, ptr @__kstrtabns_generic_block_bmap }, section "___ksymtab+generic_block_bmap", align 4
@__kstrtab_submit_bh = external dso_local constant [0 x i8], align 1
@__kstrtabns_submit_bh = external dso_local constant [0 x i8], align 1
@__ksymtab_submit_bh = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @submit_bh to i32), ptr @__kstrtab_submit_bh, ptr @__kstrtabns_submit_bh }, section "___ksymtab+submit_bh", align 4
@__kstrtab_ll_rw_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_ll_rw_block = external dso_local constant [0 x i8], align 1
@__ksymtab_ll_rw_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ll_rw_block to i32), ptr @__kstrtab_ll_rw_block, ptr @__kstrtabns_ll_rw_block }, section "___ksymtab+ll_rw_block", align 4
@__kstrtab_write_dirty_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_write_dirty_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_write_dirty_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @write_dirty_buffer to i32), ptr @__kstrtab_write_dirty_buffer, ptr @__kstrtabns_write_dirty_buffer }, section "___ksymtab+write_dirty_buffer", align 4
@__kstrtab___sync_dirty_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns___sync_dirty_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab___sync_dirty_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sync_dirty_buffer to i32), ptr @__kstrtab___sync_dirty_buffer, ptr @__kstrtabns___sync_dirty_buffer }, section "___ksymtab+__sync_dirty_buffer", align 4
@__kstrtab_sync_dirty_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_sync_dirty_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_sync_dirty_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sync_dirty_buffer to i32), ptr @__kstrtab_sync_dirty_buffer, ptr @__kstrtabns_sync_dirty_buffer }, section "___ksymtab+sync_dirty_buffer", align 4
@__kstrtab_try_to_free_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_to_free_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_try_to_free_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_to_free_buffers to i32), ptr @__kstrtab_try_to_free_buffers, ptr @__kstrtabns_try_to_free_buffers }, section "___ksymtab+try_to_free_buffers", align 4
@bh_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@bh_accounting = internal global %struct.bh_accounting zeroinitializer, section ".data..percpu", align 4
@__kstrtab_alloc_buffer_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_buffer_head = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_buffer_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_buffer_head to i32), ptr @__kstrtab_alloc_buffer_head, ptr @__kstrtabns_alloc_buffer_head }, section "___ksymtab+alloc_buffer_head", align 4
@__kstrtab_free_buffer_head = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_buffer_head = external dso_local constant [0 x i8], align 1
@__ksymtab_free_buffer_head = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_buffer_head to i32), ptr @__kstrtab_free_buffer_head, ptr @__kstrtabns_free_buffer_head }, section "___ksymtab+free_buffer_head", align 4
@__kstrtab_bh_uptodate_or_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_bh_uptodate_or_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_bh_uptodate_or_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bh_uptodate_or_lock to i32), ptr @__kstrtab_bh_uptodate_or_lock, ptr @__kstrtabns_bh_uptodate_or_lock }, section "___ksymtab+bh_uptodate_or_lock", align 4
@__kstrtab_bh_submit_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_bh_submit_read = external dso_local constant [0 x i8], align 1
@__ksymtab_bh_submit_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bh_submit_read to i32), ptr @__kstrtab_bh_submit_read, ptr @__kstrtabns_bh_submit_read }, section "___ksymtab+bh_submit_read", align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"buffer_head\00", align 1
@max_buffer_heads = internal unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"fs/buffer:dead\00", align 1
@buffer_heads_over_limit = dso_local local_unnamed_addr global i32 0, align 4
@__tracepoint_block_touch_buffer = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@buffer_io_error._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.buffer_io_error = private unnamed_addr constant [16 x i8] c"buffer_io_error\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"\013Buffer I/O error on dev %pg, logical block %llu%s\0A\00", align 1
@__tracepoint_block_dirty_buffer = external dso_local global %struct.tracepoint, align 4
@__find_get_block_slow.last_warned = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 100, i32 1, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.__find_get_block_slow = private unnamed_addr constant [22 x i8] c"__find_get_block_slow\00", align 1
@.str.12 = private unnamed_addr constant [115 x i8] c"__find_get_block_slow() failed. block=%llu, b_blocknr=%llu, b_state=0x%08lx, b_size=%zu, device %pg blocksize: %d\0A\00", align 1
@lru_disable_count = external dso_local global %struct.atomic_t, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"\013getblk(): invalid block size %d requested\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"\013logical block size: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"\013%s: requested out-of-range block %llu for device %pg\0A\00", align 1
@__func__.grow_buffers = private unnamed_addr constant [13 x i8] c"grow_buffers\00", align 1
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c", async page read\00", align 1
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [57 x ptr] [ptr @__ksymtab___bforget, ptr @__ksymtab___block_write_begin, ptr @__ksymtab___block_write_full_page, ptr @__ksymtab___bread_gfp, ptr @__ksymtab___breadahead, ptr @__ksymtab___breadahead_gfp, ptr @__ksymtab___brelse, ptr @__ksymtab___find_get_block, ptr @__ksymtab___getblk_gfp, ptr @__ksymtab___lock_buffer, ptr @__ksymtab___set_page_dirty_buffers, ptr @__ksymtab___sync_dirty_buffer, ptr @__ksymtab___wait_on_buffer, ptr @__ksymtab_alloc_buffer_head, ptr @__ksymtab_alloc_page_buffers, ptr @__ksymtab_bh_submit_read, ptr @__ksymtab_bh_uptodate_or_lock, ptr @__ksymtab_block_commit_write, ptr @__ksymtab_block_invalidatepage, ptr @__ksymtab_block_is_partially_uptodate, ptr @__ksymtab_block_page_mkwrite, ptr @__ksymtab_block_read_full_page, ptr @__ksymtab_block_truncate_page, ptr @__ksymtab_block_write_begin, ptr @__ksymtab_block_write_end, ptr @__ksymtab_block_write_full_page, ptr @__ksymtab_buffer_check_dirty_writeback, ptr @__ksymtab_clean_bdev_aliases, ptr @__ksymtab_cont_write_begin, ptr @__ksymtab_create_empty_buffers, ptr @__ksymtab_end_buffer_async_write, ptr @__ksymtab_end_buffer_read_sync, ptr @__ksymtab_end_buffer_write_sync, ptr @__ksymtab_free_buffer_head, ptr @__ksymtab_generic_block_bmap, ptr @__ksymtab_generic_cont_expand_simple, ptr @__ksymtab_generic_write_end, ptr @__ksymtab_invalidate_bh_lrus, ptr @__ksymtab_invalidate_inode_buffers, ptr @__ksymtab_ll_rw_block, ptr @__ksymtab_mark_buffer_async_write, ptr @__ksymtab_mark_buffer_dirty, ptr @__ksymtab_mark_buffer_dirty_inode, ptr @__ksymtab_mark_buffer_write_io_error, ptr @__ksymtab_nobh_truncate_page, ptr @__ksymtab_nobh_write_begin, ptr @__ksymtab_nobh_write_end, ptr @__ksymtab_nobh_writepage, ptr @__ksymtab_page_zero_new_buffers, ptr @__ksymtab_set_bh_page, ptr @__ksymtab_submit_bh, ptr @__ksymtab_sync_dirty_buffer, ptr @__ksymtab_sync_mapping_buffers, ptr @__ksymtab_touch_buffer, ptr @__ksymtab_try_to_free_buffers, ptr @__ksymtab_unlock_buffer, ptr @__ksymtab_write_dirty_buffer], section "llvm.metadata"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @touch_buffer(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_touch_buffer, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #13
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %16 = tail call i32 @__traceiter_block_touch_buffer(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  tail call void @mark_page_accessed(ptr noundef %19) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mark_page_accessed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__lock_buffer(ptr noundef %0) #2 {
  %2 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlock_buffer(ptr noundef %0) #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @buffer_check_dirty_writeback(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #2 {
  store i8 0, ptr %1, align 1
  store i8 0, ptr %2, align 1
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !15

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !16

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 93, 0\0A.popsection", ""() #13, !srcloc !17
  unreachable

19:                                               ; preds = %12
  %20 = load volatile i32, ptr %0, align 4
  %21 = and i32 %20, 8192
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %4, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !15

27:                                               ; preds = %23
  %28 = add i32 %24, -1
  br label %31

29:                                               ; preds = %23
  %30 = ptrtoint ptr %0 to i32
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = inttoptr i32 %32 to ptr
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 32768
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i8 1, ptr %2, align 1
  br label %38

38:                                               ; preds = %37, %31
  %39 = load volatile i32, ptr %0, align 4
  %40 = and i32 %39, 8192
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43, !prof !16

42:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #13, !srcloc !18
  unreachable

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = inttoptr i32 %45 to ptr
  br label %47

47:                                               ; preds = %58, %43
  %48 = phi ptr [ %46, %43 ], [ %60, %58 ]
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i8 1, ptr %2, align 1
  br label %53

53:                                               ; preds = %52, %47
  %54 = load volatile i32, ptr %48, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i8 1, ptr %1, align 1
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, %46
  br i1 %61, label %62, label %47

62:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__wait_on_buffer(ptr noundef %0) #2 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @end_buffer_read_sync(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #13
  br label %10

9:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #13
  br label %10

10:                                               ; preds = %9, %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %12 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @end_buffer_write_sync(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  %4 = load volatile i32, ptr %0, align 4
  br i1 %3, label %9, label %5

5:                                                ; preds = %2
  %6 = and i32 %4, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #13
  br label %22

9:                                                ; preds = %2
  %10 = and i32 %4, 4096
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = tail call i32 @___ratelimit(ptr noundef nonnull @buffer_io_error._rs, ptr noundef nonnull @__func__.buffer_io_error) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %17, i64 noundef %19, ptr noundef nonnull @.str) #14
  br label %21

21:                                               ; preds = %15, %12, %9
  tail call void @mark_buffer_write_io_error(ptr noundef %0)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #13
  br label %22

22:                                               ; preds = %21, %8, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %24 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #13, !srcloc !12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #13, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_buffer_write_io_error(ptr noundef %0) #2 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1024
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 10, ptr noundef %0) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  tail call void @__filemap_set_wb_err(ptr noundef nonnull %12, i32 noundef -5) #13
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 44
  %21 = tail call i32 @errseq_set(ptr noundef %20, i32 noundef -5) #13
  br label %22

22:                                               ; preds = %17, %14
  %23 = getelementptr inbounds %struct.address_space, ptr %12, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %23) #13
  br label %24

24:                                               ; preds = %22, %10, %6
  %25 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  tail call void @__filemap_set_wb_err(ptr noundef nonnull %26, i32 noundef -5) #13
  %29 = load ptr, ptr %26, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.super_block, ptr %33, i32 0, i32 44
  %35 = tail call i32 @errseq_set(ptr noundef %34, i32 noundef -5) #13
  br label %36

36:                                               ; preds = %31, %28
  %37 = getelementptr inbounds %struct.address_space, ptr %26, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %37) #13
  br label %38

38:                                               ; preds = %36, %24
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  %39 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.block_device, ptr %40, i32 0, i32 8
  %42 = load volatile ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 44
  %46 = tail call i32 @errseq_set(ptr noundef %45, i32 noundef -5) #13
  br label %47

47:                                               ; preds = %44, %38
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @end_buffer_async_write(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 349, 0\0A.popsection", ""() #13, !srcloc !23
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %1, 0
  %11 = load volatile i32, ptr %0, align 4
  br i1 %10, label %16, label %12

12:                                               ; preds = %7
  %13 = and i32 %11, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #13
  br label %40

16:                                               ; preds = %7
  %17 = and i32 %11, 4096
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = tail call i32 @___ratelimit(ptr noundef nonnull @buffer_io_error._rs, ptr noundef nonnull @__func__.buffer_io_error) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 3
  %26 = load i64, ptr %25, align 8
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %24, i64 noundef %26, ptr noundef nonnull @.str.1) #14
  br label %28

28:                                               ; preds = %22, %19, %16
  tail call void @mark_buffer_write_io_error(ptr noundef %0)
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #13
  %29 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33, !prof !15

33:                                               ; preds = %28
  %34 = add i32 %30, -1
  br label %37

35:                                               ; preds = %28
  %36 = ptrtoint ptr %9 to i32
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = inttoptr i32 %38 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %39) #13
  br label %40

40:                                               ; preds = %37, %15, %12
  %41 = load volatile i32, ptr %9, align 4
  %42 = and i32 %41, 8192
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45, !prof !16

44:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 361, 0\0A.popsection", ""() #13, !srcloc !24
  unreachable

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr inbounds %struct.buffer_head, ptr %48, i32 0, i32 12
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #13
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %0) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  br label %52

52:                                               ; preds = %57, %45
  %53 = phi ptr [ %0, %45 ], [ %55, %57 ]
  %54 = getelementptr inbounds %struct.buffer_head, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = load volatile i32, ptr %55, align 4
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %52, label %61

61:                                               ; preds = %57
  %62 = load volatile i32, ptr %55, align 4
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67, !prof !16

65:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 369, 0\0A.popsection", ""() #13, !srcloc !25
  unreachable

66:                                               ; preds = %52
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #13
  tail call void @end_page_writeback(ptr noundef %9) #13
  br label %68

67:                                               ; preds = %61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #13
  br label %68

68:                                               ; preds = %67, %66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @end_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_buffer_async_write(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 7
  store ptr @end_buffer_async_write, ptr %2, align 4
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 7, ptr noundef %0) #13
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @inode_has_buffers(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp ne ptr %3, %2
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @emergency_thaw_bdev(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 20
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %12, %9 ], [ %3, %1 ]
  %7 = tail call i32 @thaw_bdev(ptr noundef nonnull %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %10) #14
  %12 = load ptr, ptr %2, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5

14:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_bdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sync_mapping_buffers(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = alloca %struct.blk_plug, align 4
  %4 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %162, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 13
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %162, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false) #13, !annotation !26
  store volatile ptr %2, ptr %2, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %13, align 4
  call void @blk_start_plug(ptr noundef nonnull %3) #13
  call void @_raw_spin_lock(ptr noundef %12) #13
  %14 = load volatile ptr, ptr %8, align 4
  %15 = icmp eq ptr %14, %8
  br i1 %15, label %58, label %16

16:                                               ; preds = %55, %11
  %17 = phi ptr [ %56, %55 ], [ %14, %11 ]
  %18 = getelementptr i8, ptr %17, i32 -44
  %19 = getelementptr i8, ptr %17, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %17, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %21, align 4
  %25 = load ptr, ptr %19, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !16

27:                                               ; preds = %16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 480, i32 noundef 9, ptr noundef null) #13
  br label %28

28:                                               ; preds = %27, %16
  store ptr null, ptr %19, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  %29 = load volatile i32, ptr %18, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load volatile i32, ptr %18, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %32, %28
  %37 = load ptr, ptr %2, align 8
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %17, ptr %38, align 4
  store ptr %37, ptr %17, align 4
  store ptr %2, ptr %21, align 4
  store volatile ptr %17, ptr %2, align 8
  store ptr %20, ptr %19, align 4
  %39 = load volatile i32, ptr %18, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %17, i32 12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #13, !srcloc !12
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #13, !srcloc !28
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %45 = load i16, ptr %12, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  call void @write_dirty_buffer(ptr noundef %18, i32 noundef 2048) #13
  %47 = icmp eq ptr %18, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load volatile i32, ptr %43, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #13, !srcloc !12
  %52 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #13, !srcloc !20
  br label %54

53:                                               ; preds = %48
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %54

54:                                               ; preds = %53, %51, %42
  call void @_raw_spin_lock(ptr noundef %12) #13
  br label %55

55:                                               ; preds = %54, %36, %32
  %56 = load volatile ptr, ptr %8, align 4
  %57 = icmp eq ptr %56, %8
  br i1 %57, label %58, label %16

58:                                               ; preds = %55, %11
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %59 = load i16, ptr %12, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  call void @blk_finish_plug(ptr noundef nonnull %3) #13
  call void @_raw_spin_lock(ptr noundef %12) #13
  %61 = load volatile ptr, ptr %2, align 8
  %62 = icmp eq ptr %61, %2
  br i1 %62, label %113, label %63

63:                                               ; preds = %110, %58
  %64 = phi i32 [ %102, %110 ], [ 0, %58 ]
  %65 = load ptr, ptr %13, align 4
  %66 = getelementptr i8, ptr %65, i32 -44
  %67 = getelementptr i8, ptr %65, i32 12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #13, !srcloc !12
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #13, !srcloc !28
  %69 = getelementptr i8, ptr %65, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %65, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %65, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %72, ptr %74, align 4
  store volatile ptr %73, ptr %72, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %71, align 4
  %75 = load ptr, ptr %69, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78, !prof !16

77:                                               ; preds = %63
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 480, i32 noundef 9, ptr noundef null) #13
  br label %78

78:                                               ; preds = %77, %63
  store ptr null, ptr %69, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %79 = load volatile i32, ptr %66, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.address_space, ptr %70, i32 0, i32 13
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %65, ptr %85, align 4
  store ptr %84, ptr %65, align 4
  store ptr %83, ptr %71, align 4
  store volatile ptr %65, ptr %83, align 4
  store ptr %70, ptr %69, align 4
  br label %86

86:                                               ; preds = %82, %78
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %87 = load i16, ptr %12, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %89 = load volatile i32, ptr %66, align 4
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load volatile i32, ptr %66, align 4
  %94 = and i32 %93, 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = call i32 @out_of_line_wait_on_bit(ptr noundef %66, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %98

98:                                               ; preds = %96, %92, %86
  %99 = load volatile i32, ptr %66, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 -5, i32 %64
  %103 = icmp eq ptr %66, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load volatile i32, ptr %67, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %67) #13, !srcloc !12
  %108 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %67, ptr %67, i32 1, ptr elementtype(i32) %67) #13, !srcloc !20
  br label %110

109:                                              ; preds = %104
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %110

110:                                              ; preds = %109, %107, %98
  call void @_raw_spin_lock(ptr noundef %12) #13
  %111 = load volatile ptr, ptr %2, align 8
  %112 = icmp eq ptr %111, %2
  br i1 %112, label %113, label %63

113:                                              ; preds = %110, %58
  %114 = phi i32 [ 0, %58 ], [ %102, %110 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %115 = load i16, ptr %12, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %117

117:                                              ; preds = %156, %113
  %118 = phi i32 [ 0, %113 ], [ %148, %156 ]
  call void @_raw_spin_lock(ptr noundef %12) #13
  br label %119

119:                                              ; preds = %124, %117
  %120 = phi ptr [ %8, %117 ], [ %122, %124 ]
  %121 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %8
  br i1 %123, label %157, label %124

124:                                              ; preds = %119
  %125 = getelementptr i8, ptr %122, i32 -44
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %126, 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %119, label %129

129:                                              ; preds = %124
  %130 = getelementptr i8, ptr %122, i32 -44
  %131 = getelementptr i8, ptr %122, i32 12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #13, !srcloc !12
  %132 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #13, !srcloc !28
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %133 = load i16, ptr %12, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %135 = load volatile i32, ptr %130, align 4
  %136 = and i32 %135, 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %129
  %139 = load volatile i32, ptr %130, align 4
  %140 = and i32 %139, 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = call i32 @out_of_line_wait_on_bit(ptr noundef %130, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %144

144:                                              ; preds = %142, %138, %129
  %145 = load volatile i32, ptr %130, align 4
  %146 = and i32 %145, 1
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %147, i32 -5, i32 %118
  %149 = icmp eq ptr %130, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = load volatile i32, ptr %131, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #13, !srcloc !12
  %154 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 1, ptr elementtype(i32) %131) #13, !srcloc !20
  br label %156

155:                                              ; preds = %150
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %156

156:                                              ; preds = %155, %153, %144
  br label %117

157:                                              ; preds = %119
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %158 = load i16, ptr %12, align 4
  %159 = add i16 %158, 1
  store i16 %159, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %160 = icmp eq i32 %114, 0
  %161 = select i1 %160, i32 %118, i32 %114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %162

162:                                              ; preds = %157, %7, %1
  %163 = phi i32 [ %161, %157 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @write_boundary_block(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = add i64 %1, 1
  %6 = tail call ptr @__find_get_block(ptr noundef %0, i64 noundef %5, i32 noundef %2)
  store ptr %6, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  call void @ll_rw_block(i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4)
  br label %13

13:                                               ; preds = %12, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %14 = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #13, !srcloc !12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #13, !srcloc !20
  br label %16

16:                                               ; preds = %13, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__find_get_block(ptr noundef %0, i64 noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !34
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !15

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1222, 0\0A.popsection", ""() #13, !srcloc !35
  unreachable

8:                                                ; preds = %3
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !36
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #11, !srcloc !37
  br label %12

12:                                               ; preds = %56, %8
  %13 = phi i32 [ 0, %8 ], [ %57, %56 ]
  %14 = getelementptr [16 x ptr], ptr @bh_lrus, i32 0, i32 %13
  %15 = ptrtoint ptr %14 to i32
  %16 = add i32 %11, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, %1
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 6
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = icmp eq i32 %13, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %34, %32
  %35 = phi i32 [ %36, %34 ], [ %13, %32 ]
  %36 = add nsw i32 %35, -1
  %37 = getelementptr [16 x ptr], ptr @bh_lrus, i32 0, i32 %36
  %38 = ptrtoint ptr %37 to i32
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #11, !srcloc !37
  %42 = add i32 %41, %38
  %43 = inttoptr i32 %42 to ptr
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr [16 x ptr], ptr @bh_lrus, i32 0, i32 %35
  %46 = ptrtoint ptr %45 to i32
  %47 = add i32 %41, %46
  %48 = inttoptr i32 %47 to ptr
  store ptr %44, ptr %48, align 4
  %49 = icmp eq i32 %36, 0
  br i1 %49, label %50, label %34

50:                                               ; preds = %34
  %51 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %52 = inttoptr i32 %51 to ptr
  %53 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %52) #11, !srcloc !37
  %54 = add i32 %53, ptrtoint (ptr @bh_lrus to i32)
  %55 = inttoptr i32 %54 to ptr
  store ptr %18, ptr %55, align 4
  br label %73

56:                                               ; preds = %28, %24, %20, %12
  %57 = add nuw nsw i32 %13, 1
  %58 = icmp eq i32 %57, 16
  br i1 %58, label %59, label %12

59:                                               ; preds = %56
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !38
  %60 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 9
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.inode, ptr %61, i32 0, i32 19
  %65 = load i8, ptr %64, align 2
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 12, %66
  %68 = zext i32 %67 to i64
  %69 = lshr i64 %1, %68
  %70 = trunc i64 %69 to i32
  %71 = tail call ptr @pagecache_get_page(ptr noundef %63, i32 noundef %70, i32 noundef 1, i32 noundef 0) #13
  %72 = icmp eq ptr %71, null
  br i1 %72, label %256, label %78

73:                                               ; preds = %50, %32
  %74 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #13, !srcloc !12
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #13, !srcloc !28
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !38
  %76 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_touch_buffer, i32 0, i32 1), align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %240, label %253

78:                                               ; preds = %59
  %79 = getelementptr inbounds %struct.address_space, ptr %63, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %79) #13
  %80 = load volatile i32, ptr %71, align 4
  %81 = and i32 %80, 8192
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %130, label %83

83:                                               ; preds = %78
  %84 = load volatile i32, ptr %71, align 4
  %85 = and i32 %84, 8192
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88, !prof !16

87:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #13, !srcloc !39
  unreachable

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = inttoptr i32 %90 to ptr
  br label %92

92:                                               ; preds = %111, %88
  %93 = phi ptr [ %113, %111 ], [ %91, %88 ]
  %94 = phi i1 [ true, %111 ], [ false, %88 ]
  br label %95

95:                                               ; preds = %107, %92
  %96 = phi ptr [ %109, %107 ], [ %93, %92 ]
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 3
  %102 = load i64, ptr %101, align 8
  %103 = icmp eq i64 %102, %1
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %105) #13, !srcloc !12
  %106 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %105, ptr %105, i32 1, ptr elementtype(i32) %105) #13, !srcloc !28
  br label %130

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, %91
  br i1 %110, label %116, label %95

111:                                              ; preds = %95
  %112 = getelementptr inbounds %struct.buffer_head, ptr %96, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %91
  br i1 %114, label %115, label %92

115:                                              ; preds = %111
  store i32 1, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @__find_get_block_slow.last_warned, i32 0, i32 6), align 4
  br label %130

116:                                              ; preds = %107
  store i32 1, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @__find_get_block_slow.last_warned, i32 0, i32 6), align 4
  br i1 %94, label %130, label %117

117:                                              ; preds = %116
  %118 = tail call i32 @___ratelimit(ptr noundef nonnull @__find_get_block_slow.last_warned, ptr noundef nonnull @__func__.__find_get_block_slow) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.buffer_head, ptr %91, i32 0, i32 3
  %122 = load i64, ptr %121, align 8
  %123 = load i32, ptr %91, align 8
  %124 = getelementptr inbounds %struct.buffer_head, ptr %91, i32 0, i32 4
  %125 = load i32, ptr %124, align 8
  %126 = load i8, ptr %64, align 2
  %127 = zext i8 %126 to i32
  %128 = shl nuw i32 1, %127
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i64 noundef %1, i64 noundef %122, i32 noundef %123, i32 noundef %125, ptr noundef %0, i32 noundef %128) #14
  br label %130

130:                                              ; preds = %120, %117, %116, %115, %104, %78
  %131 = phi ptr [ %96, %104 ], [ null, %120 ], [ null, %117 ], [ null, %116 ], [ null, %78 ], [ null, %115 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %132 = load i16, ptr %79, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %134 = getelementptr inbounds %struct.page, ptr %71, i32 0, i32 1
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138, !prof !15

138:                                              ; preds = %130
  %139 = add i32 %135, -1
  br label %142

140:                                              ; preds = %130
  %141 = ptrtoint ptr %71 to i32
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  %144 = inttoptr i32 %143 to ptr
  %145 = getelementptr inbounds %struct.page, ptr %144, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %145) #13, !srcloc !12
  %146 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %145, ptr %145, i32 1, ptr elementtype(i32) %145) #13, !srcloc !41
  %147 = extractvalue { i32, i32 } %146, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  tail call void @__put_page(ptr noundef %144) #13
  br label %150

150:                                              ; preds = %149, %142
  %151 = icmp eq ptr %131, null
  br i1 %151, label %256, label %152

152:                                              ; preds = %150
  %153 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !34
  %154 = and i32 %153, 128
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156, !prof !15

156:                                              ; preds = %152
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1222, 0\0A.popsection", ""() #13, !srcloc !35
  unreachable

157:                                              ; preds = %152
  %158 = load volatile i32, ptr @lru_disable_count, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %256

160:                                              ; preds = %157
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !36
  %161 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %162 = inttoptr i32 %161 to ptr
  %163 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %162) #11, !srcloc !37
  %164 = add i32 %163, ptrtoint (ptr @bh_lrus to i32)
  %165 = inttoptr i32 %164 to ptr
  %166 = load ptr, ptr %165, align 4
  store ptr %131, ptr %165, align 4
  %167 = icmp eq ptr %166, %131
  br i1 %167, label %232, label %168

168:                                              ; preds = %160
  %169 = getelementptr [16 x ptr], ptr %165, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  store ptr %166, ptr %169, align 4
  %171 = icmp eq ptr %170, %131
  br i1 %171, label %232, label %172

172:                                              ; preds = %168
  %173 = getelementptr [16 x ptr], ptr %165, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  store ptr %170, ptr %173, align 4
  %175 = icmp eq ptr %174, %131
  br i1 %175, label %232, label %176

176:                                              ; preds = %172
  %177 = getelementptr [16 x ptr], ptr %165, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  store ptr %174, ptr %177, align 4
  %179 = icmp eq ptr %178, %131
  br i1 %179, label %232, label %180

180:                                              ; preds = %176
  %181 = getelementptr [16 x ptr], ptr %165, i32 0, i32 4
  %182 = load ptr, ptr %181, align 4
  store ptr %178, ptr %181, align 4
  %183 = icmp eq ptr %182, %131
  br i1 %183, label %232, label %184

184:                                              ; preds = %180
  %185 = getelementptr [16 x ptr], ptr %165, i32 0, i32 5
  %186 = load ptr, ptr %185, align 4
  store ptr %182, ptr %185, align 4
  %187 = icmp eq ptr %186, %131
  br i1 %187, label %232, label %188

188:                                              ; preds = %184
  %189 = getelementptr [16 x ptr], ptr %165, i32 0, i32 6
  %190 = load ptr, ptr %189, align 4
  store ptr %186, ptr %189, align 4
  %191 = icmp eq ptr %190, %131
  br i1 %191, label %232, label %192

192:                                              ; preds = %188
  %193 = getelementptr [16 x ptr], ptr %165, i32 0, i32 7
  %194 = load ptr, ptr %193, align 4
  store ptr %190, ptr %193, align 4
  %195 = icmp eq ptr %194, %131
  br i1 %195, label %232, label %196

196:                                              ; preds = %192
  %197 = getelementptr [16 x ptr], ptr %165, i32 0, i32 8
  %198 = load ptr, ptr %197, align 4
  store ptr %194, ptr %197, align 4
  %199 = icmp eq ptr %198, %131
  br i1 %199, label %232, label %200

200:                                              ; preds = %196
  %201 = getelementptr [16 x ptr], ptr %165, i32 0, i32 9
  %202 = load ptr, ptr %201, align 4
  store ptr %198, ptr %201, align 4
  %203 = icmp eq ptr %202, %131
  br i1 %203, label %232, label %204

204:                                              ; preds = %200
  %205 = getelementptr [16 x ptr], ptr %165, i32 0, i32 10
  %206 = load ptr, ptr %205, align 4
  store ptr %202, ptr %205, align 4
  %207 = icmp eq ptr %206, %131
  br i1 %207, label %232, label %208

208:                                              ; preds = %204
  %209 = getelementptr [16 x ptr], ptr %165, i32 0, i32 11
  %210 = load ptr, ptr %209, align 4
  store ptr %206, ptr %209, align 4
  %211 = icmp eq ptr %210, %131
  br i1 %211, label %232, label %212

212:                                              ; preds = %208
  %213 = getelementptr [16 x ptr], ptr %165, i32 0, i32 12
  %214 = load ptr, ptr %213, align 4
  store ptr %210, ptr %213, align 4
  %215 = icmp eq ptr %214, %131
  br i1 %215, label %232, label %216

216:                                              ; preds = %212
  %217 = getelementptr [16 x ptr], ptr %165, i32 0, i32 13
  %218 = load ptr, ptr %217, align 4
  store ptr %214, ptr %217, align 4
  %219 = icmp eq ptr %218, %131
  br i1 %219, label %232, label %220

220:                                              ; preds = %216
  %221 = getelementptr [16 x ptr], ptr %165, i32 0, i32 14
  %222 = load ptr, ptr %221, align 4
  store ptr %218, ptr %221, align 4
  %223 = icmp eq ptr %222, %131
  br i1 %223, label %232, label %224

224:                                              ; preds = %220
  %225 = getelementptr [16 x ptr], ptr %165, i32 0, i32 15
  %226 = load ptr, ptr %225, align 4
  store ptr %222, ptr %225, align 4
  %227 = icmp eq ptr %226, %131
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.buffer_head, ptr %131, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %229) #13, !srcloc !12
  %230 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %229, ptr %229, i32 1, ptr elementtype(i32) %229) #13, !srcloc !28
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !38
  %231 = icmp eq ptr %226, null
  br i1 %231, label %256, label %233

232:                                              ; preds = %224, %220, %216, %212, %208, %204, %200, %196, %192, %188, %184, %180, %176, %172, %168, %160
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !38
  br label %256

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.buffer_head, ptr %226, i32 0, i32 11
  %235 = load volatile i32, ptr %234, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %234) #13, !srcloc !12
  %238 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %234, ptr %234, i32 1, ptr elementtype(i32) %234) #13, !srcloc !20
  br label %256

239:                                              ; preds = %233
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %256

240:                                              ; preds = %73
  %241 = tail call ptr @llvm.thread.pointer() #13
  %242 = getelementptr inbounds %struct.thread_info, ptr %241, i32 0, i32 2
  %243 = load i32, ptr %242, align 8
  %244 = lshr i32 %243, 5
  %245 = getelementptr i32, ptr @__cpu_online_mask, i32 %244
  %246 = load volatile i32, ptr %245, align 4
  %247 = and i32 %243, 31
  %248 = shl nuw i32 1, %247
  %249 = and i32 %248, %246
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %240
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %252 = tail call i32 @__traceiter_block_touch_buffer(ptr noundef null, ptr noundef nonnull %18) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !10
  br label %253

253:                                              ; preds = %251, %240, %73
  %254 = getelementptr inbounds %struct.buffer_head, ptr %18, i32 0, i32 2
  %255 = load ptr, ptr %254, align 8
  tail call void @mark_page_accessed(ptr noundef %255) #13
  br label %256

256:                                              ; preds = %253, %239, %237, %232, %228, %157, %150, %59
  %257 = phi ptr [ null, %150 ], [ %18, %253 ], [ %131, %157 ], [ %131, %228 ], [ %131, %232 ], [ %131, %237 ], [ %131, %239 ], [ null, %59 ]
  ret ptr %257
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ll_rw_block(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #2 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, 1
  br label %8

8:                                                ; preds = %38, %6
  %9 = phi i32 [ 0, %6 ], [ %39, %38 ]
  %10 = getelementptr ptr, ptr %3, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #13, !srcloc !12
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 4, ptr elementtype(i32) %11) #13, !srcloc !43
  %17 = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %15
  br i1 %7, label %21, label %28

21:                                               ; preds = %20
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %11) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 7
  store ptr @end_buffer_write_sync, ptr %25, align 4
  %26 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %26) #13, !srcloc !12
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #13, !srcloc !28
  tail call fastcc void @submit_bh_wbc(i32 noundef 1, i32 noundef %1, ptr noundef %11, i32 noundef 0, ptr noundef null) #13
  br label %38

28:                                               ; preds = %20
  %29 = load volatile i32, ptr %11, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 7
  store ptr @end_buffer_read_sync, ptr %33, align 4
  %34 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #13, !srcloc !12
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #13, !srcloc !28
  tail call fastcc void @submit_bh_wbc(i32 noundef %0, i32 noundef %1, ptr noundef %11, i32 noundef 0, ptr noundef null) #13
  br label %38

36:                                               ; preds = %28, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #13, !srcloc !12
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 4, ptr elementtype(i32) %11) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %11, i32 noundef 2) #13
  br label %38

38:                                               ; preds = %36, %32, %24, %15, %8
  %39 = add nuw nsw i32 %9, 1
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %8

41:                                               ; preds = %38, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_buffer_dirty_inode(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @mark_buffer_dirty(ptr noundef %0)
  %9 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 14
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store ptr %8, ptr %9, align 4
  br label %16

13:                                               ; preds = %2
  %14 = icmp eq ptr %10, %8
  br i1 %14, label %16, label %15, !prof !15

15:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #13, !srcloc !45
  unreachable

16:                                               ; preds = %13, %12
  %17 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 9
  %23 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 13
  %24 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 9, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  %28 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 13, i32 1
  %29 = load ptr, ptr %28, align 4
  store ptr %22, ptr %28, align 4
  store ptr %23, ptr %22, align 4
  store ptr %29, ptr %24, align 4
  store volatile ptr %22, ptr %29, align 4
  store ptr %4, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %30 = load i16, ptr %21, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %32

32:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mark_buffer_dirty(ptr noundef %0) #2 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @mark_buffer_dirty.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %1
  store i1 true, ptr @mark_buffer_dirty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1084, i32 noundef 9, ptr noundef null) #13
  br label %9

9:                                                ; preds = %8, %1
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_dirty_buffer, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !46
  %24 = tail call i32 @__traceiter_block_dirty_buffer(ptr noundef null, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !47
  br label %25

25:                                               ; preds = %23, %12, %9
  %26 = load volatile i32, ptr %0, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !48
  %30 = load volatile i32, ptr %0, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %29, %25
  %34 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %0) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !15

43:                                               ; preds = %36
  %44 = add i32 %40, -1
  br label %47

45:                                               ; preds = %36
  %46 = ptrtoint ptr %38 to i32
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %49) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = tail call ptr @page_mapping(ptr noundef %38) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %52
  %56 = load volatile i32, ptr %39, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59, !prof !15

59:                                               ; preds = %55
  %60 = add i32 %56, -1
  br label %63

61:                                               ; preds = %55
  %62 = ptrtoint ptr %38 to i32
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = inttoptr i32 %64 to ptr
  tail call void @__folio_mark_dirty(ptr noundef %65, ptr noundef nonnull %53, i32 noundef 0) #13
  %66 = load ptr, ptr %53, align 4
  tail call void @__mark_inode_dirty(ptr noundef %66, i32 noundef 4) #13
  br label %67

67:                                               ; preds = %63, %52, %47, %33, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__set_page_dirty_buffers(ptr noundef %0) #2 {
  %2 = tail call ptr @page_mapping(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %19, !prof !16

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !15

9:                                                ; preds = %4
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %15) #13
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  br label %71

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %20) #13
  %21 = load volatile i32, ptr %0, align 4
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %19
  %25 = load volatile i32, ptr %0, align 4
  %26 = and i32 %25, 8192
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !16

28:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 626, 0\0A.popsection", ""() #13, !srcloc !49
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = inttoptr i32 %31 to ptr
  br label %33

33:                                               ; preds = %39, %29
  %34 = phi ptr [ %32, %29 ], [ %41, %39 ]
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void @_set_bit(i32 noundef 1, ptr noundef %34) #13
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %32
  br i1 %42, label %43, label %33

43:                                               ; preds = %39, %19
  %44 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48, !prof !15

48:                                               ; preds = %43
  %49 = add i32 %45, -1
  br label %52

50:                                               ; preds = %43
  %51 = ptrtoint ptr %0 to i32
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = inttoptr i32 %53 to ptr
  %55 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %54) #13
  %56 = icmp eq i32 %55, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %57 = load i16, ptr %20, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br i1 %56, label %59, label %71

59:                                               ; preds = %52
  %60 = load volatile i32, ptr %44, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63, !prof !15

63:                                               ; preds = %59
  %64 = add i32 %60, -1
  br label %67

65:                                               ; preds = %59
  %66 = ptrtoint ptr %0 to i32
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = inttoptr i32 %68 to ptr
  tail call void @__folio_mark_dirty(ptr noundef %69, ptr noundef nonnull %2, i32 noundef 1) #13
  %70 = load ptr, ptr %2, align 4
  tail call void @__mark_inode_dirty(ptr noundef %70, i32 noundef 4) #13
  br label %71

71:                                               ; preds = %67, %52, %13
  %72 = phi i32 [ %18, %13 ], [ 1, %67 ], [ 0, %52 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @invalidate_inode_buffers(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %8) #13
  %9 = load volatile ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %24, label %11

11:                                               ; preds = %21, %5
  %12 = phi ptr [ %22, %21 ], [ %9, %5 ]
  %13 = getelementptr i8, ptr %12, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %13, align 4
  %17 = getelementptr i8, ptr %12, i32 8
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !16

20:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 480, i32 noundef 9, ptr noundef null) #13
  br label %21

21:                                               ; preds = %20, %11
  store ptr null, ptr %17, align 4
  %22 = load volatile ptr, ptr %2, align 4
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %24, label %11

24:                                               ; preds = %21, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %25 = load i16, ptr %8, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %27

27:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_inode_buffers(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %8) #13
  %9 = load volatile ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %29, label %11

11:                                               ; preds = %26, %5
  %12 = phi ptr [ %27, %26 ], [ %9, %5 ]
  %13 = getelementptr i8, ptr %12, i32 -44
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %12, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %18, align 4
  %22 = getelementptr i8, ptr %12, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !16

25:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 480, i32 noundef 9, ptr noundef null) #13
  br label %26

26:                                               ; preds = %25, %17
  store ptr null, ptr %22, align 4
  %27 = load volatile ptr, ptr %2, align 4
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %11

29:                                               ; preds = %26, %11, %5
  %30 = phi i32 [ 1, %5 ], [ 0, %11 ], [ 1, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %31 = load i16, ptr %8, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi i32 [ %30, %29 ], [ 1, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_page_buffers(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
  %4 = select i1 %2, i32 4230208, i32 4197440
  %5 = sub i32 4096, %1
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %38

7:                                                ; preds = %33, %3
  %8 = phi i32 [ %36, %33 ], [ %5, %3 ]
  %9 = phi ptr [ %10, %33 ], [ null, %3 ]
  %10 = tail call ptr @alloc_buffer_head(i32 noundef %4)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %40, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %13, align 4
  %14 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 3
  store i64 -1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 4
  store i32 %1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 2
  store ptr %0, ptr %16, align 8
  %17 = icmp ugt i32 %8, 4095
  br i1 %17, label %18, label %19, !prof !16

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1446, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

19:                                               ; preds = %12
  %20 = load i32, ptr %0, align 4
  %21 = lshr i32 %20, 30
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = icmp ne i32 %21, 3
  %25 = load i32, ptr @movable_zone, align 4
  %26 = icmp ne i32 %25, 2
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %19
  %29 = inttoptr i32 %8 to ptr
  br label %33

30:                                               ; preds = %23
  %31 = tail call ptr @page_address(ptr noundef %0) #13
  %32 = getelementptr i8, ptr %31, i32 %8
  br label %33

33:                                               ; preds = %30, %28
  %34 = phi ptr [ %32, %30 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 5
  store ptr %34, ptr %35, align 4
  %36 = sub i32 %8, %1
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %7, label %38

38:                                               ; preds = %42, %40, %33, %3
  %39 = phi ptr [ null, %40 ], [ null, %3 ], [ null, %42 ], [ %10, %33 ]
  ret ptr %39

40:                                               ; preds = %7
  %41 = icmp eq ptr %9, null
  br i1 %41, label %38, label %42

42:                                               ; preds = %42, %40
  %43 = phi ptr [ %45, %42 ], [ %9, %40 ]
  %44 = getelementptr inbounds %struct.buffer_head, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @free_buffer_head(ptr noundef nonnull %43)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %38, label %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_buffer_head(i32 noundef %0) #2 {
  %2 = load ptr, ptr @bh_cachep, align 4
  %3 = or i32 %0, 256
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 9
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 9, i32 1
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 12
  store i32 0, ptr %9, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !51
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #11, !srcloc !37
  %13 = add i32 %12, ptrtoint (ptr @bh_accounting to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #11, !srcloc !37
  %20 = add i32 %19, ptrtoint (ptr getelementptr inbounds (%struct.bh_accounting, ptr @bh_accounting, i32 0, i32 1) to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = icmp slt i32 %22, 4096
  br i1 %24, label %50, label %25

25:                                               ; preds = %6
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #11, !srcloc !37
  %29 = add i32 %28, ptrtoint (ptr getelementptr inbounds (%struct.bh_accounting, ptr @bh_accounting, i32 0, i32 1) to i32)
  %30 = inttoptr i32 %29 to ptr
  store i32 0, ptr %30, align 4
  %31 = load i32, ptr @nr_cpu_ids, align 4
  %32 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %34, label %45

34:                                               ; preds = %34, %25
  %35 = phi i32 [ %43, %34 ], [ %32, %25 ]
  %36 = phi i32 [ %42, %34 ], [ 0, %25 ]
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @bh_accounting to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %36
  %43 = tail call i32 @cpumask_next(i32 noundef %35, ptr noundef nonnull @__cpu_online_mask) #15
  %44 = icmp ult i32 %43, %31
  br i1 %44, label %34, label %45

45:                                               ; preds = %34, %25
  %46 = phi i32 [ 0, %25 ], [ %42, %34 ]
  %47 = load i32, ptr @max_buffer_heads, align 4
  %48 = icmp ugt i32 %46, %47
  %49 = zext i1 %48 to i32
  store i32 %49, ptr @buffer_heads_over_limit, align 4
  br label %50

50:                                               ; preds = %45, %6
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  br label %51

51:                                               ; preds = %50, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_bh_page(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 8
  %5 = icmp ugt i32 %2, 4095
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1446, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4
  %9 = lshr i32 %8, 30
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = icmp ne i32 %9, 3
  %13 = load i32, ptr @movable_zone, align 4
  %14 = icmp ne i32 %13, 2
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %7
  %17 = inttoptr i32 %2 to ptr
  br label %21

18:                                               ; preds = %11
  %19 = tail call ptr @page_address(ptr noundef %1) #13
  %20 = getelementptr i8, ptr %19, i32 %2
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %20, %18 ], [ %17, %16 ]
  %23 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 5
  store ptr %22, ptr %23, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_buffer_head(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 9
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %6, label %5, !prof !15

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3325, 0\0A.popsection", ""() #13, !srcloc !53
  unreachable

6:                                                ; preds = %1
  %7 = load ptr, ptr @bh_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %0) #13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !54
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #11, !srcloc !37
  %11 = add i32 %10, ptrtoint (ptr @bh_accounting to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #11, !srcloc !37
  %18 = add i32 %17, ptrtoint (ptr getelementptr inbounds (%struct.bh_accounting, ptr @bh_accounting, i32 0, i32 1) to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = icmp slt i32 %20, 4096
  br i1 %22, label %48, label %23

23:                                               ; preds = %6
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #11, !srcloc !37
  %27 = add i32 %26, ptrtoint (ptr getelementptr inbounds (%struct.bh_accounting, ptr @bh_accounting, i32 0, i32 1) to i32)
  %28 = inttoptr i32 %27 to ptr
  store i32 0, ptr %28, align 4
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #15
  %31 = icmp ult i32 %30, %29
  br i1 %31, label %32, label %43

32:                                               ; preds = %32, %23
  %33 = phi i32 [ %41, %32 ], [ %30, %23 ]
  %34 = phi i32 [ %40, %32 ], [ 0, %23 ]
  %35 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, ptrtoint (ptr @bh_accounting to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %34
  %41 = tail call i32 @cpumask_next(i32 noundef %33, ptr noundef nonnull @__cpu_online_mask) #15
  %42 = icmp ult i32 %41, %29
  br i1 %42, label %32, label %43

43:                                               ; preds = %32, %23
  %44 = phi i32 [ 0, %23 ], [ %40, %32 ]
  %45 = load i32, ptr @max_buffer_heads, align 4
  %46 = icmp ugt i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, ptr @buffer_heads_over_limit, align 4
  br label %48

48:                                               ; preds = %43, %6
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__brelse(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #13, !srcloc !20
  br label %8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bforget(ptr noundef %0) #2 {
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %0) #13
  %2 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 9
  %12 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 9, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %12, align 4
  store ptr null, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %16 = load i16, ptr %10, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %18

18:                                               ; preds = %5, %1
  %19 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #13, !srcloc !12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #13, !srcloc !20
  br label %25

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %25

25:                                               ; preds = %24, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__getblk_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call ptr @__find_get_block(ptr noundef %0, i64 noundef %1, i32 noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %191

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 32, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = add i32 %13, -1
  %16 = select i1 %14, i32 511, i32 %15
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi i32 [ 511, %7 ], [ %16, %11 ]
  %19 = and i32 %18, %2
  %20 = icmp ne i32 %19, 0
  %21 = add i32 %2, -4097
  %22 = icmp ult i32 %21, -3585
  %23 = or i1 %22, %20
  br i1 %23, label %36, label %24, !prof !16

24:                                               ; preds = %17
  %25 = tail call i32 @llvm.cttz.i32(i32 %2, i1 false) #13, !range !56
  %26 = sub nsw i32 12, %25
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %1, %27
  %29 = icmp ult i64 %28, 4294967296
  %30 = trunc i64 %28 to i32
  %31 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %32 = shl i64 %28, %27
  %33 = sub nuw nsw i32 4096, %2
  %34 = and i64 %28, 4294967295
  %35 = shl i64 %34, %27
  br label %48

36:                                               ; preds = %17
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %2) #14
  %38 = load ptr, ptr %8, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 32, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 512, i32 %42
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i32 [ 512, %36 ], [ %44, %40 ]
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %46) #14
  tail call void @dump_stack() #14
  br label %191

48:                                               ; preds = %189, %24
  %49 = tail call ptr @__find_get_block(ptr noundef %0, i64 noundef %1, i32 noundef %2) #13
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %191

51:                                               ; preds = %48
  br i1 %29, label %54, label %52, !prof !15

52:                                               ; preds = %51
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.grow_buffers, i64 noundef %1, ptr noundef %0) #14
  br label %191

54:                                               ; preds = %51
  %55 = load ptr, ptr %31, align 4
  %56 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 9
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.address_space, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, -32897
  %61 = or i32 %60, %3
  %62 = or i32 %61, 32768
  %63 = tail call ptr @pagecache_get_page(ptr noundef %57, i32 noundef %30, i32 noundef 7, i32 noundef %62) #13
  %64 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !15

68:                                               ; preds = %54
  %69 = add i32 %65, -1
  br label %72

70:                                               ; preds = %54
  %71 = ptrtoint ptr %63 to i32
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = inttoptr i32 %73 to ptr
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79, !prof !16

78:                                               ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 951, 0\0A.popsection", ""() #13, !srcloc !57
  unreachable

79:                                               ; preds = %72
  %80 = load volatile i32, ptr %63, align 4
  %81 = and i32 %80, 8192
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %79
  %84 = load volatile i32, ptr %63, align 4
  %85 = and i32 %84, 8192
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88, !prof !16

87:                                               ; preds = %83
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 954, 0\0A.popsection", ""() #13, !srcloc !58
  unreachable

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 1, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr inbounds %struct.buffer_head, ptr %91, i32 0, i32 4
  %93 = load i32, ptr %92, align 8
  %94 = icmp eq i32 %93, %2
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = tail call fastcc i64 @init_page_buffers(ptr noundef %63, ptr noundef %0, i64 noundef %32, i32 noundef %2) #13
  br label %168

97:                                               ; preds = %88
  %98 = tail call i32 @try_to_free_buffers(ptr noundef %63) #13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %172, label %100

100:                                              ; preds = %97, %79
  br label %101

101:                                              ; preds = %127, %100
  %102 = phi i32 [ %130, %127 ], [ %33, %100 ]
  %103 = phi ptr [ %104, %127 ], [ null, %100 ]
  %104 = tail call ptr @alloc_buffer_head(i32 noundef 4230208) #13
  %105 = icmp eq ptr %104, null
  br i1 %105, label %132, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 1
  store ptr %103, ptr %107, align 4
  %108 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 3
  store i64 -1, ptr %108, align 8
  %109 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 4
  store i32 %2, ptr %109, align 8
  %110 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 2
  store ptr %63, ptr %110, align 8
  %111 = icmp ugt i32 %102, 4095
  br i1 %111, label %112, label %113, !prof !16

112:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1446, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

113:                                              ; preds = %106
  %114 = load i32, ptr %63, align 4
  %115 = lshr i32 %114, 30
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %122, label %117

117:                                              ; preds = %113
  %118 = icmp ne i32 %115, 3
  %119 = load i32, ptr @movable_zone, align 4
  %120 = icmp ne i32 %119, 2
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %117, %113
  %123 = inttoptr i32 %102 to ptr
  br label %127

124:                                              ; preds = %117
  %125 = tail call ptr @page_address(ptr noundef %63) #13
  %126 = getelementptr i8, ptr %125, i32 %102
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi ptr [ %126, %124 ], [ %123, %122 ]
  %129 = getelementptr inbounds %struct.buffer_head, ptr %104, i32 0, i32 5
  store ptr %128, ptr %129, align 4
  %130 = sub i32 %102, %2
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %101, label %139

132:                                              ; preds = %101
  %133 = icmp eq ptr %103, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %134, %132
  %135 = phi ptr [ %137, %134 ], [ %103, %132 ]
  %136 = getelementptr inbounds %struct.buffer_head, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  tail call void @free_buffer_head(ptr noundef nonnull %135) #13
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %134

139:                                              ; preds = %134, %132, %127
  %140 = phi ptr [ null, %132 ], [ null, %134 ], [ %104, %127 ]
  %141 = load ptr, ptr %56, align 8
  %142 = getelementptr inbounds %struct.address_space, ptr %141, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %142) #13
  br label %143

143:                                              ; preds = %143, %139
  %144 = phi ptr [ %140, %139 ], [ %146, %143 ]
  %145 = getelementptr inbounds %struct.buffer_head, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %143

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.buffer_head, ptr %144, i32 0, i32 1
  store ptr %140, ptr %149, align 4
  %150 = load volatile i32, ptr %64, align 4
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153, !prof !15

153:                                              ; preds = %148
  %154 = add i32 %150, -1
  br label %157

155:                                              ; preds = %148
  %156 = ptrtoint ptr %63 to i32
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = inttoptr i32 %158 to ptr
  %160 = getelementptr inbounds %struct.page, ptr %159, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %160) #13, !srcloc !12
  %161 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %160, ptr %160, i32 1, ptr elementtype(i32) %160) #13, !srcloc !28
  %162 = getelementptr inbounds %struct.anon.108, ptr %159, i32 0, i32 4
  store ptr %140, ptr %162, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %159) #13
  %163 = tail call fastcc i64 @init_page_buffers(ptr noundef %63, ptr noundef %0, i64 noundef %35, i32 noundef %2) #13
  %164 = load ptr, ptr %56, align 8
  %165 = getelementptr inbounds %struct.address_space, ptr %164, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %166 = load i16, ptr %165, align 4
  %167 = add i16 %166, 1
  store i16 %167, ptr %165, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %168

168:                                              ; preds = %157, %95
  %169 = phi i64 [ %96, %95 ], [ %163, %157 ]
  %170 = icmp ugt i64 %169, %1
  %171 = select i1 %170, i32 1, i32 -6
  br label %172

172:                                              ; preds = %168, %97
  %173 = phi i32 [ %171, %168 ], [ 0, %97 ]
  tail call void @unlock_page(ptr noundef %63) #13
  %174 = load volatile i32, ptr %64, align 4
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177, !prof !15

177:                                              ; preds = %172
  %178 = add i32 %174, -1
  br label %181

179:                                              ; preds = %172
  %180 = ptrtoint ptr %63 to i32
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = inttoptr i32 %182 to ptr
  %184 = getelementptr inbounds %struct.page, ptr %183, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %184) #13, !srcloc !12
  %185 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %184, ptr %184, i32 1, ptr elementtype(i32) %184) #13, !srcloc !41
  %186 = extractvalue { i32, i32 } %185, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  tail call void @__put_page(ptr noundef %183) #13
  br label %189

189:                                              ; preds = %188, %181
  %190 = icmp sgt i32 %173, -1
  br i1 %190, label %48, label %191

191:                                              ; preds = %189, %52, %48, %45, %4
  %192 = phi ptr [ %5, %4 ], [ null, %45 ], [ null, %52 ], [ null, %189 ], [ %49, %48 ]
  ret ptr %192
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__breadahead(ptr noundef %0, i64 noundef %1, i32 noundef %2) #2 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = tail call ptr @__getblk_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 8) #13
  store ptr %5, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !16

7:                                                ; preds = %3
  call void @ll_rw_block(i32 noundef 0, i32 noundef 524288, i32 noundef 1, ptr noundef nonnull %4)
  %8 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 11
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #13, !srcloc !12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #13, !srcloc !20
  br label %14

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %14

14:                                               ; preds = %13, %11, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__breadahead_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %6 = tail call ptr @__getblk_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3)
  store ptr %6, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !16

8:                                                ; preds = %4
  call void @ll_rw_block(i32 noundef 0, i32 noundef 524288, i32 noundef 1, ptr noundef nonnull %5)
  %9 = getelementptr inbounds %struct.buffer_head, ptr %6, i32 0, i32 11
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #13, !srcloc !12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #13, !srcloc !20
  br label %15

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %15

15:                                               ; preds = %14, %12, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__bread_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = tail call ptr @__getblk_gfp(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7, !prof !16

7:                                                ; preds = %4
  %8 = load volatile i32, ptr %5, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %7
  %12 = load volatile i32, ptr %5, align 4
  %13 = and i32 %12, 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #13, !srcloc !12
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 4, ptr nonnull elementtype(i32) %5) #13, !srcloc !43
  %17 = extractvalue { i32, i32, i32 } %16, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15, %11
  %21 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef nonnull %5) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %25

25:                                               ; preds = %23, %20, %15
  %26 = load volatile i32, ptr %5, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #13, !srcloc !12
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 4, ptr nonnull elementtype(i32) %5) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef nonnull %5, i32 noundef 2) #13
  br label %54

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #13, !srcloc !12
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #13, !srcloc !28
  %34 = getelementptr inbounds %struct.buffer_head, ptr %5, i32 0, i32 7
  store ptr @end_buffer_read_sync, ptr %34, align 4
  tail call fastcc void @submit_bh_wbc(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0, ptr noundef null) #13
  %35 = load volatile i32, ptr %5, align 4
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = load volatile i32, ptr %5, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @out_of_line_wait_on_bit(ptr noundef nonnull %5, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %44

44:                                               ; preds = %42, %38, %31
  %45 = load volatile i32, ptr %5, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load volatile i32, ptr %32, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #13, !srcloc !12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #13, !srcloc !20
  br label %54

53:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %54

54:                                               ; preds = %53, %51, %44, %29, %7, %4
  %55 = phi ptr [ %5, %7 ], [ null, %4 ], [ %5, %29 ], [ %5, %44 ], [ null, %51 ], [ null, %53 ]
  ret ptr %55
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @has_bh_in_lru(i32 noundef %0, ptr nocapture readnone %1) #6 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @bh_lrus to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %69

9:                                                ; preds = %2
  %10 = getelementptr [16 x ptr], ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %69

13:                                               ; preds = %9
  %14 = getelementptr [16 x ptr], ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %69

17:                                               ; preds = %13
  %18 = getelementptr [16 x ptr], ptr %6, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = getelementptr [16 x ptr], ptr %6, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = getelementptr [16 x ptr], ptr %6, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %25
  %30 = getelementptr [16 x ptr], ptr %6, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %69

33:                                               ; preds = %29
  %34 = getelementptr [16 x ptr], ptr %6, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = getelementptr [16 x ptr], ptr %6, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = getelementptr [16 x ptr], ptr %6, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = getelementptr [16 x ptr], ptr %6, i32 0, i32 10
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = getelementptr [16 x ptr], ptr %6, i32 0, i32 11
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = getelementptr [16 x ptr], ptr %6, i32 0, i32 12
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = getelementptr [16 x ptr], ptr %6, i32 0, i32 13
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = getelementptr [16 x ptr], ptr %6, i32 0, i32 14
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr [16 x ptr], ptr %6, i32 0, i32 15
  %67 = load ptr, ptr %66, align 4
  %68 = icmp ne ptr %67, null
  br label %69

69:                                               ; preds = %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %2
  %70 = phi i1 [ true, %2 ], [ true, %9 ], [ true, %13 ], [ true, %17 ], [ true, %21 ], [ true, %25 ], [ true, %29 ], [ true, %33 ], [ true, %37 ], [ true, %41 ], [ true, %45 ], [ true, %49 ], [ true, %53 ], [ true, %57 ], [ true, %61 ], [ %68, %65 ]
  ret i1 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @invalidate_bh_lrus() #2 {
  tail call void @on_each_cpu_cond_mask(ptr noundef nonnull @has_bh_in_lru, ptr noundef nonnull @invalidate_bh_lru, ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @invalidate_bh_lru(ptr nocapture noundef readnone %0) #2 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #11, !srcloc !37
  %5 = add i32 %4, ptrtoint (ptr @bh_lrus to i32)
  %6 = inttoptr i32 %5 to ptr
  br label %7

7:                                                ; preds = %19, %1
  %8 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %9 = getelementptr [16 x ptr], ptr %6, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.buffer_head, ptr %10, i32 0, i32 11
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !12
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !20
  br label %19

18:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %19

19:                                               ; preds = %18, %16, %7
  store ptr null, ptr %9, align 4
  %20 = add nuw nsw i32 %8, 1
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %7

22:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @invalidate_bh_lrus_cpu() local_unnamed_addr #2 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #13, !srcloc !36
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #11, !srcloc !37
  %4 = add i32 %3, ptrtoint (ptr @bh_lrus to i32)
  %5 = inttoptr i32 %4 to ptr
  br label %6

6:                                                ; preds = %18, %0
  %7 = phi i32 [ 0, %0 ], [ %19, %18 ]
  %8 = getelementptr [16 x ptr], ptr %5, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 11
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !20
  br label %18

17:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %18

18:                                               ; preds = %17, %15, %6
  store ptr null, ptr %8, align 4
  %19 = add nuw nsw i32 %7, 1
  %20 = icmp eq i32 %19, 16
  br i1 %20, label %21, label %6

21:                                               ; preds = %18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @block_invalidatepage(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = add i32 %2, %1
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !15

9:                                                ; preds = %3
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %3
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !16

19:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1507, 0\0A.popsection", ""() #13, !srcloc !61
  unreachable

20:                                               ; preds = %13
  %21 = load volatile i32, ptr %0, align 4
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %84, label %24

24:                                               ; preds = %20
  %25 = icmp ugt i32 %4, 4096
  %26 = icmp ult i32 %4, %2
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %29, !prof !16

28:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1514, 0\0A.popsection", ""() #13, !srcloc !62
  unreachable

29:                                               ; preds = %24
  %30 = load volatile i32, ptr %0, align 4
  %31 = and i32 %30, 8192
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !16

33:                                               ; preds = %29
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1516, 0\0A.popsection", ""() #13, !srcloc !63
  unreachable

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = inttoptr i32 %36 to ptr
  br label %38

38:                                               ; preds = %78, %34
  %39 = phi ptr [ %37, %34 ], [ %45, %78 ]
  %40 = phi i32 [ 0, %34 ], [ %43, %78 ]
  %41 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, %40
  %44 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp ugt i32 %43, %4
  br i1 %46, label %84, label %47

47:                                               ; preds = %38
  %48 = icmp ult i32 %40, %1
  br i1 %48, label %78, label %49

49:                                               ; preds = %47
  %50 = load volatile i32, ptr %39, align 4
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #13, !srcloc !12
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 4, ptr elementtype(i32) %39) #13, !srcloc !43
  %55 = extractvalue { i32, i32, i32 } %54, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53, %49
  %59 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %39) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %39, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %63

63:                                               ; preds = %61, %58, %53
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %39) #13
  %64 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 6
  store ptr null, ptr %64, align 8
  %65 = load i32, ptr %39, align 8
  br label %66

66:                                               ; preds = %73, %63
  %67 = phi i32 [ %65, %63 ], [ %74, %73 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !64
  %68 = and i32 %67, -2361
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #13, !srcloc !12
  br label %69

69:                                               ; preds = %69, %66
  %70 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %39, i32 %67, i32 %68) #13, !srcloc !65
  %71 = extractvalue { i32, i32 } %70, 0
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %69

73:                                               ; preds = %69
  %74 = extractvalue { i32, i32 } %70, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !66
  %75 = icmp eq i32 %74, %67
  br i1 %75, label %76, label %66

76:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #13, !srcloc !12
  %77 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 4, ptr elementtype(i32) %39) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %39, i32 noundef 2) #13
  br label %78

78:                                               ; preds = %76, %47
  %79 = icmp eq ptr %45, %37
  br i1 %79, label %80, label %38

80:                                               ; preds = %78
  %81 = icmp eq i32 %2, 4096
  br i1 %81, label %82, label %84

82:                                               ; preds = %80
  %83 = tail call i32 @try_to_release_page(ptr noundef %0, i32 noundef 0) #13
  br label %84

84:                                               ; preds = %82, %80, %38, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_release_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @create_empty_buffers(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = sub i32 4096, %1
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %44

6:                                                ; preds = %32, %3
  %7 = phi i32 [ %35, %32 ], [ %4, %3 ]
  %8 = phi ptr [ %9, %32 ], [ null, %3 ]
  %9 = tail call ptr @alloc_buffer_head(i32 noundef 4230208) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 3
  store i64 -1, ptr %13, align 8
  %14 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 4
  store i32 %1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 2
  store ptr %0, ptr %15, align 8
  %16 = icmp ugt i32 %7, 4095
  br i1 %16, label %17, label %18, !prof !16

17:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1446, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

18:                                               ; preds = %11
  %19 = load i32, ptr %0, align 4
  %20 = lshr i32 %19, 30
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = icmp ne i32 %20, 3
  %24 = load i32, ptr @movable_zone, align 4
  %25 = icmp ne i32 %24, 2
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %18
  %28 = inttoptr i32 %7 to ptr
  br label %32

29:                                               ; preds = %22
  %30 = tail call ptr @page_address(ptr noundef %0) #13
  %31 = getelementptr i8, ptr %30, i32 %7
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi ptr [ %31, %29 ], [ %28, %27 ]
  %34 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = sub i32 %7, %1
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %6, label %44

37:                                               ; preds = %6
  %38 = icmp eq ptr %8, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %39, %37
  %40 = phi ptr [ %42, %39 ], [ %8, %37 ]
  %41 = getelementptr inbounds %struct.buffer_head, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void @free_buffer_head(ptr noundef nonnull %40) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %39

44:                                               ; preds = %39, %37, %32, %3
  %45 = phi ptr [ null, %37 ], [ null, %3 ], [ null, %39 ], [ %9, %32 ]
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi ptr [ %45, %44 ], [ %51, %46 ]
  %48 = load i32, ptr %47, align 8
  %49 = or i32 %48, %2
  store i32 %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %46

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.buffer_head, ptr %47, i32 0, i32 1
  store ptr %45, ptr %54, align 4
  %55 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.address_space, ptr %56, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %57) #13
  %58 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !15

62:                                               ; preds = %53
  %63 = add i32 %59, -1
  br label %66

64:                                               ; preds = %53
  %65 = ptrtoint ptr %0 to i32
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = inttoptr i32 %67 to ptr
  %69 = load volatile i32, ptr %68, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  br label %87

73:                                               ; preds = %66
  %74 = load volatile i32, ptr %58, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !15

77:                                               ; preds = %73
  %78 = add i32 %74, -1
  br label %81

79:                                               ; preds = %73
  %80 = ptrtoint ptr %0 to i32
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = inttoptr i32 %82 to ptr
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %128, label %87

87:                                               ; preds = %81, %72
  %88 = ptrtoint ptr %0 to i32
  br label %89

89:                                               ; preds = %124, %87
  %90 = phi ptr [ %45, %87 ], [ %126, %124 ]
  %91 = load volatile i32, ptr %58, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94, !prof !15

94:                                               ; preds = %89
  %95 = add i32 %91, -1
  br label %96

96:                                               ; preds = %94, %89
  %97 = phi i32 [ %95, %94 ], [ %88, %89 ]
  %98 = inttoptr i32 %97 to ptr
  %99 = load volatile i32, ptr %98, align 4
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %96
  %103 = load volatile i32, ptr %90, align 4
  %104 = and i32 %103, 2
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  tail call void @_set_bit(i32 noundef 1, ptr noundef %90) #13
  br label %107

107:                                              ; preds = %106, %102, %96
  %108 = load volatile i32, ptr %58, align 4
  %109 = and i32 %108, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111, !prof !15

111:                                              ; preds = %107
  %112 = add i32 %108, -1
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %112, %111 ], [ %88, %107 ]
  %115 = inttoptr i32 %114 to ptr
  %116 = load volatile i32, ptr %115, align 4
  %117 = and i32 %116, 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  %120 = load volatile i32, ptr %90, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  tail call void @_set_bit(i32 noundef 0, ptr noundef %90) #13
  br label %124

124:                                              ; preds = %123, %119, %113
  %125 = getelementptr inbounds %struct.buffer_head, ptr %90, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, %45
  br i1 %127, label %128, label %89

128:                                              ; preds = %124, %81
  %129 = load volatile i32, ptr %58, align 4
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132, !prof !15

132:                                              ; preds = %128
  %133 = add i32 %129, -1
  br label %136

134:                                              ; preds = %128
  %135 = ptrtoint ptr %0 to i32
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = inttoptr i32 %137 to ptr
  %139 = getelementptr inbounds %struct.page, ptr %138, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %139) #13, !srcloc !12
  %140 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %139, ptr %139, i32 1, ptr elementtype(i32) %139) #13, !srcloc !28
  %141 = getelementptr inbounds %struct.anon.108, ptr %138, i32 0, i32 4
  store ptr %45, ptr %141, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %138) #13
  %142 = load ptr, ptr %55, align 4
  %143 = getelementptr inbounds %struct.address_space, ptr %142, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %144 = load i16, ptr %143, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %143, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clean_bdev_aliases(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2) #2 {
  %4 = alloca %struct.pagevec, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.block_device, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %10 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 19
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 12, %12
  %14 = zext i32 %13 to i64
  %15 = lshr i64 %1, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, ptr %5, align 4
  %17 = add i64 %2, %1
  %18 = add i64 %17, -1
  %19 = lshr i64 %18, %14
  %20 = trunc i64 %19 to i32
  store i8 0, ptr %4, align 4
  %21 = getelementptr inbounds %struct.pagevec, ptr %4, i32 0, i32 1
  store i8 0, ptr %21, align 1
  br label %22

22:                                               ; preds = %104, %3
  %23 = call i32 @pagevec_lookup_range(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull %5, i32 noundef %20) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %109, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr %4, align 4
  %27 = zext i8 %26 to i32
  %28 = icmp eq i8 %26, 0
  br i1 %28, label %104, label %29

29:                                               ; preds = %97, %25
  %30 = phi i32 [ %98, %97 ], [ 0, %25 ]
  %31 = getelementptr %struct.pagevec, ptr %4, i32 0, i32 2, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 8192
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %97, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !15

41:                                               ; preds = %36
  %42 = add i32 %38, -1
  br label %45

43:                                               ; preds = %36
  %44 = ptrtoint ptr %32 to i32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = inttoptr i32 %46 to ptr
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #13, !srcloc !12
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %47, ptr %47, i32 1, ptr elementtype(i32) %47) #13, !srcloc !43
  %53 = extractvalue { i32, i32, i32 } %52, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51, %45
  call void @__folio_lock(ptr noundef %47) #13
  br label %57

57:                                               ; preds = %56, %51
  %58 = load volatile i32, ptr %32, align 4
  %59 = and i32 %58, 8192
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %96, label %61

61:                                               ; preds = %57
  %62 = load volatile i32, ptr %32, align 4
  %63 = and i32 %62, 8192
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66, !prof !16

65:                                               ; preds = %61
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1634, 0\0A.popsection", ""() #13, !srcloc !68
  unreachable

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.page, ptr %32, i32 0, i32 1, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = inttoptr i32 %68 to ptr
  br label %70

70:                                               ; preds = %92, %66
  %71 = phi ptr [ %69, %66 ], [ %94, %92 ]
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %72, 16
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 3
  %77 = load i64, ptr %76, align 8
  %78 = icmp ult i64 %77, %1
  br i1 %78, label %92, label %79

79:                                               ; preds = %75
  %80 = icmp ult i64 %77, %17
  br i1 %80, label %81, label %96

81:                                               ; preds = %79
  call void @_clear_bit(i32 noundef 1, ptr noundef %71) #13
  %82 = load volatile i32, ptr %71, align 4
  %83 = and i32 %82, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load volatile i32, ptr %71, align 4
  %87 = and i32 %86, 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 @out_of_line_wait_on_bit(ptr noundef %71, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %91

91:                                               ; preds = %89, %85, %81
  call void @_clear_bit(i32 noundef 3, ptr noundef %71) #13
  br label %92

92:                                               ; preds = %91, %75, %70
  %93 = getelementptr inbounds %struct.buffer_head, ptr %71, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, %69
  br i1 %95, label %96, label %70

96:                                               ; preds = %92, %79, %57
  call void @unlock_page(ptr noundef %32) #13
  br label %97

97:                                               ; preds = %96, %29
  %98 = add nuw nsw i32 %30, 1
  %99 = icmp eq i32 %98, %27
  br i1 %99, label %100, label %29

100:                                              ; preds = %97
  %101 = load i8, ptr %4, align 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call void @__pagevec_release(ptr noundef nonnull %4) #13
  br label %104

104:                                              ; preds = %103, %100, %25
  %105 = call i32 @__cond_resched() #13
  %106 = load i32, ptr %5, align 4
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, %20
  br i1 %108, label %22, label %109

109:                                              ; preds = %104, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagevec_lookup_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_page(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !15

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !12
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !43
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %10
  tail call void @__folio_lock(ptr noundef %12) #13
  br label %22

22:                                               ; preds = %21, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__block_write_full_page(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 256
  %9 = zext i16 %8 to i32
  %10 = shl nuw nsw i32 %9, 14
  %11 = getelementptr inbounds %struct.writeback_control, ptr %3, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = or i32 %10, 2048
  br label %21

16:                                               ; preds = %5
  %17 = and i16 %7, 3
  %18 = icmp eq i16 %17, 0
  %19 = or i32 %10, 1048576
  %20 = select i1 %18, i32 %10, i32 %19
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !15

27:                                               ; preds = %21
  %28 = add i32 %24, -1
  br label %31

29:                                               ; preds = %21
  %30 = ptrtoint ptr %1 to i32
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = inttoptr i32 %32 to ptr
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !16

37:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1674, 0\0A.popsection", ""() #13, !srcloc !69
  unreachable

38:                                               ; preds = %31
  %39 = load volatile i32, ptr %1, align 4
  %40 = and i32 %39, 8192
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  %44 = load volatile i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 1, %45
  tail call void @create_empty_buffers(ptr noundef %1, i32 noundef %46, i32 noundef 3) #13
  br label %47

47:                                               ; preds = %42, %38
  %48 = load volatile i32, ptr %1, align 4
  %49 = and i32 %48, 8192
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52, !prof !16

51:                                               ; preds = %47
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1679, 0\0A.popsection", ""() #13, !srcloc !70
  unreachable

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 4
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 0
  %59 = tail call i32 @llvm.ctlz.i32(i32 %57, i1 false) #13, !range !56
  %60 = sub nsw i32 31, %59
  %61 = select i1 %58, i32 -1, i32 %60
  %62 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = sub nsw i32 12, %61
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %67 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %68

68:                                               ; preds = %76, %52
  %69 = load volatile i32, ptr %66, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %72, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %73 = load volatile i32, ptr %66, align 4
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %72

76:                                               ; preds = %72, %68
  %77 = phi i32 [ %69, %68 ], [ %73, %72 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %78 = load i64, ptr %67, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %79 = load volatile i32, ptr %66, align 4
  %80 = icmp eq i32 %79, %77
  br i1 %80, label %81, label %68

81:                                               ; preds = %76
  %82 = zext i32 %63 to i64
  %83 = shl i64 %82, %65
  %84 = add i64 %78, -1
  %85 = zext i32 %61 to i64
  %86 = ashr i64 %84, %85
  br label %87

87:                                               ; preds = %125, %81
  %88 = phi ptr [ %55, %81 ], [ %127, %125 ]
  %89 = phi i64 [ %83, %81 ], [ %128, %125 ]
  %90 = icmp ugt i64 %89, %86
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %88) #13
  %92 = load volatile i32, ptr %88, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  tail call void @_set_bit(i32 noundef 0, ptr noundef %88) #13
  br label %125

96:                                               ; preds = %87
  %97 = load volatile i32, ptr %88, align 4
  %98 = and i32 %97, 16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load volatile i32, ptr %88, align 4
  %102 = and i32 %101, 256
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %125, label %104

104:                                              ; preds = %100, %96
  %105 = load volatile i32, ptr %88, align 4
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.buffer_head, ptr %88, i32 0, i32 4
  %110 = load i32, ptr %109, align 8
  %111 = icmp eq i32 %110, %57
  br i1 %111, label %113, label %112, !prof !15

112:                                              ; preds = %108
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1761, i32 noundef 9, ptr noundef null) #13
  br label %113

113:                                              ; preds = %112, %108
  %114 = tail call i32 %2(ptr noundef %0, i64 noundef %89, ptr noundef %88, i32 noundef 1) #13
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %214

116:                                              ; preds = %113
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %88) #13
  %117 = load volatile i32, ptr %88, align 4
  %118 = and i32 %117, 32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %88) #13
  %121 = getelementptr inbounds %struct.buffer_head, ptr %88, i32 0, i32 6
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.buffer_head, ptr %88, i32 0, i32 3
  %124 = load i64, ptr %123, align 8
  tail call void @clean_bdev_aliases(ptr noundef %122, i64 noundef %124, i64 noundef 1) #13
  br label %125

125:                                              ; preds = %120, %116, %104, %100, %95, %91
  %126 = getelementptr inbounds %struct.buffer_head, ptr %88, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = add i64 %89, 1
  %129 = icmp eq ptr %127, %55
  br i1 %129, label %130, label %87

130:                                              ; preds = %171, %125
  %131 = phi ptr [ %173, %171 ], [ %55, %125 ]
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %132, 16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %171, label %135

135:                                              ; preds = %130
  %136 = load i32, ptr %11, align 8
  %137 = icmp eq i32 %136, 0
  %138 = load volatile i32, ptr %131, align 4
  %139 = and i32 %138, 4
  %140 = icmp eq i32 %139, 0
  br i1 %137, label %152, label %141

141:                                              ; preds = %135
  br i1 %140, label %142, label %147

142:                                              ; preds = %141
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #13, !srcloc !12
  %143 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 4, ptr elementtype(i32) %131) #13, !srcloc !43
  %144 = extractvalue { i32, i32, i32 } %143, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %145 = and i32 %144, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %142, %141
  %148 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %131) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %147
  %151 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %131, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %160

152:                                              ; preds = %135
  br i1 %140, label %153, label %158

153:                                              ; preds = %152
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #13, !srcloc !12
  %154 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 4, ptr elementtype(i32) %131) #13, !srcloc !43
  %155 = extractvalue { i32, i32, i32 } %154, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %156 = and i32 %155, 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %153, %152
  %159 = tail call zeroext i1 @redirty_page_for_writepage(ptr noundef %3, ptr noundef %1) #13
  br label %171

160:                                              ; preds = %153, %150, %147, %142
  %161 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %131) #13
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.buffer_head, ptr %131, i32 0, i32 7
  store ptr %4, ptr %164, align 4
  %165 = load volatile i32, ptr %131, align 4
  %166 = and i32 %165, 128
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  tail call void @_set_bit(i32 noundef 7, ptr noundef %131) #13
  br label %171

169:                                              ; preds = %160
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %131) #13, !srcloc !12
  %170 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %131, ptr %131, i32 4, ptr elementtype(i32) %131) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %131, i32 noundef 2) #13
  br label %171

171:                                              ; preds = %169, %168, %163, %158, %130
  %172 = getelementptr inbounds %struct.buffer_head, ptr %131, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, %55
  br i1 %174, label %175, label %130

175:                                              ; preds = %171
  %176 = load volatile i32, ptr %23, align 4
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179, !prof !15

179:                                              ; preds = %175
  %180 = add i32 %176, -1
  br label %183

181:                                              ; preds = %175
  %182 = ptrtoint ptr %1 to i32
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = inttoptr i32 %184 to ptr
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 32768
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189, !prof !15

189:                                              ; preds = %183
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1803, 0\0A.popsection", ""() #13, !srcloc !75
  unreachable

190:                                              ; preds = %183
  %191 = tail call zeroext i1 @set_page_writeback(ptr noundef %1) #13
  %192 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 20
  br label %193

193:                                              ; preds = %205, %190
  %194 = phi ptr [ %55, %190 ], [ %197, %205 ]
  %195 = phi i32 [ 0, %190 ], [ %206, %205 ]
  %196 = getelementptr inbounds %struct.buffer_head, ptr %194, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = load volatile i32, ptr %194, align 4
  %199 = and i32 %198, 128
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %205, label %201

201:                                              ; preds = %193
  %202 = load i8, ptr %192, align 1
  %203 = zext i8 %202 to i32
  tail call fastcc void @submit_bh_wbc(i32 noundef 1, i32 noundef %22, ptr noundef %194, i32 noundef %203, ptr noundef %3)
  %204 = add i32 %195, 1
  br label %205

205:                                              ; preds = %201, %193
  %206 = phi i32 [ %204, %201 ], [ %195, %193 ]
  %207 = icmp eq ptr %197, %55
  br i1 %207, label %208, label %193

208:                                              ; preds = %305, %205
  %209 = phi i32 [ %206, %205 ], [ %306, %305 ]
  %210 = phi i32 [ 0, %205 ], [ %114, %305 ]
  tail call void @unlock_page(ptr noundef %1) #13
  %211 = icmp eq i32 %209, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  tail call void @end_page_writeback(ptr noundef %1) #13
  br label %213

213:                                              ; preds = %212, %208
  ret i32 %210

214:                                              ; preds = %248, %113
  %215 = phi ptr [ %250, %248 ], [ %55, %113 ]
  %216 = load volatile i32, ptr %215, align 4
  %217 = and i32 %216, 16
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %247, label %219

219:                                              ; preds = %214
  %220 = load volatile i32, ptr %215, align 4
  %221 = and i32 %220, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %247, label %223

223:                                              ; preds = %219
  %224 = load volatile i32, ptr %215, align 4
  %225 = and i32 %224, 256
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %223
  %228 = load volatile i32, ptr %215, align 4
  %229 = and i32 %228, 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %227
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %215) #13, !srcloc !12
  %232 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %215, ptr %215, i32 4, ptr elementtype(i32) %215) #13, !srcloc !43
  %233 = extractvalue { i32, i32, i32 } %232, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %234 = and i32 %233, 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %231, %227
  %237 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %215) #13
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %236
  %240 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %215, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %241

241:                                              ; preds = %239, %236, %231
  %242 = getelementptr inbounds %struct.buffer_head, ptr %215, i32 0, i32 7
  store ptr %4, ptr %242, align 4
  %243 = load volatile i32, ptr %215, align 4
  %244 = and i32 %243, 128
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  tail call void @_set_bit(i32 noundef 7, ptr noundef %215) #13
  br label %248

247:                                              ; preds = %223, %219, %214
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %215) #13
  br label %248

248:                                              ; preds = %247, %246, %241
  %249 = getelementptr inbounds %struct.buffer_head, ptr %215, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, %55
  br i1 %251, label %252, label %214

252:                                              ; preds = %248
  %253 = load volatile i32, ptr %23, align 4
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256, !prof !15

256:                                              ; preds = %252
  %257 = add i32 %253, -1
  br label %260

258:                                              ; preds = %252
  %259 = ptrtoint ptr %1 to i32
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  %262 = inttoptr i32 %261 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %262) #13
  %263 = load volatile i32, ptr %23, align 4
  %264 = and i32 %263, 1
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %268, label %266, !prof !15

266:                                              ; preds = %260
  %267 = add i32 %263, -1
  br label %270

268:                                              ; preds = %260
  %269 = ptrtoint ptr %1 to i32
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  %272 = inttoptr i32 %271 to ptr
  %273 = load volatile i32, ptr %272, align 4
  %274 = and i32 %273, 32768
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %277, label %276, !prof !15

276:                                              ; preds = %270
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1857, 0\0A.popsection", ""() #13, !srcloc !76
  unreachable

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  tail call void @__filemap_set_wb_err(ptr noundef %279, i32 noundef %114) #13
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %287, label %282

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.inode, ptr %280, i32 0, i32 8
  %284 = load ptr, ptr %283, align 4
  %285 = getelementptr inbounds %struct.super_block, ptr %284, i32 0, i32 44
  %286 = tail call i32 @errseq_set(ptr noundef %285, i32 noundef %114) #13
  br label %287

287:                                              ; preds = %282, %277
  %288 = icmp eq i32 %114, -28
  %289 = getelementptr inbounds %struct.address_space, ptr %279, i32 0, i32 10
  %290 = zext i1 %288 to i32
  tail call void @_set_bit(i32 noundef %290, ptr noundef %289) #13
  %291 = tail call zeroext i1 @set_page_writeback(ptr noundef %1) #13
  %292 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 20
  br label %293

293:                                              ; preds = %305, %287
  %294 = phi ptr [ %55, %287 ], [ %297, %305 ]
  %295 = phi i32 [ 0, %287 ], [ %306, %305 ]
  %296 = getelementptr inbounds %struct.buffer_head, ptr %294, i32 0, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = load volatile i32, ptr %294, align 4
  %299 = and i32 %298, 128
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %305, label %301

301:                                              ; preds = %293
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %294) #13
  %302 = load i8, ptr %292, align 1
  %303 = zext i8 %302 to i32
  tail call fastcc void @submit_bh_wbc(i32 noundef 1, i32 noundef %22, ptr noundef %294, i32 noundef %303, ptr noundef %3)
  %304 = add i32 %295, 1
  br label %305

305:                                              ; preds = %301, %293
  %306 = phi i32 [ %304, %301 ], [ %295, %293 ]
  %307 = icmp eq ptr %297, %55
  br i1 %307, label %208, label %293
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lock_buffer(ptr noundef %0) unnamed_addr #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !43
  %7 = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5, %1
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %0) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %15

15:                                               ; preds = %13, %10, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @redirty_page_for_writepage(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_writeback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @submit_bh_wbc(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readnone %4) unnamed_addr #2 {
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !16

9:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3015, 0\0A.popsection", ""() #13, !srcloc !77
  unreachable

10:                                               ; preds = %5
  %11 = load volatile i32, ptr %2, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !16

14:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3016, 0\0A.popsection", ""() #13, !srcloc !78
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !16

19:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3017, 0\0A.popsection", ""() #13, !srcloc !79
  unreachable

20:                                               ; preds = %15
  %21 = load volatile i32, ptr %2, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !15

24:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3018, 0\0A.popsection", ""() #13, !srcloc !80
  unreachable

25:                                               ; preds = %20
  %26 = load volatile i32, ptr %2, align 4
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29, !prof !15

29:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3019, 0\0A.popsection", ""() #13, !srcloc !81
  unreachable

30:                                               ; preds = %25
  %31 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %2) #13
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq i32 %0, 1
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %2) #13
  br label %36

36:                                               ; preds = %35, %30
  %37 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #13
  %38 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 9
  %43 = zext i32 %42 to i64
  %44 = mul i64 %39, %43
  %45 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 8
  store i64 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 3
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, -2049
  store i16 %50, ptr %48, align 4
  %51 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %47
  br i1 %53, label %56, label %54

54:                                               ; preds = %36
  %55 = and i16 %49, -2177
  store i16 %55, ptr %48, align 4
  br label %56

56:                                               ; preds = %54, %36
  store ptr %47, ptr %51, align 4
  %57 = trunc i32 %3 to i16
  %58 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 5
  store i16 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = load i32, ptr %40, align 8
  %62 = getelementptr inbounds %struct.buffer_head, ptr %2, i32 0, i32 5
  %63 = load ptr, ptr %62, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = and i32 %64, 4095
  %66 = tail call i32 @bio_add_page(ptr noundef %37, ptr noundef %60, i32 noundef %61, i32 noundef %65) #13
  %67 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 8, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %40, align 8
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %72, label %71, !prof !15

71:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3036, 0\0A.popsection", ""() #13, !srcloc !82
  unreachable

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 10
  store ptr @end_bio_bh_io_sync, ptr %73, align 4
  %74 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 11
  store ptr %2, ptr %74, align 4
  %75 = load volatile i32, ptr %2, align 4
  %76 = lshr i32 %75, 1
  %77 = and i32 %76, 4096
  %78 = load volatile i32, ptr %2, align 4
  %79 = lshr i32 %78, 1
  %80 = and i32 %79, 8192
  %81 = or i32 %1, %0
  %82 = or i32 %81, %77
  %83 = or i32 %82, %80
  %84 = getelementptr inbounds %struct.bio, ptr %37, i32 0, i32 2
  store i32 %83, ptr %84, align 4
  tail call void @guard_bio_eod(ptr noundef %37) #13
  tail call void @submit_bio(ptr noundef %37) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_zero_new_buffers(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8, !prof !15

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  br label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %0 to i32
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = inttoptr i32 %13 to ptr
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !prof !16

18:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1885, 0\0A.popsection", ""() #13, !srcloc !83
  unreachable

19:                                               ; preds = %12
  %20 = load volatile i32, ptr %0, align 4
  %21 = and i32 %20, 8192
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %19
  %24 = load volatile i32, ptr %0, align 4
  %25 = and i32 %24, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28, !prof !16

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1889, 0\0A.popsection", ""() #13, !srcloc !84
  unreachable

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = inttoptr i32 %30 to ptr
  %32 = ptrtoint ptr %0 to i32
  br label %33

33:                                               ; preds = %67, %28
  %34 = phi ptr [ %31, %28 ], [ %69, %67 ]
  %35 = phi i32 [ 0, %28 ], [ %38, %67 ]
  %36 = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = add i32 %37, %35
  %39 = load volatile i32, ptr %34, align 4
  %40 = and i32 %39, 32
  %41 = icmp ne i32 %40, 0
  %42 = icmp ugt i32 %38, %1
  %43 = select i1 %41, i1 %42, i1 false
  %44 = icmp ult i32 %35, %2
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %67

46:                                               ; preds = %33
  %47 = load volatile i32, ptr %4, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50, !prof !15

50:                                               ; preds = %46
  %51 = add i32 %47, -1
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i32 [ %51, %50 ], [ %32, %46 ]
  %54 = inttoptr i32 %53 to ptr
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  br label %66

59:                                               ; preds = %52
  %60 = tail call i32 @llvm.umax.i32(i32 %35, i32 %1)
  %61 = tail call i32 @llvm.umin.i32(i32 %38, i32 %2)
  tail call void @zero_user_segments(ptr noundef %0, i32 noundef %60, i32 noundef %61, i32 noundef 0, i32 noundef 0) #13
  %62 = load volatile i32, ptr %34, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  tail call void @_set_bit(i32 noundef 0, ptr noundef %34) #13
  br label %66

66:                                               ; preds = %65, %59, %58
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %34) #13
  tail call void @mark_buffer_dirty(ptr noundef %34)
  br label %67

67:                                               ; preds = %66, %33
  %68 = getelementptr inbounds %struct.buffer_head, ptr %34, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %31
  br i1 %70, label %71, label %33

71:                                               ; preds = %67, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__block_write_begin_int(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 {
  %6 = alloca ptr, align 4
  %7 = alloca [2 x ptr], align 8
  %8 = trunc i64 %1 to i32
  %9 = and i32 %8, 4095
  %10 = add i32 %9, %2
  %11 = getelementptr inbounds %struct.anon.108, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8, !annotation !26
  %14 = load volatile i32, ptr %0, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !16

17:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #13, !srcloc !85
  unreachable

18:                                               ; preds = %5
  %19 = icmp ugt i32 %10, 4096
  br i1 %19, label %20, label %21, !prof !16

20:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1986, 0\0A.popsection", ""() #13, !srcloc !86
  unreachable

21:                                               ; preds = %18
  %22 = icmp ugt i32 %9, %10
  br i1 %22, label %23, label %24, !prof !16

23:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1987, 0\0A.popsection", ""() #13, !srcloc !87
  unreachable

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29, !prof !15

29:                                               ; preds = %24
  %30 = add i32 %26, -1
  br label %33

31:                                               ; preds = %24
  %32 = ptrtoint ptr %0 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = inttoptr i32 %34 to ptr
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40, !prof !16

39:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1674, 0\0A.popsection", ""() #13, !srcloc !69
  unreachable

40:                                               ; preds = %33
  %41 = load volatile i32, ptr %0, align 4
  %42 = and i32 %41, 8192
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 19
  %46 = load volatile i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 1, %47
  tail call void @create_empty_buffers(ptr noundef %0, i32 noundef %48, i32 noundef 0) #13
  br label %49

49:                                               ; preds = %44, %40
  %50 = load volatile i32, ptr %0, align 4
  %51 = and i32 %50, 8192
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54, !prof !16

53:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1679, 0\0A.popsection", ""() #13, !srcloc !70
  unreachable

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.buffer_head, ptr %57, i32 0, i32 4
  %59 = load i32, ptr %58, align 8
  %60 = icmp eq i32 %59, 0
  %61 = tail call i32 @llvm.ctlz.i32(i32 %59, i1 false) #13, !range !56
  %62 = getelementptr inbounds %struct.anon.108, ptr %0, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = zext i32 %63 to i64
  %65 = add nsw i32 %61, -19
  %66 = select i1 %60, i32 13, i32 %65
  %67 = zext i32 %66 to i64
  %68 = shl i64 %64, %67
  store ptr %57, ptr %6, align 4
  %69 = icmp eq ptr %3, null
  %70 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 19
  %71 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 5
  %72 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 1
  %73 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 2
  %74 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 3
  %75 = getelementptr inbounds %struct.iomap, ptr %4, i32 0, i32 4
  %76 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 22
  %77 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 13
  br label %78

78:                                               ; preds = %295, %54
  %79 = phi ptr [ %7, %54 ], [ %297, %295 ]
  %80 = phi i64 [ %68, %54 ], [ %298, %295 ]
  %81 = phi i32 [ 0, %54 ], [ %83, %295 ]
  %82 = phi ptr [ %57, %54 ], [ %300, %295 ]
  %83 = add i32 %81, %59
  %84 = icmp ugt i32 %83, %9
  %85 = icmp ult i32 %81, %10
  %86 = and i1 %85, %84
  br i1 %86, label %100, label %87

87:                                               ; preds = %78
  %88 = load volatile i32, ptr %0, align 4
  %89 = and i32 %88, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %295, label %91

91:                                               ; preds = %87
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  %92 = load volatile i32, ptr %82, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %295

95:                                               ; preds = %91
  %96 = load volatile i32, ptr %82, align 4
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %295

99:                                               ; preds = %95
  tail call void @_set_bit(i32 noundef 0, ptr noundef %82) #13
  br label %295

100:                                              ; preds = %78
  %101 = load volatile i32, ptr %82, align 4
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %82) #13
  br label %105

105:                                              ; preds = %104, %100
  %106 = load volatile i32, ptr %82, align 4
  %107 = and i32 %106, 16
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %263

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 4
  %111 = load i32, ptr %110, align 8
  %112 = icmp eq i32 %111, %59
  br i1 %112, label %114, label %113, !prof !15

113:                                              ; preds = %109
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2008, i32 noundef 9, ptr noundef null) #13
  br label %114

114:                                              ; preds = %113, %109
  br i1 %69, label %118, label %115

115:                                              ; preds = %114
  %116 = tail call i32 %3(ptr noundef %13, i64 noundef %80, ptr noundef %82, i32 noundef 1) #13
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %240, label %304

118:                                              ; preds = %114
  %119 = load i8, ptr %70, align 2
  %120 = zext i8 %119 to i64
  %121 = shl i64 %80, %120
  %122 = load ptr, ptr %71, align 4
  %123 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 6
  store ptr %122, ptr %123, align 8
  %124 = load i64, ptr %72, align 8
  %125 = load i64, ptr %73, align 8
  %126 = add i64 %125, %124
  %127 = icmp ult i64 %121, %126
  br i1 %127, label %129, label %128, !prof !15

128:                                              ; preds = %118
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1931, 0\0A.popsection", ""() #13, !srcloc !88
  unreachable

129:                                              ; preds = %118
  %130 = load i16, ptr %74, align 8
  switch i16 %130, label %240 [
    i16 0, label %131
    i16 1, label %154
    i16 3, label %192
    i16 2, label %202
  ]

131:                                              ; preds = %129
  %132 = load volatile i32, ptr %82, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %143, %131
  %136 = load volatile i32, ptr %76, align 4
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %139, %135
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %140 = load volatile i32, ptr %76, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %139

143:                                              ; preds = %139, %135
  %144 = phi i32 [ %136, %135 ], [ %140, %139 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %145 = load i64, ptr %77, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %146 = load volatile i32, ptr %76, align 4
  %147 = icmp eq i32 %146, %144
  br i1 %147, label %148, label %135

148:                                              ; preds = %143
  %149 = icmp slt i64 %121, %145
  br i1 %149, label %240, label %150

150:                                              ; preds = %148, %131
  %151 = load volatile i32, ptr %82, align 4
  %152 = and i32 %151, 32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %238, label %240

154:                                              ; preds = %129
  %155 = load volatile i32, ptr %82, align 4
  %156 = and i32 %155, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %173, label %158

158:                                              ; preds = %166, %154
  %159 = load volatile i32, ptr %76, align 4
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %162, %158
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %163 = load volatile i32, ptr %76, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %162

166:                                              ; preds = %162, %158
  %167 = phi i32 [ %159, %158 ], [ %163, %162 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %168 = load i64, ptr %77, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %169 = load volatile i32, ptr %76, align 4
  %170 = icmp eq i32 %169, %167
  br i1 %170, label %171, label %158

171:                                              ; preds = %166
  %172 = icmp slt i64 %121, %168
  br i1 %172, label %178, label %173

173:                                              ; preds = %171, %154
  %174 = load volatile i32, ptr %82, align 4
  %175 = and i32 %174, 32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  tail call void @_set_bit(i32 noundef 5, ptr noundef %82) #13
  br label %178

178:                                              ; preds = %177, %173, %171
  %179 = load volatile i32, ptr %82, align 4
  %180 = and i32 %179, 1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  tail call void @_set_bit(i32 noundef 0, ptr noundef %82) #13
  br label %183

183:                                              ; preds = %182, %178
  %184 = load volatile i32, ptr %82, align 4
  %185 = and i32 %184, 16
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  tail call void @_set_bit(i32 noundef 4, ptr noundef %82) #13
  br label %188

188:                                              ; preds = %187, %183
  %189 = load volatile i32, ptr %82, align 4
  %190 = and i32 %189, 256
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %238, label %240

192:                                              ; preds = %129
  %193 = load volatile i32, ptr %82, align 4
  %194 = and i32 %193, 32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  tail call void @_set_bit(i32 noundef 5, ptr noundef %82) #13
  br label %197

197:                                              ; preds = %196, %192
  %198 = load volatile i32, ptr %82, align 4
  %199 = and i32 %198, 2048
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  tail call void @_set_bit(i32 noundef 11, ptr noundef %82) #13
  br label %202

202:                                              ; preds = %201, %197, %129
  %203 = load i16, ptr %75, align 2
  %204 = and i16 %203, 1
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %206, label %221

206:                                              ; preds = %214, %202
  %207 = load volatile i32, ptr %76, align 4
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %210, %206
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %211 = load volatile i32, ptr %76, align 4
  %212 = and i32 %211, 1
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %210

214:                                              ; preds = %210, %206
  %215 = phi i32 [ %207, %206 ], [ %211, %210 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %216 = load i64, ptr %77, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %217 = load volatile i32, ptr %76, align 4
  %218 = icmp eq i32 %217, %215
  br i1 %218, label %219, label %206

219:                                              ; preds = %214
  %220 = icmp slt i64 %121, %216
  br i1 %220, label %226, label %221

221:                                              ; preds = %219, %202
  %222 = load volatile i32, ptr %82, align 4
  %223 = and i32 %222, 32
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  tail call void @_set_bit(i32 noundef 5, ptr noundef %82) #13
  br label %226

226:                                              ; preds = %225, %221, %219
  %227 = load i64, ptr %4, align 8
  %228 = add i64 %227, %121
  %229 = load i64, ptr %72, align 8
  %230 = sub i64 %228, %229
  %231 = load i8, ptr %70, align 2
  %232 = zext i8 %231 to i64
  %233 = lshr i64 %230, %232
  %234 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 3
  store i64 %233, ptr %234, align 8
  %235 = load volatile i32, ptr %82, align 4
  %236 = and i32 %235, 16
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %226, %188, %150
  %239 = phi i32 [ 5, %150 ], [ 8, %188 ], [ 4, %226 ]
  tail call void @_set_bit(i32 noundef %239, ptr noundef %82) #13
  br label %240

240:                                              ; preds = %238, %226, %188, %150, %148, %129, %115
  %241 = load volatile i32, ptr %82, align 4
  %242 = and i32 %241, 32
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %263, label %244

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 6
  %246 = load ptr, ptr %245, align 8
  %247 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 3
  %248 = load i64, ptr %247, align 8
  tail call void @clean_bdev_aliases(ptr noundef %246, i64 noundef %248, i64 noundef 1) #13
  %249 = load volatile i32, ptr %0, align 4
  %250 = and i32 %249, 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %244
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %82) #13
  %253 = load volatile i32, ptr %82, align 4
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  tail call void @_set_bit(i32 noundef 0, ptr noundef %82) #13
  br label %257

257:                                              ; preds = %256, %252
  tail call void @mark_buffer_dirty(ptr noundef %82)
  br label %295

258:                                              ; preds = %244
  %259 = icmp ugt i32 %83, %10
  %260 = icmp ult i32 %81, %9
  %261 = or i1 %260, %259
  br i1 %261, label %262, label %295

262:                                              ; preds = %258
  tail call void @zero_user_segments(ptr noundef %0, i32 noundef %10, i32 noundef %83, i32 noundef %81, i32 noundef %9) #13
  br label %295

263:                                              ; preds = %240, %105
  %264 = load volatile i32, ptr %0, align 4
  %265 = and i32 %264, 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %263
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  %268 = load volatile i32, ptr %82, align 4
  %269 = and i32 %268, 1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %295

271:                                              ; preds = %267
  %272 = load volatile i32, ptr %82, align 4
  %273 = and i32 %272, 1
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %295

275:                                              ; preds = %271
  tail call void @_set_bit(i32 noundef 0, ptr noundef %82) #13
  br label %295

276:                                              ; preds = %263
  %277 = load volatile i32, ptr %82, align 4
  %278 = and i32 %277, 1
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %295

280:                                              ; preds = %276
  %281 = load volatile i32, ptr %82, align 4
  %282 = and i32 %281, 256
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %280
  %285 = load volatile i32, ptr %82, align 4
  %286 = and i32 %285, 2048
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %284
  %289 = icmp ult i32 %81, %9
  %290 = icmp ugt i32 %83, %10
  %291 = or i1 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %6)
  %293 = getelementptr ptr, ptr %79, i32 1
  store ptr %82, ptr %79, align 4
  %294 = load ptr, ptr %6, align 4
  br label %295

295:                                              ; preds = %292, %288, %284, %280, %276, %275, %271, %267, %262, %258, %257, %99, %95, %91, %87
  %296 = phi ptr [ %82, %91 ], [ %82, %267 ], [ %82, %276 ], [ %82, %280 ], [ %82, %284 ], [ %294, %292 ], [ %82, %257 ], [ %82, %262 ], [ %82, %258 ], [ %82, %288 ], [ %82, %87 ], [ %82, %95 ], [ %82, %99 ], [ %82, %271 ], [ %82, %275 ]
  %297 = phi ptr [ %79, %91 ], [ %79, %267 ], [ %79, %276 ], [ %79, %280 ], [ %79, %284 ], [ %293, %292 ], [ %79, %257 ], [ %79, %262 ], [ %79, %258 ], [ %79, %288 ], [ %79, %87 ], [ %79, %95 ], [ %79, %99 ], [ %79, %271 ], [ %79, %275 ]
  %298 = add i64 %80, 1
  %299 = getelementptr inbounds %struct.buffer_head, ptr %296, i32 0, i32 1
  %300 = load ptr, ptr %299, align 4
  store ptr %300, ptr %6, align 4
  %301 = icmp ne ptr %300, %57
  %302 = icmp eq i32 %83, 0
  %303 = select i1 %301, i1 true, i1 %302
  br i1 %303, label %78, label %304

304:                                              ; preds = %295, %115
  %305 = phi ptr [ %79, %115 ], [ %297, %295 ]
  %306 = phi i32 [ %116, %115 ], [ 0, %295 ]
  %307 = icmp ugt ptr %305, %7
  br i1 %307, label %308, label %330

308:                                              ; preds = %323, %304
  %309 = phi ptr [ %311, %323 ], [ %305, %304 ]
  %310 = phi i32 [ %328, %323 ], [ %306, %304 ]
  %311 = getelementptr ptr, ptr %309, i32 -1
  %312 = load ptr, ptr %311, align 4
  %313 = load volatile i32, ptr %312, align 4
  %314 = and i32 %313, 4
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %308
  %317 = load volatile i32, ptr %312, align 4
  %318 = and i32 %317, 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %316
  %321 = call i32 @out_of_line_wait_on_bit(ptr noundef %312, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  %322 = load ptr, ptr %311, align 4
  br label %323

323:                                              ; preds = %320, %316, %308
  %324 = phi ptr [ %312, %308 ], [ %312, %316 ], [ %322, %320 ]
  %325 = load volatile i32, ptr %324, align 4
  %326 = and i32 %325, 1
  %327 = icmp eq i32 %326, 0
  %328 = select i1 %327, i32 -5, i32 %310
  %329 = icmp ugt ptr %311, %7
  br i1 %329, label %308, label %330

330:                                              ; preds = %323, %304
  %331 = phi i32 [ %306, %304 ], [ %328, %323 ]
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %334, label %333, !prof !15

333:                                              ; preds = %330
  call void @page_zero_new_buffers(ptr noundef %0, i32 noundef %9, i32 noundef %10)
  br label %334

334:                                              ; preds = %333, %330
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %331
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__block_write_begin(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !15

9:                                                ; preds = %4
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %4
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 @__block_write_begin_int(ptr noundef %15, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null)
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_write_begin(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) #2 {
  %7 = lshr i64 %1, 12
  %8 = trunc i64 %7 to i32
  %9 = tail call ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef %8, i32 noundef %3) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !15

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %9 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 @__block_write_begin_int(ptr noundef %22, i64 noundef %1, i32 noundef %2, ptr noundef %5, ptr noundef null) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !15

25:                                               ; preds = %20
  tail call void @unlock_page(ptr noundef nonnull %9) #13
  tail call fastcc void @put_page(ptr noundef nonnull %9)
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi ptr [ null, %25 ], [ %9, %20 ]
  store ptr %27, ptr %4, align 4
  br label %28

28:                                               ; preds = %26, %6
  %29 = phi i32 [ %23, %26 ], [ -12, %6 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_page(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !15

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !41
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #13
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_write_end(ptr nocapture readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture readnone %6) #2 {
  %8 = trunc i64 %2 to i32
  %9 = and i32 %8, 4095
  %10 = icmp ult i32 %4, %3
  br i1 %10, label %11, label %31, !prof !16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !15

16:                                               ; preds = %11
  %17 = add i32 %13, -1
  br label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %5 to i32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = inttoptr i32 %21 to ptr
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ 0, %20 ], [ %4, %26 ]
  %29 = add i32 %28, %9
  %30 = add i32 %9, %3
  tail call void @page_zero_new_buffers(ptr noundef %5, i32 noundef %29, i32 noundef %30)
  br label %31

31:                                               ; preds = %27, %7
  %32 = phi i32 [ %28, %27 ], [ %4, %7 ]
  tail call void @flush_dcache_page(ptr noundef %5) #13
  %33 = add i32 %32, %9
  tail call fastcc void @__block_commit_write(ptr noundef %5, i32 noundef %9, i32 noundef %33)
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__block_commit_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load volatile i32, ptr %0, align 4
  %5 = and i32 %4, 8192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !16

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2073, 0\0A.popsection", ""() #13, !srcloc !89
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.buffer_head, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  br label %14

14:                                               ; preds = %36, %8
  %15 = phi i32 [ 0, %8 ], [ %31, %36 ]
  %16 = phi ptr [ %11, %8 ], [ %38, %36 ]
  %17 = phi i32 [ 0, %8 ], [ %18, %36 ]
  %18 = add i32 %17, %13
  %19 = icmp ugt i32 %18, %1
  %20 = icmp ult i32 %17, %2
  %21 = and i1 %20, %19
  %22 = load volatile i32, ptr %16, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %21, label %27, label %25

25:                                               ; preds = %14
  %26 = select i1 %24, i32 1, i32 %15
  br label %30

27:                                               ; preds = %14
  br i1 %24, label %28, label %29

28:                                               ; preds = %27
  tail call void @_set_bit(i32 noundef 0, ptr noundef %16) #13
  br label %29

29:                                               ; preds = %28, %27
  tail call void @mark_buffer_dirty(ptr noundef %16)
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %15, %29 ], [ %26, %25 ]
  %32 = load volatile i32, ptr %16, align 4
  %33 = and i32 %32, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %16) #13
  br label %36

36:                                               ; preds = %35, %30
  %37 = getelementptr inbounds %struct.buffer_head, ptr %16, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %11
  br i1 %39, label %40, label %14

40:                                               ; preds = %36
  %41 = icmp eq i32 %31, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !90
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #13
  br label %43

43:                                               ; preds = %42, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_write_end(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nocapture readnone %6) #2 {
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %2 to i32
  %12 = and i32 %11, 4095
  %13 = icmp ult i32 %4, %3
  br i1 %13, label %14, label %34, !prof !16

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !15

19:                                               ; preds = %14
  %20 = add i32 %16, -1
  br label %23

21:                                               ; preds = %14
  %22 = ptrtoint ptr %5 to i32
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = inttoptr i32 %24 to ptr
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi i32 [ 0, %23 ], [ %4, %29 ]
  %32 = add i32 %31, %12
  %33 = add i32 %12, %3
  tail call void @page_zero_new_buffers(ptr noundef %5, i32 noundef %32, i32 noundef %33) #13
  br label %34

34:                                               ; preds = %30, %7
  %35 = phi i32 [ %31, %30 ], [ %4, %7 ]
  tail call void @flush_dcache_page(ptr noundef %5) #13
  %36 = add i32 %35, %12
  tail call fastcc void @__block_commit_write(ptr noundef %5, i32 noundef %12, i32 noundef %36) #13
  %37 = zext i32 %35 to i64
  %38 = add i64 %37, %2
  %39 = load i64, ptr %9, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !91
  %42 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !92
  store i64 %38, ptr %9, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !93
  %45 = load i32, ptr %42, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %42, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  br label %47

47:                                               ; preds = %41, %34
  tail call void @unlock_page(ptr noundef %5) #13
  %48 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !15

52:                                               ; preds = %47
  %53 = add i32 %49, -1
  br label %56

54:                                               ; preds = %47
  %55 = ptrtoint ptr %5 to i32
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #13, !srcloc !12
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #13, !srcloc !41
  %61 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  tail call void @__put_page(ptr noundef %58) #13
  br label %64

64:                                               ; preds = %63, %56
  %65 = icmp slt i64 %10, %2
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  tail call void @pagecache_isize_extended(ptr noundef %8, i64 noundef %10, i64 noundef %2) #13
  br label %67

67:                                               ; preds = %66, %64
  br i1 %40, label %68, label %69

68:                                               ; preds = %67
  tail call void @__mark_inode_dirty(ptr noundef %8, i32 noundef 7) #13
  br label %69

69:                                               ; preds = %68, %67
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pagecache_isize_extended(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_is_partially_uptodate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load volatile i32, ptr %0, align 4
  %5 = and i32 %4, 8192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = load volatile i32, ptr %0, align 4
  %9 = and i32 %8, 8192
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !16

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2226, 0\0A.popsection", ""() #13, !srcloc !95
  unreachable

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.buffer_head, ptr %15, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = sub i32 4096, %1
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %2)
  %20 = add i32 %19, %1
  %21 = icmp ugt i32 %17, %1
  %22 = sub i32 4096, %17
  %23 = icmp ugt i32 %20, %22
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %42, label %25

25:                                               ; preds = %38, %12
  %26 = phi ptr [ %40, %38 ], [ %15, %12 ]
  %27 = phi i32 [ %28, %38 ], [ 0, %12 ]
  %28 = add i32 %27, %17
  %29 = icmp ugt i32 %28, %1
  %30 = icmp ult i32 %27, %20
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load volatile i32, ptr %26, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = icmp ult i32 %28, %20
  br i1 %37, label %38, label %42

38:                                               ; preds = %36, %25
  %39 = getelementptr inbounds %struct.buffer_head, ptr %26, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %15
  br i1 %41, label %42, label %25

42:                                               ; preds = %38, %36, %32, %12, %3
  %43 = phi i32 [ 0, %3 ], [ 0, %12 ], [ 0, %32 ], [ 1, %38 ], [ 1, %36 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_read_full_page(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x ptr], align 4
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !26
  %7 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !15

11:                                               ; preds = %2
  %12 = add i32 %8, -1
  br label %15

13:                                               ; preds = %2
  %14 = ptrtoint ptr %0 to i32
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !16

21:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1674, 0\0A.popsection", ""() #13, !srcloc !69
  unreachable

22:                                               ; preds = %15
  %23 = load volatile i32, ptr %0, align 4
  %24 = and i32 %23, 8192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 19
  %28 = load volatile i8, ptr %27, align 2
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 1, %29
  tail call void @create_empty_buffers(ptr noundef %0, i32 noundef %30, i32 noundef 0) #13
  br label %31

31:                                               ; preds = %26, %22
  %32 = load volatile i32, ptr %0, align 4
  %33 = and i32 %32, 8192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !16

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1679, 0\0A.popsection", ""() #13, !srcloc !70
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.buffer_head, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  %43 = tail call i32 @llvm.ctlz.i32(i32 %41, i1 false) #13, !range !56
  %44 = sub nsw i32 31, %43
  %45 = select i1 %42, i32 -1, i32 %44
  %46 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = sub nsw i32 12, %45
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %51 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %52

52:                                               ; preds = %60, %36
  %53 = load volatile i32, ptr %50, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %56, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %57 = load volatile i32, ptr %50, align 4
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %56

60:                                               ; preds = %56, %52
  %61 = phi i32 [ %53, %52 ], [ %57, %56 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %62 = load i64, ptr %51, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %63 = load volatile i32, ptr %50, align 4
  %64 = icmp eq i32 %63, %61
  br i1 %64, label %65, label %52

65:                                               ; preds = %60
  %66 = zext i32 %47 to i64
  %67 = shl i64 %66, %49
  %68 = zext i32 %41 to i64
  %69 = add nsw i64 %68, -1
  %70 = add i64 %69, %62
  %71 = zext i32 %45 to i64
  %72 = ashr i64 %70, %71
  %73 = ptrtoint ptr %0 to i32
  br label %74

74:                                               ; preds = %132, %65
  %75 = phi i64 [ %136, %132 ], [ %67, %65 ]
  %76 = phi ptr [ %138, %132 ], [ %39, %65 ]
  %77 = phi i32 [ %133, %132 ], [ 0, %65 ]
  %78 = phi i32 [ %135, %132 ], [ 0, %65 ]
  %79 = phi i32 [ %134, %132 ], [ 1, %65 ]
  br label %80

80:                                               ; preds = %140, %74
  %81 = phi i64 [ %142, %140 ], [ %75, %74 ]
  %82 = phi ptr [ %144, %140 ], [ %76, %74 ]
  %83 = phi i32 [ %141, %140 ], [ %78, %74 ]
  %84 = phi i32 [ 0, %140 ], [ %79, %74 ]
  %85 = load volatile i32, ptr %82, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %132

88:                                               ; preds = %80
  %89 = load volatile i32, ptr %82, align 4
  %90 = and i32 %89, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = icmp ult i64 %81, %72
  br i1 %93, label %94, label %111

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 4
  %96 = load i32, ptr %95, align 8
  %97 = icmp eq i32 %96, %41
  br i1 %97, label %99, label %98, !prof !15

98:                                               ; preds = %94
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2288, i32 noundef 9, ptr noundef null) #13
  br label %99

99:                                               ; preds = %98, %94
  %100 = tail call i32 %1(ptr noundef %6, i64 noundef %81, ptr noundef %82, i32 noundef 0) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = load volatile i32, ptr %7, align 4
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106, !prof !15

106:                                              ; preds = %102
  %107 = add i32 %103, -1
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %107, %106 ], [ %73, %102 ]
  %110 = inttoptr i32 %109 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %110) #13
  br label %111

111:                                              ; preds = %108, %99, %92
  %112 = phi i1 [ true, %99 ], [ false, %108 ], [ true, %92 ]
  %113 = load volatile i32, ptr %82, align 4
  %114 = and i32 %113, 16
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = mul i32 %83, %41
  %118 = add i32 %117, %41
  tail call void @zero_user_segments(ptr noundef %0, i32 noundef %117, i32 noundef %118, i32 noundef 0, i32 noundef 0) #13
  br i1 %112, label %119, label %140

119:                                              ; preds = %116
  %120 = load volatile i32, ptr %82, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %140

123:                                              ; preds = %119
  tail call void @_set_bit(i32 noundef 0, ptr noundef %82) #13
  br label %140

124:                                              ; preds = %111
  %125 = load volatile i32, ptr %82, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %124, %88
  %129 = phi i32 [ %84, %88 ], [ 0, %124 ]
  %130 = add i32 %77, 1
  %131 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %77
  store ptr %82, ptr %131, align 4
  br label %132

132:                                              ; preds = %128, %80
  %133 = phi i32 [ %130, %128 ], [ %77, %80 ]
  %134 = phi i32 [ %129, %128 ], [ %84, %80 ]
  %135 = add i32 %83, 1
  %136 = add i64 %81, 1
  %137 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, %39
  br i1 %139, label %146, label %74

140:                                              ; preds = %124, %123, %119, %116
  %141 = add i32 %83, 1
  %142 = add i64 %81, 1
  %143 = getelementptr inbounds %struct.buffer_head, ptr %82, i32 0, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, %39
  br i1 %145, label %157, label %80

146:                                              ; preds = %132
  %147 = icmp eq i32 %134, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %146
  %149 = load volatile i32, ptr %7, align 4
  %150 = and i32 %149, 1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152, !prof !15

152:                                              ; preds = %148
  %153 = add i32 %149, -1
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i32 [ %153, %152 ], [ %73, %148 ]
  %156 = inttoptr i32 %155 to ptr
  tail call void @_set_bit(i32 noundef 17, ptr noundef %156) #13
  br label %157

157:                                              ; preds = %154, %146, %140
  %158 = phi i32 [ %133, %154 ], [ %133, %146 ], [ %77, %140 ]
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %157
  %161 = icmp sgt i32 %158, 0
  br i1 %161, label %177, label %215

162:                                              ; preds = %157
  %163 = load volatile i32, ptr %7, align 4
  %164 = and i32 %163, 1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166, !prof !15

166:                                              ; preds = %162
  %167 = add i32 %163, -1
  br label %168

168:                                              ; preds = %166, %162
  %169 = phi i32 [ %167, %166 ], [ %73, %162 ]
  %170 = inttoptr i32 %169 to ptr
  %171 = load volatile i32, ptr %170, align 4
  %172 = and i32 %171, 256
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !90
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #13
  br label %175

175:                                              ; preds = %174, %168
  tail call void @unlock_page(ptr noundef %0) #13
  br label %215

176:                                              ; preds = %200
  br i1 %161, label %203, label %215

177:                                              ; preds = %200, %160
  %178 = phi i32 [ %201, %200 ], [ 0, %160 ]
  %179 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %178
  %180 = load ptr, ptr %179, align 4
  %181 = load volatile i32, ptr %180, align 4
  %182 = and i32 %181, 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %180) #13, !srcloc !12
  %185 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %180, ptr %180, i32 4, ptr elementtype(i32) %180) #13, !srcloc !43
  %186 = extractvalue { i32, i32, i32 } %185, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %187 = and i32 %186, 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %184, %177
  %190 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %180) #13
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %189
  %193 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %180, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %194

194:                                              ; preds = %192, %189, %184
  %195 = getelementptr inbounds %struct.buffer_head, ptr %180, i32 0, i32 7
  store ptr @end_buffer_async_read_io, ptr %195, align 4
  %196 = load volatile i32, ptr %180, align 4
  %197 = and i32 %196, 64
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  tail call void @_set_bit(i32 noundef 6, ptr noundef %180) #13
  br label %200

200:                                              ; preds = %199, %194
  %201 = add nuw nsw i32 %178, 1
  %202 = icmp eq i32 %201, %158
  br i1 %202, label %176, label %177

203:                                              ; preds = %212, %176
  %204 = phi i32 [ %213, %212 ], [ 0, %176 ]
  %205 = getelementptr [8 x ptr], ptr %3, i32 0, i32 %204
  %206 = load ptr, ptr %205, align 4
  %207 = load volatile i32, ptr %206, align 4
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %203
  tail call fastcc void @end_buffer_async_read(ptr noundef %206, i32 noundef 1)
  br label %212

211:                                              ; preds = %203
  tail call fastcc void @submit_bh_wbc(i32 noundef 0, i32 noundef 0, ptr noundef %206, i32 noundef 0, ptr noundef null) #13
  br label %212

212:                                              ; preds = %211, %210
  %213 = add nuw nsw i32 %204, 1
  %214 = icmp eq i32 %213, %158
  br i1 %214, label %215, label %203

215:                                              ; preds = %212, %176, %175, %160
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @end_buffer_async_read(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 252, 0\0A.popsection", ""() #13, !srcloc !96
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = load volatile i32, ptr %0, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #13
  br label %41

16:                                               ; preds = %7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #13
  %17 = load volatile i32, ptr %0, align 4
  %18 = and i32 %17, 4096
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = tail call i32 @___ratelimit(ptr noundef nonnull @buffer_io_error._rs, ptr noundef nonnull @__func__.buffer_io_error) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 3
  %27 = load i64, ptr %26, align 8
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %25, i64 noundef %27, ptr noundef nonnull @.str.16) #14
  br label %29

29:                                               ; preds = %23, %20, %16
  %30 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34, !prof !15

34:                                               ; preds = %29
  %35 = add i32 %31, -1
  br label %38

36:                                               ; preds = %29
  %37 = ptrtoint ptr %9 to i32
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = inttoptr i32 %39 to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %40) #13
  br label %41

41:                                               ; preds = %38, %15, %11
  %42 = load volatile i32, ptr %9, align 4
  %43 = and i32 %42, 8192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46, !prof !16

45:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #13, !srcloc !97
  unreachable

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.buffer_head, ptr %49, i32 0, i32 12
  %51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %50) #13
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %0) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  br label %53

53:                                               ; preds = %65, %46
  %54 = phi ptr [ %0, %46 ], [ %70, %65 ]
  %55 = phi i32 [ 1, %46 ], [ %68, %65 ]
  %56 = load volatile i32, ptr %54, align 4
  %57 = load volatile i32, ptr %54, align 4
  %58 = and i32 %57, 64
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load volatile i32, ptr %54, align 4
  %62 = and i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %91, !prof !16

64:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 277, 0\0A.popsection", ""() #13, !srcloc !98
  unreachable

65:                                               ; preds = %53
  %66 = and i32 %56, 1
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 %55
  %69 = getelementptr inbounds %struct.buffer_head, ptr %54, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %53

72:                                               ; preds = %65
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #13
  %73 = icmp eq i32 %68, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 1
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79, !prof !15

79:                                               ; preds = %74
  %80 = add i32 %76, -1
  br label %83

81:                                               ; preds = %74
  %82 = ptrtoint ptr %9 to i32
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = inttoptr i32 %84 to ptr
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 256
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !90
  tail call void @_set_bit(i32 noundef 2, ptr noundef %9) #13
  br label %90

90:                                               ; preds = %89, %83, %72
  tail call void @unlock_page(ptr noundef %9) #13
  br label %92

91:                                               ; preds = %60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %51) #13
  br label %92

92:                                               ; preds = %91, %90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @submit_bh(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  tail call fastcc void @submit_bh_wbc(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef null)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_cont_expand_simple(ptr noundef %0, i64 noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !26
  %7 = tail call i32 @inode_newsize_ok(ptr noundef %0, i64 noundef %1) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = call i32 @pagecache_write_begin(ptr noundef null, ptr noundef %6, i64 noundef %1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = call i32 @pagecache_write_end(ptr noundef null, ptr noundef %6, i64 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %14) #13
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18, !prof !16

17:                                               ; preds = %12
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2367, 0\0A.popsection", ""() #13, !srcloc !99
  unreachable

18:                                               ; preds = %12, %9, %2
  %19 = phi i32 [ %7, %2 ], [ %10, %9 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cont_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture readnone %6, ptr noundef %7, ptr nocapture noundef %8) #2 {
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 19
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store ptr null, ptr %10, align 4, !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store ptr null, ptr %11, align 4, !annotation !26
  %16 = lshr i64 %2, 12
  %17 = trunc i64 %16 to i32
  %18 = trunc i64 %2 to i32
  %19 = and i32 %18, 4095
  %20 = shl nsw i32 -1, %15
  %21 = xor i32 %20, -1
  %22 = zext i32 %21 to i64
  br label %23

23:                                               ; preds = %59, %9
  %24 = load i64, ptr %8, align 8
  %25 = lshr i64 %24, 12
  %26 = trunc i64 %25 to i32
  %27 = icmp ugt i32 %17, %26
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = trunc i64 %24 to i32
  %30 = and i32 %29, 4095
  %31 = and i32 %30, %21
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = or i64 %24, %22
  %35 = add i64 %34, 1
  store i64 %35, ptr %8, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = sub nuw nsw i32 4096, %30
  %38 = call i32 @pagecache_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %24, i32 noundef %37, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %90

40:                                               ; preds = %36
  %41 = load ptr, ptr %10, align 4
  call void @zero_user_segments(ptr noundef %41, i32 noundef %30, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #13
  %42 = load ptr, ptr %10, align 4
  %43 = load ptr, ptr %11, align 4
  %44 = call i32 @pagecache_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %24, i32 noundef %37, i32 noundef %37, ptr noundef %42, ptr noundef %43) #13
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %90, label %46

46:                                               ; preds = %40
  %47 = icmp eq i32 %44, %37
  br i1 %47, label %49, label %48, !prof !15

48:                                               ; preds = %46
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2406, 0\0A.popsection", ""() #13, !srcloc !100
  unreachable

49:                                               ; preds = %46
  call void @balance_dirty_pages_ratelimited(ptr noundef %1) #13
  %50 = tail call ptr @llvm.thread.pointer() #13
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 98, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 8
  %58 = and i32 %57, 1
  br label %59

59:                                               ; preds = %54, %49
  %60 = phi i32 [ 0, %49 ], [ %58, %54 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %23, label %90

62:                                               ; preds = %23
  %63 = trunc i64 %25 to i32
  %64 = icmp eq i32 %17, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = trunc i64 %24 to i32
  %67 = and i32 %66, 4095
  %68 = icmp ugt i32 %19, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %65
  %70 = and i32 %67, %21
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = or i64 %24, %22
  %74 = add i64 %73, 1
  store i64 %74, ptr %8, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = sub nsw i32 %19, %67
  %77 = call i32 @pagecache_write_begin(ptr noundef %0, ptr noundef %1, i64 noundef %24, i32 noundef %76, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load ptr, ptr %10, align 4
  call void @zero_user_segments(ptr noundef %80, i32 noundef %67, i32 noundef %19, i32 noundef 0, i32 noundef 0) #13
  %81 = load ptr, ptr %10, align 4
  %82 = load ptr, ptr %11, align 4
  %83 = call i32 @pagecache_write_end(ptr noundef %0, ptr noundef %1, i64 noundef %24, i32 noundef %76, i32 noundef %76, ptr noundef %81, ptr noundef %82) #13
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = icmp eq i32 %83, %76
  br i1 %86, label %87, label %89, !prof !15

87:                                               ; preds = %85
  %88 = load i64, ptr %8, align 8
  br label %92

89:                                               ; preds = %85
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2439, 0\0A.popsection", ""() #13, !srcloc !101
  unreachable

90:                                               ; preds = %79, %75, %59, %40, %36
  %91 = phi i32 [ %83, %79 ], [ %77, %75 ], [ -4, %59 ], [ %44, %40 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  br label %125

92:                                               ; preds = %87, %65, %62
  %93 = phi i64 [ %88, %87 ], [ %24, %65 ], [ %24, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  %94 = zext i32 %3 to i64
  %95 = add i64 %94, %2
  %96 = icmp sgt i64 %95, %93
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = trunc i64 %93 to i32
  %99 = and i32 %21, 4095
  %100 = and i32 %99, %98
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = or i64 %93, %22
  %104 = add i64 %103, 1
  store i64 %104, ptr %8, align 8
  br label %105

105:                                              ; preds = %102, %97, %92
  %106 = call ptr @grab_cache_page_write_begin(ptr noundef %1, i32 noundef %17, i32 noundef %4) #13
  %107 = icmp eq ptr %106, null
  br i1 %107, label %125, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 1
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113, !prof !15

113:                                              ; preds = %108
  %114 = add i32 %110, -1
  br label %117

115:                                              ; preds = %108
  %116 = ptrtoint ptr %106 to i32
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = inttoptr i32 %118 to ptr
  %120 = call i32 @__block_write_begin_int(ptr noundef %119, i64 noundef %2, i32 noundef %3, ptr noundef %7, ptr noundef null) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122, !prof !15

122:                                              ; preds = %117
  call void @unlock_page(ptr noundef nonnull %106) #13
  call fastcc void @put_page(ptr noundef nonnull %106) #13
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi ptr [ null, %122 ], [ %106, %117 ]
  store ptr %124, ptr %5, align 4
  br label %125

125:                                              ; preds = %123, %105, %90
  %126 = phi i32 [ %91, %90 ], [ %120, %123 ], [ -12, %105 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_commit_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  tail call fastcc void @__block_commit_write(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_page_mkwrite(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.vm_fault, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !15

14:                                               ; preds = %3
  %15 = add i32 %11, -1
  br label %18

16:                                               ; preds = %3
  %17 = ptrtoint ptr %5 to i32
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = inttoptr i32 %19 to ptr
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %20) #13, !srcloc !12
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %20, ptr %20, i32 1, ptr elementtype(i32) %20) #13, !srcloc !43
  %26 = extractvalue { i32, i32, i32 } %25, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %18
  tail call void @__folio_lock(ptr noundef %20) #13
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 22
  %32 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 13
  br label %33

33:                                               ; preds = %41, %30
  %34 = load volatile i32, ptr %31, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %37, %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %38 = load volatile i32, ptr %31, align 4
  %39 = and i32 %38, 1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37, %33
  %42 = phi i32 [ %34, %33 ], [ %38, %37 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %43 = load i64, ptr %32, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %44 = load volatile i32, ptr %31, align 4
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %46, label %33

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = zext i32 %54 to i64
  %56 = shl nuw nsw i64 %55, 12
  %57 = icmp sgt i64 %56, %43
  br i1 %57, label %83, label %58

58:                                               ; preds = %52
  %59 = shl i32 %54, 12
  %60 = add i32 %59, 4096
  %61 = zext i32 %60 to i64
  %62 = icmp slt i64 %43, %61
  %63 = trunc i64 %43 to i32
  %64 = and i32 %63, 4095
  %65 = select i1 %62, i32 %64, i32 4096
  %66 = load volatile i32, ptr %10, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69, !prof !15

69:                                               ; preds = %58
  %70 = add i32 %66, -1
  br label %73

71:                                               ; preds = %58
  %72 = ptrtoint ptr %5 to i32
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = inttoptr i32 %74 to ptr
  %76 = tail call i32 @__block_write_begin_int(ptr noundef %75, i64 noundef 0, i32 noundef %65, ptr noundef %2, ptr noundef null) #13
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  tail call fastcc void @__block_commit_write(ptr noundef %5, i32 noundef 0, i32 noundef %65) #13
  br label %81

79:                                               ; preds = %73
  %80 = icmp slt i32 %76, 0
  br i1 %80, label %83, label %81, !prof !16

81:                                               ; preds = %79, %78
  %82 = tail call zeroext i1 @set_page_dirty(ptr noundef %5) #13
  tail call void @wait_for_stable_page(ptr noundef %5) #13
  br label %85

83:                                               ; preds = %79, %52, %46
  %84 = phi i32 [ %76, %79 ], [ -14, %52 ], [ -14, %46 ]
  tail call void @unlock_page(ptr noundef %5) #13
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %84, %83 ], [ 0, %81 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_stable_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nobh_write_begin(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6) #2 {
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 19
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = lshr i64 %1, 12
  %14 = trunc i64 %13 to i32
  %15 = trunc i64 %1 to i32
  %16 = and i32 %15, 4095
  %17 = add i32 %16, %2
  %18 = tail call ptr @grab_cache_page_write_begin(ptr noundef %0, i32 noundef %14, i32 noundef %3) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %224, label %20

20:                                               ; preds = %7
  store ptr %18, ptr %4, align 4
  store ptr null, ptr %5, align 4
  %21 = load volatile i32, ptr %18, align 4
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  %24 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %23, label %38, label %28

28:                                               ; preds = %20
  br i1 %27, label %31, label %29, !prof !15

29:                                               ; preds = %28
  %30 = add i32 %25, -1
  br label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %18 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = inttoptr i32 %34 to ptr
  %36 = tail call i32 @__block_write_begin_int(ptr noundef %35, i64 noundef %1, i32 noundef %2, ptr noundef %6, ptr noundef null) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %224, label %205, !prof !15

38:                                               ; preds = %20
  br i1 %27, label %41, label %39, !prof !15

39:                                               ; preds = %38
  %40 = add i32 %25, -1
  br label %43

41:                                               ; preds = %38
  %42 = ptrtoint ptr %18 to i32
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = inttoptr i32 %44 to ptr
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 131072
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %224

49:                                               ; preds = %43
  %50 = sub i32 4096, %12
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %205

52:                                               ; preds = %78, %49
  %53 = phi i32 [ %81, %78 ], [ %50, %49 ]
  %54 = phi ptr [ %55, %78 ], [ null, %49 ]
  %55 = tail call ptr @alloc_buffer_head(i32 noundef 4197440) #13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %83, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %58, align 4
  %59 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 3
  store i64 -1, ptr %59, align 8
  %60 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 4
  store i32 %12, ptr %60, align 8
  %61 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 2
  store ptr %18, ptr %61, align 8
  %62 = icmp ugt i32 %53, 4095
  br i1 %62, label %63, label %64, !prof !16

63:                                               ; preds = %57
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1446, 0\0A.popsection", ""() #13, !srcloc !50
  unreachable

64:                                               ; preds = %57
  %65 = load i32, ptr %18, align 4
  %66 = lshr i32 %65, 30
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = icmp ne i32 %66, 3
  %70 = load i32, ptr @movable_zone, align 4
  %71 = icmp ne i32 %70, 2
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %68, %64
  %74 = inttoptr i32 %53 to ptr
  br label %78

75:                                               ; preds = %68
  %76 = tail call ptr @page_address(ptr noundef nonnull %18) #13
  %77 = getelementptr i8, ptr %76, i32 %53
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi ptr [ %77, %75 ], [ %74, %73 ]
  %80 = getelementptr inbounds %struct.buffer_head, ptr %55, i32 0, i32 5
  store ptr %79, ptr %80, align 4
  %81 = sub i32 %53, %12
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %52, label %90

83:                                               ; preds = %52
  %84 = icmp eq ptr %54, null
  br i1 %84, label %205, label %85

85:                                               ; preds = %85, %83
  %86 = phi ptr [ %88, %85 ], [ %54, %83 ]
  %87 = getelementptr inbounds %struct.buffer_head, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  tail call void @free_buffer_head(ptr noundef nonnull %86) #13
  %89 = icmp eq ptr %88, null
  br i1 %89, label %205, label %85

90:                                               ; preds = %78
  %91 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = zext i32 %92 to i64
  %94 = sub nsw i32 12, %11
  %95 = zext i32 %94 to i64
  %96 = shl i64 %93, %95
  %97 = ptrtoint ptr %18 to i32
  br label %98

98:                                               ; preds = %161, %90
  %99 = phi i32 [ 1, %90 ], [ %115, %161 ]
  %100 = phi i32 [ 0, %90 ], [ %162, %161 ]
  %101 = phi i32 [ 0, %90 ], [ %104, %161 ]
  %102 = phi i32 [ 0, %90 ], [ %163, %161 ]
  %103 = phi ptr [ %55, %90 ], [ %165, %161 ]
  %104 = add i32 %101, %12
  store i32 0, ptr %103, align 8
  %105 = icmp ult i32 %101, %17
  %106 = zext i1 %105 to i32
  %107 = zext i32 %102 to i64
  %108 = add i64 %96, %107
  %109 = tail call i32 %6(ptr noundef %8, i64 noundef %108, ptr noundef %103, i32 noundef %106) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %203

111:                                              ; preds = %98
  %112 = load volatile i32, ptr %103, align 4
  %113 = and i32 %112, 16
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 0, i32 %99
  %116 = load volatile i32, ptr %103, align 4
  %117 = and i32 %116, 32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.buffer_head, ptr %103, i32 0, i32 6
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.buffer_head, ptr %103, i32 0, i32 3
  %123 = load i64, ptr %122, align 8
  tail call void @clean_bdev_aliases(ptr noundef %121, i64 noundef %123, i64 noundef 1) #13
  br label %124

124:                                              ; preds = %119, %111
  %125 = load volatile i32, ptr %24, align 4
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128, !prof !15

128:                                              ; preds = %124
  %129 = add i32 %125, -1
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi i32 [ %129, %128 ], [ %97, %124 ]
  %132 = inttoptr i32 %131 to ptr
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  %137 = load volatile i32, ptr %103, align 4
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %136
  tail call void @_set_bit(i32 noundef 0, ptr noundef %103) #13
  br label %161

141:                                              ; preds = %130
  %142 = load volatile i32, ptr %103, align 4
  %143 = and i32 %142, 32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load volatile i32, ptr %103, align 4
  %147 = and i32 %146, 16
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %141
  tail call void @zero_user_segments(ptr noundef nonnull %18, i32 noundef %101, i32 noundef %16, i32 noundef %17, i32 noundef %104) #13
  br label %161

150:                                              ; preds = %145
  %151 = load volatile i32, ptr %103, align 4
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = icmp ult i32 %101, %16
  %156 = icmp ugt i32 %104, %17
  %157 = select i1 %155, i1 true, i1 %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %154
  tail call fastcc void @lock_buffer(ptr noundef %103)
  %159 = getelementptr inbounds %struct.buffer_head, ptr %103, i32 0, i32 7
  store ptr @end_buffer_read_nobh, ptr %159, align 4
  tail call fastcc void @submit_bh_wbc(i32 noundef 0, i32 noundef 0, ptr noundef %103, i32 noundef 0, ptr noundef null) #13
  %160 = add i32 %100, 1
  br label %161

161:                                              ; preds = %158, %154, %150, %149, %140, %136
  %162 = phi i32 [ %100, %140 ], [ %100, %136 ], [ %100, %154 ], [ %160, %158 ], [ %100, %150 ], [ %100, %149 ]
  %163 = add i32 %102, 1
  %164 = getelementptr inbounds %struct.buffer_head, ptr %103, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = icmp ult i32 %104, 4096
  br i1 %166, label %98, label %167

167:                                              ; preds = %161
  %168 = icmp eq i32 %162, 0
  br i1 %168, label %191, label %169

169:                                              ; preds = %181, %167
  %170 = phi i32 [ %185, %181 ], [ 0, %167 ]
  %171 = phi ptr [ %187, %181 ], [ %55, %167 ]
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %172, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load volatile i32, ptr %171, align 4
  %177 = and i32 %176, 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = tail call i32 @out_of_line_wait_on_bit(ptr noundef nonnull %171, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %181

181:                                              ; preds = %179, %175, %169
  %182 = load volatile i32, ptr %171, align 4
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 -5, i32 %170
  %186 = getelementptr inbounds %struct.buffer_head, ptr %171, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %169

189:                                              ; preds = %181
  %190 = icmp eq i32 %185, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %189, %167
  %192 = icmp eq i32 %115, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %191
  %194 = load volatile i32, ptr %24, align 4
  %195 = and i32 %194, 1
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197, !prof !15

197:                                              ; preds = %193
  %198 = add i32 %194, -1
  br label %199

199:                                              ; preds = %197, %193
  %200 = phi i32 [ %198, %197 ], [ %97, %193 ]
  %201 = inttoptr i32 %200 to ptr
  tail call void @_set_bit(i32 noundef 17, ptr noundef %201) #13
  br label %202

202:                                              ; preds = %199, %191
  store ptr %55, ptr %5, align 4
  br label %224

203:                                              ; preds = %189, %98
  %204 = phi i32 [ %185, %189 ], [ %109, %98 ]
  tail call fastcc void @attach_nobh_buffers(ptr noundef nonnull %18, ptr noundef nonnull %55)
  tail call void @page_zero_new_buffers(ptr noundef nonnull %18, i32 noundef %16, i32 noundef %17)
  br label %205

205:                                              ; preds = %203, %85, %83, %49, %33
  %206 = phi i32 [ %36, %33 ], [ %204, %203 ], [ -12, %83 ], [ -12, %49 ], [ -12, %85 ]
  tail call void @unlock_page(ptr noundef nonnull %18) #13
  %207 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %208, 1
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211, !prof !15

211:                                              ; preds = %205
  %212 = add i32 %208, -1
  br label %215

213:                                              ; preds = %205
  %214 = ptrtoint ptr %18 to i32
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  %217 = inttoptr i32 %216 to ptr
  %218 = getelementptr inbounds %struct.page, ptr %217, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %218) #13, !srcloc !12
  %219 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %218, ptr %218, i32 1, ptr elementtype(i32) %218) #13, !srcloc !41
  %220 = extractvalue { i32, i32 } %219, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %215
  tail call void @__put_page(ptr noundef %217) #13
  br label %223

223:                                              ; preds = %222, %215
  store ptr null, ptr %4, align 4
  br label %224

224:                                              ; preds = %223, %202, %43, %33, %7
  %225 = phi i32 [ %206, %223 ], [ 0, %202 ], [ -12, %7 ], [ 0, %33 ], [ 0, %43 ]
  ret i32 %225
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @end_buffer_read_nobh(ptr noundef %0, i32 noundef %1) #2 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %0) #13
  br label %10

9:                                                ; preds = %2
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %0) #13
  br label %10

10:                                               ; preds = %9, %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @attach_nobh_buffers(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !15

7:                                                ; preds = %2
  %8 = add i32 %4, -1
  br label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = inttoptr i32 %12 to ptr
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !16

17:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2558, 0\0A.popsection", ""() #13, !srcloc !102
  unreachable

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.address_space, ptr %20, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %21) #13
  %22 = ptrtoint ptr %0 to i32
  br label %23

23:                                               ; preds = %47, %18
  %24 = phi ptr [ %1, %18 ], [ %43, %47 ]
  %25 = load volatile i32, ptr %3, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28, !prof !15

28:                                               ; preds = %23
  %29 = add i32 %25, -1
  br label %30

30:                                               ; preds = %28, %23
  %31 = phi i32 [ %29, %28 ], [ %22, %23 ]
  %32 = inttoptr i32 %31 to ptr
  %33 = load volatile i32, ptr %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load volatile i32, ptr %24, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @_set_bit(i32 noundef 1, ptr noundef %24) #13
  br label %41

41:                                               ; preds = %40, %36, %30
  %42 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 1
  store ptr %1, ptr %46, align 4
  br label %49

47:                                               ; preds = %41
  %48 = icmp eq ptr %43, %1
  br i1 %48, label %49, label %23

49:                                               ; preds = %47, %45
  %50 = load volatile i32, ptr %3, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !15

53:                                               ; preds = %49
  %54 = add i32 %50, -1
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi i32 [ %54, %53 ], [ %22, %49 ]
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #13, !srcloc !12
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #13, !srcloc !28
  %60 = getelementptr inbounds %struct.anon.108, ptr %57, i32 0, i32 4
  store ptr %1, ptr %60, align 4
  tail call void @_set_bit(i32 noundef 13, ptr noundef %57) #13
  %61 = load ptr, ptr %19, align 4
  %62 = getelementptr inbounds %struct.address_space, ptr %61, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %63 = load i16, ptr %62, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nobh_write_end(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) #2 {
  %8 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load volatile i32, ptr %5, align 4
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !15

16:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2726, 0\0A.popsection", ""() #13, !srcloc !103
  unreachable

17:                                               ; preds = %12
  %18 = icmp ult i32 %4, %3
  br i1 %18, label %19, label %20, !prof !104

19:                                               ; preds = %17
  tail call fastcc void @attach_nobh_buffers(ptr noundef %5, ptr noundef nonnull %6)
  br label %20

20:                                               ; preds = %19, %17, %7
  %21 = load volatile i32, ptr %5, align 4
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @generic_write_end(ptr undef, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr undef)
  br label %62

26:                                               ; preds = %20
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !90
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #13
  %27 = tail call zeroext i1 @set_page_dirty(ptr noundef %5) #13
  %28 = zext i32 %4 to i64
  %29 = add i64 %28, %2
  %30 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 13
  %31 = load i64, ptr %30, align 8
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !91
  %34 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 22
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !92
  store i64 %29, ptr %30, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !93
  %37 = load i32, ptr %34, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %34, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !94
  tail call void @__mark_inode_dirty(ptr noundef %10, i32 noundef 7) #13
  br label %39

39:                                               ; preds = %33, %26
  tail call void @unlock_page(ptr noundef %5) #13
  %40 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44, !prof !15

44:                                               ; preds = %39
  %45 = add i32 %41, -1
  br label %48

46:                                               ; preds = %39
  %47 = ptrtoint ptr %5 to i32
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = inttoptr i32 %49 to ptr
  %51 = getelementptr inbounds %struct.page, ptr %50, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #13, !srcloc !12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #13, !srcloc !41
  %53 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  tail call void @__put_page(ptr noundef %50) #13
  br label %56

56:                                               ; preds = %55, %48
  br i1 %11, label %62, label %57

57:                                               ; preds = %57, %56
  %58 = phi ptr [ %60, %57 ], [ %6, %56 ]
  %59 = getelementptr inbounds %struct.buffer_head, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void @free_buffer_head(ptr noundef nonnull %58)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %57

62:                                               ; preds = %57, %56, %24
  %63 = phi i32 [ %25, %24 ], [ %4, %56 ], [ %4, %57 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nobh_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %8 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %9

9:                                                ; preds = %17, %3
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %13, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %14 = load volatile i32, ptr %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %10, %9 ], [ %14, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %19 = load i64, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %20 = load volatile i32, ptr %7, align 4
  %21 = icmp eq i32 %20, %18
  br i1 %21, label %22, label %9

22:                                               ; preds = %17
  %23 = lshr i64 %19, 12
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, %24
  br i1 %27, label %37, label %28

28:                                               ; preds = %22
  %29 = trunc i64 %19 to i32
  %30 = and i32 %29, 4095
  %31 = add i32 %24, 1
  %32 = icmp ult i32 %26, %31
  %33 = icmp ne i32 %30, 0
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  tail call void @unlock_page(ptr noundef %0) #13
  br label %42

36:                                               ; preds = %28
  tail call void @zero_user_segments(ptr noundef %0, i32 noundef %30, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #13
  br label %37

37:                                               ; preds = %36, %22
  %38 = tail call i32 @mpage_writepage(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  %39 = icmp eq i32 %38, -11
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 @__block_write_full_page(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @end_buffer_async_write)
  br label %42

42:                                               ; preds = %40, %37, %35
  %43 = phi i32 [ 0, %35 ], [ %41, %40 ], [ %38, %37 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpage_writepage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nobh_truncate_page(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.buffer_head, align 8
  %5 = trunc i64 %1 to i32
  %6 = and i32 %5, 4095
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !26
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 19
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = add nuw i32 %11, 4095
  %13 = and i32 %12, %6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %130, label %15

15:                                               ; preds = %3
  %16 = lshr i64 %1, 12
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @pagecache_get_page(ptr noundef %0, i32 noundef %17, i32 noundef 7, i32 noundef %19) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %130, label %22

22:                                               ; preds = %15
  %23 = load volatile i32, ptr %20, align 4
  %24 = and i32 %23, 8192
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = and i64 %16, 4294967295
  %28 = sub nsw i32 12, %10
  %29 = zext i32 %28 to i64
  %30 = shl i64 %27, %29
  %31 = icmp ult i32 %6, %11
  br i1 %31, label %57, label %51

32:                                               ; preds = %104, %22
  call void @unlock_page(ptr noundef nonnull %20) #13
  %33 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !15

37:                                               ; preds = %32
  %38 = add i32 %34, -1
  br label %41

39:                                               ; preds = %32
  %40 = ptrtoint ptr %20 to i32
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = inttoptr i32 %42 to ptr
  %44 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #13, !srcloc !12
  %45 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #13, !srcloc !41
  %46 = extractvalue { i32, i32 } %45, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  call void @__put_page(ptr noundef %43) #13
  br label %49

49:                                               ; preds = %48, %41
  %50 = call i32 @block_truncate_page(ptr noundef %0, i64 noundef %1, ptr noundef %2)
  br label %130

51:                                               ; preds = %51, %26
  %52 = phi i32 [ %55, %51 ], [ %11, %26 ]
  %53 = phi i64 [ %54, %51 ], [ %30, %26 ]
  %54 = add i64 %53, 1
  %55 = add i32 %52, %11
  %56 = icmp ult i32 %6, %55
  br i1 %56, label %57, label %51

57:                                               ; preds = %51, %26
  %58 = phi i64 [ %30, %26 ], [ %54, %51 ]
  %59 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 4
  store i32 %11, ptr %59, align 8
  store i32 0, ptr %4, align 8
  %60 = call i32 %2(ptr noundef %7, i64 noundef %58, ptr noundef nonnull %4, i32 noundef 0) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %57
  %63 = load volatile i32, ptr %4, align 8
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %112, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !15

71:                                               ; preds = %66
  %72 = add i32 %68, -1
  br label %75

73:                                               ; preds = %66
  %74 = ptrtoint ptr %20 to i32
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = inttoptr i32 %76 to ptr
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %78, 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  br label %108

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.address_space_operations, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 %86(ptr noundef null, ptr noundef nonnull %20) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  call fastcc void @put_page(ptr noundef nonnull %20)
  br label %130

90:                                               ; preds = %82
  call fastcc void @lock_page(ptr noundef nonnull %20)
  %91 = load volatile i32, ptr %67, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94, !prof !15

94:                                               ; preds = %90
  %95 = add i32 %91, -1
  br label %98

96:                                               ; preds = %90
  %97 = ptrtoint ptr %20 to i32
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = inttoptr i32 %99 to ptr
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %98
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  %105 = load volatile i32, ptr %20, align 4
  %106 = and i32 %105, 8192
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %32

108:                                              ; preds = %104, %81
  %109 = add nuw i32 %11, %6
  %110 = sub i32 %109, %13
  call void @zero_user_segments(ptr noundef nonnull %20, i32 noundef %6, i32 noundef %110, i32 noundef 0, i32 noundef 0) #13
  %111 = call zeroext i1 @set_page_dirty(ptr noundef nonnull %20) #13
  br label %112

112:                                              ; preds = %108, %98, %62, %57
  %113 = phi i32 [ %60, %57 ], [ 0, %108 ], [ 0, %62 ], [ -5, %98 ]
  call void @unlock_page(ptr noundef nonnull %20) #13
  %114 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118, !prof !15

118:                                              ; preds = %112
  %119 = add i32 %115, -1
  br label %122

120:                                              ; preds = %112
  %121 = ptrtoint ptr %20 to i32
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi i32 [ %119, %118 ], [ %121, %120 ]
  %124 = inttoptr i32 %123 to ptr
  %125 = getelementptr inbounds %struct.page, ptr %124, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %125) #13, !srcloc !12
  %126 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %125, ptr %125, i32 1, ptr elementtype(i32) %125) #13, !srcloc !41
  %127 = extractvalue { i32, i32 } %126, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  call void @__put_page(ptr noundef %124) #13
  br label %130

130:                                              ; preds = %129, %122, %89, %49, %15, %3
  %131 = phi i32 [ %50, %49 ], [ 0, %3 ], [ %87, %89 ], [ -12, %15 ], [ %113, %122 ], [ %113, %129 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_truncate_page(ptr noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca ptr, align 4
  %5 = trunc i64 %1 to i32
  %6 = and i32 %5, 4095
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 19
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 1, %10
  %12 = add nuw i32 %11, 4095
  %13 = and i32 %12, %6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %135, label %15

15:                                               ; preds = %3
  %16 = lshr i64 %1, 12
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  %19 = sub nsw i32 12, %10
  %20 = zext i32 %19 to i64
  %21 = shl i64 %18, %20
  %22 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @pagecache_get_page(ptr noundef %0, i32 noundef %17, i32 noundef 7, i32 noundef %23) #13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %135, label %26

26:                                               ; preds = %15
  %27 = load volatile i32, ptr %24, align 4
  %28 = and i32 %27, 8192
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @create_empty_buffers(ptr noundef nonnull %24, i32 noundef %11, i32 noundef 0)
  br label %31

31:                                               ; preds = %30, %26
  %32 = load volatile i32, ptr %24, align 4
  %33 = and i32 %32, 8192
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !16

35:                                               ; preds = %31
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2906, 0\0A.popsection", ""() #13, !srcloc !105
  unreachable

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = inttoptr i32 %38 to ptr
  %40 = icmp ult i32 %6, %11
  br i1 %40, label %50, label %41

41:                                               ; preds = %41, %36
  %42 = phi i32 [ %48, %41 ], [ %11, %36 ]
  %43 = phi i64 [ %47, %41 ], [ %21, %36 ]
  %44 = phi ptr [ %46, %41 ], [ %39, %36 ]
  %45 = getelementptr inbounds %struct.buffer_head, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = add i64 %43, 1
  %48 = add i32 %42, %11
  %49 = icmp ult i32 %6, %48
  br i1 %49, label %50, label %41

50:                                               ; preds = %41, %36
  %51 = phi ptr [ %39, %36 ], [ %46, %41 ]
  %52 = phi i64 [ %21, %36 ], [ %47, %41 ]
  store ptr %51, ptr %4, align 4
  %53 = load volatile i32, ptr %51, align 4
  %54 = and i32 %53, 16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.buffer_head, ptr %51, i32 0, i32 4
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, %11
  br i1 %59, label %61, label %60, !prof !15

60:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2916, i32 noundef 9, ptr noundef null) #13
  br label %61

61:                                               ; preds = %60, %56
  %62 = tail call i32 %2(ptr noundef %7, i64 noundef %52, ptr noundef %51, i32 noundef 0) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %117

64:                                               ; preds = %61
  %65 = load volatile i32, ptr %51, align 4
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %117, label %68

68:                                               ; preds = %64, %50
  %69 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73, !prof !15

73:                                               ; preds = %68
  %74 = add i32 %70, -1
  br label %77

75:                                               ; preds = %68
  %76 = ptrtoint ptr %24 to i32
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = inttoptr i32 %78 to ptr
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  %84 = load volatile i32, ptr %51, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  tail call void @_set_bit(i32 noundef 0, ptr noundef %51) #13
  br label %88

88:                                               ; preds = %87, %83, %77
  %89 = load volatile i32, ptr %51, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %114

92:                                               ; preds = %88
  %93 = load volatile i32, ptr %51, align 4
  %94 = and i32 %93, 256
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load volatile i32, ptr %51, align 4
  %98 = and i32 %97, 2048
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %96
  call void @ll_rw_block(i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4)
  %101 = load volatile i32, ptr %51, align 4
  %102 = and i32 %101, 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load volatile i32, ptr %51, align 4
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %51, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %110

110:                                              ; preds = %108, %104, %100
  %111 = load volatile i32, ptr %51, align 4
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110, %96, %92, %88
  %115 = add nuw i32 %11, %6
  %116 = sub i32 %115, %13
  tail call void @zero_user_segments(ptr noundef nonnull %24, i32 noundef %6, i32 noundef %116, i32 noundef 0, i32 noundef 0) #13
  tail call void @mark_buffer_dirty(ptr noundef %51)
  br label %117

117:                                              ; preds = %114, %110, %64, %61
  %118 = phi i32 [ 0, %114 ], [ -5, %110 ], [ %62, %61 ], [ 0, %64 ]
  tail call void @unlock_page(ptr noundef nonnull %24) #13
  %119 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %120 = load volatile i32, ptr %119, align 4
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123, !prof !15

123:                                              ; preds = %117
  %124 = add i32 %120, -1
  br label %127

125:                                              ; preds = %117
  %126 = ptrtoint ptr %24 to i32
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  %129 = inttoptr i32 %128 to ptr
  %130 = getelementptr inbounds %struct.page, ptr %129, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %130) #13, !srcloc !12
  %131 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %130, ptr %130, i32 1, ptr elementtype(i32) %130) #13, !srcloc !41
  %132 = extractvalue { i32, i32 } %131, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  tail call void @__put_page(ptr noundef %129) #13
  br label %135

135:                                              ; preds = %134, %127, %15, %3
  %136 = phi i32 [ 0, %3 ], [ -12, %15 ], [ %118, %127 ], [ %118, %134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @block_write_full_page(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 22
  %8 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 13
  br label %9

9:                                                ; preds = %17, %3
  %10 = load volatile i32, ptr %7, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %13, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !71
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !72
  %14 = load volatile i32, ptr %7, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %13

17:                                               ; preds = %13, %9
  %18 = phi i32 [ %10, %9 ], [ %14, %13 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !73
  %19 = load i64, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %20 = load volatile i32, ptr %7, align 4
  %21 = icmp eq i32 %20, %18
  br i1 %21, label %22, label %9

22:                                               ; preds = %17
  %23 = lshr i64 %19, 12
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, %24
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i32 @__block_write_full_page(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @end_buffer_async_write)
  br label %40

30:                                               ; preds = %22
  %31 = trunc i64 %19 to i32
  %32 = and i32 %31, 4095
  %33 = add i32 %24, 1
  %34 = icmp ult i32 %26, %33
  %35 = icmp ne i32 %32, 0
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  tail call void @unlock_page(ptr noundef %0) #13
  br label %40

38:                                               ; preds = %30
  tail call void @zero_user_segments(ptr noundef %0, i32 noundef %32, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #13
  %39 = tail call i32 @__block_write_full_page(ptr noundef %6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @end_buffer_async_write)
  br label %40

40:                                               ; preds = %38, %37, %28
  %41 = phi i32 [ %29, %28 ], [ %39, %38 ], [ 0, %37 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @generic_block_bmap(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.buffer_head, align 8
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  %6 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 4
  %7 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = shl nuw i32 1, %9
  store i32 %10, ptr %6, align 8
  %11 = call i32 %2(ptr noundef %5, i64 noundef %1, ptr noundef nonnull %4, i32 noundef 0) #13
  %12 = getelementptr inbounds %struct.buffer_head, ptr %4, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  ret i64 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @write_dirty_buffer(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !43
  %8 = extractvalue { i32, i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6, %2
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %0) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %16

16:                                               ; preds = %14, %11, %6
  %17 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %0) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  br label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 7
  store ptr @end_buffer_write_sync, ptr %22, align 4
  %23 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #13, !srcloc !12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #13, !srcloc !28
  tail call fastcc void @submit_bh_wbc(i32 noundef 1, i32 noundef %1, ptr noundef %0, i32 noundef 0, ptr noundef null) #13
  br label %25

25:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sync_dirty_buffer(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3142, i32 noundef 9, ptr noundef null) #13
  br label %7

7:                                                ; preds = %6, %2
  %8 = load volatile i32, ptr %0, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !43
  %13 = extractvalue { i32, i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11, %7
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %0) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %21

21:                                               ; preds = %19, %16, %11
  %22 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %0) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %47, label %24

24:                                               ; preds = %21
  %25 = load volatile i32, ptr %0, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  br label %49

30:                                               ; preds = %24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #13, !srcloc !12
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #13, !srcloc !28
  %32 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 7
  store ptr @end_buffer_write_sync, ptr %32, align 4
  tail call fastcc void @submit_bh_wbc(i32 noundef 1, i32 noundef %1, ptr noundef %0, i32 noundef 0, ptr noundef null) #13
  %33 = load volatile i32, ptr %0, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load volatile i32, ptr %0, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %42

42:                                               ; preds = %40, %36, %30
  %43 = load volatile i32, ptr %0, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 -5, i32 0
  br label %49

47:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  br label %49

49:                                               ; preds = %47, %42, %28
  %50 = phi i32 [ -5, %28 ], [ 0, %47 ], [ %46, %42 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sync_dirty_buffer(ptr noundef %0) #2 {
  %2 = tail call i32 @__sync_dirty_buffer(ptr noundef %0, i32 noundef 2048)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_to_free_buffers(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store ptr null, ptr %2, align 4
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !15

9:                                                ; preds = %1
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %1
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !16

19:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3232, 0\0A.popsection", ""() #13, !srcloc !106
  unreachable

20:                                               ; preds = %13
  %21 = load volatile i32, ptr %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24, !prof !15

24:                                               ; preds = %20
  %25 = add i32 %21, -1
  br label %28

26:                                               ; preds = %20
  %27 = ptrtoint ptr %0 to i32
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = icmp eq ptr %4, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call fastcc i32 @drop_buffers(ptr noundef %0, ptr noundef nonnull %2)
  br label %60

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %39) #13
  %40 = call fastcc i32 @drop_buffers(ptr noundef %0, ptr noundef nonnull %2)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %38
  %43 = load volatile i32, ptr %5, align 4
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46, !prof !15

46:                                               ; preds = %42
  %47 = add i32 %43, -1
  br label %50

48:                                               ; preds = %42
  %49 = ptrtoint ptr %0 to i32
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = inttoptr i32 %51 to ptr
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  tail call void @__folio_cancel_dirty(ptr noundef %52) #13
  br label %57

57:                                               ; preds = %56, %50, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !29
  %58 = load i16, ptr %39, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !30
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !31
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  br label %60

60:                                               ; preds = %57, %36
  %61 = phi i32 [ %37, %36 ], [ %40, %57 ]
  %62 = load ptr, ptr %2, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %64, %60
  %65 = phi ptr [ %67, %64 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct.buffer_head, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void @free_buffer_head(ptr noundef %65)
  %68 = icmp eq ptr %67, %62
  br i1 %68, label %69, label %64

69:                                               ; preds = %64, %60, %28
  %70 = phi i32 [ 0, %28 ], [ %61, %60 ], [ %61, %64 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drop_buffers(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #2 {
  %3 = load volatile i32, ptr %0, align 4
  %4 = and i32 %3, 8192
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3202, 0\0A.popsection", ""() #13, !srcloc !107
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i32 %9 to ptr
  br label %11

11:                                               ; preds = %19, %7
  %12 = phi ptr [ %10, %7 ], [ %21, %19 ]
  %13 = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 11
  %14 = load volatile i32, ptr %13, align 4
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 6
  %17 = or i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %64

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.buffer_head, ptr %12, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %10
  br i1 %22, label %23, label %11

23:                                               ; preds = %40, %19
  %24 = phi ptr [ %26, %40 ], [ %10, %19 ]
  %25 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 10
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 9
  %32 = getelementptr inbounds %struct.buffer_head, ptr %24, i32 0, i32 9, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %35, align 4
  store volatile ptr %34, ptr %33, align 4
  store volatile ptr %31, ptr %31, align 4
  store ptr %31, ptr %32, align 4
  %36 = load ptr, ptr %27, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !16

38:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 480, i32 noundef 9, ptr noundef null) #13
  br label %39

39:                                               ; preds = %38, %30
  store ptr null, ptr %27, align 4
  br label %40

40:                                               ; preds = %39, %23
  %41 = icmp eq ptr %26, %10
  br i1 %41, label %42, label %23

42:                                               ; preds = %40
  store ptr %10, ptr %1, align 4
  %43 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47, !prof !15

47:                                               ; preds = %42
  %48 = add i32 %44, -1
  br label %51

49:                                               ; preds = %42
  %50 = ptrtoint ptr %0 to i32
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = inttoptr i32 %52 to ptr
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 8192
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.anon.108, ptr %53, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %53) #13
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.page, ptr %53, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #13, !srcloc !12
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 1, ptr elementtype(i32) %59) #13, !srcloc !41
  %61 = extractvalue { i32, i32 } %60, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !42
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  tail call void @__put_page(ptr noundef %53) #13
  br label %64

64:                                               ; preds = %63, %57, %51, %11
  %65 = phi i32 [ 1, %51 ], [ 1, %57 ], [ 1, %63 ], [ 0, %11 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bh_uptodate_or_lock(ptr noundef %0) #2 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %0, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !43
  %11 = extractvalue { i32, i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !44
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9, %5
  %15 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %0) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %19

19:                                               ; preds = %17, %14, %9
  %20 = load volatile i32, ptr %0, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  br label %25

25:                                               ; preds = %23, %19, %1
  %26 = phi i32 [ 0, %19 ], [ 1, %23 ], [ 1, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bh_submit_read(ptr noundef %0) #2 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !16

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3375, 0\0A.popsection", ""() #13, !srcloc !108
  unreachable

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %0, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #13, !srcloc !12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 4, ptr elementtype(i32) %0) #13, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  tail call void @wake_up_bit(ptr noundef %0, i32 noundef 2) #13
  br label %30

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !28
  %15 = getelementptr inbounds %struct.buffer_head, ptr %0, i32 0, i32 7
  store ptr @end_buffer_read_sync, ptr %15, align 4
  tail call fastcc void @submit_bh_wbc(i32 noundef 0, i32 noundef 0, ptr noundef %0, i32 noundef 0, ptr noundef null) #13
  %16 = load volatile i32, ptr %0, align 4
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load volatile i32, ptr %0, align 4
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @bit_wait_io, i32 noundef 2) #13
  br label %25

25:                                               ; preds = %23, %19, %12
  %26 = load volatile i32, ptr %0, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 -5, i32 0
  br label %30

30:                                               ; preds = %25, %10
  %31 = phi i32 [ 0, %10 ], [ %29, %25 ]
  ret i32 %31
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @buffer_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.6, i32 noundef 64, i32 noundef 0, i32 noundef 1441792, ptr noundef null) #13
  store ptr %1, ptr @bh_cachep, align 4
  %2 = tail call i32 @nr_free_buffer_pages() #13
  %3 = mul i32 %2, 10
  %4 = udiv i32 %3, 100
  %5 = shl nuw i32 %4, 6
  store i32 %5, ptr @max_buffer_heads, align 4
  %6 = tail call i32 @__cpuhp_setup_state(i32 noundef 27, ptr noundef nonnull @.str.7, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @buffer_exit_cpu_dead, i1 noundef zeroext false) #13
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 3410, i32 noundef 9, ptr noundef null) #13
  br label %9

9:                                                ; preds = %8, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @buffer_exit_cpu_dead(i32 noundef %0) #2 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @bh_lrus to i32)
  %5 = inttoptr i32 %4 to ptr
  br label %6

6:                                                ; preds = %18, %1
  %7 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %8 = getelementptr [16 x ptr], ptr %5, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.buffer_head, ptr %9, i32 0, i32 11
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !12
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !20
  br label %18

17:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1148, i32 noundef 9, ptr noundef nonnull @.str.4) #13
  br label %18

18:                                               ; preds = %17, %15, %6
  store ptr null, ptr %8, align 4
  %19 = add nuw nsw i32 %7, 1
  %20 = icmp eq i32 %19, 16
  br i1 %20, label %21, label %6

21:                                               ; preds = %18
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !109
  %23 = load i32, ptr %2, align 4
  %24 = add i32 %23, ptrtoint (ptr @bh_accounting to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #11, !srcloc !37
  %30 = add i32 %29, ptrtoint (ptr @bh_accounting to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %26
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #13, !srcloc !110
  %34 = load i32, ptr %2, align 4
  %35 = add i32 %34, ptrtoint (ptr @bh_accounting to i32)
  %36 = inttoptr i32 %35 to ptr
  store i32 0, ptr %36, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_touch_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait_io(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_mark_dirty(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_dirty_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__filemap_set_wb_err(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @init_page_buffers(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = load volatile i32, ptr %0, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !16

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 897, 0\0A.popsection", ""() #13, !srcloc !111
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !15

17:                                               ; preds = %9
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %9
  %20 = ptrtoint ptr %0 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !67
  br label %28

28:                                               ; preds = %27, %21
  %29 = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = shl i64 %30, 9
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %33, %28
  %34 = phi i32 [ %37, %33 ], [ %3, %28 ]
  %35 = phi i32 [ %36, %33 ], [ 8, %28 ]
  %36 = add nuw nsw i32 %35, 1
  %37 = lshr i32 %34, 1
  %38 = icmp ugt i32 %34, 513
  br i1 %38, label %33, label %39

39:                                               ; preds = %33
  %40 = zext i32 %36 to i64
  %41 = ashr i64 %31, %40
  br label %42

42:                                               ; preds = %39, %28
  %43 = phi i64 [ %41, %39 ], [ -1, %28 ]
  br label %44

44:                                               ; preds = %67, %42
  %45 = phi i64 [ %2, %42 ], [ %68, %67 ]
  %46 = phi ptr [ %12, %42 ], [ %70, %67 ]
  %47 = load volatile i32, ptr %46, align 4
  %48 = and i32 %47, 16
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 7
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 8
  store ptr null, ptr %52, align 8
  %53 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 6
  store ptr %1, ptr %53, align 8
  %54 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 3
  store i64 %45, ptr %54, align 8
  br i1 %26, label %60, label %55

55:                                               ; preds = %50
  %56 = load volatile i32, ptr %46, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @_set_bit(i32 noundef 0, ptr noundef %46) #13
  br label %60

60:                                               ; preds = %59, %55, %50
  %61 = icmp ult i64 %45, %43
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = load volatile i32, ptr %46, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @_set_bit(i32 noundef 4, ptr noundef %46) #13
  br label %67

67:                                               ; preds = %66, %62, %60, %44
  %68 = add i64 %45, 1
  %69 = getelementptr inbounds %struct.buffer_head, ptr %46, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %12
  br i1 %71, label %72, label %44

72:                                               ; preds = %67
  ret i64 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pagevec_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @end_buffer_async_read_io(ptr noundef %0, i32 noundef %1) #2 {
  tail call fastcc void @end_buffer_async_read(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @balance_dirty_pages_ratelimited(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @end_bio_bh_io_sync(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 3
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 16
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %9, label %8, !prof !15

8:                                                ; preds = %1
  tail call void @_set_bit(i32 noundef 12, ptr noundef %3) #13
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.buffer_head, ptr %3, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bio, ptr %0, i32 0, i32 6
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i32
  tail call void %11(ptr noundef %3, i32 noundef %15) #13
  tail call void @bio_put(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @guard_bio_eod(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__folio_cancel_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!9 = !{i64 2154637298}
!10 = !{i64 2154637450}
!11 = !{i64 2148109817}
!12 = !{i64 498891, i64 2147988862, i64 2147988888, i64 2147988935, i64 2147988957, i64 2147988985, i64 2147989005}
!13 = !{i64 2148007995, i64 2148008027, i64 2148008056, i64 2148008090, i64 2148008121, i64 2148008144}
!14 = !{i64 2155002557}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2155004016, i64 2155004491, i64 2155004053, i64 2155004109, i64 2155004143, i64 2155004167, i64 2155004208, i64 2155004229, i64 2155004257, i64 2155004291}
!18 = !{i64 2155005153, i64 2155005629, i64 2155005190, i64 2155005246, i64 2155005280, i64 2155005304, i64 2155005345, i64 2155005366, i64 2155005394, i64 2155005428}
!19 = !{i64 2154334282}
!20 = !{i64 2148003431, i64 2148003457, i64 2148003486, i64 2148003520, i64 2148003551, i64 2148003574}
!21 = !{i64 2148968454}
!22 = !{i64 2148968671}
!23 = !{i64 2155021014, i64 2155021490, i64 2155021051, i64 2155021107, i64 2155021141, i64 2155021165, i64 2155021206, i64 2155021227, i64 2155021255, i64 2155021289}
!24 = !{i64 2155022129, i64 2155022605, i64 2155022166, i64 2155022222, i64 2155022256, i64 2155022280, i64 2155022321, i64 2155022342, i64 2155022370, i64 2155022404}
!25 = !{i64 2155023536, i64 2155028073, i64 2155023573, i64 2155023629, i64 2155023663, i64 2155023687, i64 2155023728, i64 2155023749, i64 2155023777, i64 2155023811}
!26 = !{!"auto-init"}
!27 = !{i64 2155041320}
!28 = !{i64 2148001074, i64 2148001100, i64 2148001129, i64 2148001163, i64 2148001194, i64 2148001217}
!29 = !{i64 2149321064}
!30 = !{i64 2149316888}
!31 = !{i64 2149316963, i64 2149316990, i64 2149317037, i64 2149317059, i64 2149317087, i64 2149317107}
!32 = !{i64 2149344067}
!33 = !{i64 2155042950}
!34 = !{i64 396862}
!35 = !{i64 2155065614, i64 2155066091, i64 2155065651, i64 2155065707, i64 2155065741, i64 2155065765, i64 2155065806, i64 2155065827, i64 2155065855, i64 2155065889}
!36 = !{i64 394565}
!37 = !{i64 412830}
!38 = !{i64 394375}
!39 = !{i64 2155013583, i64 2155014059, i64 2155013620, i64 2155013676, i64 2155013710, i64 2155013734, i64 2155013775, i64 2155013796, i64 2155013824, i64 2155013858}
!40 = !{i64 2148101729}
!41 = !{i64 2148004115, i64 2148004147, i64 2148004176, i64 2148004210, i64 2148004241, i64 2148004264}
!42 = !{i64 2148101932}
!43 = !{i64 2148009536, i64 2148009568, i64 2148009597, i64 2148009631, i64 2148009662, i64 2148009685}
!44 = !{i64 2148110852}
!45 = !{i64 2155035005, i64 2155035481, i64 2155035042, i64 2155035098, i64 2155035132, i64 2155035156, i64 2155035197, i64 2155035218, i64 2155035246, i64 2155035280}
!46 = !{i64 2154657438}
!47 = !{i64 2154657590}
!48 = !{i64 2155055166}
!49 = !{i64 2155037556, i64 2155038032, i64 2155037593, i64 2155037649, i64 2155037683, i64 2155037707, i64 2155037748, i64 2155037769, i64 2155037797, i64 2155037831}
!50 = !{i64 2155135666, i64 2155136143, i64 2155135703, i64 2155135759, i64 2155135793, i64 2155135817, i64 2155135858, i64 2155135879, i64 2155135907, i64 2155135941}
!51 = !{i64 2155242672}
!52 = !{i64 2155247362}
!53 = !{i64 2155248925, i64 2155253463, i64 2155248962, i64 2155249018, i64 2155249052, i64 2155249076, i64 2155249117, i64 2155249138, i64 2155249166, i64 2155249200}
!54 = !{i64 2155253753}
!55 = !{i64 2155258982}
!56 = !{i32 0, i32 33}
!57 = !{i64 2155050671, i64 2155051147, i64 2155050708, i64 2155050764, i64 2155050798, i64 2155050822, i64 2155050863, i64 2155050884, i64 2155050912, i64 2155050946}
!58 = !{i64 2155051809, i64 2155052285, i64 2155051846, i64 2155051902, i64 2155051936, i64 2155051960, i64 2155052001, i64 2155052022, i64 2155052050, i64 2155052084}
!59 = !{i64 2155131596}
!60 = !{i64 2155132416}
!61 = !{i64 2155139834, i64 2155140311, i64 2155139871, i64 2155139927, i64 2155139961, i64 2155139985, i64 2155140026, i64 2155140047, i64 2155140075, i64 2155140109}
!62 = !{i64 2155140970, i64 2155141447, i64 2155141007, i64 2155141063, i64 2155141097, i64 2155141121, i64 2155141162, i64 2155141183, i64 2155141211, i64 2155141245}
!63 = !{i64 2155142088, i64 2155142565, i64 2155142125, i64 2155142181, i64 2155142215, i64 2155142239, i64 2155142280, i64 2155142301, i64 2155142329, i64 2155142363}
!64 = !{i64 2155139049}
!65 = !{i64 511062, i64 511083, i64 511106, i64 511125, i64 511144}
!66 = !{i64 2155139528}
!67 = !{i64 2150576686}
!68 = !{i64 2155145991, i64 2155146468, i64 2155146028, i64 2155146084, i64 2155146118, i64 2155146142, i64 2155146183, i64 2155146204, i64 2155146232, i64 2155146266}
!69 = !{i64 2155148762, i64 2155149239, i64 2155148799, i64 2155148855, i64 2155148889, i64 2155148913, i64 2155148954, i64 2155148975, i64 2155149003, i64 2155149037}
!70 = !{i64 2155152833, i64 2155153310, i64 2155152870, i64 2155152926, i64 2155152960, i64 2155152984, i64 2155153025, i64 2155153046, i64 2155153074, i64 2155153108}
!71 = !{i64 2151429010}
!72 = !{i64 2151428852}
!73 = !{i64 2151429154}
!74 = !{i64 2149740163}
!75 = !{i64 2155154367, i64 2155154844, i64 2155154404, i64 2155154460, i64 2155154494, i64 2155154518, i64 2155154559, i64 2155154580, i64 2155154608, i64 2155154642}
!76 = !{i64 2155155376, i64 2155155853, i64 2155155413, i64 2155155469, i64 2155155503, i64 2155155527, i64 2155155568, i64 2155155589, i64 2155155617, i64 2155155651}
!77 = !{i64 2155213965, i64 2155214442, i64 2155214002, i64 2155214058, i64 2155214092, i64 2155214116, i64 2155214157, i64 2155214178, i64 2155214206, i64 2155214240}
!78 = !{i64 2155214972, i64 2155215449, i64 2155215009, i64 2155215065, i64 2155215099, i64 2155215123, i64 2155215164, i64 2155215185, i64 2155215213, i64 2155215247}
!79 = !{i64 2155215969, i64 2155216446, i64 2155216006, i64 2155216062, i64 2155216096, i64 2155216120, i64 2155216161, i64 2155216182, i64 2155216210, i64 2155216244}
!80 = !{i64 2155216972, i64 2155217449, i64 2155217009, i64 2155217065, i64 2155217099, i64 2155217123, i64 2155217164, i64 2155217185, i64 2155217213, i64 2155217247}
!81 = !{i64 2155217983, i64 2155218460, i64 2155218020, i64 2155218076, i64 2155218110, i64 2155218134, i64 2155218175, i64 2155218196, i64 2155218224, i64 2155218258}
!82 = !{i64 2155219284, i64 2155219761, i64 2155219321, i64 2155219377, i64 2155219411, i64 2155219435, i64 2155219476, i64 2155219497, i64 2155219525, i64 2155219559}
!83 = !{i64 2155157758, i64 2155158235, i64 2155157795, i64 2155157851, i64 2155157885, i64 2155157909, i64 2155157950, i64 2155157971, i64 2155157999, i64 2155158033}
!84 = !{i64 2155158899, i64 2155159376, i64 2155158936, i64 2155158992, i64 2155159026, i64 2155159050, i64 2155159091, i64 2155159112, i64 2155159140, i64 2155159174}
!85 = !{i64 2155169182, i64 2155169659, i64 2155169219, i64 2155169275, i64 2155169309, i64 2155169333, i64 2155169374, i64 2155169395, i64 2155169423, i64 2155169457}
!86 = !{i64 2155171336, i64 2155171813, i64 2155171373, i64 2155171429, i64 2155171463, i64 2155171487, i64 2155171528, i64 2155171549, i64 2155171577, i64 2155171611}
!87 = !{i64 2155172325, i64 2155172802, i64 2155172362, i64 2155172418, i64 2155172452, i64 2155172476, i64 2155172517, i64 2155172538, i64 2155172566, i64 2155172600}
!88 = !{i64 2155168055, i64 2155168532, i64 2155168092, i64 2155168148, i64 2155168182, i64 2155168206, i64 2155168247, i64 2155168268, i64 2155168296, i64 2155168330}
!89 = !{i64 2155175432, i64 2155175909, i64 2155175469, i64 2155175525, i64 2155175559, i64 2155175583, i64 2155175624, i64 2155175645, i64 2155175673, i64 2155175707}
!90 = !{i64 2150577707}
!91 = !{i64 2151430792}
!92 = !{i64 2149740462}
!93 = !{i64 2149740763}
!94 = !{i64 2151442411}
!95 = !{i64 2155180453, i64 2155180930, i64 2155180490, i64 2155180546, i64 2155180580, i64 2155180604, i64 2155180645, i64 2155180666, i64 2155180694, i64 2155180728}
!96 = !{i64 2155015574, i64 2155016050, i64 2155015611, i64 2155015667, i64 2155015701, i64 2155015725, i64 2155015766, i64 2155015787, i64 2155015815, i64 2155015849}
!97 = !{i64 2155016689, i64 2155017165, i64 2155016726, i64 2155016782, i64 2155016816, i64 2155016840, i64 2155016881, i64 2155016902, i64 2155016930, i64 2155016964}
!98 = !{i64 2155018096, i64 2155018572, i64 2155018133, i64 2155018189, i64 2155018223, i64 2155018247, i64 2155018288, i64 2155018309, i64 2155018337, i64 2155018371}
!99 = !{i64 2155186939, i64 2155187416, i64 2155186976, i64 2155187032, i64 2155187066, i64 2155187090, i64 2155187131, i64 2155187152, i64 2155187180, i64 2155187214}
!100 = !{i64 2155189513, i64 2155189990, i64 2155189550, i64 2155189606, i64 2155189640, i64 2155189664, i64 2155189705, i64 2155189726, i64 2155189754, i64 2155189788}
!101 = !{i64 2155190550, i64 2155191027, i64 2155190587, i64 2155190643, i64 2155190677, i64 2155190701, i64 2155190742, i64 2155190763, i64 2155190791, i64 2155190825}
!102 = !{i64 2155195473, i64 2155195950, i64 2155195510, i64 2155195566, i64 2155195600, i64 2155195624, i64 2155195665, i64 2155195686, i64 2155195714, i64 2155195748}
!103 = !{i64 2155198995, i64 2155203533, i64 2155199032, i64 2155199088, i64 2155199122, i64 2155199146, i64 2155199187, i64 2155199208, i64 2155199236, i64 2155199270}
!104 = !{!"branch_weights", i32 1, i32 4001}
!105 = !{i64 2155208251, i64 2155208728, i64 2155208288, i64 2155208344, i64 2155208378, i64 2155208402, i64 2155208443, i64 2155208464, i64 2155208492, i64 2155208526}
!106 = !{i64 2155228180, i64 2155228657, i64 2155228217, i64 2155228273, i64 2155228307, i64 2155228331, i64 2155228372, i64 2155228393, i64 2155228421, i64 2155228455}
!107 = !{i64 2155227140, i64 2155227617, i64 2155227177, i64 2155227233, i64 2155227267, i64 2155227291, i64 2155227332, i64 2155227353, i64 2155227381, i64 2155227415}
!108 = !{i64 2155279723, i64 2155280200, i64 2155279760, i64 2155279816, i64 2155279850, i64 2155279874, i64 2155279915, i64 2155279936, i64 2155279964, i64 2155279998}
!109 = !{i64 394130, i64 394191}
!110 = !{i64 397147}
!111 = !{i64 2155049536, i64 2155050012, i64 2155049573, i64 2155049629, i64 2155049663, i64 2155049687, i64 2155049728, i64 2155049749, i64 2155049777, i64 2155049811}
