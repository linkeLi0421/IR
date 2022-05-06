; ModuleID = '/llk/IR/fs/inode.c_pt.bc'
source_filename = "../fs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_empty_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22empty_aops\22\09\09\09\09\09"
module asm "__kstrtabns_empty_aops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_init_always:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_init_always\22\09\09\09\09\09"
module asm "__kstrtabns_inode_init_always:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_inode_nonrcu:\09\09\09\09\09"
module asm "\09.asciz \09\22free_inode_nonrcu\22\09\09\09\09\09"
module asm "__kstrtabns_free_inode_nonrcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___destroy_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22__destroy_inode\22\09\09\09\09\09"
module asm "__kstrtabns___destroy_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drop_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22drop_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_drop_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_clear_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22set_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_set_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inc_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22inc_nlink\22\09\09\09\09\09"
module asm "__kstrtabns_inc_nlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_address_space_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22address_space_init_once\22\09\09\09\09\09"
module asm "__kstrtabns_address_space_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_init_once\22\09\09\09\09\09"
module asm "__kstrtabns_inode_init_once:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ihold:\09\09\09\09\09"
module asm "\09.asciz \09\22ihold\22\09\09\09\09\09"
module asm "__kstrtabns_ihold:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_sb_list_add:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_sb_list_add\22\09\09\09\09\09"
module asm "__kstrtabns_inode_sb_list_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___insert_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22__insert_inode_hash\22\09\09\09\09\09"
module asm "__kstrtabns___insert_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___remove_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22__remove_inode_hash\22\09\09\09\09\09"
module asm "__kstrtabns___remove_inode_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clear_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22clear_inode\22\09\09\09\09\09"
module asm "__kstrtabns_clear_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_evict_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22evict_inodes\22\09\09\09\09\09"
module asm "__kstrtabns_evict_inodes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_next_ino:\09\09\09\09\09"
module asm "\09.asciz \09\22get_next_ino\22\09\09\09\09\09"
module asm "__kstrtabns_get_next_ino:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22new_inode\22\09\09\09\09\09"
module asm "__kstrtabns_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_new_inode\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_discard_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22discard_new_inode\22\09\09\09\09\09"
module asm "__kstrtabns_discard_new_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22lock_two_nondirectories\22\09\09\09\09\09"
module asm "__kstrtabns_lock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_two_nondirectories\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_two_nondirectories:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_insert5:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_insert5\22\09\09\09\09\09"
module asm "__kstrtabns_inode_insert5:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iget5_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22iget5_locked\22\09\09\09\09\09"
module asm "__kstrtabns_iget5_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iget_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22iget_locked\22\09\09\09\09\09"
module asm "__kstrtabns_iget_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iunique:\09\09\09\09\09"
module asm "\09.asciz \09\22iunique\22\09\09\09\09\09"
module asm "__kstrtabns_iunique:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_igrab:\09\09\09\09\09"
module asm "\09.asciz \09\22igrab\22\09\09\09\09\09"
module asm "__kstrtabns_igrab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ilookup5_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22ilookup5_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_ilookup5_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ilookup5:\09\09\09\09\09"
module asm "\09.asciz \09\22ilookup5\22\09\09\09\09\09"
module asm "__kstrtabns_ilookup5:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ilookup:\09\09\09\09\09"
module asm "\09.asciz \09\22ilookup\22\09\09\09\09\09"
module asm "__kstrtabns_ilookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_inode_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22find_inode_nowait\22\09\09\09\09\09"
module asm "__kstrtabns_find_inode_nowait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_inode_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22find_inode_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_find_inode_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_inode_by_ino_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22find_inode_by_ino_rcu\22\09\09\09\09\09"
module asm "__kstrtabns_find_inode_by_ino_rcu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_insert_inode_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22insert_inode_locked\22\09\09\09\09\09"
module asm "__kstrtabns_insert_inode_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_insert_inode_locked4:\09\09\09\09\09"
module asm "\09.asciz \09\22insert_inode_locked4\22\09\09\09\09\09"
module asm "__kstrtabns_insert_inode_locked4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_delete_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_delete_inode\22\09\09\09\09\09"
module asm "__kstrtabns_generic_delete_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iput:\09\09\09\09\09"
module asm "\09.asciz \09\22iput\22\09\09\09\09\09"
module asm "__kstrtabns_iput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22bmap\22\09\09\09\09\09"
module asm "__kstrtabns_bmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_generic_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_inode_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touch_atime:\09\09\09\09\09"
module asm "\09.asciz \09\22touch_atime\22\09\09\09\09\09"
module asm "__kstrtabns_touch_atime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_should_remove_suid:\09\09\09\09\09"
module asm "\09.asciz \09\22should_remove_suid\22\09\09\09\09\09"
module asm "__kstrtabns_should_remove_suid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_remove_privs:\09\09\09\09\09"
module asm "\09.asciz \09\22file_remove_privs\22\09\09\09\09\09"
module asm "__kstrtabns_file_remove_privs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22file_update_time\22\09\09\09\09\09"
module asm "__kstrtabns_file_update_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_file_modified:\09\09\09\09\09"
module asm "\09.asciz \09\22file_modified\22\09\09\09\09\09"
module asm "__kstrtabns_file_modified:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_needs_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_needs_sync\22\09\09\09\09\09"
module asm "__kstrtabns_inode_needs_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_special_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22init_special_inode\22\09\09\09\09\09"
module asm "__kstrtabns_init_special_inode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_init_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_init_owner\22\09\09\09\09\09"
module asm "__kstrtabns_inode_init_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_owner_or_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_owner_or_capable\22\09\09\09\09\09"
module asm "__kstrtabns_inode_owner_or_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_dio_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_dio_wait\22\09\09\09\09\09"
module asm "__kstrtabns_inode_dio_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_set_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_set_flags\22\09\09\09\09\09"
module asm "__kstrtabns_inode_set_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_nohighmem:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_nohighmem\22\09\09\09\09\09"
module asm "__kstrtabns_inode_nohighmem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timestamp_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22timestamp_truncate\22\09\09\09\09\09"
module asm "__kstrtabns_timestamp_truncate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_current_time:\09\09\09\09\09"
module asm "\09.asciz \09\22current_time\22\09\09\09\09\09"
module asm "__kstrtabns_current_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.inodes_stat_t = type { i32, i32, [5 x i32] }
%struct.vm_event_state = type { [71 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.8 }
%union.anon.8 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.18, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
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
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.66 }
%union.anon.66 = type { %struct.kuid_t }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { i64 }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.48 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.path = type { ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.33 = type { %struct.callback_head }

@empty_aops = dso_local constant %struct.address_space_operations zeroinitializer, align 4
@__kstrtab_empty_aops = external dso_local constant [0 x i8], align 1
@__kstrtabns_empty_aops = external dso_local constant [0 x i8], align 1
@__ksymtab_empty_aops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @empty_aops to i32), ptr @__kstrtab_empty_aops, ptr @__kstrtabns_empty_aops }, section "___ksymtab+empty_aops", align 4
@__initcall__kmod_inode__311_140_init_fs_inode_sysctlsearly = internal global ptr @init_fs_inode_sysctls, section ".initcallearly.init", align 4
@inode_init_always.empty_iops = internal constant %struct.inode_operations zeroinitializer, align 64
@inode_init_always.no_open_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @no_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@inode_init_always.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&inode->i_rwsem\00", align 1
@inode_init_always.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"&mapping->invalidate_lock\00", align 1
@nr_inodes = internal global i32 0, section ".data..percpu", align 4
@__kstrtab_inode_init_always = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_init_always = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_init_always = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_init_always to i32), ptr @__kstrtab_inode_init_always, ptr @__kstrtabns_inode_init_always }, section "___ksymtab+inode_init_always", align 4
@inode_cachep = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__kstrtab_free_inode_nonrcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_inode_nonrcu = external dso_local constant [0 x i8], align 1
@__ksymtab_free_inode_nonrcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_inode_nonrcu to i32), ptr @__kstrtab_free_inode_nonrcu, ptr @__kstrtabns_free_inode_nonrcu }, section "___ksymtab+free_inode_nonrcu", align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"fs/inode.c\00", align 1
@__kstrtab___destroy_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns___destroy_inode = external dso_local constant [0 x i8], align 1
@__ksymtab___destroy_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__destroy_inode to i32), ptr @__kstrtab___destroy_inode, ptr @__kstrtabns___destroy_inode }, section "___ksymtab+__destroy_inode", align 4
@__kstrtab_drop_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_drop_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_drop_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drop_nlink to i32), ptr @__kstrtab_drop_nlink, ptr @__kstrtabns_drop_nlink }, section "___ksymtab+drop_nlink", align 4
@__kstrtab_clear_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_nlink to i32), ptr @__kstrtab_clear_nlink, ptr @__kstrtabns_clear_nlink }, section "___ksymtab+clear_nlink", align 4
@__kstrtab_set_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_set_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_nlink to i32), ptr @__kstrtab_set_nlink, ptr @__kstrtabns_set_nlink }, section "___ksymtab+set_nlink", align 4
@__kstrtab_inc_nlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_inc_nlink = external dso_local constant [0 x i8], align 1
@__ksymtab_inc_nlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inc_nlink to i32), ptr @__kstrtab_inc_nlink, ptr @__kstrtabns_inc_nlink }, section "___ksymtab+inc_nlink", align 4
@__kstrtab_address_space_init_once = external dso_local constant [0 x i8], align 1
@__kstrtabns_address_space_init_once = external dso_local constant [0 x i8], align 1
@__ksymtab_address_space_init_once = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @address_space_init_once to i32), ptr @__kstrtab_address_space_init_once, ptr @__kstrtabns_address_space_init_once }, section "___ksymtab+address_space_init_once", align 4
@__kstrtab_inode_init_once = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_init_once = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_init_once = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_init_once to i32), ptr @__kstrtab_inode_init_once, ptr @__kstrtabns_inode_init_once }, section "___ksymtab+inode_init_once", align 4
@__kstrtab_ihold = external dso_local constant [0 x i8], align 1
@__kstrtabns_ihold = external dso_local constant [0 x i8], align 1
@__ksymtab_ihold = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ihold to i32), ptr @__kstrtab_ihold, ptr @__kstrtabns_ihold }, section "___ksymtab+ihold", align 4
@__kstrtab_inode_sb_list_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_sb_list_add = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_sb_list_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_sb_list_add to i32), ptr @__kstrtab_inode_sb_list_add, ptr @__kstrtabns_inode_sb_list_add }, section "___ksymtab_gpl+inode_sb_list_add", align 4
@inode_hashtable = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@inode_hash_lock = internal global %struct.spinlock zeroinitializer, section ".data..cacheline_aligned", align 64
@__kstrtab___insert_inode_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns___insert_inode_hash = external dso_local constant [0 x i8], align 1
@__ksymtab___insert_inode_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__insert_inode_hash to i32), ptr @__kstrtab___insert_inode_hash, ptr @__kstrtabns___insert_inode_hash }, section "___ksymtab+__insert_inode_hash", align 4
@__kstrtab___remove_inode_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns___remove_inode_hash = external dso_local constant [0 x i8], align 1
@__ksymtab___remove_inode_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__remove_inode_hash to i32), ptr @__kstrtab___remove_inode_hash, ptr @__kstrtabns___remove_inode_hash }, section "___ksymtab+__remove_inode_hash", align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"\014invalid mapping:%px\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\014aops:%ps\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\014aops:%ps invalid inode:%px\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\014aops:%ps ino:%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\014aops:%ps ino:%lx invalid dentry:%px\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\014aops:%ps ino:%lx dentry name:\22%pd\22\0A\00", align 1
@__kstrtab_clear_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_clear_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_clear_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clear_inode to i32), ptr @__kstrtab_clear_inode, ptr @__kstrtabns_clear_inode }, section "___ksymtab+clear_inode", align 4
@__kstrtab_evict_inodes = external dso_local constant [0 x i8], align 1
@__kstrtabns_evict_inodes = external dso_local constant [0 x i8], align 1
@__ksymtab_evict_inodes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @evict_inodes to i32), ptr @__kstrtab_evict_inodes, ptr @__kstrtabns_evict_inodes }, section "___ksymtab_gpl+evict_inodes", align 4
@last_ino = internal global i32 0, section ".data..percpu", align 4
@get_next_ino.shared_last_ino = internal global %struct.atomic_t zeroinitializer, align 4
@__kstrtab_get_next_ino = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_next_ino = external dso_local constant [0 x i8], align 1
@__ksymtab_get_next_ino = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_next_ino to i32), ptr @__kstrtab_get_next_ino, ptr @__kstrtabns_get_next_ino }, section "___ksymtab+get_next_ino", align 4
@__kstrtab_new_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_new_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_new_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @new_inode to i32), ptr @__kstrtab_new_inode, ptr @__kstrtabns_new_inode }, section "___ksymtab+new_inode", align 4
@__kstrtab_unlock_new_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_new_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_new_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_new_inode to i32), ptr @__kstrtab_unlock_new_inode, ptr @__kstrtabns_unlock_new_inode }, section "___ksymtab+unlock_new_inode", align 4
@__kstrtab_discard_new_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_discard_new_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_discard_new_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @discard_new_inode to i32), ptr @__kstrtab_discard_new_inode, ptr @__kstrtabns_discard_new_inode }, section "___ksymtab+discard_new_inode", align 4
@__kstrtab_lock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__kstrtabns_lock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__ksymtab_lock_two_nondirectories = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lock_two_nondirectories to i32), ptr @__kstrtab_lock_two_nondirectories, ptr @__kstrtabns_lock_two_nondirectories }, section "___ksymtab+lock_two_nondirectories", align 4
@__kstrtab_unlock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_two_nondirectories = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_two_nondirectories = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_two_nondirectories to i32), ptr @__kstrtab_unlock_two_nondirectories, ptr @__kstrtabns_unlock_two_nondirectories }, section "___ksymtab+unlock_two_nondirectories", align 4
@__kstrtab_inode_insert5 = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_insert5 = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_insert5 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_insert5 to i32), ptr @__kstrtab_inode_insert5, ptr @__kstrtabns_inode_insert5 }, section "___ksymtab+inode_insert5", align 4
@__kstrtab_iget5_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_iget5_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_iget5_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iget5_locked to i32), ptr @__kstrtab_iget5_locked, ptr @__kstrtabns_iget5_locked }, section "___ksymtab+iget5_locked", align 4
@__kstrtab_iget_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_iget_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_iget_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iget_locked to i32), ptr @__kstrtab_iget_locked, ptr @__kstrtabns_iget_locked }, section "___ksymtab+iget_locked", align 4
@iunique.iunique_lock = internal global %struct.spinlock zeroinitializer, align 4
@iunique.counter = internal unnamed_addr global i32 0, align 4
@__kstrtab_iunique = external dso_local constant [0 x i8], align 1
@__kstrtabns_iunique = external dso_local constant [0 x i8], align 1
@__ksymtab_iunique = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iunique to i32), ptr @__kstrtab_iunique, ptr @__kstrtabns_iunique }, section "___ksymtab+iunique", align 4
@__kstrtab_igrab = external dso_local constant [0 x i8], align 1
@__kstrtabns_igrab = external dso_local constant [0 x i8], align 1
@__ksymtab_igrab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @igrab to i32), ptr @__kstrtab_igrab, ptr @__kstrtabns_igrab }, section "___ksymtab+igrab", align 4
@__kstrtab_ilookup5_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_ilookup5_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_ilookup5_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ilookup5_nowait to i32), ptr @__kstrtab_ilookup5_nowait, ptr @__kstrtabns_ilookup5_nowait }, section "___ksymtab+ilookup5_nowait", align 4
@__kstrtab_ilookup5 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ilookup5 = external dso_local constant [0 x i8], align 1
@__ksymtab_ilookup5 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ilookup5 to i32), ptr @__kstrtab_ilookup5, ptr @__kstrtabns_ilookup5 }, section "___ksymtab+ilookup5", align 4
@__kstrtab_ilookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ilookup = external dso_local constant [0 x i8], align 1
@__ksymtab_ilookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ilookup to i32), ptr @__kstrtab_ilookup, ptr @__kstrtabns_ilookup }, section "___ksymtab+ilookup", align 4
@__kstrtab_find_inode_nowait = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_inode_nowait = external dso_local constant [0 x i8], align 1
@__ksymtab_find_inode_nowait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_inode_nowait to i32), ptr @__kstrtab_find_inode_nowait, ptr @__kstrtabns_find_inode_nowait }, section "___ksymtab+find_inode_nowait", align 4
@__kstrtab_find_inode_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_inode_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_find_inode_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_inode_rcu to i32), ptr @__kstrtab_find_inode_rcu, ptr @__kstrtabns_find_inode_rcu }, section "___ksymtab+find_inode_rcu", align 4
@__kstrtab_find_inode_by_ino_rcu = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_inode_by_ino_rcu = external dso_local constant [0 x i8], align 1
@__ksymtab_find_inode_by_ino_rcu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_inode_by_ino_rcu to i32), ptr @__kstrtab_find_inode_by_ino_rcu, ptr @__kstrtabns_find_inode_by_ino_rcu }, section "___ksymtab+find_inode_by_ino_rcu", align 4
@__kstrtab_insert_inode_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_insert_inode_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_insert_inode_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @insert_inode_locked to i32), ptr @__kstrtab_insert_inode_locked, ptr @__kstrtabns_insert_inode_locked }, section "___ksymtab+insert_inode_locked", align 4
@__kstrtab_insert_inode_locked4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_insert_inode_locked4 = external dso_local constant [0 x i8], align 1
@__ksymtab_insert_inode_locked4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @insert_inode_locked4 to i32), ptr @__kstrtab_insert_inode_locked4, ptr @__kstrtabns_insert_inode_locked4 }, section "___ksymtab+insert_inode_locked4", align 4
@__kstrtab_generic_delete_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_delete_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_delete_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_delete_inode to i32), ptr @__kstrtab_generic_delete_inode, ptr @__kstrtabns_generic_delete_inode }, section "___ksymtab+generic_delete_inode", align 4
@__kstrtab_iput = external dso_local constant [0 x i8], align 1
@__kstrtabns_iput = external dso_local constant [0 x i8], align 1
@__ksymtab_iput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iput to i32), ptr @__kstrtab_iput, ptr @__kstrtabns_iput }, section "___ksymtab+iput", align 4
@__kstrtab_bmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_bmap = external dso_local constant [0 x i8], align 1
@__ksymtab_bmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bmap to i32), ptr @__kstrtab_bmap, ptr @__kstrtabns_bmap }, section "___ksymtab+bmap", align 4
@__kstrtab_generic_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_update_time to i32), ptr @__kstrtab_generic_update_time, ptr @__kstrtabns_generic_update_time }, section "___ksymtab+generic_update_time", align 4
@__kstrtab_inode_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_update_time to i32), ptr @__kstrtab_inode_update_time, ptr @__kstrtabns_inode_update_time }, section "___ksymtab+inode_update_time", align 4
@__kstrtab_touch_atime = external dso_local constant [0 x i8], align 1
@__kstrtabns_touch_atime = external dso_local constant [0 x i8], align 1
@__ksymtab_touch_atime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touch_atime to i32), ptr @__kstrtab_touch_atime, ptr @__kstrtabns_touch_atime }, section "___ksymtab+touch_atime", align 4
@__kstrtab_should_remove_suid = external dso_local constant [0 x i8], align 1
@__kstrtabns_should_remove_suid = external dso_local constant [0 x i8], align 1
@__ksymtab_should_remove_suid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @should_remove_suid to i32), ptr @__kstrtab_should_remove_suid, ptr @__kstrtabns_should_remove_suid }, section "___ksymtab+should_remove_suid", align 4
@__kstrtab_file_remove_privs = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_remove_privs = external dso_local constant [0 x i8], align 1
@__ksymtab_file_remove_privs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_remove_privs to i32), ptr @__kstrtab_file_remove_privs, ptr @__kstrtabns_file_remove_privs }, section "___ksymtab+file_remove_privs", align 4
@__kstrtab_file_update_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_update_time = external dso_local constant [0 x i8], align 1
@__ksymtab_file_update_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_update_time to i32), ptr @__kstrtab_file_update_time, ptr @__kstrtabns_file_update_time }, section "___ksymtab+file_update_time", align 4
@__kstrtab_file_modified = external dso_local constant [0 x i8], align 1
@__kstrtabns_file_modified = external dso_local constant [0 x i8], align 1
@__ksymtab_file_modified = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @file_modified to i32), ptr @__kstrtab_file_modified, ptr @__kstrtabns_file_modified }, section "___ksymtab+file_modified", align 4
@__kstrtab_inode_needs_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_needs_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_needs_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_needs_sync to i32), ptr @__kstrtab_inode_needs_sync, ptr @__kstrtabns_inode_needs_sync }, section "___ksymtab+inode_needs_sync", align 4
@__setup_str_set_ihash_entries = internal constant [15 x i8] c"ihash_entries=\00", section ".init.rodata", align 1
@__setup_set_ihash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_ihash_entries, ptr @set_ihash_entries, i32 0 }, section ".init.setup", align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"Inode-cache\00", align 1
@ihash_entries = internal unnamed_addr global i32 0, section ".init.data", align 4
@i_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@i_hash_mask = internal global i32 0, section ".data..read_mostly", align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"inode_cache\00", align 1
@def_chr_fops = external dso_local constant %struct.file_operations, align 4
@def_blk_fops = external dso_local constant %struct.file_operations, align 4
@pipefifo_fops = external dso_local constant %struct.file_operations, align 4
@.str.13 = private unnamed_addr constant [58 x i8] c"\017init_special_inode: bogus i_mode (%o) for inode %s:%lu\0A\00", align 1
@__kstrtab_init_special_inode = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_special_inode = external dso_local constant [0 x i8], align 1
@__ksymtab_init_special_inode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_special_inode to i32), ptr @__kstrtab_init_special_inode, ptr @__kstrtabns_init_special_inode }, section "___ksymtab+init_special_inode", align 4
@__kstrtab_inode_init_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_init_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_init_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_init_owner to i32), ptr @__kstrtab_inode_init_owner, ptr @__kstrtabns_inode_init_owner }, section "___ksymtab+inode_init_owner", align 4
@__kstrtab_inode_owner_or_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_owner_or_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_owner_or_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_owner_or_capable to i32), ptr @__kstrtab_inode_owner_or_capable, ptr @__kstrtabns_inode_owner_or_capable }, section "___ksymtab+inode_owner_or_capable", align 4
@__kstrtab_inode_dio_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_dio_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_dio_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_dio_wait to i32), ptr @__kstrtab_inode_dio_wait, ptr @__kstrtabns_inode_dio_wait }, section "___ksymtab+inode_dio_wait", align 4
@inode_set_flags.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_inode_set_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_set_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_set_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_set_flags to i32), ptr @__kstrtab_inode_set_flags, ptr @__kstrtabns_inode_set_flags }, section "___ksymtab+inode_set_flags", align 4
@__kstrtab_inode_nohighmem = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_nohighmem = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_nohighmem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_nohighmem to i32), ptr @__kstrtab_inode_nohighmem, ptr @__kstrtabns_inode_nohighmem }, section "___ksymtab+inode_nohighmem", align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"invalid file time granularity: %u\00", align 1
@__kstrtab_timestamp_truncate = external dso_local constant [0 x i8], align 1
@__kstrtabns_timestamp_truncate = external dso_local constant [0 x i8], align 1
@__ksymtab_timestamp_truncate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timestamp_truncate to i32), ptr @__kstrtab_timestamp_truncate, ptr @__kstrtabns_timestamp_truncate }, section "___ksymtab+timestamp_truncate", align 4
@.str.15 = private unnamed_addr constant [66 x i8] c"current_time() called with uninitialized super_block in the inode\00", align 1
@__kstrtab_current_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_current_time = external dso_local constant [0 x i8], align 1
@__ksymtab_current_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @current_time to i32), ptr @__kstrtab_current_time, ptr @__kstrtabns_current_time }, section "___ksymtab+current_time", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@nr_unused = internal global i32 0, section ".data..percpu", align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@inodes_sysctls = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.18, ptr @inodes_stat, i32 8, i16 292, ptr null, ptr @proc_nr_inodes, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.19, ptr @inodes_stat, i32 28, i16 292, ptr null, ptr @proc_nr_inodes, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"inodes_sysctls\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"inode-nr\00", align 1
@inodes_stat = internal global %struct.inodes_stat_t zeroinitializer, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"inode-state\00", align 1
@__address_space_init_once.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"&mapping->i_mmap_rwsem\00", align 1
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__tracepoint_writeback_lazytime_iput = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@llvm.compiler.used = appending global [56 x ptr] [ptr @__initcall__kmod_inode__311_140_init_fs_inode_sysctlsearly, ptr @__ksymtab___destroy_inode, ptr @__ksymtab___insert_inode_hash, ptr @__ksymtab___remove_inode_hash, ptr @__ksymtab_address_space_init_once, ptr @__ksymtab_bmap, ptr @__ksymtab_clear_inode, ptr @__ksymtab_clear_nlink, ptr @__ksymtab_current_time, ptr @__ksymtab_discard_new_inode, ptr @__ksymtab_drop_nlink, ptr @__ksymtab_empty_aops, ptr @__ksymtab_evict_inodes, ptr @__ksymtab_file_modified, ptr @__ksymtab_file_remove_privs, ptr @__ksymtab_file_update_time, ptr @__ksymtab_find_inode_by_ino_rcu, ptr @__ksymtab_find_inode_nowait, ptr @__ksymtab_find_inode_rcu, ptr @__ksymtab_free_inode_nonrcu, ptr @__ksymtab_generic_delete_inode, ptr @__ksymtab_generic_update_time, ptr @__ksymtab_get_next_ino, ptr @__ksymtab_iget5_locked, ptr @__ksymtab_iget_locked, ptr @__ksymtab_igrab, ptr @__ksymtab_ihold, ptr @__ksymtab_ilookup, ptr @__ksymtab_ilookup5, ptr @__ksymtab_ilookup5_nowait, ptr @__ksymtab_inc_nlink, ptr @__ksymtab_init_special_inode, ptr @__ksymtab_inode_dio_wait, ptr @__ksymtab_inode_init_always, ptr @__ksymtab_inode_init_once, ptr @__ksymtab_inode_init_owner, ptr @__ksymtab_inode_insert5, ptr @__ksymtab_inode_needs_sync, ptr @__ksymtab_inode_nohighmem, ptr @__ksymtab_inode_owner_or_capable, ptr @__ksymtab_inode_sb_list_add, ptr @__ksymtab_inode_set_flags, ptr @__ksymtab_inode_update_time, ptr @__ksymtab_insert_inode_locked, ptr @__ksymtab_insert_inode_locked4, ptr @__ksymtab_iput, ptr @__ksymtab_iunique, ptr @__ksymtab_lock_two_nondirectories, ptr @__ksymtab_new_inode, ptr @__ksymtab_set_nlink, ptr @__ksymtab_should_remove_suid, ptr @__ksymtab_timestamp_truncate, ptr @__ksymtab_touch_atime, ptr @__ksymtab_unlock_new_inode, ptr @__ksymtab_unlock_two_nondirectories, ptr @__setup_set_ihash_entries], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @get_nr_dirty_inodes() local_unnamed_addr #0 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %28

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %13, %4 ], [ %2, %0 ]
  %6 = phi i32 [ %12, %4 ], [ 0, %0 ]
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @nr_inodes to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %6
  %13 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #17
  %14 = icmp ult i32 %13, %1
  br i1 %14, label %4, label %15

