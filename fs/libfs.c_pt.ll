; ModuleID = '/llk/IR/fs/libfs.c_pt.bc'
source_filename = "../fs/libfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_getattr\22\09\09\09\09\09"
module asm "__kstrtabns_simple_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_statfs\22\09\09\09\09\09"
module asm "__kstrtabns_simple_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_always_delete_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22always_delete_dentry\22\09\09\09\09\09"
module asm "__kstrtabns_always_delete_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_dentry_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_dentry_operations\22\09\09\09\09\09"
module asm "__kstrtabns_simple_dentry_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_simple_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dcache_dir_open:\09\09\09\09\09"
module asm "\09.asciz \09\22dcache_dir_open\22\09\09\09\09\09"
module asm "__kstrtabns_dcache_dir_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dcache_dir_close:\09\09\09\09\09"
module asm "\09.asciz \09\22dcache_dir_close\22\09\09\09\09\09"
module asm "__kstrtabns_dcache_dir_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dcache_dir_lseek:\09\09\09\09\09"
module asm "\09.asciz \09\22dcache_dir_lseek\22\09\09\09\09\09"
module asm "__kstrtabns_dcache_dir_lseek:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dcache_readdir:\09\09\09\09\09"
module asm "\09.asciz \09\22dcache_readdir\22\09\09\09\09\09"
module asm "__kstrtabns_dcache_readdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_read_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_read_dir\22\09\09\09\09\09"
module asm "__kstrtabns_generic_read_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_dir_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_dir_operations\22\09\09\09\09\09"
module asm "__kstrtabns_simple_dir_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_dir_inode_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_dir_inode_operations\22\09\09\09\09\09"
module asm "__kstrtabns_simple_dir_inode_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_recursive_removal:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_recursive_removal\22\09\09\09\09\09"
module asm "__kstrtabns_simple_recursive_removal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_pseudo:\09\09\09\09\09"
module asm "\09.asciz \09\22init_pseudo\22\09\09\09\09\09"
module asm "__kstrtabns_init_pseudo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_open:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_open\22\09\09\09\09\09"
module asm "__kstrtabns_simple_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_link:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_link\22\09\09\09\09\09"
module asm "__kstrtabns_simple_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_empty\22\09\09\09\09\09"
module asm "__kstrtabns_simple_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_simple_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_rmdir:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_rmdir\22\09\09\09\09\09"
module asm "__kstrtabns_simple_rmdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_rename_exchange:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_rename_exchange\22\09\09\09\09\09"
module asm "__kstrtabns_simple_rename_exchange:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_rename\22\09\09\09\09\09"
module asm "__kstrtabns_simple_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_setattr\22\09\09\09\09\09"
module asm "__kstrtabns_simple_setattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_simple_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ram_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22ram_aops\22\09\09\09\09\09"
module asm "__kstrtabns_ram_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_fill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_fill_super\22\09\09\09\09\09"
module asm "__kstrtabns_simple_fill_super:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_pin_fs:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_pin_fs\22\09\09\09\09\09"
module asm "__kstrtabns_simple_pin_fs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_release_fs:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_release_fs\22\09\09\09\09\09"
module asm "__kstrtabns_simple_release_fs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_read_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_read_from_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_simple_read_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_write_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_write_to_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_simple_write_to_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memory_read_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22memory_read_from_buffer\22\09\09\09\09\09"
module asm "__kstrtabns_memory_read_from_buffer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_transaction_set:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_transaction_set\22\09\09\09\09\09"
module asm "__kstrtabns_simple_transaction_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_transaction_get:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_transaction_get\22\09\09\09\09\09"
module asm "__kstrtabns_simple_transaction_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_transaction_read:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_transaction_read\22\09\09\09\09\09"
module asm "__kstrtabns_simple_transaction_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_transaction_release:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_transaction_release\22\09\09\09\09\09"
module asm "__kstrtabns_simple_transaction_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_attr_open:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_attr_open\22\09\09\09\09\09"
module asm "__kstrtabns_simple_attr_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_attr_release:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_attr_release\22\09\09\09\09\09"
module asm "__kstrtabns_simple_attr_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_attr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_attr_read\22\09\09\09\09\09"
module asm "__kstrtabns_simple_attr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_attr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_attr_write\22\09\09\09\09\09"
module asm "__kstrtabns_simple_attr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fh_to_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fh_to_dentry\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fh_to_dentry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fh_to_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fh_to_parent\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fh_to_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___generic_file_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22__generic_file_fsync\22\09\09\09\09\09"
module asm "__kstrtabns___generic_file_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_file_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_file_fsync\22\09\09\09\09\09"
module asm "__kstrtabns_generic_file_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_check_addressable:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_check_addressable\22\09\09\09\09\09"
module asm "__kstrtabns_generic_check_addressable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_noop_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22noop_fsync\22\09\09\09\09\09"
module asm "__kstrtabns_noop_fsync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_noop_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22noop_invalidatepage\22\09\09\09\09\09"
module asm "__kstrtabns_noop_invalidatepage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_noop_direct_IO:\09\09\09\09\09"
module asm "\09.asciz \09\22noop_direct_IO\22\09\09\09\09\09"
module asm "__kstrtabns_noop_direct_IO:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_link:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_link\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_anon_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_anon_inode\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_anon_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_nosetlease:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_nosetlease\22\09\09\09\09\09"
module asm "__kstrtabns_simple_nosetlease:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_get_link\22\09\09\09\09\09"
module asm "__kstrtabns_simple_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_symlink_inode_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_symlink_inode_operations\22\09\09\09\09\09"
module asm "__kstrtabns_simple_symlink_inode_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_set_encrypted_ci_d_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_set_encrypted_ci_d_ops\22\09\09\09\09\09"
module asm "__kstrtabns_generic_set_encrypted_ci_d_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon }
%union.anon = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.lock_class_key = type {}
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.77, %struct.list_head, %struct.list_head, %union.anon.78 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.75 }
%union.anon.75 = type { i64 }
%union.anon.77 = type { %struct.list_head }
%union.anon.78 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.69, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.70, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.71, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr }
%union.anon.69 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.70 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.71 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.74 = type { ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.list_lru = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.anon.13 = type { i32, i32 }
%struct.file = type { %union.anon.79, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.79 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
%struct.pseudo_fs_context = type { ptr, ptr, ptr, i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.page = type { i32, %union.anon.16, %union.anon.31, %struct.atomic_t }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.31 = type { %struct.atomic_t }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.simple_transaction_argresp = type { i32, [0 x i8] }
%struct.simple_attr = type { ptr, ptr, [24 x i8], [24 x i8], ptr, ptr, %struct.mutex }
%struct.anon.41 = type { i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.44 }
%struct.llist_node = type { ptr }
%union.anon.44 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.64 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.15 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.15 = type { %struct.callback_head }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_simple_getattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_getattr = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_getattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_getattr to i32), ptr @__kstrtab_simple_getattr, ptr @__kstrtabns_simple_getattr }, section "___ksymtab+simple_getattr", align 4
@__kstrtab_simple_statfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_statfs = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_statfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_statfs to i32), ptr @__kstrtab_simple_statfs, ptr @__kstrtabns_simple_statfs }, section "___ksymtab+simple_statfs", align 4
@__kstrtab_always_delete_dentry = external dso_local constant [0 x i8], align 1
@__kstrtabns_always_delete_dentry = external dso_local constant [0 x i8], align 1
@__ksymtab_always_delete_dentry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @always_delete_dentry to i32), ptr @__kstrtab_always_delete_dentry, ptr @__kstrtabns_always_delete_dentry }, section "___ksymtab+always_delete_dentry", align 4
@simple_dentry_operations = dso_local constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@__kstrtab_simple_dentry_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_dentry_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_dentry_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_dentry_operations to i32), ptr @__kstrtab_simple_dentry_operations, ptr @__kstrtabns_simple_dentry_operations }, section "___ksymtab+simple_dentry_operations", align 4
@__kstrtab_simple_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_lookup to i32), ptr @__kstrtab_simple_lookup, ptr @__kstrtabns_simple_lookup }, section "___ksymtab+simple_lookup", align 4
@__kstrtab_dcache_dir_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_dcache_dir_open = external dso_local constant [0 x i8], align 1
@__ksymtab_dcache_dir_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dcache_dir_open to i32), ptr @__kstrtab_dcache_dir_open, ptr @__kstrtabns_dcache_dir_open }, section "___ksymtab+dcache_dir_open", align 4
@__kstrtab_dcache_dir_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_dcache_dir_close = external dso_local constant [0 x i8], align 1
@__ksymtab_dcache_dir_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dcache_dir_close to i32), ptr @__kstrtab_dcache_dir_close, ptr @__kstrtabns_dcache_dir_close }, section "___ksymtab+dcache_dir_close", align 4
@__kstrtab_dcache_dir_lseek = external dso_local constant [0 x i8], align 1
@__kstrtabns_dcache_dir_lseek = external dso_local constant [0 x i8], align 1
@__ksymtab_dcache_dir_lseek = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dcache_dir_lseek to i32), ptr @__kstrtab_dcache_dir_lseek, ptr @__kstrtabns_dcache_dir_lseek }, section "___ksymtab+dcache_dir_lseek", align 4
@__kstrtab_dcache_readdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_dcache_readdir = external dso_local constant [0 x i8], align 1
@__ksymtab_dcache_readdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dcache_readdir to i32), ptr @__kstrtab_dcache_readdir, ptr @__kstrtabns_dcache_readdir }, section "___ksymtab+dcache_readdir", align 4
@__kstrtab_generic_read_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_read_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_read_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_read_dir to i32), ptr @__kstrtab_generic_read_dir, ptr @__kstrtabns_generic_read_dir }, section "___ksymtab+generic_read_dir", align 4
@simple_dir_operations = dso_local constant %struct.file_operations { ptr null, ptr @dcache_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dcache_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dcache_dir_open, ptr null, ptr @dcache_dir_close, ptr @noop_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_simple_dir_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_dir_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_dir_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_dir_operations to i32), ptr @__kstrtab_simple_dir_operations, ptr @__kstrtabns_simple_dir_operations }, section "___ksymtab+simple_dir_operations", align 4
@simple_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@__kstrtab_simple_dir_inode_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_dir_inode_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_dir_inode_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_dir_inode_operations to i32), ptr @__kstrtab_simple_dir_inode_operations, ptr @__kstrtabns_simple_dir_inode_operations }, section "___ksymtab+simple_dir_inode_operations", align 4
@__kstrtab_simple_recursive_removal = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_recursive_removal = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_recursive_removal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_recursive_removal to i32), ptr @__kstrtab_simple_recursive_removal, ptr @__kstrtabns_simple_recursive_removal }, section "___ksymtab+simple_recursive_removal", align 4
@pseudo_fs_context_ops = internal constant %struct.fs_context_operations { ptr @pseudo_fs_free, ptr null, ptr null, ptr null, ptr @pseudo_fs_get_tree, ptr null }, align 4
@__kstrtab_init_pseudo = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_pseudo = external dso_local constant [0 x i8], align 1
@__ksymtab_init_pseudo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_pseudo to i32), ptr @__kstrtab_init_pseudo, ptr @__kstrtabns_init_pseudo }, section "___ksymtab+init_pseudo", align 4
@__kstrtab_simple_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_open = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_open to i32), ptr @__kstrtab_simple_open, ptr @__kstrtabns_simple_open }, section "___ksymtab+simple_open", align 4
@__kstrtab_simple_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_link = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_link to i32), ptr @__kstrtab_simple_link, ptr @__kstrtabns_simple_link }, section "___ksymtab+simple_link", align 4
@__kstrtab_simple_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_empty to i32), ptr @__kstrtab_simple_empty, ptr @__kstrtabns_simple_empty }, section "___ksymtab+simple_empty", align 4
@__kstrtab_simple_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_unlink to i32), ptr @__kstrtab_simple_unlink, ptr @__kstrtabns_simple_unlink }, section "___ksymtab+simple_unlink", align 4
@__kstrtab_simple_rmdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_rmdir = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_rmdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_rmdir to i32), ptr @__kstrtab_simple_rmdir, ptr @__kstrtabns_simple_rmdir }, section "___ksymtab+simple_rmdir", align 4
@__kstrtab_simple_rename_exchange = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_rename_exchange = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_rename_exchange = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_rename_exchange to i32), ptr @__kstrtab_simple_rename_exchange, ptr @__kstrtabns_simple_rename_exchange }, section "___ksymtab_gpl+simple_rename_exchange", align 4
@__kstrtab_simple_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_rename to i32), ptr @__kstrtab_simple_rename, ptr @__kstrtabns_simple_rename }, section "___ksymtab+simple_rename", align 4
@__kstrtab_simple_setattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_setattr = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_setattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_setattr to i32), ptr @__kstrtab_simple_setattr, ptr @__kstrtabns_simple_setattr }, section "___ksymtab+simple_setattr", align 4
@__kstrtab_simple_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_write_begin to i32), ptr @__kstrtab_simple_write_begin, ptr @__kstrtabns_simple_write_begin }, section "___ksymtab+simple_write_begin", align 4
@ram_aops = dso_local constant %struct.address_space_operations { ptr null, ptr @simple_readpage, ptr null, ptr @__set_page_dirty_no_writeback, ptr null, ptr null, ptr @simple_write_begin, ptr @simple_write_end, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ram_aops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ram_aops = external dso_local constant [0 x i8], align 1
@__ksymtab_ram_aops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ram_aops to i32), ptr @__kstrtab_ram_aops, ptr @__kstrtabns_ram_aops }, section "___ksymtab+ram_aops", align 4
@simple_super_operations = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [53 x i8] c"\014%s: %s passed in a files arraywith an index of 1!\0A\00", align 1
@__func__.simple_fill_super = private unnamed_addr constant [18 x i8] c"simple_fill_super\00", align 1
@__kstrtab_simple_fill_super = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_fill_super = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_fill_super = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_fill_super to i32), ptr @__kstrtab_simple_fill_super, ptr @__kstrtabns_simple_fill_super }, section "___ksymtab+simple_fill_super", align 4
@pin_fs_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_simple_pin_fs = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_pin_fs = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_pin_fs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_pin_fs to i32), ptr @__kstrtab_simple_pin_fs, ptr @__kstrtabns_simple_pin_fs }, section "___ksymtab+simple_pin_fs", align 4
@__kstrtab_simple_release_fs = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_release_fs = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_release_fs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_release_fs to i32), ptr @__kstrtab_simple_release_fs, ptr @__kstrtabns_simple_release_fs }, section "___ksymtab+simple_release_fs", align 4
@__kstrtab_simple_read_from_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_read_from_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_read_from_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_read_from_buffer to i32), ptr @__kstrtab_simple_read_from_buffer, ptr @__kstrtabns_simple_read_from_buffer }, section "___ksymtab+simple_read_from_buffer", align 4
@__kstrtab_simple_write_to_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_write_to_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_write_to_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_write_to_buffer to i32), ptr @__kstrtab_simple_write_to_buffer, ptr @__kstrtabns_simple_write_to_buffer }, section "___ksymtab+simple_write_to_buffer", align 4
@__kstrtab_memory_read_from_buffer = external dso_local constant [0 x i8], align 1
@__kstrtabns_memory_read_from_buffer = external dso_local constant [0 x i8], align 1
@__ksymtab_memory_read_from_buffer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memory_read_from_buffer to i32), ptr @__kstrtab_memory_read_from_buffer, ptr @__kstrtabns_memory_read_from_buffer }, section "___ksymtab+memory_read_from_buffer", align 4
@__kstrtab_simple_transaction_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_transaction_set = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_transaction_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_transaction_set to i32), ptr @__kstrtab_simple_transaction_set, ptr @__kstrtabns_simple_transaction_set }, section "___ksymtab+simple_transaction_set", align 4
@simple_transaction_get.simple_transaction_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_simple_transaction_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_transaction_get = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_transaction_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_transaction_get to i32), ptr @__kstrtab_simple_transaction_get, ptr @__kstrtabns_simple_transaction_get }, section "___ksymtab+simple_transaction_get", align 4
@__kstrtab_simple_transaction_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_transaction_read = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_transaction_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_transaction_read to i32), ptr @__kstrtab_simple_transaction_read, ptr @__kstrtabns_simple_transaction_read }, section "___ksymtab+simple_transaction_read", align 4
@__kstrtab_simple_transaction_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_transaction_release = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_transaction_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_transaction_release to i32), ptr @__kstrtab_simple_transaction_release, ptr @__kstrtabns_simple_transaction_release }, section "___ksymtab+simple_transaction_release", align 4
@simple_attr_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&attr->mutex\00", align 1
@__kstrtab_simple_attr_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_attr_open = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_attr_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_attr_open to i32), ptr @__kstrtab_simple_attr_open, ptr @__kstrtabns_simple_attr_open }, section "___ksymtab_gpl+simple_attr_open", align 4
@__kstrtab_simple_attr_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_attr_release = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_attr_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_attr_release to i32), ptr @__kstrtab_simple_attr_release, ptr @__kstrtabns_simple_attr_release }, section "___ksymtab_gpl+simple_attr_release", align 4
@__kstrtab_simple_attr_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_attr_read = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_attr_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_attr_read to i32), ptr @__kstrtab_simple_attr_read, ptr @__kstrtabns_simple_attr_read }, section "___ksymtab_gpl+simple_attr_read", align 4
@__kstrtab_simple_attr_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_attr_write = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_attr_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_attr_write to i32), ptr @__kstrtab_simple_attr_write, ptr @__kstrtabns_simple_attr_write }, section "___ksymtab_gpl+simple_attr_write", align 4
@__kstrtab_generic_fh_to_dentry = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fh_to_dentry = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fh_to_dentry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fh_to_dentry to i32), ptr @__kstrtab_generic_fh_to_dentry, ptr @__kstrtabns_generic_fh_to_dentry }, section "___ksymtab_gpl+generic_fh_to_dentry", align 4
@__kstrtab_generic_fh_to_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fh_to_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fh_to_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fh_to_parent to i32), ptr @__kstrtab_generic_fh_to_parent, ptr @__kstrtabns_generic_fh_to_parent }, section "___ksymtab_gpl+generic_fh_to_parent", align 4
@__kstrtab___generic_file_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns___generic_file_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab___generic_file_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__generic_file_fsync to i32), ptr @__kstrtab___generic_file_fsync, ptr @__kstrtabns___generic_file_fsync }, section "___ksymtab+__generic_file_fsync", align 4
@__kstrtab_generic_file_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_file_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_file_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_file_fsync to i32), ptr @__kstrtab_generic_file_fsync, ptr @__kstrtabns_generic_file_fsync }, section "___ksymtab+generic_file_fsync", align 4
@__kstrtab_generic_check_addressable = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_check_addressable = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_check_addressable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_check_addressable to i32), ptr @__kstrtab_generic_check_addressable, ptr @__kstrtabns_generic_check_addressable }, section "___ksymtab+generic_check_addressable", align 4
@__kstrtab_noop_fsync = external dso_local constant [0 x i8], align 1
@__kstrtabns_noop_fsync = external dso_local constant [0 x i8], align 1
@__ksymtab_noop_fsync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @noop_fsync to i32), ptr @__kstrtab_noop_fsync, ptr @__kstrtabns_noop_fsync }, section "___ksymtab+noop_fsync", align 4
@__kstrtab_noop_invalidatepage = external dso_local constant [0 x i8], align 1
@__kstrtabns_noop_invalidatepage = external dso_local constant [0 x i8], align 1
@__ksymtab_noop_invalidatepage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @noop_invalidatepage to i32), ptr @__kstrtab_noop_invalidatepage, ptr @__kstrtabns_noop_invalidatepage }, section "___ksymtab_gpl+noop_invalidatepage", align 4
@__kstrtab_noop_direct_IO = external dso_local constant [0 x i8], align 1
@__kstrtabns_noop_direct_IO = external dso_local constant [0 x i8], align 1
@__ksymtab_noop_direct_IO = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @noop_direct_IO to i32), ptr @__kstrtab_noop_direct_IO, ptr @__kstrtabns_noop_direct_IO }, section "___ksymtab_gpl+noop_direct_IO", align 4
@__kstrtab_kfree_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_link = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_link to i32), ptr @__kstrtab_kfree_link, ptr @__kstrtabns_kfree_link }, section "___ksymtab+kfree_link", align 4
@alloc_anon_inode.anon_aops = internal constant %struct.address_space_operations { ptr null, ptr null, ptr null, ptr @__set_page_dirty_no_writeback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_alloc_anon_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_anon_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_anon_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_anon_inode to i32), ptr @__kstrtab_alloc_anon_inode, ptr @__kstrtabns_alloc_anon_inode }, section "___ksymtab+alloc_anon_inode", align 4
@__kstrtab_simple_nosetlease = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_nosetlease = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_nosetlease = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_nosetlease to i32), ptr @__kstrtab_simple_nosetlease, ptr @__kstrtabns_simple_nosetlease }, section "___ksymtab+simple_nosetlease", align 4
@__kstrtab_simple_get_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_get_link = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_get_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_get_link to i32), ptr @__kstrtab_simple_get_link, ptr @__kstrtabns_simple_get_link }, section "___ksymtab+simple_get_link", align 4
@simple_symlink_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@__kstrtab_simple_symlink_inode_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_symlink_inode_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_symlink_inode_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_symlink_inode_operations to i32), ptr @__kstrtab_simple_symlink_inode_operations, ptr @__kstrtabns_simple_symlink_inode_operations }, section "___ksymtab+simple_symlink_inode_operations", align 4
@empty_dir_inode_operations = internal constant %struct.inode_operations { ptr @empty_dir_lookup, ptr null, ptr @generic_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @empty_dir_setattr, ptr @empty_dir_getattr, ptr @empty_dir_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@empty_dir_operations = internal constant %struct.file_operations { ptr null, ptr @empty_dir_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @empty_dir_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr @noop_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_generic_set_encrypted_ci_d_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_set_encrypted_ci_d_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_set_encrypted_ci_d_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_set_encrypted_ci_d_ops to i32), ptr @__kstrtab_generic_set_encrypted_ci_d_ops, ptr @__kstrtabns_generic_set_encrypted_ci_d_ops }, section "___ksymtab+generic_set_encrypted_ci_d_ops", align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@fsnotify_rmdir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"include/linux/fsnotify.h\00", align 1
@fsnotify_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__ksymtab___generic_file_fsync, ptr @__ksymtab_alloc_anon_inode, ptr @__ksymtab_always_delete_dentry, ptr @__ksymtab_dcache_dir_close, ptr @__ksymtab_dcache_dir_lseek, ptr @__ksymtab_dcache_dir_open, ptr @__ksymtab_dcache_readdir, ptr @__ksymtab_generic_check_addressable, ptr @__ksymtab_generic_fh_to_dentry, ptr @__ksymtab_generic_fh_to_parent, ptr @__ksymtab_generic_file_fsync, ptr @__ksymtab_generic_read_dir, ptr @__ksymtab_generic_set_encrypted_ci_d_ops, ptr @__ksymtab_init_pseudo, ptr @__ksymtab_kfree_link, ptr @__ksymtab_memory_read_from_buffer, ptr @__ksymtab_noop_direct_IO, ptr @__ksymtab_noop_fsync, ptr @__ksymtab_noop_invalidatepage, ptr @__ksymtab_ram_aops, ptr @__ksymtab_simple_attr_open, ptr @__ksymtab_simple_attr_read, ptr @__ksymtab_simple_attr_release, ptr @__ksymtab_simple_attr_write, ptr @__ksymtab_simple_dentry_operations, ptr @__ksymtab_simple_dir_inode_operations, ptr @__ksymtab_simple_dir_operations, ptr @__ksymtab_simple_empty, ptr @__ksymtab_simple_fill_super, ptr @__ksymtab_simple_get_link, ptr @__ksymtab_simple_getattr, ptr @__ksymtab_simple_link, ptr @__ksymtab_simple_lookup, ptr @__ksymtab_simple_nosetlease, ptr @__ksymtab_simple_open, ptr @__ksymtab_simple_pin_fs, ptr @__ksymtab_simple_read_from_buffer, ptr @__ksymtab_simple_recursive_removal, ptr @__ksymtab_simple_release_fs, ptr @__ksymtab_simple_rename, ptr @__ksymtab_simple_rename_exchange, ptr @__ksymtab_simple_rmdir, ptr @__ksymtab_simple_setattr, ptr @__ksymtab_simple_statfs, ptr @__ksymtab_simple_symlink_inode_operations, ptr @__ksymtab_simple_transaction_get, ptr @__ksymtab_simple_transaction_read, ptr @__ksymtab_simple_transaction_release, ptr @__ksymtab_simple_transaction_set, ptr @__ksymtab_simple_unlink, ptr @__ksymtab_simple_write_begin, ptr @__ksymtab_simple_write_to_buffer], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_getattr(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 %3, i32 %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #15
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 3
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 16
  store i64 %15, ptr %16, align 8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @simple_statfs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 8
  %7 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  store i32 4096, ptr %7, align 4
  %8 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 8
  store i32 255, ptr %8, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @always_delete_dentry(ptr nocapture readnone %0) #4 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simple_lookup(ptr nocapture readnone %0, ptr noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.anon.13, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 255
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 39
  %12 = load ptr, ptr %11, align 16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  tail call void @d_set_d_op(ptr noundef %1, ptr noundef nonnull @simple_dentry_operations) #15
  br label %15

15:                                               ; preds = %14, %8
  tail call void @d_add(ptr noundef %1, ptr noundef null) #15
  br label %16

16:                                               ; preds = %15, %3
  %17 = phi ptr [ null, %15 ], [ inttoptr (i32 -36 to ptr), %3 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dcache_dir_open(ptr nocapture readnone %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @d_alloc_cursor(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %6, align 8
  %7 = icmp eq ptr %5, null
  %8 = select i1 %7, i32 -12, i32 0
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_cursor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dcache_dir_close(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @dput(ptr noundef %4) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @dcache_dir_lseek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  switch i32 %2, label %55 [
    i32 1, label %6
    i32 0, label %10
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %8 = load i64, ptr %7, align 8
  %9 = add i64 %8, %1
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i64 [ %1, %3 ], [ %9, %6 ]
  %12 = icmp sgt i64 %11, -1
  br i1 %12, label %13, label %55

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %55, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 24
  tail call void @down_read(ptr noundef %22) #15
  %23 = icmp ugt i64 %11, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %25) #15
  br label %41

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 14
  %28 = add nsw i64 %11, -2
  %29 = tail call fastcc ptr @scan_positives(ptr noundef %19, ptr noundef %27, i64 noundef %28, ptr noundef null)
  %30 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %30) #15
  %31 = icmp eq ptr %29, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 13
  %34 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 13
  %35 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 13, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 4
  store volatile ptr %37, ptr %36, align 4
  %39 = load ptr, ptr %34, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %33, ptr %40, align 4
  store ptr %39, ptr %33, align 4
  store ptr %34, ptr %35, align 4
  store volatile ptr %33, ptr %34, align 4
  br label %48

41:                                               ; preds = %26, %24
  %42 = phi ptr [ %25, %24 ], [ %30, %26 ]
  %43 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 13
  %44 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 13, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  store volatile ptr %46, ptr %45, align 4
  store volatile ptr %43, ptr %43, align 4
  store ptr %43, ptr %44, align 4
  br label %48

48:                                               ; preds = %41, %32
  %49 = phi ptr [ %42, %41 ], [ %30, %32 ]
  %50 = phi ptr [ null, %41 ], [ %29, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %51 = load i16, ptr %49, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @dput(ptr noundef %50) #15
  store i64 %11, ptr %14, align 8
  %53 = load ptr, ptr %20, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 24
  tail call void @up_read(ptr noundef %54) #15
  br label %55

55:                                               ; preds = %48, %13, %10, %3
  %56 = phi i64 [ -22, %10 ], [ -22, %3 ], [ %11, %48 ], [ %11, %13 ]
  ret i64 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scan_positives(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 14
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %70, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 13
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 13, i32 1
  br label %14

14:                                               ; preds = %65, %11
  %15 = phi ptr [ %9, %11 ], [ %68, %65 ]
  %16 = phi i64 [ %2, %11 ], [ %66, %65 ]
  %17 = getelementptr i8, ptr %15, i32 -112
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 536870912
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %14
  %22 = getelementptr i8, ptr %15, i32 -72
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %15, i32 -100
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = add i64 %16, -1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %15, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %33) #15
  %34 = load ptr, ptr %22, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %26, align 4
  %38 = icmp eq ptr %37, null
  %39 = icmp eq ptr %17, null
  %40 = or i1 %39, %38
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %15, i32 -28
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %36, %32
  %46 = phi ptr [ null, %36 ], [ %17, %41 ], [ null, %32 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %47 = load i16, ptr %33, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %49 = icmp eq ptr %46, null
  br i1 %49, label %50, label %70, !prof !12

50:                                               ; preds = %45, %29, %25, %21
  %51 = phi i64 [ %30, %29 ], [ %16, %25 ], [ 1, %45 ], [ %16, %21 ]
  %52 = tail call ptr @llvm.thread.pointer() #15
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %13, align 4
  %58 = load ptr, ptr %12, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %57, ptr %59, align 4
  store volatile ptr %58, ptr %57, align 4
  %60 = load ptr, ptr %15, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %12, ptr %61, align 4
  store ptr %60, ptr %12, align 4
  store ptr %15, ptr %13, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %62 = load i16, ptr %7, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %64 = tail call i32 @__cond_resched() #15
  tail call void @_raw_spin_lock(ptr noundef %7) #15
  br label %65

65:                                               ; preds = %56, %50, %14
  %66 = phi i64 [ %16, %14 ], [ %51, %56 ], [ %51, %50 ]
  %67 = phi ptr [ %15, %14 ], [ %12, %56 ], [ %15, %50 ]
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %8
  br i1 %69, label %70, label %14

70:                                               ; preds = %65, %45, %4
  %71 = phi ptr [ null, %4 ], [ %46, %45 ], [ null, %65 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %72 = load i16, ptr %7, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @dput(ptr noundef %3) #15
  ret ptr %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dcache_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 14
  %8 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  switch i64 %9, label %37 [
    i64 0, label %10
    i64 1, label %21
    i64 2, label %41
  ]

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8
  %12 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = tail call i32 %11(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %16, i32 noundef 4) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %10
  store i64 1, ptr %8, align 8
  %20 = load ptr, ptr %3, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi ptr [ %4, %2 ], [ %20, %19 ]
  %23 = load ptr, ptr %1, align 8
  %24 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %31 = load i16, ptr %24, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %33 = zext i32 %30 to i64
  %34 = tail call i32 %23(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 1, i64 noundef %33, i32 noundef 4) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %92

36:                                               ; preds = %21
  store i64 2, ptr %8, align 8
  br label %41

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 13
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %92, label %41

41:                                               ; preds = %37, %36, %2
  %42 = phi ptr [ %38, %37 ], [ %7, %36 ], [ %7, %2 ]
  %43 = tail call fastcc ptr @scan_positives(ptr noundef %6, ptr noundef %42, i64 noundef 1, ptr noundef null)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %80, label %45

45:                                               ; preds = %64, %41
  %46 = phi ptr [ %68, %64 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 4, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.anon.13, ptr %47, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 5
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  %57 = load i16, ptr %53, align 8
  %58 = lshr i16 %57, 12
  %59 = zext i16 %58 to i32
  %60 = load ptr, ptr %1, align 8
  %61 = load i64, ptr %8, align 8
  %62 = tail call i32 %60(ptr noundef %1, ptr noundef %49, i32 noundef %51, i64 noundef %61, i64 noundef %56, i32 noundef %59) #15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %45
  %65 = load i64, ptr %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, ptr %8, align 8
  %67 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 13
  %68 = tail call fastcc ptr @scan_positives(ptr noundef %6, ptr noundef %67, i64 noundef 1, ptr noundef nonnull %46)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %80, label %45

70:                                               ; preds = %45
  %71 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %71) #15
  %72 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 13
  %73 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 13
  %74 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 13, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %72, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %75, ptr %77, align 4
  store volatile ptr %76, ptr %75, align 4
  %78 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 13, i32 1
  %79 = load ptr, ptr %78, align 4
  store ptr %72, ptr %78, align 4
  store ptr %73, ptr %72, align 4
  store ptr %79, ptr %74, align 4
  store volatile ptr %72, ptr %79, align 4
  br label %87

80:                                               ; preds = %64, %41
  %81 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %81) #15
  %82 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 13
  %83 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 13, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %82, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %84, ptr %86, align 4
  store volatile ptr %85, ptr %84, align 4
  store volatile ptr %82, ptr %82, align 4
  store ptr %82, ptr %83, align 4
  br label %87

87:                                               ; preds = %80, %70
  %88 = phi ptr [ null, %80 ], [ %46, %70 ]
  %89 = phi ptr [ %81, %80 ], [ %71, %70 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %90 = load i16, ptr %89, align 4
  %91 = add i16 %90, 1
  store i16 %91, ptr %89, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @dput(ptr noundef %88) #15
  br label %92

92:                                               ; preds = %87, %37, %21, %10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_read_dir(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, ptr nocapture readnone %3) #4 {
  ret i32 -21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @noop_fsync(ptr nocapture readnone %0, i64 %1, i64 %2, i32 %3) #4 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simple_recursive_removal(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %7) #15
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq ptr %1, null
  br label %10

10:                                               ; preds = %139, %8
  %11 = phi ptr [ %0, %8 ], [ %66, %139 ]
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 24
  call void @down_write(ptr noundef %14) #15
  %15 = load i32, ptr %11, align 8
  %16 = and i32 %15, 6291456
  %17 = icmp eq i32 %16, 2097152
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 16
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %18, %10
  br label %23

23:                                               ; preds = %130, %22
  %24 = phi ptr [ %74, %130 ], [ %11, %22 ]
  %25 = phi ptr [ %24, %130 ], [ null, %22 ]
  %26 = phi ptr [ %76, %130 ], [ %13, %22 ]
  %27 = icmp eq ptr %25, null
  %28 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 13
  %29 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 14
  %30 = select i1 %27, ptr %29, ptr %28
  %31 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %31) #15
  %32 = load ptr, ptr %30, align 4
  %33 = icmp eq ptr %32, %29
  br i1 %33, label %65, label %34

34:                                               ; preds = %62, %23
  %35 = phi ptr [ %63, %62 ], [ %32, %23 ]
  %36 = getelementptr i8, ptr %35, i32 -112
  %37 = getelementptr i8, ptr %35, i32 -72
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %62, label %40

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %35, i32 -100
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %35, i32 -32
  call void @_raw_spin_lock(ptr noundef %45) #15
  %46 = load ptr, ptr %37, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %41, align 4
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %36, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %35, i32 -28
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %53, %48, %44
  %58 = phi ptr [ null, %48 ], [ %36, %53 ], [ null, %44 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %59 = load i16, ptr %45, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %45, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %61 = icmp eq ptr %58, null
  br i1 %61, label %62, label %65, !prof !12

62:                                               ; preds = %57, %40, %34
  %63 = load ptr, ptr %35, align 4
  %64 = icmp eq ptr %63, %29
  br i1 %64, label %65, label %34

65:                                               ; preds = %62, %57, %23
  %66 = phi ptr [ null, %23 ], [ null, %62 ], [ %58, %57 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %67 = load i16, ptr %31, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %31, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  call void @dput(ptr noundef %25) #15
  %69 = icmp eq ptr %66, null
  br i1 %69, label %70, label %139

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %26) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @clear_nlink(ptr noundef %26) #15
  %72 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 24
  call void @up_write(ptr noundef %72) #15
  %73 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.dentry, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 24
  call void @down_write(ptr noundef %77) #15
  %78 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %130, label %81

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 2, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %130, label %85

85:                                               ; preds = %81
  call void @d_invalidate(ptr noundef %24) #15
  %86 = load i32, ptr %24, align 8
  %87 = and i32 %86, 6291456
  %88 = icmp eq i32 %87, 2097152
  %89 = and i32 %86, 7340032
  %90 = icmp eq i32 %89, 0
  br i1 %88, label %91, label %105

91:                                               ; preds = %85
  %92 = load i1, ptr @fsnotify_rmdir.__already_done, align 1
  %93 = xor i1 %92, true
  %94 = select i1 %90, i1 %93, i1 false
  br i1 %94, label %95, label %96, !prof !12

95:                                               ; preds = %91
  store i1 true, ptr @fsnotify_rmdir.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 298, i32 noundef 9, ptr noundef null) #15
  br label %96

96:                                               ; preds = %95, %91
  br i1 %90, label %127, label %97

97:                                               ; preds = %96
  %98 = load ptr, ptr %78, align 8
  %99 = load i16, ptr %98, align 8
  %100 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 8
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 42
  %103 = load volatile i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %127, label %119

105:                                              ; preds = %85
  %106 = load i1, ptr @fsnotify_unlink.__already_done, align 1
  %107 = xor i1 %106, true
  %108 = select i1 %90, i1 %107, i1 false
  br i1 %108, label %109, label %110, !prof !12

109:                                              ; preds = %105
  store i1 true, ptr @fsnotify_unlink.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #15
  br label %110

110:                                              ; preds = %109, %105
  br i1 %90, label %127, label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %78, align 8
  %113 = load i16, ptr %112, align 8
  %114 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 8
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.super_block, ptr %115, i32 0, i32 42
  %117 = load volatile i32, ptr %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %111, %97
  %120 = phi i16 [ %99, %97 ], [ %113, %111 ]
  %121 = phi ptr [ %98, %97 ], [ %112, %111 ]
  %122 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 4
  %123 = and i16 %120, -4096
  %124 = icmp eq i16 %123, 16384
  %125 = select i1 %124, i32 1073742336, i32 512
  %126 = call i32 @fsnotify(i32 noundef %125, ptr noundef %121, i32 noundef 2, ptr noundef %76, ptr noundef %122, ptr noundef null, i32 noundef 0) #15
  br label %127

127:                                              ; preds = %119, %111, %110, %97, %96
  br i1 %9, label %129, label %128

128:                                              ; preds = %127
  call void %1(ptr noundef %24) #15
  br label %129

129:                                              ; preds = %128, %127
  call void @dput(ptr noundef %24) #15
  br label %130

130:                                              ; preds = %129, %81, %70
  %131 = icmp eq ptr %24, %0
  br i1 %131, label %132, label %23

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 16
  %134 = getelementptr inbounds %struct.inode, ptr %76, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %76) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %134, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %133, ptr noundef align 8 dereferenceable(16) %134, i32 16, i1 false)
  %135 = load i32, ptr %0, align 8
  %136 = and i32 %135, 6291456
  %137 = icmp eq i32 %136, 2097152
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  call void @drop_nlink(ptr noundef %76) #15
  br label %141

139:                                              ; preds = %65
  %140 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 24
  call void @up_write(ptr noundef %140) #15
  br label %10

141:                                              ; preds = %138, %132
  call void @up_write(ptr noundef %77) #15
  call void @dput(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @init_pseudo(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pseudo_fs_context, ptr %4, i32 0, i32 3
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %4, ptr %8, align 4
  store ptr @pseudo_fs_context_ops, ptr %0, align 4
  %9 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 13
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, -2147483648
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 17
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 131072
  store i32 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %6, %2
  ret ptr %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @simple_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %4, ptr %7, align 8
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_link(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 16
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %6) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %7, ptr noundef align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @inc_nlink(ptr noundef %6) #15
  call void @ihold(ptr noundef %6) #15
  %10 = icmp eq ptr %2, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  call void @lockref_get(ptr noundef %12) #15
  br label %13

13:                                               ; preds = %11, %3
  call void @d_instantiate(ptr noundef %2, ptr noundef %6) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_empty(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %2) #15
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %24, label %6

6:                                                ; preds = %19, %1
  %7 = phi ptr [ %22, %19 ], [ %4, %1 ]
  %8 = getelementptr i8, ptr %7, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %8) #15
  %9 = getelementptr i8, ptr %7, i32 -72
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %7, i32 -100
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %17 = load i16, ptr %8, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %24

19:                                               ; preds = %12, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %20 = load i16, ptr %8, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %22 = load ptr, ptr %7, align 8
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %6

24:                                               ; preds = %19, %16, %1
  %25 = phi i32 [ 0, %16 ], [ 1, %1 ], [ 1, %19 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %26 = load i16, ptr %2, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_unlink(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %5) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %7, ptr noundef align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %6, ptr noundef align 8 dereferenceable(16) %8, i32 16, i1 false)
  call void @drop_nlink(ptr noundef %5) #15
  call void @dput(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_rmdir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %31, label %8

8:                                                ; preds = %23, %2
  %9 = phi ptr [ %26, %23 ], [ %6, %2 ]
  %10 = getelementptr i8, ptr %9, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %10) #15
  %11 = getelementptr i8, ptr %9, i32 -72
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %9, i32 -100
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %19 = load i16, ptr %10, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %21 = load i16, ptr %4, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %41

23:                                               ; preds = %14, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %24 = load i16, ptr %10, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %26 = load ptr, ptr %9, align 8
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %28, label %8

28:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %29 = load i16, ptr %4, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %34

31:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %32 = load i16, ptr %4, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %34

34:                                               ; preds = %31, %28
  %35 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  tail call void @drop_nlink(ptr noundef %36) #15
  %37 = load ptr, ptr %35, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 16
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %40 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %37) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %39, ptr noundef align 8 dereferenceable(16) %40, i32 16, i1 false) #15
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %38, ptr noundef align 8 dereferenceable(16) %40, i32 16, i1 false) #15
  call void @drop_nlink(ptr noundef %37) #15
  call void @dput(ptr noundef %1) #15
  call void @drop_nlink(ptr noundef %0) #15
  br label %41

41:                                               ; preds = %34, %18
  %42 = phi i32 [ 0, %34 ], [ -39, %18 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_rename_exchange(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 6291456
  %8 = icmp eq i32 %7, 2097152
  %9 = load i32, ptr %3, align 8
  %10 = and i32 %9, 6291456
  %11 = icmp eq i32 %10, 2097152
  %12 = icmp ne ptr %0, %2
  %13 = xor i1 %8, %11
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = select i1 %8, ptr %0, ptr %2
  %17 = select i1 %8, ptr %2, ptr %0
  tail call void @drop_nlink(ptr noundef %16) #15
  tail call void @inc_nlink(ptr noundef %17) #15
  br label %18

18:                                               ; preds = %15, %4
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  %21 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 16
  %22 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 15
  %23 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 16
  %26 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef %0) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef align 8 dereferenceable(16) %28, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %28, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %21, ptr noundef align 8 dereferenceable(16) %22, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %20, ptr noundef align 8 dereferenceable(16) %22, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 8 dereferenceable(16) %20, i32 16, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_rename(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.timespec64, align 8
  %10 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = load i32, ptr %2, align 8
  %13 = and i32 %12, 6291456
  %14 = icmp eq i32 %13, 2097152
  %15 = icmp ult i32 %5, 4
  br i1 %15, label %16, label %89

16:                                               ; preds = %6
  %17 = and i32 %5, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 8
  %21 = and i32 %20, 6291456
  %22 = icmp eq i32 %21, 2097152
  %23 = icmp ne ptr %1, %3
  %24 = xor i1 %14, %22
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = select i1 %14, ptr %1, ptr %3
  %28 = select i1 %14, ptr %3, ptr %1
  tail call void @drop_nlink(ptr noundef %27) #15
  tail call void @inc_nlink(ptr noundef %28) #15
  %29 = load ptr, ptr %10, align 8
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi ptr [ %11, %19 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %33 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %34 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %35 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %36 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 16
  %37 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %8, ptr noundef %1) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %36, ptr noundef align 8 dereferenceable(16) %39, i32 16, i1 false) #15
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef align 8 dereferenceable(16) %39, i32 16, i1 false) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef align 8 dereferenceable(16) %35, i32 16, i1 false) #15
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %33, ptr noundef align 8 dereferenceable(16) %35, i32 16, i1 false) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %32, ptr noundef align 8 dereferenceable(16) %33, i32 16, i1 false) #15
  br label %89

40:                                               ; preds = %16
  %41 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %41) #15
  %42 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 14
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %68, label %45

45:                                               ; preds = %60, %40
  %46 = phi ptr [ %63, %60 ], [ %43, %40 ]
  %47 = getelementptr i8, ptr %46, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %47) #15
  %48 = getelementptr i8, ptr %46, i32 -72
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %46, i32 -100
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %56 = load i16, ptr %47, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %58 = load i16, ptr %41, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %89

60:                                               ; preds = %51, %45
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %61 = load i16, ptr %47, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %47, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %63 = load ptr, ptr %46, align 8
  %64 = icmp eq ptr %63, %42
  br i1 %64, label %65, label %45

65:                                               ; preds = %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %66 = load i16, ptr %41, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %71

68:                                               ; preds = %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %69 = load i16, ptr %41, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  br label %71

71:                                               ; preds = %68, %65
  %72 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 16
  %77 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %78 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef nonnull %73) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %77, ptr noundef align 8 dereferenceable(16) %78, i32 16, i1 false) #15
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %76, ptr noundef align 8 dereferenceable(16) %78, i32 16, i1 false) #15
  call void @drop_nlink(ptr noundef nonnull %73) #15
  call void @dput(ptr noundef %4) #15
  br i1 %14, label %79, label %83