15:                                               ; preds = %4
  %16 = tail call i32 @llvm.smax.i32(i32 %12, i32 0) #18
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %26, %17 ], [ %2, %15 ]
  %19 = phi i32 [ %25, %17 ], [ 0, %15 ]
  %20 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, ptrtoint (ptr @nr_unused to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %19
  %26 = tail call i32 @cpumask_next(i32 noundef %18, ptr noundef nonnull @__cpu_possible_mask) #17
  %27 = icmp ult i32 %26, %1
  br i1 %27, label %17, label %28

28:                                               ; preds = %17, %0
  %29 = phi i32 [ 0, %0 ], [ %16, %17 ]
  %30 = phi i32 [ 0, %0 ], [ %25, %17 ]
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 0) #18
  %32 = sub nsw i32 %29, %31
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 0)
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_inode_sysctls() #2 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.16, ptr noundef nonnull @inodes_sysctls, ptr noundef nonnull @.str.17) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inode_init_always(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  store ptr %0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  store i8 %6, ptr %7, align 2
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #18, !srcloc !9
  %10 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %9, ptr %9, i64 0) #18, !srcloc !10
  %11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 35
  store volatile i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  store ptr @inode_init_always.empty_iops, ptr %12, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 39
  store ptr @inode_init_always.no_open_fops, ptr %13, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  store i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i16 0, i16 8
  store i16 %20, ptr %16, align 2
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 37
  store volatile i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  store i64 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 20
  store i8 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 21
  store i64 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 18
  store i16 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 43
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  store i32 0, ptr %30, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  store i32 0, ptr %31, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  store i64 0, ptr %28, align 4
  tail call void @__init_rwsem(ptr noundef %32, ptr noundef nonnull @.str, ptr noundef nonnull @inode_init_always.__key) #18
  %33 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 36
  store volatile i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 9
  store ptr @empty_aops, ptr %34, align 4
  store ptr %1, ptr %3, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 10
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 11
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 4
  store volatile i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 3
  store i32 17829066, ptr %38, align 4
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 14
  store ptr null, ptr %39, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 8
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 41, i32 2
  tail call void @__init_rwsem(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef nonnull @inode_init_always.__key.1) #18
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  store ptr %3, ptr %43, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 32
  store ptr null, ptr %44, align 8
  %45 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 6
  store ptr inttoptr (i32 -1 to ptr), ptr %45, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %46, align 8
  %47 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 45
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 40
  store ptr null, ptr %48, align 4
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #13, !srcloc !12
  %53 = add i32 %52, ptrtoint (ptr @nr_inodes to i32)
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #18, !srcloc !13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @no_open(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #4 {
  ret i32 -6
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_inode_nonrcu(ptr noundef %0) #3 {
  %2 = load ptr, ptr @inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__destroy_inode(ptr noundef %0) #3 {
  %2 = tail call i32 @inode_has_buffers(ptr noundef %0) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !14

4:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 283, 0\0A.popsection", ""() #18, !srcloc !15
  unreachable

5:                                                ; preds = %1
  tail call void @__fsnotify_inode_delete(ptr noundef %0) #18
  tail call void @locks_free_lock_context(ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 41
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !16

15:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 289, i32 noundef 9, ptr noundef null) #18
  %16 = load ptr, ptr %10, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %19 = getelementptr inbounds %struct.super_block, ptr %18, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #18, !srcloc !9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #18, !srcloc !17
  br label %21

21:                                               ; preds = %17, %5
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  %25 = ptrtoint ptr %23 to i32
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %23) #18, !srcloc !9
  %30 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %23, ptr nonnull %23, i32 1, ptr nonnull elementtype(i32) %23) #18, !srcloc !19
  %31 = extractvalue { i32, i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = icmp sgt i32 %31, 0
  br i1 %34, label %38, label %35, !prof !14

35:                                               ; preds = %33
  tail call void @refcount_warn_saturate(ptr noundef nonnull %23, i32 noundef 3) #18
  br label %38

36:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %37 = getelementptr inbounds %struct.posix_acl, ptr %23, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %37, ptr noundef nonnull inttoptr (i32 4 to ptr)) #18
  br label %38