79:                                               ; preds = %75
  %80 = load ptr, ptr %72, align 8
  call void @drop_nlink(ptr noundef %80) #15
  call void @drop_nlink(ptr noundef %1) #15
  br label %83

81:                                               ; preds = %71
  br i1 %14, label %82, label %83

82:                                               ; preds = %81
  tail call void @drop_nlink(ptr noundef %1) #15
  tail call void @inc_nlink(ptr noundef %3) #15
  br label %83

83:                                               ; preds = %82, %81, %79, %75
  %84 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %85 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %86 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %87 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %88 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %9, ptr noundef %1) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %87, ptr noundef align 8 dereferenceable(16) %88, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %86, ptr noundef align 8 dereferenceable(16) %88, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %85, ptr noundef align 8 dereferenceable(16) %86, i32 16, i1 false)
  call void @llvm.memmove.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %84, ptr noundef align 8 dereferenceable(16) %86, i32 16, i1 false)
  br label %89

89:                                               ; preds = %83, %55, %30, %6
  %90 = phi i32 [ 0, %30 ], [ 0, %83 ], [ -22, %6 ], [ -39, %55 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @setattr_prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 8
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 4
  %14 = load i64, ptr %13, align 8
  tail call void @truncate_setsize(ptr noundef %5, i64 noundef %14) #15
  br label %15

15:                                               ; preds = %12, %8
  tail call void @setattr_copy(ptr noundef %0, ptr noundef %5, ptr noundef %2) #15
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #15
  br label %16

16:                                               ; preds = %15, %3
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_setsize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_write_begin(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5, ptr nocapture readnone %6) #0 {
  %8 = lshr i64 %2, 12
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @grab_cache_page_write_begin(ptr noundef %1, i32 noundef %9, i32 noundef %4) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %7
  store ptr %10, ptr %5, align 4
  %13 = getelementptr inbounds %struct.page, ptr %10, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !13

17:                                               ; preds = %12
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %12
  %20 = ptrtoint ptr %10 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  br label %35

28:                                               ; preds = %21
  %29 = icmp ne i32 %3, 4096
  %30 = and i1 %29, %26
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = trunc i64 %2 to i32
  %33 = and i32 %32, 4095
  %34 = add i32 %33, %3
  tail call void @zero_user_segments(ptr noundef nonnull %10, i32 noundef 0, i32 noundef %33, i32 noundef %34, i32 noundef 4096) #15
  br label %35

35:                                               ; preds = %31, %28, %27, %7
  %36 = phi i32 [ -12, %7 ], [ 0, %31 ], [ 0, %28 ], [ 0, %27 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @grab_cache_page_write_begin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_readpage(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @pgprot_kernel, align 4
  %4 = or i32 %3, 512
  %5 = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %4) #15
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %5, i8 0, i32 4096, i1 false) #15
  tail call void @kunmap_local_indexed(ptr noundef %5) #15
  tail call void @flush_dcache_page(ptr noundef %1) #15
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %1) #15
  tail call void @unlock_page(ptr noundef %1) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_page_dirty_no_writeback(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_write_end(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i64 noundef %2, i32 noundef %3, i32 noundef returned %4, ptr noundef %5, ptr nocapture noundef readnone %6) #0 {
  %8 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = zext i32 %4 to i64
  %12 = add i64 %11, %2
  %13 = getelementptr inbounds %struct.page, ptr %5, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !13

17:                                               ; preds = %7
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %7
  %20 = ptrtoint ptr %5 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  br label %36

28:                                               ; preds = %21
  %29 = icmp ugt i32 %3, %4
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = trunc i64 %2 to i32
  %32 = and i32 %31, 4095
  %33 = add i32 %32, %4
  %34 = add i32 %32, %3
  tail call void @zero_user_segments(ptr noundef %5, i32 noundef %33, i32 noundef %34, i32 noundef 0, i32 noundef 0) #15
  br label %35

35:                                               ; preds = %30, %28
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !15
  tail call void @_set_bit(i32 noundef 2, ptr noundef %5) #15
  br label %36

36:                                               ; preds = %35, %27
  %37 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 13
  %38 = load i64, ptr %37, align 8
  %39 = icmp sgt i64 %12, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !16
  %41 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 22
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !17
  store i64 %12, ptr %37, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #15, !srcloc !18
  %44 = load i32, ptr %41, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !19
  br label %46

46:                                               ; preds = %40, %36
  %47 = tail call zeroext i1 @set_page_dirty(ptr noundef %5) #15
  tail call void @unlock_page(ptr noundef %5) #15
  %48 = load volatile i32, ptr %13, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !13

51:                                               ; preds = %46
  %52 = add i32 %48, -1
  br label %55

53:                                               ; preds = %46
  %54 = ptrtoint ptr %5 to i32
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #15, !srcloc !21
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #15, !srcloc !22
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  tail call void @__put_page(ptr noundef %57) #15
  br label %63

63:                                               ; preds = %62, %55
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_fill_super(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %6, align 16
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %7, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @simple_super_operations, ptr %9, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %10, align 32
  %11 = tail call ptr @new_inode(ptr noundef %0) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %65, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 10
  store i32 1, ptr %14, align 4
  store i16 16877, ptr %11, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 14
  %16 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 15
  %17 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %11) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %16, ptr noundef align 8 dereferenceable(16) %17, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %15, ptr noundef align 8 dereferenceable(16) %17, i32 16, i1 false)
  %18 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 7
  store ptr @simple_dir_inode_operations, ptr %18, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %19, align 8
  call void @set_nlink(ptr noundef nonnull %11, i32 noundef 2) #15
  %20 = call ptr @d_make_root(ptr noundef nonnull %11) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %65, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 5
  br label %24