38:                                               ; preds = %36, %35, %33, %21
  %39 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  %42 = ptrtoint ptr %40 to i32
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %41, i1 true, i1 %44
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %40) #18, !srcloc !9
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %40, ptr nonnull %40, i32 1, ptr nonnull elementtype(i32) %40) #18, !srcloc !19
  %48 = extractvalue { i32, i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %55, label %52, !prof !14

52:                                               ; preds = %50
  tail call void @refcount_warn_saturate(ptr noundef nonnull %40, i32 noundef 3) #18
  br label %55

53:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !20
  %54 = getelementptr inbounds %struct.posix_acl, ptr %40, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %54, ptr noundef nonnull inttoptr (i32 4 to ptr)) #18
  br label %55

55:                                               ; preds = %53, %52, %50, %38
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #13, !srcloc !12
  %60 = add i32 %59, ptrtoint (ptr @nr_inodes to i32)
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #18, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_has_buffers(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @locks_free_lock_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drop_nlink(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !16

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 331, i32 noundef 9, ptr noundef null) #18
  %6 = load i32, ptr %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  %9 = add i32 %8, -1
  store i32 %9, ptr %2, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #18, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #18, !srcloc !21
  br label %16

16:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_nlink(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  store i32 0, ptr %2, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #18, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #18, !srcloc !21
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_nlink(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %3, label %7, label %13

7:                                                ; preds = %2
  br i1 %6, label %20, label %8

8:                                                ; preds = %7
  store i32 0, ptr %4, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #18, !srcloc !9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #18, !srcloc !21
  br label %20

13:                                               ; preds = %2
  br i1 %6, label %14, label %19

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #18, !srcloc !9
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #18, !srcloc !17
  br label %19

19:                                               ; preds = %14, %13
  store i32 %1, ptr %4, align 8
  br label %20

20:                                               ; preds = %19, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inc_nlink(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %17, !prof !16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 388, i32 noundef 9, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #18, !srcloc !9
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #18, !srcloc !17
  %16 = load i32, ptr %2, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i32 [ %16, %11 ], [ %3, %1 ]
  %19 = add i32 %18, 1
  store i32 %19, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @address_space_init_once(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 1, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %0, i8 0, i64 116, i1 false)
  store i32 33, ptr %2, align 4
  %3 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 6
  tail call void @__init_rwsem(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef nonnull @__address_space_init_once.__key) #18
  %4 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 13
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 13, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 12
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 5
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 5, i32 1
  store ptr null, ptr %8, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_init_once(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(392) %0, i8 0, i64 392, i1 false)
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1, i32 1
  store i32 33, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 6
  tail call void @__init_rwsem(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef nonnull @__address_space_init_once.__key) #18
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 12
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 5
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 5, i32 1
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  store i32 0, ptr %19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__iget(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ihold(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #18, !srcloc !23
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !24
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %7, !prof !16

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 450, i32 noundef 9, ptr noundef null) #18
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_add_lru(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2231
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 35
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1073741824
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 49
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29
  %20 = tail call zeroext i1 @list_lru_add(ptr noundef %18, ptr noundef %19) #18
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #13, !srcloc !12
  %26 = add i32 %25, ptrtoint (ptr @nr_unused to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #18, !srcloc !13
  br label %30

30:                                               ; preds = %21, %17, %10, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_sb_list_add(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 30
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 56
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %5, ptr %9, align 4
  store ptr %8, ptr %5, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 30, i32 1
  store ptr %7, ptr %10, align 4
  store volatile ptr %5, ptr %7, align 4
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__insert_inode_hash(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @inode_hashtable, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = mul i32 %6, %1
  %8 = add i32 %1, 1640531527
  %9 = lshr i32 %8, 6
  %10 = xor i32 %7, %9
  %11 = xor i32 %10, 1640531527
  %12 = load i32, ptr @i_hash_shift, align 4
  %13 = lshr i32 %11, %12
  %14 = xor i32 %13, %10
  %15 = load i32, ptr @i_hash_mask, align 4
  %16 = and i32 %14, %15
  %17 = getelementptr %struct.hlist_head, ptr %3, i32 %16
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %18) #18
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27
  %20 = load ptr, ptr %17, align 4
  store ptr %20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  store volatile ptr %17, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  store volatile ptr %19, ptr %17, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %19, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %26 = load i16, ptr %18, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %28 = load i16, ptr @inode_hash_lock, align 64
  %29 = add i16 %28, 1
  store i16 %29, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__remove_inode_hash(ptr noundef %0) #3 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  store volatile ptr %8, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  store volatile ptr %4, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %6
  store volatile ptr null, ptr %3, align 4
  br label %13

13:                                               ; preds = %12, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %14 = load i16, ptr %2, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %16 = load i16, ptr @inode_hash_lock, align 64
  %17 = add i16 %16, 1
  store i16 %17, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_mapping(ptr noundef %0) local_unnamed_addr #3 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.dentry, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store ptr null, ptr %2, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store ptr null, ptr %3, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store ptr null, ptr %4, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i32 136, i1 false), !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !30
  %7 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 4) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 9
  %11 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %3, ptr noundef %10, i32 noundef 4) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %1
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %0) #19
  br label %51

15:                                               ; preds = %9
  %16 = load ptr, ptr %2, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 4
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %19) #19
  br label %51

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 32
  %23 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %4, ptr noundef %22, i32 noundef 4) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 10
  %28 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %6, ptr noundef %27, i32 noundef 4) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %21
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr %2, align 4
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %31, ptr noundef %32) #19
  br label %51

34:                                               ; preds = %25
  %35 = load ptr, ptr %4, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 4
  %39 = load i32, ptr %6, align 4
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %38, i32 noundef %39) #19
  br label %51

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %35, i32 -128
  %43 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %5, ptr noundef %42, i32 noundef 136) #18
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %3, align 4
  %46 = load i32, ptr %6, align 4
  br i1 %44, label %49, label %47

47:                                               ; preds = %41
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %45, i32 noundef %46, ptr noundef %42) #19
  br label %51

49:                                               ; preds = %41
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %45, i32 noundef %46, ptr noundef nonnull %5) #19
  br label %51

51:                                               ; preds = %49, %47, %37, %30, %18, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @clear_inode(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 7
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !14

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #18, !srcloc !31
  unreachable

7:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %8 = load i16, ptr %2, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %14, label %13, !prof !14

13:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #18, !srcloc !34
  unreachable

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20, !prof !16

19:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 622, 0\0A.popsection", ""() #18, !srcloc !35
  unreachable

20:                                               ; preds = %14
  %21 = and i32 %16, 64
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !14

23:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #18, !srcloc !36
  unreachable

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %29, label %28, !prof !14

28:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #18, !srcloc !37
  unreachable

29:                                               ; preds = %24
  store i32 96, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @evict_inodes(ptr noundef %0) #3 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 55
  call void @_raw_spin_lock(ptr noundef %4) #18
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 56
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %72, label %8

8:                                                ; preds = %70, %1
  %9 = phi ptr [ %71, %70 ], [ %6, %1 ]
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr i8, ptr %9, i32 40
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %68

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %9, i32 -80
  call void @_raw_spin_lock(ptr noundef %15) #18
  %16 = getelementptr i8, ptr %9, i32 -60
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 56
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %21 = load i16, ptr %15, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %68

23:                                               ; preds = %14
  %24 = or i32 %17, 32
  store i32 %24, ptr %16, align 4
  %25 = getelementptr i8, ptr %9, i32 -156
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 49
  %28 = getelementptr i8, ptr %9, i32 -8
  %29 = call zeroext i1 @list_lru_del(ptr noundef %27, ptr noundef %28) #18
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %32 = call i32 @llvm.read_register.i32(metadata !0) #18
  %33 = inttoptr i32 %32 to ptr
  %34 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #13, !srcloc !12
  %35 = add i32 %34, ptrtoint (ptr @nr_unused to i32)
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, -1
  store i32 %38, ptr %36, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #18, !srcloc !13
  br label %39

39:                                               ; preds = %30, %23
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %40 = load i16, ptr %15, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %28, ptr %43, align 4
  store ptr %42, ptr %28, align 4
  %44 = getelementptr i8, ptr %9, i32 -4
  store ptr %2, ptr %44, align 4
  store volatile ptr %28, ptr %2, align 8
  %45 = tail call ptr @llvm.thread.pointer() #18
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %39
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %50 = load i16, ptr %4, align 4
  %51 = add i16 %50, 1
  store i16 %51, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %52 = call i32 @__cond_resched() #18
  %53 = load volatile ptr, ptr %2, align 8
  %54 = icmp eq ptr %53, %2
  br i1 %54, label %65, label %55

55:                                               ; preds = %55, %49
  %56 = phi ptr [ %63, %55 ], [ %53, %49 ]
  %57 = getelementptr i8, ptr %56, i32 -176
  %58 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %56, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %58, align 4
  call fastcc void @evict(ptr noundef %57) #18
  %62 = call i32 @__cond_resched() #18
  %63 = load volatile ptr, ptr %2, align 8
  %64 = icmp eq ptr %63, %2
  br i1 %64, label %65, label %55

65:                                               ; preds = %55, %49
  call void @_raw_spin_lock(ptr noundef %4) #18
  %66 = load ptr, ptr %5, align 4
  %67 = icmp eq ptr %66, %5
  br i1 %67, label %72, label %70

68:                                               ; preds = %39, %20, %8
  %69 = icmp eq ptr %10, %5
  br i1 %69, label %72, label %70

70:                                               ; preds = %68, %65
  %71 = phi ptr [ %10, %68 ], [ %66, %65 ]
  br label %8

72:                                               ; preds = %68, %65, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %73 = load i16, ptr %4, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr %4, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %75 = load volatile ptr, ptr %2, align 8
  %76 = icmp eq ptr %75, %2
  br i1 %76, label %87, label %77

77:                                               ; preds = %77, %72
  %78 = phi ptr [ %85, %77 ], [ %75, %72 ]
  %79 = getelementptr i8, ptr %78, i32 -176
  %80 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %78, align 4
  %83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 4
  store volatile ptr %82, ptr %81, align 4
  store volatile ptr %78, ptr %78, align 4
  store ptr %78, ptr %80, align 4
  call fastcc void @evict(ptr noundef %79) #18
  %84 = call i32 @__cond_resched() #18
  %85 = load volatile ptr, ptr %2, align 8
  %86 = icmp eq ptr %85, %2
  br i1 %86, label %87, label %77

87:                                               ; preds = %77, %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @invalidate_inodes(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 55
  call void @_raw_spin_lock(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 56
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %85, label %9

9:                                                ; preds = %82, %2
  %10 = phi i32 [ %83, %82 ], [ 0, %2 ]
  %11 = phi ptr [ %14, %82 ], [ %7, %2 ]
  br label %12

12:                                               ; preds = %79, %9
  %13 = phi ptr [ %80, %79 ], [ %11, %9 ]
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %13, i32 -80
  call void @_raw_spin_lock(ptr noundef %15) #18
  %16 = getelementptr i8, ptr %13, i32 -60
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 56
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %21 = load i16, ptr %15, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %82

23:                                               ; preds = %12
  %24 = and i32 %17, 2055
  %25 = icmp eq i32 %24, 0
  %26 = or i1 %25, %1
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %28 = load i16, ptr %15, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %82

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %13, i32 40
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %35 = load i16, ptr %15, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %82

37:                                               ; preds = %30
  %38 = or i32 %17, 32
  store i32 %38, ptr %16, align 4
  %39 = getelementptr i8, ptr %13, i32 -156
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 49
  %42 = getelementptr i8, ptr %13, i32 -8
  %43 = call zeroext i1 @list_lru_del(ptr noundef %41, ptr noundef %42) #18
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %46 = call i32 @llvm.read_register.i32(metadata !0) #18
  %47 = inttoptr i32 %46 to ptr
  %48 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #13, !srcloc !12
  %49 = add i32 %48, ptrtoint (ptr @nr_unused to i32)
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  store i32 %52, ptr %50, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #18, !srcloc !13
  br label %53

53:                                               ; preds = %44, %37
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %54 = load i16, ptr %15, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %15, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %42, ptr %57, align 4
  store ptr %56, ptr %42, align 4
  %58 = getelementptr i8, ptr %13, i32 -4
  store ptr %3, ptr %58, align 4
  store volatile ptr %42, ptr %3, align 8
  %59 = tail call ptr @llvm.thread.pointer() #18
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 2
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %53
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %64 = load i16, ptr %5, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %66 = call i32 @__cond_resched() #18
  %67 = load volatile ptr, ptr %3, align 8
  %68 = icmp eq ptr %67, %3
  br i1 %68, label %79, label %69

69:                                               ; preds = %69, %63
  %70 = phi ptr [ %77, %69 ], [ %67, %63 ]
  %71 = getelementptr i8, ptr %70, i32 -176
  %72 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %70, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store volatile ptr %70, ptr %70, align 4
  store ptr %70, ptr %72, align 4
  call fastcc void @evict(ptr noundef %71) #18
  %76 = call i32 @__cond_resched() #18
  %77 = load volatile ptr, ptr %3, align 8
  %78 = icmp eq ptr %77, %3
  br i1 %78, label %79, label %69

79:                                               ; preds = %69, %63
  call void @_raw_spin_lock(ptr noundef %5) #18
  %80 = load ptr, ptr %6, align 4
  %81 = icmp eq ptr %80, %6
  br i1 %81, label %85, label %12

82:                                               ; preds = %53, %34, %27, %20
  %83 = phi i32 [ %10, %20 ], [ 1, %34 ], [ 1, %27 ], [ %10, %53 ]
  %84 = icmp eq ptr %14, %6
  br i1 %84, label %85, label %9

85:                                               ; preds = %82, %79, %2
  %86 = phi i32 [ 0, %2 ], [ %10, %79 ], [ %83, %82 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %87 = load i16, ptr %5, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %89 = load volatile ptr, ptr %3, align 8
  %90 = icmp eq ptr %89, %3
  br i1 %90, label %101, label %91

91:                                               ; preds = %91, %85
  %92 = phi ptr [ %99, %91 ], [ %89, %85 ]
  %93 = getelementptr i8, ptr %92, i32 -176
  %94 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %92, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %95, ptr %97, align 4
  store volatile ptr %96, ptr %95, align 4
  store volatile ptr %92, ptr %92, align 4
  store ptr %92, ptr %94, align 4
  call fastcc void @evict(ptr noundef %93) #18
  %98 = call i32 @__cond_resched() #18
  %99 = load volatile ptr, ptr %3, align 8
  %100 = icmp eq ptr %99, %3
  br i1 %100, label %101, label %91

101:                                              ; preds = %91, %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prune_icache_sb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 49
  %6 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %11 = call i32 @list_lru_walk_one(ptr noundef %5, i32 noundef %7, ptr noundef %9, ptr noundef nonnull @inode_lru_isolate, ptr noundef nonnull %3, ptr noundef %10) #18
  %12 = load volatile ptr, ptr %3, align 8
  %13 = icmp eq ptr %12, %3
  br i1 %13, label %24, label %14

14:                                               ; preds = %14, %2
  %15 = phi ptr [ %22, %14 ], [ %12, %2 ]
  %16 = getelementptr i8, ptr %15, i32 -176
  %17 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %15, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %15, ptr %15, align 4
  store ptr %15, ptr %17, align 4
  call fastcc void @evict(ptr noundef %16) #18
  %21 = call i32 @__cond_resched() #18
  %22 = load volatile ptr, ptr %3, align 8
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %14

24:                                               ; preds = %14, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @inode_lru_isolate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 {
  %5 = getelementptr i8, ptr %0, i32 -176
  %6 = getelementptr i8, ptr %0, i32 -72
  %7 = tail call i32 @_raw_spin_trylock(ptr noundef %6) #18
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %92, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 48
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %0, i32 -52
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -257
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %0, i32 72
  %20 = and i32 %15, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %33

22:                                               ; preds = %13, %9
  tail call void @list_lru_isolate(ptr noundef %1, ptr noundef %0) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %23 = load i16, ptr %6, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #13, !srcloc !12
  %29 = add i32 %28, ptrtoint (ptr @nr_unused to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #18, !srcloc !13
  br label %92

33:                                               ; preds = %18
  store i32 0, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %34 = load i16, ptr %6, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %92

36:                                               ; preds = %18
  %37 = tail call i32 @inode_has_buffers(ptr noundef %5) #18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %0, i32 84
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %39, %36
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #18, !srcloc !9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #18, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %45 = load i16, ptr %6, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %47 = load i16, ptr %2, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %49 = tail call i32 @remove_inode_buffers(ptr noundef %5) #18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %72, label %51

51:                                               ; preds = %43
  %52 = tail call i32 @invalidate_mapping_pages(ptr noundef %19, i32 noundef 0, i32 noundef -1) #18
  %53 = tail call ptr @llvm.thread.pointer() #18
  %54 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 131072
  %57 = icmp eq i32 %56, 0
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #13
  %61 = select i1 %57, i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 36) to i32), i32 ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 38) to i32)
  %62 = add i32 %60, %61
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, %52
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.task_struct, ptr %53, i32 0, i32 116
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %51
  %70 = load i32, ptr %67, align 4
  %71 = add i32 %70, %52
  store i32 %71, ptr %67, align 4
  br label %72

72:                                               ; preds = %69, %51, %43
  tail call void @iput(ptr noundef %5)
  tail call void @_raw_spin_lock(ptr noundef %2) #18
  br label %92

73:                                               ; preds = %39
  %74 = load i32, ptr %14, align 4
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77, !prof !14

77:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 874, i32 noundef 9, ptr noundef null) #18
  %78 = load i32, ptr %14, align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %78, %77 ], [ %74, %73 ]
  %81 = or i32 %80, 32
  store i32 %81, ptr %14, align 4
  tail call void @list_lru_isolate_move(ptr noundef %1, ptr noundef %0, ptr noundef %3) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %82 = load i16, ptr %6, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %84 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %85 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %86 = inttoptr i32 %85 to ptr
  %87 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %86) #13, !srcloc !12
  %88 = add i32 %87, ptrtoint (ptr @nr_unused to i32)
  %89 = inttoptr i32 %88 to ptr
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, -1
  store i32 %91, ptr %89, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %84) #18, !srcloc !13
  br label %92