24:                                               ; preds = %59, %22
  %25 = phi ptr [ %61, %59 ], [ %2, %22 ]
  %26 = phi i32 [ %60, %59 ], [ 0, %22 ]
  %27 = load ptr, ptr %25, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %59, label %29

29:                                               ; preds = %24
  %30 = load i8, ptr %27, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %29
  %33 = icmp eq i32 %26, 1
  br i1 %33, label %34, label %39, !prof !12

34:                                               ; preds = %32
  %35 = load ptr, ptr %23, align 32
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.simple_fill_super, ptr noundef %36) #17
  %38 = load ptr, ptr %25, align 4
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi ptr [ %38, %34 ], [ %27, %32 ]
  %41 = call ptr @d_alloc_name(ptr noundef nonnull %20, ptr noundef %40) #15
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = call ptr @new_inode(ptr noundef %0) #15
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @dput(ptr noundef nonnull %41) #15
  br label %64

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_descr, ptr %25, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = trunc i32 %49 to i16
  %51 = or i16 %50, -32768
  store i16 %51, ptr %44, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 14
  %53 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 15
  %54 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef nonnull %44) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %53, ptr noundef align 8 dereferenceable(16) %54, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef align 8 dereferenceable(16) %54, i32 16, i1 false)
  %55 = getelementptr inbounds %struct.tree_descr, ptr %25, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 39
  store ptr %56, ptr %57, align 8
  %58 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 10
  store i32 %26, ptr %58, align 4
  call void @d_add(ptr noundef nonnull %41, ptr noundef nonnull %44) #15
  br label %59