92:                                               ; preds = %79, %72, %33, %22, %4
  %93 = phi i32 [ 0, %22 ], [ 2, %33 ], [ 4, %72 ], [ 0, %79 ], [ 3, %4 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_next_ino() #3 {
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !38
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #13, !srcloc !12
  %4 = add i32 %3, ptrtoint (ptr @last_ino to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1023
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13, !prof !16

9:                                                ; preds = %0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @get_next_ino.shared_last_ino) #18, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @get_next_ino.shared_last_ino, ptr nonnull @get_next_ino.shared_last_ino, i32 1024, ptr nonnull elementtype(i32) @get_next_ino.shared_last_ino) #18, !srcloc !23
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !24
  %12 = add i32 %11, -1024
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i32 [ %12, %9 ], [ %6, %0 ]
  %15 = add i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !16

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ 1, %17 ], [ %15, %13 ]
  store i32 %19, ptr %5, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !39
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @new_inode_pseudo(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc ptr @alloc_inode(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %5) #18
  %6 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 23
  store i32 0, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %7 = load i16, ptr %5, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %9 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 30
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 30, i32 1
  store ptr %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_inode(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr %4(ptr noundef %0) #18
  br label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @inode_cachep, align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3264) #18
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %8 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %69, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41
  %16 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 19
  store i8 %18, ptr %19, align 2
  %20 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 4
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 34
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #18, !srcloc !9
  %22 = tail call i64 asm sideeffect "@ atomic64_set\0A1:\09ldrexd\09$0, ${0:H}, [$2]\0A\09strexd\09$0, $3, ${3:H}, [$2]\0A\09teq\09$0, #0\0A\09bne\091b", "=&r,=*Qo,r,r,~{cc}"(ptr elementtype(i64) %21, ptr %21, i64 0) #18, !srcloc !10
  %23 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 35
  store volatile i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 7
  store ptr @inode_init_always.empty_iops, ptr %24, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 39
  store ptr @inode_init_always.no_open_fops, ptr %25, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 11
  store i32 1, ptr %27, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 1
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 17
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, i16 0, i16 8
  store i16 %32, ptr %28, align 2
  %33 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 2
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 3
  store i32 0, ptr %34, align 8
  %35 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 37
  store volatile i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 13
  store i64 0, ptr %36, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 20
  store i8 0, ptr %37, align 1
  %38 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 21
  store i64 0, ptr %38, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 18
  store i16 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 43
  %41 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 12
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 25
  store i32 0, ptr %42, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 17
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 24
  store i64 0, ptr %40, align 4
  tail call void @__init_rwsem(ptr noundef %44, ptr noundef nonnull @.str, ptr noundef nonnull @inode_init_always.__key) #18
  %45 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 36
  store volatile i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 9
  store ptr @empty_aops, ptr %46, align 4
  store ptr %12, ptr %15, align 4
  %47 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 10
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 11
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 4
  store volatile i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 3
  store i32 17829066, ptr %50, align 4
  %51 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 14
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 8
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 41, i32 2
  tail call void @__init_rwsem(ptr noundef %53, ptr noundef nonnull @.str.2, ptr noundef nonnull @inode_init_always.__key.1) #18
  %54 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 47
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 9
  store ptr %15, ptr %55, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 32
  store ptr null, ptr %56, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 6
  store ptr inttoptr (i32 -1 to ptr), ptr %57, align 4
  %58 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 5
  store ptr inttoptr (i32 -1 to ptr), ptr %58, align 8
  %59 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 45
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 40
  store ptr null, ptr %60, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %62 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %63 = inttoptr i32 %62 to ptr
  %64 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %63) #13, !srcloc !12
  %65 = add i32 %64, ptrtoint (ptr @nr_inodes to i32)
  %66 = inttoptr i32 %65 to ptr
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #18, !srcloc !13
  br label %69

69:                                               ; preds = %14, %11
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @new_inode(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 55
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !9
  %3 = tail call fastcc ptr @alloc_inode(ptr noundef %0) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 23
  store i32 0, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %8 = load i16, ptr %6, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %10 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 30
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 30, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %14) #18
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 56
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %10, ptr %18, align 4
  store ptr %17, ptr %10, align 4
  store ptr %16, ptr %11, align 4
  store volatile ptr %10, ptr %16, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %23

23:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlock_new_inode(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !16

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1086, i32 noundef 9, ptr noundef null) #18
  %8 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %4, %1 ]
  %11 = and i32 %10, -32777
  store i32 %11, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !40
  tail call void @wake_up_bit(ptr noundef %3, i32 noundef 3) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %12 = load i16, ptr %2, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @discard_new_inode(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !16

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1098, i32 noundef 9, ptr noundef null) #18
  %8 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ %4, %1 ]
  %11 = and i32 %10, -9
  store i32 %11, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !41
  tail call void @wake_up_bit(ptr noundef %3, i32 noundef 3) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %12 = load i16, ptr %2, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void @iput(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iput(ptr noundef %0) #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %145, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15, !prof !14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 35
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  %11 = tail call i32 @_atomic_dec_and_lock(ptr noundef %9, ptr noundef %10) #18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %145, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 11
  br label %16

15:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1760, 0\0A.popsection", ""() #18, !srcloc !42
  unreachable

16:                                               ; preds = %42, %13
  %17 = load i32, ptr %14, align 8
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %4, align 4
  %20 = and i32 %19, 2048
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %18, i1 true, i1 %21
  br i1 %22, label %45, label %23

23:                                               ; preds = %16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #18, !srcloc !9
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #18, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %25 = load i16, ptr %10, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_writeback_lazytime_iput, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = tail call ptr @llvm.thread.pointer() #18
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = lshr i32 %32, 5
  %34 = getelementptr i32, ptr @__cpu_online_mask, i32 %33
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %32, 31
  %37 = shl nuw i32 1, %36
  %38 = and i32 %37, %35
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !43
  %41 = tail call i32 @__traceiter_writeback_lazytime_iput(ptr noundef null, ptr noundef nonnull %0) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !44
  br label %42

42:                                               ; preds = %40, %29, %23
  tail call void @__mark_inode_dirty(ptr noundef nonnull %0, i32 noundef 1) #18
  %43 = tail call i32 @_atomic_dec_and_lock(ptr noundef %9, ptr noundef %10) #18
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %145, label %16

45:                                               ; preds = %16
  %46 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = and i32 %19, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !14

52:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1711, i32 noundef 9, ptr noundef null) #18
  br label %53

53:                                               ; preds = %52, %45
  %54 = getelementptr inbounds %struct.super_operations, ptr %49, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i32 %55(ptr noundef nonnull %0) #18
  br label %67

59:                                               ; preds = %53
  %60 = load i32, ptr %14, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %110, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  %66 = zext i1 %65 to i32
  br label %67

67:                                               ; preds = %62, %57
  %68 = phi i32 [ %58, %57 ], [ %66, %62 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %110

70:                                               ; preds = %67
  %71 = load i32, ptr %4, align 4
  %72 = and i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.super_block, ptr %47, i32 0, i32 10
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1073741824
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %112, label %79

79:                                               ; preds = %74
  %80 = and i32 %71, 2231
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %79
  %83 = load volatile i32, ptr %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load ptr, ptr %46, align 4
  %87 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 10
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 1073741824
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.super_block, ptr %86, i32 0, i32 49
  %93 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29
  %94 = tail call zeroext i1 @list_lru_add(ptr noundef %92, ptr noundef %93) #18
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %97 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %98 = inttoptr i32 %97 to ptr
  %99 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %98) #13, !srcloc !12
  %100 = add i32 %99, ptrtoint (ptr @nr_unused to i32)
  %101 = inttoptr i32 %100 to ptr
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %96) #18, !srcloc !13
  br label %107

104:                                              ; preds = %91
  %105 = load i32, ptr %4, align 4
  %106 = or i32 %105, 256
  store i32 %106, ptr %4, align 4
  br label %107

107:                                              ; preds = %104, %95, %85, %82, %79
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %108 = load i16, ptr %10, align 4
  %109 = add i16 %108, 1
  store i16 %109, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %145

110:                                              ; preds = %67, %59
  %111 = load i32, ptr %4, align 4
  br label %123

112:                                              ; preds = %74, %70
  %113 = or i32 %71, 16
  store volatile i32 %113, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %114 = load i16, ptr %10, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %116 = tail call i32 @write_inode_now(ptr noundef nonnull %0, i32 noundef 1) #18
  tail call void @_raw_spin_lock(ptr noundef %10) #18
  %117 = load i32, ptr %4, align 4
  %118 = and i32 %117, 8
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120, !prof !14

120:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1735, i32 noundef 9, ptr noundef null) #18
  br label %121

121:                                              ; preds = %120, %112
  %122 = and i32 %117, -17
  br label %123

123:                                              ; preds = %121, %110
  %124 = phi i32 [ %111, %110 ], [ %122, %121 ]
  %125 = or i32 %124, 32
  store volatile i32 %125, ptr %4, align 4
  %126 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %142, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr %46, align 4
  %131 = getelementptr inbounds %struct.super_block, ptr %130, i32 0, i32 49
  %132 = tail call zeroext i1 @list_lru_del(ptr noundef %131, ptr noundef %126) #18
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %135 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %136 = inttoptr i32 %135 to ptr
  %137 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %136) #13, !srcloc !12
  %138 = add i32 %137, ptrtoint (ptr @nr_unused to i32)
  %139 = inttoptr i32 %138 to ptr
  %140 = load i32, ptr %139, align 4
  %141 = add i32 %140, -1
  store i32 %141, ptr %139, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %134) #18, !srcloc !13
  br label %142

142:                                              ; preds = %133, %129, %123
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %143 = load i16, ptr %10, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call fastcc void @evict(ptr noundef nonnull %0) #18
  br label %145

145:                                              ; preds = %142, %107, %42, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lock_two_nondirectories(ptr noundef %0, ptr noundef %1) #3 {
  %3 = icmp ugt ptr %0, %1
  %4 = select i1 %3, ptr %0, ptr %1
  %5 = select i1 %3, ptr %1, ptr %0
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i16, ptr %5, align 8
  %9 = and i16 %8, -4096
  %10 = icmp eq i16 %9, 16384
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @down_write(ptr noundef %12) #18
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = icmp eq ptr %4, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = load i16, ptr %4, align 8
  %17 = and i16 %16, -4096
  %18 = icmp eq i16 %17, 16384
  %19 = icmp eq ptr %4, %5
  %20 = or i1 %19, %18
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  tail call void @down_write(ptr noundef %22) #18
  br label %23

23:                                               ; preds = %21, %15, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlock_two_nondirectories(ptr noundef %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 8
  %6 = and i16 %5, -4096
  %7 = icmp eq i16 %6, 16384
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @up_write(ptr noundef %9) #18
  br label %10

10:                                               ; preds = %8, %4, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = load i16, ptr %1, align 8
  %14 = and i16 %13, -4096
  %15 = icmp eq i16 %14, 16384
  %16 = icmp eq ptr %1, %0
  %17 = or i1 %16, %15
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  tail call void @up_write(ptr noundef %19) #18
  br label %20

20:                                               ; preds = %18, %12, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @inode_insert5(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr noundef %4) #3 {
  %6 = load ptr, ptr @inode_hashtable, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = mul i32 %9, %1
  %11 = add i32 %1, 1640531527
  %12 = lshr i32 %11, 6
  %13 = xor i32 %10, %12
  %14 = xor i32 %13, 1640531527
  %15 = load i32, ptr @i_hash_shift, align 4
  %16 = lshr i32 %14, %15
  %17 = xor i32 %16, %13
  %18 = load i32, ptr @i_hash_mask, align 4
  %19 = and i32 %17, %18
  %20 = getelementptr %struct.hlist_head, ptr %6, i32 %19
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %25 = load ptr, ptr %7, align 4
  %26 = tail call fastcc ptr @find_inode(ptr noundef %25, ptr noundef %20, ptr noundef %2, ptr noundef %4)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28, !prof !14

28:                                               ; preds = %44, %5
  %29 = phi ptr [ %46, %44 ], [ %26, %5 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %30 = load i16, ptr @inode_hash_lock, align 64
  %31 = add i16 %30, 1
  store i16 %31, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %32 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %83, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 23
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %34, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #18
  br label %40

40:                                               ; preds = %38, %33
  %41 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 27, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %83, !prof !16

44:                                               ; preds = %40
  tail call void @iput(ptr noundef nonnull %29)
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %45 = load ptr, ptr %7, align 4
  %46 = tail call fastcc ptr @find_inode(ptr noundef %45, ptr noundef %20, ptr noundef %2, ptr noundef %4)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %28, !prof !14

48:                                               ; preds = %44, %5
  %49 = icmp eq ptr %3, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  %51 = tail call i32 %3(ptr noundef %0, ptr noundef %4) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %79, !prof !14

53:                                               ; preds = %50, %48
  %54 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %54) #18
  %55 = load i32, ptr %21, align 4
  %56 = or i32 %55, 8
  store i32 %56, ptr %21, align 4
  %57 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27
  %58 = load ptr, ptr %20, align 4
  store ptr %58, ptr %57, align 4
  %59 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  store volatile ptr %20, ptr %59, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  store volatile ptr %57, ptr %20, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.hlist_node, ptr %58, i32 0, i32 1
  store volatile ptr %57, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %53
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %64 = load i16, ptr %54, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %54, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br i1 %24, label %66, label %79

66:                                               ; preds = %63
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.super_block, ptr %67, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %68) #18
  %69 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 30
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.super_block, ptr %70, i32 0, i32 56
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %69, ptr %73, align 4
  store ptr %72, ptr %69, align 4
  %74 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 30, i32 1
  store ptr %71, ptr %74, align 4
  store volatile ptr %69, ptr %71, align 4
  %75 = load ptr, ptr %7, align 4
  %76 = getelementptr inbounds %struct.super_block, ptr %75, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %77 = load i16, ptr %76, align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr %76, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %79