59:                                               ; preds = %47, %24
  %60 = add i32 %26, 1
  %61 = getelementptr %struct.tree_descr, ptr %25, i32 1
  br label %24

62:                                               ; preds = %29
  %63 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %20, ptr %63, align 64
  br label %65

64:                                               ; preds = %46, %39
  call void @d_genocide(ptr noundef nonnull %20) #15
  call void @shrink_dcache_parent(ptr noundef nonnull %20) #15
  call void @dput(ptr noundef nonnull %20) #15
  br label %65

65:                                               ; preds = %64, %62, %13, %3
  %66 = phi i32 [ -12, %64 ], [ 0, %62 ], [ -12, %3 ], [ -12, %13 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_genocide(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_pin_fs(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @pin_fs_lock) #15
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %18, !prof !12

6:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %7 = load i16, ptr @pin_fs_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @pin_fs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %9 = load ptr, ptr %0, align 4
  %10 = tail call ptr @vfs_kern_mount(ptr noundef %0, i32 noundef 4194304, ptr noundef %9, ptr noundef null) #15
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = ptrtoint ptr %10 to i32
  br label %26

14:                                               ; preds = %6
  tail call void @_raw_spin_lock(ptr noundef nonnull @pin_fs_lock) #15
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store ptr %10, ptr %1, align 4
  br label %18

18:                                               ; preds = %17, %14, %3
  %19 = phi ptr [ %15, %14 ], [ %10, %17 ], [ %4, %3 ]
  %20 = phi ptr [ %10, %14 ], [ %10, %17 ], [ null, %3 ]
  %21 = tail call ptr @mntget(ptr noundef %19) #15
  %22 = load i32, ptr %2, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %24 = load i16, ptr @pin_fs_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @pin_fs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @mntput(ptr noundef %20) #15
  br label %26

26:                                               ; preds = %18, %12
  %27 = phi i32 [ %13, %12 ], [ 0, %18 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_kern_mount(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simple_release_fs(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @pin_fs_lock) #15
  %3 = load ptr, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %1, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr null, ptr %0, align 4
  br label %8

8:                                                ; preds = %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %9 = load i16, ptr @pin_fs_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @pin_fs_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @mntput(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_read_from_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load i64, ptr %2, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %5
  %9 = zext i32 %4 to i64
  %10 = icmp ult i64 %6, %9
  %11 = icmp ne i32 %1, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %43

13:                                               ; preds = %8
  %14 = zext i32 %1 to i64
  %15 = sub nsw i64 %9, %6
  %16 = icmp slt i64 %15, %14
  %17 = trunc i64 %15 to i32
  %18 = select i1 %16, i32 %17, i32 %1
  %19 = trunc i64 %6 to i32
  %20 = getelementptr i8, ptr %3, i32 %19
  %21 = icmp slt i32 %18, 0
  %22 = load i1, ptr @check_copy_size.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %26

26:                                               ; preds = %25, %13
  br i1 %21, label %43, label %27, !prof !12

27:                                               ; preds = %26
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %18, i32 -1090519040) #18, !srcloc !24
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #15
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #19, !srcloc !25
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  %37 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %20, i32 noundef %18) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  %38 = icmp eq i32 %18, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = sub i32 %18, %37
  %41 = zext i32 %40 to i64
  %42 = add nuw i64 %6, %41
  store i64 %42, ptr %2, align 8
  br label %43

43:                                               ; preds = %39, %31, %27, %26, %8, %5
  %44 = phi i32 [ %40, %39 ], [ -22, %5 ], [ 0, %8 ], [ -14, %31 ], [ -14, %26 ], [ -14, %27 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_write_to_buffer(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load i64, ptr %2, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %50, label %8

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = icmp ult i64 %6, %9
  %11 = icmp ne i32 %4, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %50

13:                                               ; preds = %8
  %14 = zext i32 %4 to i64
  %15 = sub nsw i64 %9, %6
  %16 = icmp slt i64 %15, %14
  %17 = trunc i64 %15 to i32
  %18 = select i1 %16, i32 %17, i32 %4
  %19 = trunc i64 %6 to i32
  %20 = getelementptr i8, ptr %0, i32 %19
  %21 = icmp slt i32 %18, 0
  %22 = load i1, ptr @check_copy_size.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %26

26:                                               ; preds = %25, %13
  br i1 %21, label %50, label %27, !prof !12

27:                                               ; preds = %26
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %18, i32 -1090519040) #18, !srcloc !28
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38, !prof !13

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #15
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #19, !srcloc !25
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  %37 = tail call i32 @arm_copy_from_user(ptr noundef %20, ptr noundef %3, i32 noundef %18) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i32 [ %37, %31 ], [ %18, %27 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41, !prof !13

41:                                               ; preds = %38
  %42 = sub i32 %18, %39
  %43 = getelementptr i8, ptr %20, i32 %42
  tail call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %39, i1 false) #15
  br label %44

44:                                               ; preds = %41, %38
  %45 = icmp eq i32 %18, %39
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = sub i32 %18, %39
  %48 = zext i32 %47 to i64
  %49 = add nuw i64 %6, %48
  store i64 %49, ptr %2, align 8
  br label %50

50:                                               ; preds = %46, %44, %26, %8, %5
  %51 = phi i32 [ %47, %46 ], [ -22, %5 ], [ 0, %8 ], [ -14, %44 ], [ -14, %26 ]
  ret i32 %51
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @memory_read_from_buffer(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #8 {
  %6 = load i64, ptr %2, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = zext i32 %4 to i64
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = zext i32 %1 to i64
  %13 = sub nsw i64 %9, %6
  %14 = icmp slt i64 %13, %12
  %15 = trunc i64 %13 to i32
  %16 = select i1 %14, i32 %15, i32 %1
  %17 = trunc i64 %6 to i32
  %18 = getelementptr i8, ptr %3, i32 %17
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %0, ptr align 1 %18, i32 %16, i1 false)
  %19 = zext i32 %16 to i64
  %20 = add nuw i64 %6, %19
  store i64 %20, ptr %2, align 8
  br label %21

21:                                               ; preds = %11, %8, %5
  %22 = phi i32 [ %16, %11 ], [ -22, %5 ], [ 0, %8 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simple_transaction_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 4092
  br i1 %3, label %4, label %5, !prof !12

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/libfs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 855, 0\0A.popsection", ""() #15, !srcloc !29
  unreachable

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !30
  store i32 %1, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simple_transaction_get(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 4091
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @get_zeroed_page(i32 noundef 3264) #15
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @simple_transaction_get.simple_transaction_lock) #15
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %14 = load i16, ptr @simple_transaction_get.simple_transaction_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @simple_transaction_get.simple_transaction_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  tail call void @free_pages(i32 noundef %6, i32 noundef 0) #15
  br label %36

16:                                               ; preds = %9
  store ptr %7, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %17 = load i16, ptr @simple_transaction_get.simple_transaction_lock, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr @simple_transaction_get.simple_transaction_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %19 = getelementptr inbounds %struct.simple_transaction_argresp, ptr %7, i32 0, i32 1
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #18, !srcloc !28
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30, !prof !13

23:                                               ; preds = %16
  %24 = tail call ptr @llvm.thread.pointer() #15
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %26 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %25) #19, !srcloc !25
  %27 = and i32 %26, -13
  %28 = or i32 %27, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %28) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  %29 = tail call i32 @arm_copy_from_user(ptr noundef %19, ptr noundef %1, i32 noundef %2) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  br label %30

30:                                               ; preds = %23, %16
  %31 = phi i32 [ %29, %23 ], [ %2, %16 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !13

33:                                               ; preds = %30
  %34 = sub i32 %2, %31
  %35 = getelementptr i8, ptr %19, i32 %34
  tail call void @llvm.memset.p0.i32(ptr align 1 %35, i8 0, i32 %31, i1 false) #15
  br label %36

36:                                               ; preds = %33, %30, %13, %5, %3
  %37 = phi ptr [ inttoptr (i32 -16 to ptr), %13 ], [ inttoptr (i32 -27 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %5 ], [ %19, %30 ], [ inttoptr (i32 -14 to ptr), %33 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_transaction_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.simple_transaction_argresp, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %6, align 4
  %11 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %9, i32 noundef %10)
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_transaction_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i32
  tail call void @free_pages(i32 noundef %5, i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 84) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  store ptr %2, ptr %7, align 8
  %10 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 4
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 5
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @simple_attr_open.__key) #15
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %7, ptr %16, align 8
  %17 = tail call i32 @nonseekable_open(ptr noundef %0, ptr noundef %1) #15
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i32 [ %17, %9 ], [ -12, %5 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_attr_release(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @kfree(ptr noundef %4) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_attr_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %42, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 6
  %12 = tail call i32 @mutex_lock_interruptible(ptr noundef %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @strlen(ptr noundef %18)
  br label %36

23:                                               ; preds = %17, %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !annotation !31
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %24(ptr noundef %26, ptr noundef nonnull %5) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 2
  %31 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = load i64, ptr %5, align 8
  %34 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %30, i32 noundef 24, ptr noundef %32, i64 noundef %33) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %36

35:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %40

36:                                               ; preds = %29, %21
  %37 = phi i32 [ %22, %21 ], [ %34, %29 ]
  %38 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 2
  %39 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38, i32 noundef %37)
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi i32 [ %39, %36 ], [ %27, %35 ]
  call void @mutex_unlock(ptr noundef %11) #15
  br label %42

42:                                               ; preds = %40, %10, %4
  %43 = phi i32 [ %41, %40 ], [ -13, %4 ], [ %12, %10 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_attr_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8, !annotation !31
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %48, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 6
  %13 = tail call i32 @mutex_lock_interruptible(ptr noundef %12) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = tail call i32 @llvm.umin.i32(i32 %2, i32 23)
  %17 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 3
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %16, i32 -1090519040) #18, !srcloc !28
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28, !prof !13

21:                                               ; preds = %15
  %22 = tail call ptr @llvm.thread.pointer() #15
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %23) #19, !srcloc !25
  %25 = and i32 %24, -13
  %26 = or i32 %25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  %27 = tail call i32 @arm_copy_from_user(ptr noundef %17, ptr noundef %1, i32 noundef %16) #15
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #15, !srcloc !26
  tail call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !27
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %27, %21 ], [ %16, %15 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !13

31:                                               ; preds = %28
  %32 = sub i32 %16, %29
  %33 = getelementptr i8, ptr %17, i32 %32
  tail call void @llvm.memset.p0.i32(ptr align 1 %33, i8 0, i32 %29, i1 false) #15
  br label %46

34:                                               ; preds = %28
  %35 = getelementptr %struct.simple_attr, ptr %7, i32 0, i32 3, i32 %16
  store i8 0, ptr %35, align 1
  %36 = call i32 @kstrtoull(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %5) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr inbounds %struct.simple_attr, ptr %7, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = load i64, ptr %5, align 8
  %43 = call i32 %39(ptr noundef %41, i64 noundef %42) #15
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 %2, i32 %43
  br label %46

46:                                               ; preds = %38, %34, %31
  %47 = phi i32 [ %36, %34 ], [ %45, %38 ], [ -14, %31 ]
  call void @mutex_unlock(ptr noundef %12) #15
  br label %48

48:                                               ; preds = %46, %11, %4
  %49 = phi i32 [ %47, %46 ], [ -13, %4 ], [ %13, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @generic_fh_to_dentry(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = icmp slt i32 %2, 2
  br i1 %6, label %19, label %7

7:                                                ; preds = %5
  %8 = add i32 %3, -1
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, ptr %1, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr %4(ptr noundef %0, i64 noundef %12, i32 noundef %14) #15
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi ptr [ null, %7 ], [ %15, %10 ]
  %18 = tail call ptr @d_obtain_alias(ptr noundef %17) #15
  br label %19

19:                                               ; preds = %16, %5
  %20 = phi ptr [ %18, %16 ], [ null, %5 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_obtain_alias(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @generic_fh_to_parent(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = icmp slt i32 %2, 3
  br i1 %6, label %23, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %3, 2
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ugt i32 %2, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i32 [ %16, %14 ], [ 0, %9 ]
  %19 = tail call ptr %4(ptr noundef %0, i64 noundef %12, i32 noundef %18) #15
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi ptr [ %19, %17 ], [ null, %7 ]
  %22 = tail call ptr @d_obtain_alias(ptr noundef %21) #15
  br label %23

23:                                               ; preds = %20, %5
  %24 = phi ptr [ %22, %20 ], [ null, %5 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__generic_file_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @file_write_and_wait_range(ptr noundef %0, i64 noundef %1, i64 noundef %2) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_write(ptr noundef %11) #15
  %12 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call i32 @sync_mapping_buffers(ptr noundef %13) #15
  %15 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2055
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %10
  %20 = icmp ne i32 %3, 0
  %21 = and i32 %16, 2
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @sync_inode_metadata(ptr noundef %7, i32 noundef 1) #15
  %26 = icmp eq i32 %14, 0
  %27 = select i1 %26, i32 %25, i32 %14
  br label %28

28:                                               ; preds = %24, %19, %10
  %29 = phi i32 [ %14, %10 ], [ %14, %19 ], [ %27, %24 ]
  tail call void @up_write(ptr noundef %11) #15
  %30 = tail call i32 @file_check_and_advance_wb_err(ptr noundef %0) #15
  %31 = icmp eq i32 %29, 0
  %32 = select i1 %31, i32 %30, i32 %29
  br label %33

33:                                               ; preds = %28, %4
  %34 = phi i32 [ %32, %28 ], [ %8, %4 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_mapping_buffers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_inode_metadata(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @file_check_and_advance_wb_err(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_file_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @__generic_file_fsync(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @blkdev_issue_flush(ptr noundef %14) #15
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i32 [ %15, %10 ], [ %8, %4 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_check_addressable(i32 noundef %0, i64 noundef %1) #4 {
  %3 = add i64 %1, -1
  %4 = sub i32 12, %0
  %5 = zext i32 %4 to i64
  %6 = lshr i64 %3, %5
  %7 = icmp eq i64 %1, 0
  br i1 %7, label %19, label %8, !prof !12

8:                                                ; preds = %2
  %9 = add i32 %0, -13
  %10 = icmp ult i32 %9, -4
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = add nsw i32 %0, -9
  %13 = zext i32 %12 to i64
  %14 = lshr i64 -1, %13
  %15 = icmp ugt i64 %3, %14
  %16 = icmp ugt i64 %6, 4294967295
  %17 = select i1 %15, i1 true, i1 %16
  %18 = select i1 %17, i32 -27, i32 0
  br label %19

19:                                               ; preds = %11, %8, %2
  %20 = phi i32 [ 0, %2 ], [ -22, %8 ], [ %18, %11 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @noop_invalidatepage(ptr nocapture %0, i32 %1, i32 %2) #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @noop_direct_IO(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_link(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_anon_inode(ptr noundef %0) #0 {
  %2 = alloca %struct.timespec64, align 8
  %3 = tail call ptr @new_inode_pseudo(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @get_next_ino() #15
  %7 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 9
  store ptr @alloc_anon_inode.anon_aops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  store i32 7, ptr %11, align 4
  store i16 384, ptr %3, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2
  %13 = tail call ptr @llvm.thread.pointer() #15
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 83
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.cred, ptr %15, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %12, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 3
  %19 = load ptr, ptr %14, align 8
  %20 = getelementptr inbounds %struct.cred, ptr %19, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %18, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, 512
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 14
  %26 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %27 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %2, ptr noundef nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false)
  br label %28

28:                                               ; preds = %5, %1
  %29 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode_pseudo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @simple_nosetlease(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #4 {
  ret i32 -22
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @simple_get_link(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #10 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 43
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @make_empty_dir_inode(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @set_nlink(ptr noundef %0, i32 noundef 2) #15
  store i16 16749, ptr %0, align 8
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 2
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 3
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 19
  store i8 12, ptr %6, align 2
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  store ptr @empty_dir_inode_operations, ptr %8, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, -9
  store i16 %11, ptr %9, align 2
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @empty_dir_operations, ptr %12, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_empty_dir_inode(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @empty_dir_operations
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, @empty_dir_inode_operations
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @generic_set_encrypted_ci_d_ops(ptr nocapture %0) #4 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pseudo_fs_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pseudo_fs_get_tree(ptr noundef %0) #0 {
  %2 = tail call i32 @get_tree_nodev(ptr noundef %0, ptr noundef nonnull @pseudo_fs_fill_super) #15
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pseudo_fs_fill_super(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 17592186040320, ptr %6, align 8
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %7, align 16
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %8, align 4
  %9 = getelementptr inbounds %struct.pseudo_fs_context, ptr %5, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %5, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @simple_super_operations, ptr %12
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pseudo_fs_context, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 17
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %19, align 32
  %20 = tail call ptr @new_inode(ptr noundef %0) #15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 10
  store i32 1, ptr %23, align 4
  store i16 16768, ptr %20, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 14
  %25 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 15
  %26 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %20) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef align 8 dereferenceable(16) %26, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %24, ptr noundef align 8 dereferenceable(16) %26, i32 16, i1 false)
  %27 = call ptr @d_make_root(ptr noundef nonnull %20) #15
  %28 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %27, ptr %28, align 64
  %29 = icmp eq ptr %27, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.pseudo_fs_context, ptr %5, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr %32, ptr %33, align 16
  br label %34

34:                                               ; preds = %30, %22, %2
  %35 = phi i32 [ 0, %30 ], [ -12, %2 ], [ -12, %22 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_page_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @empty_dir_lookup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  ret ptr inttoptr (i32 -2 to ptr)
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @empty_dir_setattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #4 {
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @empty_dir_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @empty_dir_listxattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2) #4 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @empty_dir_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i64 @generic_file_llseek_size(ptr noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef 2, i64 noundef 2) #15
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @empty_dir_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  switch i64 %4, label %34 [
    i64 0, label %5
    i64 1, label %17
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  %14 = tail call i32 %6(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef 1, i64 noundef 0, i64 noundef %13, i32 noundef 4) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %5
  store i64 1, ptr %3, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load ptr, ptr %1, align 8
  %19 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %21) #15
  %22 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !8
  %28 = load i16, ptr %21, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !11
  %30 = zext i32 %27 to i64
  %31 = tail call i32 %18(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 2, i64 noundef 1, i64 noundef %30, i32 noundef 4) #15
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  store i64 2, ptr %3, align 8
  br label %34

34:                                               ; preds = %33, %17, %5, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek_size(ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readonly }

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
!8 = !{i64 2149243776}
!9 = !{i64 2149239600}
!10 = !{i64 2149239675, i64 2149239702, i64 2149239749, i64 2149239771, i64 2149239799, i64 2149239819}
!11 = !{i64 2149266779}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2150639236}
!15 = !{i64 2150640257}
!16 = !{i64 2151402634}
!17 = !{i64 2149663138}
!18 = !{i64 2149663439}
!19 = !{i64 2151410192}
!20 = !{i64 2148261070}
!21 = !{i64 595563, i64 2148097129, i64 2148097155, i64 2148097202, i64 2148097224, i64 2148097252, i64 2148097272}
!22 = !{i64 2148163432, i64 2148163464, i64 2148163493, i64 2148163527, i64 2148163558, i64 2148163581}
!23 = !{i64 2148261273}
!24 = !{i64 2151087759, i64 2151087784}
!25 = !{i64 3583293}
!26 = !{i64 3583490}
!27 = !{i64 2151068769}
!28 = !{i64 2151087181, i64 2151087206}
!29 = !{i64 2153637362, i64 2153637837, i64 2153637399, i64 2153637455, i64 2153637489, i64 2153637513, i64 2153637554, i64 2153637575, i64 2153637603, i64 2153637637}
!30 = !{i64 2153638185}
!31 = !{!"auto-init"}