79:                                               ; preds = %66, %63, %50
  %80 = phi ptr [ %0, %63 ], [ %0, %66 ], [ null, %50 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %81 = load i16, ptr @inode_hash_lock, align 64
  %82 = add i16 %81, 1
  store i16 %82, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %83

83:                                               ; preds = %79, %40, %28
  %84 = phi ptr [ %80, %79 ], [ %29, %40 ], [ null, %28 ]
  ret ptr %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_inode(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #3 {
  %5 = alloca %struct.wait_bit_queue_entry, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  %8 = getelementptr i8, ptr %6, i32 -160
  %9 = icmp eq ptr %8, null
  %10 = or i1 %7, %9
  br i1 %10, label %65, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wait_bit_key, ptr %5, i32 0, i32 1
  %13 = getelementptr inbounds %struct.wait_bit_key, ptr %5, i32 0, i32 2
  %14 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 2
  %17 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 3
  %18 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %5, i32 0, i32 1, i32 3, i32 1
  br label %19

19:                                               ; preds = %63, %11
  %20 = phi ptr [ %8, %11 ], [ %64, %63 ]
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = call i32 %2(ptr noundef nonnull %20, ptr noundef %3) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %28) #18
  %29 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 23
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 48
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  store ptr %29, ptr %5, align 4
  store i32 3, ptr %12, align 4
  store i32 0, ptr %13, align 4
  store i32 0, ptr %14, align 4
  %34 = tail call ptr @llvm.thread.pointer() #18
  store ptr %34, ptr %15, align 4
  store ptr @wake_bit_function, ptr %16, align 4
  store ptr %17, ptr %17, align 4
  store ptr %17, ptr %18, align 4
  %35 = call ptr @bit_waitqueue(ptr noundef %29, i32 noundef 3) #18
  call void @prepare_to_wait(ptr noundef %35, ptr noundef %14, i32 noundef 2) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %36 = load i16, ptr %28, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %38 = load i16, ptr @inode_hash_lock, align 64
  %39 = add i16 %38, 1
  store i16 %39, ptr @inode_hash_lock, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  call void @schedule() #18
  call void @finish_wait(ptr noundef %35, ptr noundef %14) #18
  call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  %40 = load ptr, ptr %1, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -160
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %65, label %63

45:                                               ; preds = %27
  %46 = and i32 %30, 32768
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48, !prof !14

48:                                               ; preds = %45
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %49 = load i16, ptr %28, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %65

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 35
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #18, !srcloc !9
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #18, !srcloc !21
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %54 = load i16, ptr %28, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %65

56:                                               ; preds = %24, %19
  %57 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 27
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  %60 = getelementptr i8, ptr %58, i32 -160
  %61 = icmp eq ptr %60, null
  %62 = or i1 %59, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %56, %33
  %64 = phi ptr [ %60, %56 ], [ %42, %33 ]
  br label %19

65:                                               ; preds = %56, %51, %48, %33, %4
  %66 = phi ptr [ inttoptr (i32 -116 to ptr), %48 ], [ %20, %51 ], [ null, %4 ], [ null, %56 ], [ null, %33 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iget5_locked(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = tail call ptr @ilookup5(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @alloc_inode(ptr noundef %0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 23
  store i32 0, ptr %12, align 4
  %13 = tail call ptr @inode_insert5(ptr noundef nonnull %9, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %14 = icmp eq ptr %13, %9
  br i1 %14, label %16, label %15, !prof !14

15:                                               ; preds = %11
  tail call fastcc void @destroy_inode(ptr noundef nonnull %9)
  br label %16

16:                                               ; preds = %15, %11, %8, %5
  %17 = phi ptr [ %6, %5 ], [ %13, %15 ], [ %9, %11 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ilookup5(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 {
  %5 = ptrtoint ptr %0 to i32
  %6 = mul i32 %5, %1
  %7 = add i32 %1, 1640531527
  %8 = lshr i32 %7, 6
  %9 = xor i32 %8, %6
  %10 = xor i32 %9, 1640531527
  br label %11

11:                                               ; preds = %36, %4
  %12 = load ptr, ptr @inode_hashtable, align 4
  %13 = load i32, ptr @i_hash_shift, align 4
  %14 = lshr i32 %10, %13
  %15 = xor i32 %14, %9
  %16 = load i32, ptr @i_hash_mask, align 4
  %17 = and i32 %15, %16
  %18 = getelementptr %struct.hlist_head, ptr %12, i32 %17
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %19 = tail call fastcc ptr @find_inode(ptr noundef %0, ptr noundef %18, ptr noundef %2, ptr noundef %3) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %20 = load i16, ptr @inode_hash_lock, align 64
  %21 = add i16 %20, 1
  store i16 %21, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %22 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %23 = icmp eq ptr %19, null
  %24 = or i1 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 23
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %26, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #18
  br label %32

32:                                               ; preds = %30, %25
  %33 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 27, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37, !prof !16

36:                                               ; preds = %32
  tail call void @iput(ptr noundef nonnull %19)
  br label %11

37:                                               ; preds = %32, %11
  %38 = phi ptr [ %19, %32 ], [ null, %11 ]
  ret ptr %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @destroy_inode(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !14

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #18, !srcloc !45
  unreachable

10:                                               ; preds = %1
  tail call void @__destroy_inode(ptr noundef %0)
  %11 = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %21

17:                                               ; preds = %10
  tail call void %12(ptr noundef %0) #18
  %18 = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %14
  %22 = phi ptr [ %16, %14 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  tail call void @call_rcu(ptr noundef %24, ptr noundef nonnull @i_callback) #18
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @iget_locked(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @inode_hashtable, align 4
  %4 = ptrtoint ptr %0 to i32
  %5 = mul i32 %4, %1
  %6 = add i32 %1, 1640531527
  %7 = lshr i32 %6, 6
  %8 = xor i32 %7, %5
  %9 = xor i32 %8, 1640531527
  %10 = load i32, ptr @i_hash_shift, align 4
  %11 = lshr i32 %9, %10
  %12 = xor i32 %11, %8
  %13 = load i32, ptr @i_hash_mask, align 4
  %14 = and i32 %12, %13
  %15 = getelementptr %struct.hlist_head, ptr %3, i32 %14
  br label %16

16:                                               ; preds = %34, %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %17 = tail call fastcc ptr @find_inode_fast(ptr noundef %0, ptr noundef %15, i32 noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %18 = load i16, ptr @inode_hash_lock, align 64
  %19 = add i16 %18, 1
  store i16 %19, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %20 = icmp eq ptr %17, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %109, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %24, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #18
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %109, !prof !16

34:                                               ; preds = %105, %30
  %35 = phi ptr [ %40, %105 ], [ %17, %30 ]
  tail call void @iput(ptr noundef nonnull %35)
  br label %16

36:                                               ; preds = %16
  %37 = tail call fastcc ptr @alloc_inode(ptr noundef %0)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %109, label %39

39:                                               ; preds = %36
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %40 = tail call fastcc ptr @find_inode_fast(ptr noundef %0, ptr noundef %15, i32 noundef %1)
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 10
  store i32 %1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %44) #18
  %45 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 23
  store i32 8, ptr %45, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 27
  %47 = load ptr, ptr %15, align 4
  store ptr %47, ptr %46, align 4
  %48 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 27, i32 1
  store volatile ptr %15, ptr %48, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  store volatile ptr %46, ptr %15, align 4
  %49 = icmp eq ptr %47, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  store volatile ptr %46, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %53 = load i16, ptr %44, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %44, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %55 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %57) #18
  %58 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 30
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr inbounds %struct.super_block, ptr %59, i32 0, i32 56
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %58, ptr %62, align 4
  store ptr %61, ptr %58, align 4
  %63 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 30, i32 1
  store ptr %60, ptr %63, align 4
  store volatile ptr %58, ptr %60, align 4
  %64 = load ptr, ptr %55, align 4
  %65 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %66 = load i16, ptr %65, align 4
  %67 = add i16 %66, 1
  store i16 %67, ptr %65, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %68 = load i16, ptr @inode_hash_lock, align 64
  %69 = add i16 %68, 1
  store i16 %69, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %109

70:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %71 = load i16, ptr @inode_hash_lock, align 64
  %72 = add i16 %71, 1
  store i16 %72, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %73 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.super_block, ptr %74, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 29
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %81, label %80, !prof !14

80:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #18, !srcloc !45
  unreachable

81:                                               ; preds = %70
  tail call void @__destroy_inode(ptr noundef nonnull %37) #18
  %82 = getelementptr inbounds %struct.super_operations, ptr %76, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.super_operations, ptr %76, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  br label %92

88:                                               ; preds = %81
  tail call void %83(ptr noundef nonnull %37) #18
  %89 = getelementptr inbounds %struct.super_operations, ptr %76, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %88, %85
  %93 = phi ptr [ %87, %85 ], [ %90, %88 ]
  %94 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 39
  store ptr %93, ptr %94, align 8
  %95 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 32
  tail call void @call_rcu(ptr noundef %95, ptr noundef nonnull @i_callback) #18
  br label %96

96:                                               ; preds = %92, %88
  %97 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %109, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 23
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %99, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #18
  br label %105

105:                                              ; preds = %103, %98
  %106 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 27, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %34, label %109, !prof !16

109:                                              ; preds = %105, %96, %52, %36, %30, %21
  %110 = phi ptr [ %37, %52 ], [ null, %96 ], [ %40, %105 ], [ null, %36 ], [ %17, %30 ], [ null, %21 ]
  ret ptr %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_inode_fast(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca %struct.wait_bit_queue_entry, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  %7 = getelementptr i8, ptr %5, i32 -160
  %8 = icmp eq ptr %7, null
  %9 = or i1 %6, %8
  br i1 %9, label %65, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wait_bit_key, ptr %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.wait_bit_key, ptr %4, i32 0, i32 2
  %13 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %4, i32 0, i32 1
  %14 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %4, i32 0, i32 1, i32 1
  %15 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %4, i32 0, i32 1, i32 2
  %16 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %4, i32 0, i32 1, i32 3
  %17 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %4, i32 0, i32 1, i32 3, i32 1
  br label %18

18:                                               ; preds = %63, %10
  %19 = phi ptr [ %7, %10 ], [ %64, %63 ]
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %28) #18
  %29 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 23
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 48
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  store ptr %29, ptr %4, align 4
  store i32 3, ptr %11, align 4
  store i32 0, ptr %12, align 4
  store i32 0, ptr %13, align 4
  %34 = tail call ptr @llvm.thread.pointer() #18
  store ptr %34, ptr %14, align 4
  store ptr @wake_bit_function, ptr %15, align 4
  store ptr %16, ptr %16, align 4
  store ptr %16, ptr %17, align 4
  %35 = call ptr @bit_waitqueue(ptr noundef %29, i32 noundef 3) #18
  call void @prepare_to_wait(ptr noundef %35, ptr noundef %13, i32 noundef 2) #18
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %36 = load i16, ptr %28, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %38 = load i16, ptr @inode_hash_lock, align 64
  %39 = add i16 %38, 1
  store i16 %39, ptr @inode_hash_lock, align 64
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  call void @schedule() #18
  call void @finish_wait(ptr noundef %35, ptr noundef %13) #18
  call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  %40 = load ptr, ptr %1, align 4
  %41 = icmp eq ptr %40, null
  %42 = getelementptr i8, ptr %40, i32 -160
  %43 = icmp eq ptr %42, null
  %44 = or i1 %41, %43
  br i1 %44, label %65, label %63

45:                                               ; preds = %27
  %46 = and i32 %30, 32768
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48, !prof !14

48:                                               ; preds = %45
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %49 = load i16, ptr %28, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %65

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 35
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #18, !srcloc !9
  %53 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #18, !srcloc !21
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %54 = load i16, ptr %28, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %65

56:                                               ; preds = %23, %18
  %57 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 27
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  %60 = getelementptr i8, ptr %58, i32 -160
  %61 = icmp eq ptr %60, null
  %62 = or i1 %59, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %56, %33
  %64 = phi ptr [ %60, %56 ], [ %42, %33 ]
  br label %18

65:                                               ; preds = %56, %51, %48, %33, %3
  %66 = phi ptr [ inttoptr (i32 -116 to ptr), %48 ], [ %19, %51 ], [ null, %3 ], [ null, %56 ], [ null, %33 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iunique(ptr noundef %0, i32 noundef %1) #3 {
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !46
  tail call void @_raw_spin_lock(ptr noundef nonnull @iunique.iunique_lock) #18
  %3 = load ptr, ptr @inode_hashtable, align 4
  %4 = ptrtoint ptr %0 to i32
  %5 = load i32, ptr @i_hash_shift, align 4
  %6 = load i32, ptr @i_hash_mask, align 4
  %7 = load i32, ptr @iunique.counter, align 4
  %8 = add i32 %1, 1
  %9 = icmp ugt i32 %7, %1
  %10 = select i1 %9, i32 %7, i32 %8
  %11 = add i32 %10, 1
  %12 = mul i32 %10, %4
  %13 = add i32 %10, 1640531527
  %14 = lshr i32 %13, 6
  %15 = xor i32 %14, %12
  %16 = xor i32 %15, 1640531527
  %17 = lshr i32 %16, %5
  %18 = xor i32 %17, %15
  %19 = and i32 %18, %6
  %20 = getelementptr %struct.hlist_head, ptr %3, i32 %19
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  %23 = getelementptr i8, ptr %21, i32 -160
  %24 = icmp eq ptr %23, null
  %25 = or i1 %22, %24
  br i1 %25, label %64, label %44

26:                                               ; preds = %53
  %27 = icmp ugt i32 %46, %1
  %28 = select i1 %27, i32 %46, i32 %8
  %29 = add i32 %28, 1
  %30 = mul i32 %28, %4
  %31 = add i32 %28, 1640531527
  %32 = lshr i32 %31, 6
  %33 = xor i32 %32, %30
  %34 = xor i32 %33, 1640531527
  %35 = lshr i32 %34, %5
  %36 = xor i32 %35, %33
  %37 = and i32 %36, %6
  %38 = getelementptr %struct.hlist_head, ptr %3, i32 %37
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = getelementptr i8, ptr %39, i32 -160
  %42 = icmp eq ptr %41, null
  %43 = or i1 %40, %42
  br i1 %43, label %64, label %44

44:                                               ; preds = %26, %2
  %45 = phi ptr [ %41, %26 ], [ %23, %2 ]
  %46 = phi i32 [ %29, %26 ], [ %11, %2 ]
  %47 = phi i32 [ %28, %26 ], [ %10, %2 ]
  br label %48

48:                                               ; preds = %57, %44
  %49 = phi ptr [ %61, %57 ], [ %45, %44 ]
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, %47
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %26, label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 27
  %59 = load volatile ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  %61 = getelementptr i8, ptr %59, i32 -160
  %62 = icmp eq ptr %61, null
  %63 = or i1 %60, %62
  br i1 %63, label %64, label %48

64:                                               ; preds = %57, %26, %2
  %65 = phi i32 [ %10, %2 ], [ %47, %57 ], [ %28, %26 ]
  %66 = phi i32 [ %11, %2 ], [ %46, %57 ], [ %29, %26 ]
  store i32 %66, ptr @iunique.counter, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %67 = load i16, ptr @iunique.iunique_lock, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr @iunique.iunique_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !47
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @igrab(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #18
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 48
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #18, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #18, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %10 = load i16, ptr %2, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %15

12:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %13 = load i16, ptr %2, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ null, %12 ], [ %0, %7 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ilookup5_nowait(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 {
  %5 = load ptr, ptr @inode_hashtable, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = mul i32 %6, %1
  %8 = add i32 %1, 1640531527
  %9 = lshr i32 %8, 6
  %10 = xor i32 %9, %7
  %11 = xor i32 %10, 1640531527
  %12 = load i32, ptr @i_hash_shift, align 4
  %13 = lshr i32 %11, %12
  %14 = xor i32 %13, %10
  %15 = load i32, ptr @i_hash_mask, align 4
  %16 = and i32 %14, %15
  %17 = getelementptr %struct.hlist_head, ptr %5, i32 %16
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %18 = tail call fastcc ptr @find_inode(ptr noundef %0, ptr noundef %17, ptr noundef %2, ptr noundef %3)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %19 = load i16, ptr @inode_hash_lock, align 64
  %20 = add i16 %19, 1
  store i16 %20, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %21 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %22 = select i1 %21, ptr null, ptr %18
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ilookup(ptr noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @inode_hashtable, align 4
  %4 = ptrtoint ptr %0 to i32
  %5 = mul i32 %4, %1
  %6 = add i32 %1, 1640531527
  %7 = lshr i32 %6, 6
  %8 = xor i32 %7, %5
  %9 = xor i32 %8, 1640531527
  %10 = load i32, ptr @i_hash_shift, align 4
  %11 = lshr i32 %9, %10
  %12 = xor i32 %11, %8
  %13 = load i32, ptr @i_hash_mask, align 4
  %14 = and i32 %12, %13
  %15 = getelementptr %struct.hlist_head, ptr %3, i32 %14
  br label %16

16:                                               ; preds = %34, %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %17 = tail call fastcc ptr @find_inode_fast(ptr noundef %0, ptr noundef %15, i32 noundef %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %18 = load i16, ptr @inode_hash_lock, align 64
  %19 = add i16 %18, 1
  store i16 %19, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %20 = icmp eq ptr %17, null
  %21 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %24, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #18
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35, !prof !16

34:                                               ; preds = %30
  tail call void @iput(ptr noundef nonnull %17)
  br label %16

35:                                               ; preds = %30, %16
  %36 = phi ptr [ %17, %30 ], [ null, %16 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_inode_nowait(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 {
  %5 = load ptr, ptr @inode_hashtable, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = mul i32 %6, %1
  %8 = add i32 %1, 1640531527
  %9 = lshr i32 %8, 6
  %10 = xor i32 %9, %7
  %11 = xor i32 %10, 1640531527
  %12 = load i32, ptr @i_hash_shift, align 4
  %13 = lshr i32 %11, %12
  %14 = xor i32 %13, %10
  %15 = load i32, ptr @i_hash_mask, align 4
  %16 = and i32 %14, %15
  %17 = getelementptr %struct.hlist_head, ptr %5, i32 %16
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -160
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %38, label %23

23:                                               ; preds = %30, %4
  %24 = phi ptr [ %34, %30 ], [ %20, %4 ]
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call i32 %2(ptr noundef nonnull %24, i32 noundef %1, ptr noundef %3) #18
  switch i32 %29, label %37 [
    i32 0, label %30
    i32 1, label %38
  ]

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 27
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  %34 = getelementptr i8, ptr %32, i32 -160
  %35 = icmp eq ptr %34, null
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %23

37:                                               ; preds = %30, %28
  br label %38

38:                                               ; preds = %37, %28, %4
  %39 = phi ptr [ null, %4 ], [ null, %37 ], [ %24, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %40 = load i16, ptr @inode_hash_lock, align 64
  %41 = add i16 %40, 1
  store i16 %41, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_inode_rcu(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 {
  %5 = load ptr, ptr @inode_hashtable, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = mul i32 %6, %1
  %8 = add i32 %1, 1640531527
  %9 = lshr i32 %8, 6
  %10 = xor i32 %9, %7
  %11 = xor i32 %10, 1640531527
  %12 = load i32, ptr @i_hash_shift, align 4
  %13 = lshr i32 %11, %12
  %14 = xor i32 %13, %10
  %15 = load i32, ptr @i_hash_mask, align 4
  %16 = and i32 %14, %15
  %17 = getelementptr %struct.hlist_head, ptr %5, i32 %16
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  %20 = getelementptr i8, ptr %18, i32 -160
  %21 = icmp eq ptr %20, null
  %22 = or i1 %19, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %36, %4
  %24 = phi ptr [ %40, %36 ], [ %20, %4 ]
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 23
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, 48
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = tail call i32 %2(ptr noundef nonnull %24, ptr noundef %3) #18
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33, %28, %23
  %37 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 27
  %38 = load volatile ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %38, i32 -160
  %41 = icmp eq ptr %40, null
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %23

43:                                               ; preds = %36, %33, %4
  %44 = phi ptr [ null, %4 ], [ null, %36 ], [ %24, %33 ]
  ret ptr %44
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_inode_by_ino_rcu(ptr noundef %0, i32 noundef %1) #9 {
  %3 = load ptr, ptr @inode_hashtable, align 4
  %4 = ptrtoint ptr %0 to i32
  %5 = mul i32 %4, %1
  %6 = add i32 %1, 1640531527
  %7 = lshr i32 %6, 6
  %8 = xor i32 %7, %5
  %9 = xor i32 %8, 1640531527
  %10 = load i32, ptr @i_hash_shift, align 4
  %11 = lshr i32 %9, %10
  %12 = xor i32 %11, %8
  %13 = load i32, ptr @i_hash_mask, align 4
  %14 = and i32 %12, %13
  %15 = getelementptr %struct.hlist_head, ptr %3, i32 %14
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = getelementptr i8, ptr %16, i32 -160
  %19 = icmp eq ptr %18, null
  %20 = or i1 %17, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %35, %2
  %22 = phi ptr [ %39, %35 ], [ %18, %2 ]
  %23 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 23
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %32, 48
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30, %26, %21
  %36 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 27
  %37 = load volatile ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  %39 = getelementptr i8, ptr %37, i32 -160
  %40 = icmp eq ptr %39, null
  %41 = or i1 %38, %40
  br i1 %41, label %42, label %21

42:                                               ; preds = %35, %30, %2
  %43 = phi ptr [ null, %2 ], [ null, %35 ], [ %22, %30 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @insert_inode_locked(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr @inode_hashtable, align 4
  %7 = ptrtoint ptr %3 to i32
  %8 = mul i32 %5, %7
  %9 = add i32 %5, 1640531527
  %10 = lshr i32 %9, 6
  %11 = xor i32 %10, %8
  %12 = xor i32 %11, 1640531527
  %13 = load i32, ptr @i_hash_shift, align 4
  %14 = lshr i32 %12, %13
  %15 = xor i32 %14, %11
  %16 = load i32, ptr @i_hash_mask, align 4
  %17 = and i32 %15, %16
  %18 = getelementptr %struct.hlist_head, ptr %6, i32 %17
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr i8, ptr %19, i32 -160
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %51, label %24

24:                                               ; preds = %49, %1
  %25 = phi ptr [ %50, %49 ], [ %21, %1 ]
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, %5
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %3
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %34) #18
  %35 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 23
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 48
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %67, label %39

39:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %40 = load i16, ptr %34, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %42

42:                                               ; preds = %39, %29, %24
  %43 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 27
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  %46 = getelementptr i8, ptr %44, i32 -160
  %47 = icmp eq ptr %46, null
  %48 = or i1 %45, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %92, %42
  %50 = phi ptr [ %46, %42 ], [ %95, %92 ]
  br label %24

51:                                               ; preds = %92, %42, %1
  %52 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %52) #18
  %53 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 32776
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27
  %57 = load ptr, ptr %18, align 4
  store ptr %57, ptr %56, align 4
  %58 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  store volatile ptr %18, ptr %58, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !29
  store volatile ptr %56, ptr %18, align 4
  %59 = icmp eq ptr %57, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  store volatile ptr %56, ptr %61, align 4
  br label %62

62:                                               ; preds = %60, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %63 = load i16, ptr %52, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %65 = load i16, ptr @inode_hash_lock, align 64
  %66 = add i16 %65, 1
  store i16 %66, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %98

67:                                               ; preds = %33
  %68 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 23
  %69 = and i32 %36, 32768
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71, !prof !14

71:                                               ; preds = %67
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %72 = load i16, ptr %34, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %74 = load i16, ptr @inode_hash_lock, align 64
  %75 = add i16 %74, 1
  store i16 %75, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %98

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %77) #18, !srcloc !9
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %77, ptr %77, i32 1, ptr elementtype(i32) %77) #18, !srcloc !21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %79 = load i16, ptr %34, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %81 = load i16, ptr @inode_hash_lock, align 64
  %82 = add i16 %81, 1
  store i16 %82, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %83 = load volatile i32, ptr %68, align 4
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %76
  %87 = tail call i32 @out_of_line_wait_on_bit(ptr noundef %68, i32 noundef 3, ptr noundef nonnull @bit_wait, i32 noundef 2) #18
  br label %88

88:                                               ; preds = %86, %76
  %89 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 27, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  tail call void @iput(ptr noundef nonnull %25)
  br i1 %91, label %92, label %98, !prof !14

92:                                               ; preds = %88
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %93 = load ptr, ptr %18, align 4
  %94 = icmp eq ptr %93, null
  %95 = getelementptr i8, ptr %93, i32 -160
  %96 = icmp eq ptr %95, null
  %97 = or i1 %94, %96
  br i1 %97, label %51, label %49

98:                                               ; preds = %88, %71, %62
  %99 = phi i32 [ -16, %71 ], [ 0, %62 ], [ -16, %88 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @insert_inode_locked4(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #3 {
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 32768
  store i32 %7, ptr %5, align 4
  %8 = tail call ptr @inode_insert5(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3)
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @iput(ptr noundef %8)
  br label %11

11:                                               ; preds = %10, %4
  %12 = phi i32 [ -16, %10 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @generic_delete_inode(ptr nocapture readnone %0) #4 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_atomic_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bmap(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.address_space, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.address_space_operations, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = tail call i64 %8(ptr noundef %4, i64 noundef %11) #18
  store i64 %12, ptr %1, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i32 [ 0, %10 ], [ -22, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_update_time(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = and i32 %2, 7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %10, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  br label %11

11:                                               ; preds = %9, %6
  %12 = and i32 %2, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %15, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  br label %16

16:                                               ; preds = %14, %11
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %20, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  br label %21

21:                                               ; preds = %19, %16
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 33554432
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 2048
  br label %29

29:                                               ; preds = %21, %3
  %30 = phi i32 [ 0, %3 ], [ %28, %21 ]
  %31 = and i32 %2, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !48
  %34 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 33
  %35 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %34, ptr elementtype(i64) %34) #18, !srcloc !49
  br label %36

36:                                               ; preds = %47, %33
  %37 = phi i64 [ %35, %33 ], [ %48, %47 ]
  %38 = and i64 %37, 1
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = add i64 %37, 2
  %42 = and i64 %41, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !50
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %34) #18, !srcloc !9
  br label %43

43:                                               ; preds = %43, %40
  %44 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %34, ptr %34, i64 %37, i64 %42, ptr elementtype(i64) %34) #18, !srcloc !51
  %45 = extractvalue { i32, i64 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %43

47:                                               ; preds = %43
  %48 = extractvalue { i32, i64 } %44, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !52
  %49 = icmp eq i64 %48, %37
  br i1 %49, label %50, label %36, !prof !14

50:                                               ; preds = %47, %36
  %51 = xor i1 %39, true
  %52 = zext i1 %51 to i32
  %53 = or i32 %30, %52
  br label %54

54:                                               ; preds = %50, %29
  %55 = phi i32 [ %30, %29 ], [ %53, %50 ]
  tail call void @__mark_inode_dirty(ptr noundef %0, i32 noundef %55) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inode_update_time(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode_operations, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 @generic_update_time(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ 0, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @atime_needs_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca %struct.timespec64, align 8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %99

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 3
  %11 = load volatile ptr, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !53
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %99, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %99, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1025
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %19
  %27 = and i32 %23, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i16, ptr %1, align 8
  %31 = and i16 %30, -4096
  %32 = icmp eq i16 %31, 16384
  br i1 %32, label %99, label %33

33:                                               ; preds = %29, %26
  %34 = getelementptr inbounds %struct.vfsmount, ptr %4, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %99

38:                                               ; preds = %33
  %39 = and i32 %35, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i16, ptr %1, align 8
  %43 = and i16 %42, -4096
  %44 = icmp eq i16 %43, 16384
  br i1 %44, label %99, label %45

45:                                               ; preds = %41, %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %1)
  %46 = load i64, ptr %3, align 8
  %47 = getelementptr inbounds i8, ptr %3, i32 8
  %48 = load i64, ptr %47, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  %49 = load i32, ptr %34, align 4
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %54 = load i64, ptr %53, align 8
  br label %91

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %57 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %58 = load i64, ptr %56, align 8
  %59 = load i64, ptr %57, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = icmp sgt i64 %58, %59
  br i1 %62, label %91, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15, i32 1
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14, i32 1
  %67 = load i32, ptr %66, align 8
  %68 = sub i32 %65, %67
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %91, label %70

70:                                               ; preds = %63, %55
  %71 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %72 = load i64, ptr %71, align 8
  %73 = icmp slt i64 %72, %59
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = icmp sgt i64 %72, %59
  br i1 %75, label %91, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16, i32 1
  %78 = load i32, ptr %77, align 8
  %79 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14, i32 1
  %80 = load i32, ptr %79, align 8
  %81 = sub i32 %78, %80
  %82 = icmp slt i32 %81, 0
  %83 = sub i64 %46, %59
  %84 = trunc i64 %83 to i32
  %85 = icmp slt i32 %84, 86400
  %86 = select i1 %82, i1 %85, i1 false
  br i1 %86, label %99, label %91

87:                                               ; preds = %70
  %88 = sub i64 %46, %59
  %89 = trunc i64 %88 to i32
  %90 = icmp slt i32 %89, 86400
  br i1 %90, label %99, label %91

91:                                               ; preds = %87, %76, %74, %63, %61, %52
  %92 = phi i64 [ %54, %52 ], [ %59, %74 ], [ %59, %61 ], [ %59, %76 ], [ %59, %63 ], [ %59, %87 ]
  %93 = icmp eq i64 %92, %46
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14, i32 1
  %96 = load i32, ptr %95, align 8
  %97 = trunc i64 %48 to i32
  %98 = icmp ne i32 %96, %97
  br label %99

99:                                               ; preds = %94, %91, %87, %76, %41, %33, %29, %19, %15, %9, %2
  %100 = phi i1 [ false, %2 ], [ false, %15 ], [ false, %19 ], [ false, %29 ], [ false, %33 ], [ false, %41 ], [ false, %87 ], [ false, %9 ], [ false, %76 ], [ true, %91 ], [ %98, %94 ]
  ret i1 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @current_time(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !30
  call void @ktime_get_coarse_real_ts64(ptr noundef nonnull %3) #18
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !16

7:                                                ; preds = %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2401, i32 noundef 9, ptr noundef nonnull @.str.15) #18
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  br label %43

8:                                                ; preds = %2
  %9 = load i64, ptr %3, align 8
  %10 = getelementptr inbounds [2 x i64], ptr %3, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %12 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 28
  %13 = load i32, ptr %12, align 32, !noalias !54
  %14 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 29
  %15 = load i64, ptr %14, align 8, !noalias !54
  %16 = call i64 @llvm.smax.i64(i64 %9, i64 %15) #18
  %17 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 30
  %18 = load i64, ptr %17, align 16, !noalias !54
  %19 = call i64 @llvm.smin.i64(i64 %16, i64 %18) #18
  %20 = icmp sle i64 %18, %16
  %21 = icmp eq i64 %19, %15
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %25, !prof !16

23:                                               ; preds = %8
  %24 = and i64 %11, -4294967296
  br label %25

25:                                               ; preds = %23, %8
  %26 = phi i64 [ %24, %23 ], [ %11, %8 ]
  switch i32 %13, label %29 [
    i32 1, label %40
    i32 1000000000, label %27
  ]

27:                                               ; preds = %25
  %28 = and i64 %26, -4294967296
  br label %40

29:                                               ; preds = %25
  %30 = add i32 %13, -2
  %31 = icmp ult i32 %30, 999999998
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = trunc i64 %26 to i32
  %34 = urem i32 %33, %13
  %35 = sub i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = and i64 %26, -4294967296
  %38 = or i64 %37, %36
  br label %40

39:                                               ; preds = %29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2379, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %13) #18, !noalias !54
  br label %40

40:                                               ; preds = %39, %32, %27, %25
  %41 = phi i64 [ %26, %25 ], [ %28, %27 ], [ %38, %32 ], [ %26, %39 ]
  store i64 %19, ptr %0, align 8, !alias.scope !54
  %42 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %41, ptr %42, align 8, !alias.scope !54
  br label %43

43:                                               ; preds = %40, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @touch_atime(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !30
  %9 = tail call zeroext i1 @atime_needs_update(ptr noundef %0, ptr noundef %8)
  br i1 %9, label %10, label %82

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.super_block, ptr %12, i32 0, i32 26, i32 2
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !57
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28, !prof !14

16:                                               ; preds = %10
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %18 = getelementptr %struct.super_block, ptr %12, i32 0, i32 26, i32 2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %22 = inttoptr i32 %21 to ptr
  %23 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %22) #13, !srcloc !12
  %24 = add i32 %23, %20
  %25 = inttoptr i32 %24 to ptr
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #18, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !58
  br label %30

28:                                               ; preds = %10
  %29 = tail call zeroext i1 @__percpu_down_read(ptr noundef %13, i1 noundef zeroext true) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !58
  br i1 %29, label %30, label %82

30:                                               ; preds = %28, %16
  %31 = tail call i32 @__mnt_want_write(ptr noundef %4) #18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %8)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  %34 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 7
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.inode_operations, ptr %35, i32 0, i32 17
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 %37(ptr noundef %8, ptr noundef nonnull %2, i32 noundef 1) #18
  br label %49

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 16, i1 false) #18
  %43 = load ptr, ptr %11, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 33554432
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 1, i32 2048
  tail call void @__mark_inode_dirty(ptr noundef %8, i32 noundef %48) #18
  br label %49

49:                                               ; preds = %41, %39
  call void @__mnt_drop_write(ptr noundef %4) #18
  br label %50

50:                                               ; preds = %49, %30
  %51 = load ptr, ptr %11, align 4
  %52 = getelementptr %struct.super_block, ptr %51, i32 0, i32 26, i32 2
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !59
  %53 = load volatile i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67, !prof !14

55:                                               ; preds = %50
  %56 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %57 = getelementptr %struct.super_block, ptr %51, i32 0, i32 26, i32 2, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = call i32 @llvm.read_register.i32(metadata !0) #18
  %61 = inttoptr i32 %60 to ptr
  %62 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %61) #13, !srcloc !12
  %63 = add i32 %62, %59
  %64 = inttoptr i32 %63 to ptr
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #18, !srcloc !13
  br label %81

67:                                               ; preds = %50
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !60
  %68 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !11
  %69 = getelementptr %struct.super_block, ptr %51, i32 0, i32 26, i32 2, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = call i32 @llvm.read_register.i32(metadata !0) #18
  %73 = inttoptr i32 %72 to ptr
  %74 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %73) #13, !srcloc !12
  %75 = add i32 %74, %71
  %76 = inttoptr i32 %75 to ptr
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, -1
  store i32 %78, ptr %76, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %68) #18, !srcloc !13
  %79 = getelementptr %struct.super_block, ptr %51, i32 0, i32 26, i32 2, i32 0, i32 2
  %80 = call i32 @rcuwait_wake_up(ptr noundef %79) #18
  br label %81

81:                                               ; preds = %67, %55
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !61
  br label %82

82:                                               ; preds = %81, %28, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @should_remove_suid(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = load i16, ptr %3, align 8
  %5 = zext i16 %4 to i32
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 1032
  %9 = icmp eq i32 %8, 1032
  br i1 %7, label %10, label %11, !prof !14

10:                                               ; preds = %1
  br i1 %9, label %12, label %22, !prof !16

11:                                               ; preds = %1
  br i1 %9, label %12, label %14, !prof !16

12:                                               ; preds = %11, %10
  %13 = phi i32 [ 6144, %11 ], [ 4096, %10 ]
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ %13, %12 ], [ 2048, %11 ]
  %16 = tail call zeroext i1 @capable(i32 noundef 4) #18
  %17 = xor i1 %16, true
  %18 = and i32 %5, 61440
  %19 = icmp eq i32 %18, 32768
  %20 = select i1 %17, i1 %19, i1 false
  %21 = select i1 %20, i32 %15, i32 0
  br label %22

22:                                               ; preds = %14, %10
  %23 = phi i32 [ %21, %14 ], [ 0, %10 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dentry_needs_remove_privs(ptr noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4096
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %35

8:                                                ; preds = %1
  %9 = load i16, ptr %3, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 2048
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %10, 1032
  %14 = icmp eq i32 %13, 1032
  br i1 %12, label %15, label %16, !prof !14

15:                                               ; preds = %8
  br i1 %14, label %17, label %27, !prof !16

16:                                               ; preds = %8
  br i1 %14, label %17, label %19, !prof !16

17:                                               ; preds = %16, %15
  %18 = phi i32 [ 6144, %16 ], [ 4096, %15 ]
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ %18, %17 ], [ 2048, %16 ]
  %21 = tail call zeroext i1 @capable(i32 noundef 4) #18
  %22 = xor i1 %21, true
  %23 = and i32 %10, 61440
  %24 = icmp eq i32 %23, 32768
  %25 = select i1 %22, i1 %24, i1 false
  %26 = select i1 %25, i32 %20, i32 0
  br label %27

27:                                               ; preds = %19, %15
  %28 = phi i32 [ %26, %19 ], [ 0, %15 ]
  %29 = tail call i32 @cap_inode_need_killpriv(ptr noundef %0) #18
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = icmp eq i32 %29, 0
  %33 = or i32 %28, 16384
  %34 = select i1 %32, i32 %28, i32 %33
  br label %35

35:                                               ; preds = %31, %27, %1
  %36 = phi i32 [ %34, %31 ], [ 0, %1 ], [ %29, %27 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @file_remove_privs(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca %struct.iattr, align 8
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 67108864
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry_operations, ptr %12, i32 0, i32 12
  %14 = load ptr, ptr %13, align 16
  %15 = tail call ptr %14(ptr noundef %4, ptr noundef %10) #18
  br label %16

16:                                               ; preds = %8, %1
  %17 = phi ptr [ %15, %8 ], [ %4, %1 ]
  %18 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %16
  %25 = load i16, ptr %19, align 8
  %26 = and i16 %25, -4096
  %27 = icmp eq i16 %26, -32768
  br i1 %27, label %28, label %92

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 4096
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %28
  %36 = load i16, ptr %30, align 8
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 2048
  %39 = icmp eq i32 %38, 0
  %40 = and i32 %37, 1032
  %41 = icmp eq i32 %40, 1032
  br i1 %39, label %42, label %43, !prof !14

42:                                               ; preds = %35
  br i1 %41, label %44, label %54, !prof !16

43:                                               ; preds = %35
  br i1 %41, label %44, label %46, !prof !16

44:                                               ; preds = %43, %42
  %45 = phi i32 [ 6144, %43 ], [ 4096, %42 ]
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ %45, %44 ], [ 2048, %43 ]
  %48 = tail call zeroext i1 @capable(i32 noundef 4) #18
  %49 = xor i1 %48, true
  %50 = and i32 %37, 61440
  %51 = icmp eq i32 %50, 32768
  %52 = select i1 %49, i1 %51, i1 false
  %53 = select i1 %52, i32 %47, i32 0
  br label %54

54:                                               ; preds = %46, %42
  %55 = phi i32 [ %53, %46 ], [ 0, %42 ]
  %56 = tail call i32 @cap_inode_need_killpriv(ptr noundef %17) #18
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = or i32 %55, 16384
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %92, label %65

63:                                               ; preds = %58
  %64 = icmp eq i32 %55, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %55, %63 ], [ %61, %60 ]
  %67 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.vfsmount, ptr %68, i32 0, i32 3
  %70 = load volatile ptr, ptr %69, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !53
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i32 80, i1 false) #18, !annotation !30
  %71 = or i32 %66, 512
  store i32 %71, ptr %2, align 8
  %72 = call i32 @notify_change(ptr noundef %70, ptr noundef %17, ptr noundef nonnull %2, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #18
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %65, %63, %28
  %75 = load i16, ptr %19, align 8
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 2048
  %78 = icmp ne i32 %77, 0
  %79 = and i32 %76, 1032
  %80 = icmp eq i32 %79, 1032
  %81 = or i1 %78, %80
  br i1 %81, label %92, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.super_block, ptr %84, i32 0, i32 10
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 268435456
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = load i32, ptr %20, align 4
  %91 = or i32 %90, 4096
  store i32 %91, ptr %20, align 4
  br label %92

92:                                               ; preds = %89, %82, %74, %65, %60, %54, %24, %16
  %93 = phi i32 [ 0, %24 ], [ 0, %16 ], [ %61, %60 ], [ %72, %65 ], [ 0, %74 ], [ 0, %82 ], [ 0, %89 ], [ %56, %54 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @file_update_time(ptr noundef %0) #3 {
  %2 = alloca %struct.timespec64, align 8
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %67

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef %5)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  %11 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15
  %12 = load i64, ptr %11, align 8
  %13 = load i64, ptr %2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %10
  br label %22

22:                                               ; preds = %21, %15
  %23 = phi i32 [ 2, %21 ], [ 0, %15 ]
  %24 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, %13
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16, i32 1
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.timespec64, ptr %2, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %27, %22
  %34 = or i32 %23, 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i32 [ %34, %33 ], [ %23, %27 ]
  %37 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8388608
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 33
  %45 = tail call i64 asm sideeffect "@ atomic64_read\0A\09ldrexd\09$0, ${0:H}, [$1]", "=&r,r,*Qo"(ptr %44, ptr elementtype(i64) %44) #18, !srcloc !49
  %46 = and i64 %45, 1
  %47 = icmp eq i64 %46, 0
  %48 = or i32 %36, 8
  br i1 %47, label %49, label %51

49:                                               ; preds = %43, %35
  %50 = icmp eq i32 %36, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %49, %43
  %52 = phi i32 [ %36, %49 ], [ %48, %43 ]
  %53 = tail call i32 @__mnt_want_write_file(ptr noundef %0) #18
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 7
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.inode_operations, ptr %57, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = call i32 %59(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %52) #18
  br label %65

63:                                               ; preds = %55
  %64 = call i32 @generic_update_time(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %52) #18
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ 0, %63 ]
  call void @__mnt_drop_write_file(ptr noundef %0) #18
  br label %67

67:                                               ; preds = %65, %51, %49, %1
  %68 = phi i32 [ %66, %65 ], [ 0, %1 ], [ 0, %49 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mnt_want_write_file(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mnt_drop_write_file(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @file_modified(ptr noundef %0) #3 {
  %2 = tail call i32 @file_remove_privs(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !14

9:                                                ; preds = %4
  %10 = tail call i32 @file_update_time(ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %4, %1
  %12 = phi i32 [ %10, %9 ], [ %2, %1 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @inode_needs_sync(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load i16, ptr %0, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, 16384
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = and i32 %5, 144
  %19 = icmp eq i32 %18, 0
  %20 = and i32 %10, 65
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %17, %8, %1
  %25 = phi i32 [ 0, %23 ], [ 1, %8 ], [ 1, %1 ], [ 1, %17 ]
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_ihash_entries(ptr noundef %0) #2 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = call i32 @simple_strtoul(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #18
  store i32 %5, ptr @ihash_entries, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @inode_init_early() local_unnamed_addr #2 section ".init.text" {
  %1 = load i32, ptr @ihash_entries, align 4
  %2 = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef %1, i32 noundef 14, i32 noundef 5, ptr noundef nonnull @i_hash_shift, ptr noundef nonnull @i_hash_mask, i32 noundef 0, i32 noundef 0) #18
  store ptr %2, ptr @inode_hashtable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @inode_init() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.12, i32 noundef 392, i32 noundef 0, i32 noundef 1441792, ptr noundef nonnull @init_once) #18
  store ptr %1, ptr @inode_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(392) %0, i8 0, i64 392, i1 false) #18
  store volatile ptr %2, ptr %2, align 4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1, i32 1
  store i32 33, ptr %11, align 4
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1, i32 2
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 6
  tail call void @__init_rwsem(ptr noundef %13, ptr noundef nonnull @.str.20, ptr noundef nonnull @__address_space_init_once.__key) #18
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 12
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 5
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 5, i32 1
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  store i32 0, ptr %19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_special_inode(ptr nocapture noundef %0, i16 noundef zeroext %1, i32 noundef %2) #3 {
  store i16 %1, ptr %0, align 8
  %4 = and i16 %1, -4096
  switch i16 %4, label %13 [
    i16 8192, label %5
    i16 24576, label %8
    i16 4096, label %11
    i16 -16384, label %21
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @def_chr_fops, ptr %6, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  store i32 %2, ptr %7, align 4
  br label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @def_blk_fops, ptr %9, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 12
  store i32 %2, ptr %10, align 4
  br label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr @pipefifo_fops, ptr %12, align 8
  br label %21

13:                                               ; preds = %3
  %14 = zext i16 %1 to i32
  %15 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 33
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %14, ptr noundef %17, i32 noundef %19) #19
  br label %21

21:                                               ; preds = %13, %11, %8, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_init_owner(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i16 noundef zeroext %3) #3 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %6 = tail call ptr @llvm.thread.pointer() #18
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 83
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cred, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %5, align 4
  %11 = icmp eq ptr %2, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  %13 = load i16, ptr %2, align 8
  %14 = and i16 %13, 1024
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %18 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 3
  %19 = load i32, ptr %18, align 8
  store i32 %19, ptr %17, align 8
  %20 = zext i16 %3 to i32
  %21 = and i32 %20, 61440
  %22 = icmp eq i32 %21, 16384
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = or i16 %3, 1024
  br label %42

25:                                               ; preds = %16
  %26 = and i32 %20, 1032
  %27 = icmp eq i32 %26, 1032
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32, ptr %18, align 8
  %30 = insertvalue [1 x i32] poison, i32 %29, 0
  %31 = tail call i32 @in_group_p([1 x i32] %30) #18
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4) #18
  %35 = and i16 %3, -1025
  %36 = select i1 %34, i16 %3, i16 %35
  br label %42

37:                                               ; preds = %12, %4
  %38 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %39 = load ptr, ptr %7, align 8
  %40 = getelementptr inbounds %struct.cred, ptr %39, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  store i32 %41, ptr %38, align 8
  br label %42

42:                                               ; preds = %37, %33, %28, %25, %23
  %43 = phi i16 [ %24, %23 ], [ %3, %28 ], [ %3, %25 ], [ %3, %37 ], [ %36, %33 ]
  store i16 %43, ptr %1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @inode_owner_or_capable(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @llvm.thread.pointer() #18
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 83
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %4
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = icmp eq i32 %4, -1
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef 3) #18
  br i1 %14, label %16, label %15

15:                                               ; preds = %13, %11
  br label %16

16:                                               ; preds = %15, %13, %2
  %17 = phi i1 [ false, %15 ], [ true, %2 ], [ true, %13 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_dio_wait(ptr noundef %0) #3 {
  %2 = alloca %struct.wait_bit_queue_entry, align 4
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 36
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %8 = tail call ptr @bit_waitqueue(ptr noundef %7, i32 noundef 9) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  store ptr %7, ptr %2, align 4
  %9 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 1
  store i32 9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.wait_bit_key, ptr %2, i32 0, i32 2
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 1
  %13 = tail call ptr @llvm.thread.pointer() #18
  store ptr %13, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 2
  store ptr @wake_bit_function, ptr %14, align 4
  %15 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3
  store ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %2, i32 0, i32 1, i32 3, i32 1
  store ptr %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %21, %6
  call void @prepare_to_wait(ptr noundef %8, ptr noundef %11, i32 noundef 2) #18
  %18 = load volatile i32, ptr %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @schedule() #18
  br label %21

21:                                               ; preds = %20, %17
  %22 = load volatile i32, ptr %3, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %21
  call void @finish_wait(ptr noundef %8, ptr noundef %11) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_set_flags(ptr noundef %0, i32 noundef %1, i32 noundef %2) #3 {
  %4 = xor i32 %2, -1
  %5 = and i32 %4, %1
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @inode_set_flags.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %3
  store i1 true, ptr @inode_set_flags.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2342, i32 noundef 9, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  br label %13

13:                                               ; preds = %21, %11
  %14 = load volatile i32, ptr %12, align 4
  %15 = and i32 %14, %4
  %16 = or i32 %15, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !62
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #18, !srcloc !9
  br label %17

17:                                               ; preds = %17, %13
  %18 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %12, i32 %14, i32 %16) #18, !srcloc !63
  %19 = extractvalue { i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %17

21:                                               ; preds = %17
  %22 = extractvalue { i32, i32 } %18, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !64
  %23 = icmp eq i32 %22, %14
  br i1 %23, label %24, label %13

24:                                               ; preds = %21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @inode_nohighmem(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.address_space, ptr %3, i32 0, i32 3
  store i32 1051840, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @timestamp_truncate(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %0, [2 x i64] %1, ptr nocapture noundef readonly %2) #3 {
  %4 = extractvalue [2 x i64] %1, 0
  %5 = extractvalue [2 x i64] %1, 1
  %6 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 28
  %9 = load i32, ptr %8, align 32
  %10 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 29
  %11 = load i64, ptr %10, align 8
  %12 = tail call i64 @llvm.smax.i64(i64 %4, i64 %11)
  %13 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 30
  %14 = load i64, ptr %13, align 16
  %15 = tail call i64 @llvm.smin.i64(i64 %12, i64 %14)
  %16 = icmp sle i64 %14, %12
  %17 = icmp eq i64 %15, %11
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %19, label %21, !prof !16

19:                                               ; preds = %3
  %20 = and i64 %5, -4294967296
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i64 [ %20, %19 ], [ %5, %3 ]
  switch i32 %9, label %25 [
    i32 1, label %36
    i32 1000000000, label %23
  ]

23:                                               ; preds = %21
  %24 = and i64 %22, -4294967296
  br label %36

25:                                               ; preds = %21
  %26 = add i32 %9, -2
  %27 = icmp ult i32 %26, 999999998
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = trunc i64 %22 to i32
  %30 = urem i32 %29, %9
  %31 = sub i32 %29, %30
  %32 = zext i32 %31 to i64
  %33 = and i64 %22, -4294967296
  %34 = or i64 %33, %32
  br label %36

35:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 2379, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %9) #18
  br label %36

36:                                               ; preds = %35, %28, %23, %21
  %37 = phi i64 [ %22, %21 ], [ %24, %23 ], [ %34, %28 ], [ %22, %35 ]
  store i64 %15, ptr %0, align 8
  %38 = getelementptr inbounds i8, ptr %0, i32 8
  store i64 %37, ptr %38, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_coarse_real_ts64(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_nr_inodes(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %8 = icmp ult i32 %7, %6
  br i1 %8, label %9, label %20

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %18, %9 ], [ %7, %5 ]
  %11 = phi i32 [ %17, %9 ], [ 0, %5 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @nr_inodes to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #17
  %19 = icmp ult i32 %18, %6
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %5
  %21 = phi i32 [ 0, %5 ], [ %17, %9 ]
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #18
  store i32 %22, ptr @inodes_stat, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %36

25:                                               ; preds = %25, %20
  %26 = phi i32 [ %34, %25 ], [ %23, %20 ]
  %27 = phi i32 [ %33, %25 ], [ 0, %20 ]
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @nr_unused to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %27
  %34 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @__cpu_possible_mask) #17
  %35 = icmp ult i32 %34, %6
  br i1 %35, label %25, label %36

36:                                               ; preds = %25, %20
  %37 = phi i32 [ 0, %20 ], [ %33, %25 ]
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #18
  store i32 %38, ptr getelementptr inbounds (%struct.inodes_stat_t, ptr @inodes_stat, i32 0, i32 1), align 4
  %39 = tail call i32 @proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fsnotify_inode_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @evict(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11, !prof !16

10:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 647, 0\0A.popsection", ""() #18, !srcloc !65
  unreachable

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 29
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %16, label %15, !prof !14

15:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 648, 0\0A.popsection", ""() #18, !srcloc !66
  unreachable

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 28
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @inode_io_list_del(ptr noundef %0) #18
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 30
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 55
  tail call void @_raw_spin_lock(ptr noundef %27) #18
  %28 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 30, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %22, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store volatile ptr %22, ptr %22, align 4
  store ptr %22, ptr %28, align 4
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 55
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %36

36:                                               ; preds = %25, %21
  tail call void @inode_wait_for_writeback(ptr noundef %0) #18
  %37 = getelementptr inbounds %struct.super_operations, ptr %5, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void %38(ptr noundef %0) #18
  br label %70

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %42) #18
  %43 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %43) #18
  %44 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 7
  %45 = load i32, ptr %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !14

47:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 611, 0\0A.popsection", ""() #18, !srcloc !31
  unreachable

48:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %49 = load i16, ptr %43, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #18, !srcloc !32
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  %51 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41, i32 13
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %55, label %54, !prof !14

54:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #18, !srcloc !34
  unreachable

55:                                               ; preds = %48
  %56 = load i32, ptr %6, align 4
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60, !prof !16

59:                                               ; preds = %55
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 622, 0\0A.popsection", ""() #18, !srcloc !35
  unreachable

60:                                               ; preds = %55
  %61 = and i32 %56, 64
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63, !prof !14

63:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #18, !srcloc !36
  unreachable

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 31
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %69, label %68, !prof !14

68:                                               ; preds = %64
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #18, !srcloc !37
  unreachable

69:                                               ; preds = %64
  store i32 96, ptr %6, align 4
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i16, ptr %0, align 8
  %72 = and i16 %71, -4096
  %73 = icmp eq i16 %72, 8192
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @cd_forget(ptr noundef %0) #18
  br label %79

79:                                               ; preds = %78, %74, %70
  %80 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %101, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 27
  %85 = icmp eq ptr %81, %84
  br i1 %85, label %101, label %86

86:                                               ; preds = %83
  tail call void @_raw_spin_lock(ptr noundef nonnull @inode_hash_lock) #18
  %87 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %87) #18
  %88 = load ptr, ptr %80, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %84, align 4
  store volatile ptr %91, ptr %88, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.hlist_node, ptr %91, i32 0, i32 1
  store volatile ptr %88, ptr %94, align 4
  br label %95

95:                                               ; preds = %93, %90
  store volatile ptr null, ptr %80, align 4
  br label %96

96:                                               ; preds = %95, %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %97 = load i16, ptr %87, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr %87, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %99 = load i16, ptr @inode_hash_lock, align 64
  %100 = add i16 %99, 1
  store i16 %100, ptr @inode_hash_lock, align 64
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  br label %101

101:                                              ; preds = %96, %83, %79
  %102 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %102) #18
  tail call void @wake_up_bit(ptr noundef %6, i32 noundef 3) #18
  %103 = load i32, ptr %6, align 4
  %104 = icmp eq i32 %103, 96
  br i1 %104, label %106, label %105, !prof !14

105:                                              ; preds = %101
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 676, 0\0A.popsection", ""() #18, !srcloc !67
  unreachable

106:                                              ; preds = %101
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !25
  %107 = load i16, ptr %102, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %109 = load ptr, ptr %2, align 4
  %110 = getelementptr inbounds %struct.super_block, ptr %109, i32 0, i32 6
  %111 = load ptr, ptr %110, align 4
  %112 = load volatile ptr, ptr %12, align 4
  %113 = icmp eq ptr %112, %12
  br i1 %113, label %115, label %114, !prof !14

114:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 307, 0\0A.popsection", ""() #18, !srcloc !45
  unreachable

115:                                              ; preds = %106
  tail call void @__destroy_inode(ptr noundef %0) #18
  %116 = getelementptr inbounds %struct.super_operations, ptr %111, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.super_operations, ptr %111, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  br label %126

122:                                              ; preds = %115
  tail call void %117(ptr noundef %0) #18
  %123 = getelementptr inbounds %struct.super_operations, ptr %111, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126

126:                                              ; preds = %122, %119
  %127 = phi ptr [ %121, %119 ], [ %124, %122 ]
  %128 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 39
  store ptr %127, ptr %128, align 8
  %129 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  tail call void @call_rcu(ptr noundef %129, ptr noundef nonnull @i_callback) #18
  br label %130

130:                                              ; preds = %126, %122
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_io_list_del(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_wait_for_writeback(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cd_forget(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_inode_buffers(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @invalidate_mapping_pages(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @i_callback(ptr noundef %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -200
  %3 = getelementptr i8, ptr %0, i32 40
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #18
  br label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr @inode_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef %2) #18
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_bit_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bit_waitqueue(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_writeback_lazytime_iput(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @write_inode_now(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__percpu_down_read(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_need_killpriv(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @notify_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }

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
!9 = !{i64 891213, i64 2148381184, i64 2148381210, i64 2148381257, i64 2148381279, i64 2148381307, i64 2148381327}
!10 = !{i64 881072, i64 881092, i64 881120, i64 881150, i64 881166}
!11 = !{i64 796891, i64 796952}
!12 = !{i64 815591}
!13 = !{i64 799908}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2154450566, i64 2154451041, i64 2154450603, i64 2154450659, i64 2154450693, i64 2154450717, i64 2154450758, i64 2154450779, i64 2154450807, i64 2154450841}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{i64 2148394956, i64 2148394982, i64 2148395011, i64 2148395045, i64 2148395076, i64 2148395099}
!18 = !{i64 2148494279}
!19 = !{i64 2148396414, i64 2148396446, i64 2148396475, i64 2148396509, i64 2148396540, i64 2148396563}
!20 = !{i64 2149819793}
!21 = !{i64 2148392599, i64 2148392625, i64 2148392654, i64 2148392688, i64 2148392719, i64 2148392742}
!22 = !{i64 2148490445}
!23 = !{i64 2148393283, i64 2148393315, i64 2148393344, i64 2148393378, i64 2148393409, i64 2148393432}
!24 = !{i64 2148490648}
!25 = !{i64 2149059817}
!26 = !{i64 2149055641}
!27 = !{i64 2149055716, i64 2149055743, i64 2149055790, i64 2149055812, i64 2149055840, i64 2149055860}
!28 = !{i64 2149082820}
!29 = !{i64 2149317886}
!30 = !{!"auto-init"}
!31 = !{i64 2154496033, i64 2154496508, i64 2154496070, i64 2154496126, i64 2154496160, i64 2154496184, i64 2154496225, i64 2154496246, i64 2154496274, i64 2154496308}
!32 = !{i64 797136}
!33 = !{i64 2149083961}
!34 = !{i64 2154497133, i64 2154497608, i64 2154497170, i64 2154497226, i64 2154497260, i64 2154497284, i64 2154497325, i64 2154497346, i64 2154497374, i64 2154497408}
!35 = !{i64 2154498165, i64 2154498640, i64 2154498202, i64 2154498258, i64 2154498292, i64 2154498316, i64 2154498357, i64 2154498378, i64 2154498406, i64 2154498440}
!36 = !{i64 2154499189, i64 2154499664, i64 2154499226, i64 2154499282, i64 2154499316, i64 2154499340, i64 2154499381, i64 2154499402, i64 2154499430, i64 2154499464}
!37 = !{i64 2154500214, i64 2154500689, i64 2154500251, i64 2154500307, i64 2154500341, i64 2154500365, i64 2154500406, i64 2154500427, i64 2154500455, i64 2154500489}
!38 = !{i64 2154546620}
!39 = !{i64 2154547550}
!40 = !{i64 2154550445}
!41 = !{i64 2154552335}
!42 = !{i64 2154657657, i64 2154658133, i64 2154657694, i64 2154657750, i64 2154657784, i64 2154657808, i64 2154657849, i64 2154657870, i64 2154657898, i64 2154657932}
!43 = !{i64 2154351711}
!44 = !{i64 2154351879}
!45 = !{i64 2154460899, i64 2154461374, i64 2154460936, i64 2154460992, i64 2154461026, i64 2154461050, i64 2154461091, i64 2154461112, i64 2154461140, i64 2154461174}
!46 = !{i64 2149212521}
!47 = !{i64 2149212738}
!48 = !{i64 2153797688}
!49 = !{i64 880827, i64 880848}
!50 = !{i64 2148551044}
!51 = !{i64 884442, i64 884468, i64 884496, i64 884514, i64 884532, i64 884554}
!52 = !{i64 2148551246}
!53 = !{i64 2151252508}
!54 = !{!55}
!55 = distinct !{!55, !56, !"timestamp_truncate: argument 0"}
!56 = distinct !{!56, !"timestamp_truncate"}
!57 = !{i64 2151197282}
!58 = !{i64 2151204899}
!59 = !{i64 2151205530}
!60 = !{i64 2151213841}
!61 = !{i64 2151222059}
!62 = !{i64 2154685671}
!63 = !{i64 902587, i64 902608, i64 902631, i64 902650, i64 902669}
!64 = !{i64 2154686054}
!65 = !{i64 2154506438, i64 2154506913, i64 2154506475, i64 2154506531, i64 2154506565, i64 2154506589, i64 2154506630, i64 2154506651, i64 2154506679, i64 2154506713}
!66 = !{i64 2154507455, i64 2154507930, i64 2154507492, i64 2154507548, i64 2154507582, i64 2154507606, i64 2154507647, i64 2154507668, i64 2154507696, i64 2154507730}
!67 = !{i64 2154508581, i64 2154509056, i64 2154508618, i64 2154508674, i64 2154508708, i64 2154508732, i64 2154508773, i64 2154508794, i64 2154508822, i64 2154508856}
