; ModuleID = '/llk/IR/fs/namei.c_pt.bc'
source_filename = "../fs/namei.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_permission\22\09\09\09\09\09"
module asm "__kstrtabns_generic_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_permission\22\09\09\09\09\09"
module asm "__kstrtabns_inode_permission:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_path_get:\09\09\09\09\09"
module asm "\09.asciz \09\22path_get\22\09\09\09\09\09"
module asm "__kstrtabns_path_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_path_put:\09\09\09\09\09"
module asm "\09.asciz \09\22path_put\22\09\09\09\09\09"
module asm "__kstrtabns_path_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_follow_up:\09\09\09\09\09"
module asm "\09.asciz \09\22follow_up\22\09\09\09\09\09"
module asm "__kstrtabns_follow_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_follow_down_one:\09\09\09\09\09"
module asm "\09.asciz \09\22follow_down_one\22\09\09\09\09\09"
module asm "__kstrtabns_follow_down_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_follow_down:\09\09\09\09\09"
module asm "\09.asciz \09\22follow_down\22\09\09\09\09\09"
module asm "__kstrtabns_follow_down:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_full_name_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22full_name_hash\22\09\09\09\09\09"
module asm "__kstrtabns_full_name_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hashlen_string:\09\09\09\09\09"
module asm "\09.asciz \09\22hashlen_string\22\09\09\09\09\09"
module asm "__kstrtabns_hashlen_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kern_path:\09\09\09\09\09"
module asm "\09.asciz \09\22kern_path\22\09\09\09\09\09"
module asm "__kstrtabns_kern_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_path_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_path_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_path_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_lookup_one_len:\09\09\09\09\09"
module asm "\09.asciz \09\22try_lookup_one_len\22\09\09\09\09\09"
module asm "__kstrtabns_try_lookup_one_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_one_len:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_one_len\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_one_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_one:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_one\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_one_len_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_one_len_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_one_len_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lookup_positive_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22lookup_positive_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_lookup_positive_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_path_at_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22user_path_at_empty\22\09\09\09\09\09"
module asm "__kstrtabns_user_path_at_empty:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___check_sticky:\09\09\09\09\09"
module asm "\09.asciz \09\22__check_sticky\22\09\09\09\09\09"
module asm "__kstrtabns___check_sticky:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lock_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22lock_rename\22\09\09\09\09\09"
module asm "__kstrtabns_lock_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unlock_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22unlock_rename\22\09\09\09\09\09"
module asm "__kstrtabns_unlock_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_create:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_create\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_mkobj:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_mkobj\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_mkobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_tmpfile:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_tmpfile\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_tmpfile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kern_path_create:\09\09\09\09\09"
module asm "\09.asciz \09\22kern_path_create\22\09\09\09\09\09"
module asm "__kstrtabns_kern_path_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_done_path_create:\09\09\09\09\09"
module asm "\09.asciz \09\22done_path_create\22\09\09\09\09\09"
module asm "__kstrtabns_done_path_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_user_path_create:\09\09\09\09\09"
module asm "\09.asciz \09\22user_path_create\22\09\09\09\09\09"
module asm "__kstrtabns_user_path_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_mknod:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_mknod\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_mknod:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_mkdir\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_rmdir:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_rmdir\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_rmdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_symlink\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_link:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_link\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_rename\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_readlink:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_readlink\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_readlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_get_link\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22page_get_link\22\09\09\09\09\09"
module asm "__kstrtabns_page_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_put_link:\09\09\09\09\09"
module asm "\09.asciz \09\22page_put_link\22\09\09\09\09\09"
module asm "__kstrtabns_page_put_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_readlink:\09\09\09\09\09"
module asm "\09.asciz \09\22page_readlink\22\09\09\09\09\09"
module asm "__kstrtabns_page_readlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___page_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22__page_symlink\22\09\09\09\09\09"
module asm "__kstrtabns___page_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22page_symlink\22\09\09\09\09\09"
module asm "__kstrtabns_page_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_symlink_inode_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22page_symlink_inode_operations\22\09\09\09\09\09"
module asm "__kstrtabns_page_symlink_inode_operations:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.9, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.anon.14 = type { i32, i32 }
%struct.qstr = type { %union.anon.13, ptr }
%union.anon.13 = type { i64 }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.filename = type { ptr, ptr, i32, ptr, [0 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.117, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.118, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.119, ptr, %struct.address_space, %struct.list_head, %union.anon.120, i32, i32, ptr, ptr }
%union.anon.117 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.118 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.119 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.120 = type { ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.105, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.36 }
%struct.llist_node = type { ptr }
%union.anon.36 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.105 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.42 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.42 = type { %struct.callback_head }
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
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.115, %struct.list_head, %struct.list_head, %union.anon.116 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.15 }
%union.anon.15 = type { i64 }
%union.anon.115 = type { %struct.list_head }
%union.anon.116 = type { %struct.hlist_node }
%struct.nameidata = type { %struct.path, %struct.qstr, %struct.path, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [2 x %struct.saved], ptr, ptr, i32, i32, %struct.kuid_t, i16 }
%struct.saved = type { %struct.path, %struct.delayed_call, ptr, i32 }
%struct.delayed_call = type { ptr, ptr }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.121, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.122, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.121 = type { %struct.callback_head }
%union.anon.122 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.open_flags = type { i32, i16, i32, i32, i32 }
%struct.file = type { %union.anon.30, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.30 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.renamedata = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.page = type { i32, %union.anon.17, %union.anon.111, %struct.atomic_t }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.111 = type { %struct.atomic_t }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.posix_acl_entry = type { i16, i16, %union.anon.12 }
%union.anon.12 = type { %struct.kuid_t }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }

@names_cachep = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_generic_permission = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_permission = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_permission = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_permission to i32), ptr @__kstrtab_generic_permission, ptr @__kstrtabns_generic_permission }, section "___ksymtab+generic_permission", align 4
@__kstrtab_inode_permission = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_permission = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_permission = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_permission to i32), ptr @__kstrtab_inode_permission, ptr @__kstrtabns_inode_permission }, section "___ksymtab+inode_permission", align 4
@__kstrtab_path_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_path_get = external dso_local constant [0 x i8], align 1
@__ksymtab_path_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @path_get to i32), ptr @__kstrtab_path_get, ptr @__kstrtabns_path_get }, section "___ksymtab+path_get", align 4
@__kstrtab_path_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_path_put = external dso_local constant [0 x i8], align 1
@__ksymtab_path_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @path_put to i32), ptr @__kstrtab_path_put, ptr @__kstrtabns_path_put }, section "___ksymtab+path_put", align 4
@__initcall__kmod_namei__289_1074_init_fs_namei_sysctls5 = internal global ptr @init_fs_namei_sysctls, section ".initcall5.init", align 4
@sysctl_protected_hardlinks = internal global i32 0, section ".data..read_mostly", align 4
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@__kstrtab_follow_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_follow_up = external dso_local constant [0 x i8], align 1
@__ksymtab_follow_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @follow_up to i32), ptr @__kstrtab_follow_up, ptr @__kstrtabns_follow_up }, section "___ksymtab+follow_up", align 4
@__kstrtab_follow_down_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_follow_down_one = external dso_local constant [0 x i8], align 1
@__ksymtab_follow_down_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @follow_down_one to i32), ptr @__kstrtab_follow_down_one, ptr @__kstrtabns_follow_down_one }, section "___ksymtab+follow_down_one", align 4
@__kstrtab_follow_down = external dso_local constant [0 x i8], align 1
@__kstrtabns_follow_down = external dso_local constant [0 x i8], align 1
@__ksymtab_follow_down = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @follow_down to i32), ptr @__kstrtab_follow_down, ptr @__kstrtabns_follow_down }, section "___ksymtab+follow_down", align 4
@__kstrtab_full_name_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_full_name_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_full_name_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @full_name_hash to i32), ptr @__kstrtab_full_name_hash, ptr @__kstrtabns_full_name_hash }, section "___ksymtab+full_name_hash", align 4
@__kstrtab_hashlen_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_hashlen_string = external dso_local constant [0 x i8], align 1
@__ksymtab_hashlen_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hashlen_string to i32), ptr @__kstrtab_hashlen_string, ptr @__kstrtabns_hashlen_string }, section "___ksymtab+hashlen_string", align 4
@__kstrtab_kern_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_kern_path = external dso_local constant [0 x i8], align 1
@__ksymtab_kern_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kern_path to i32), ptr @__kstrtab_kern_path, ptr @__kstrtabns_kern_path }, section "___ksymtab+kern_path", align 4
@__kstrtab_vfs_path_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_path_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_path_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_path_lookup to i32), ptr @__kstrtab_vfs_path_lookup, ptr @__kstrtabns_vfs_path_lookup }, section "___ksymtab+vfs_path_lookup", align 4
@try_lookup_one_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"fs/namei.c\00", align 1
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_try_lookup_one_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_lookup_one_len = external dso_local constant [0 x i8], align 1
@__ksymtab_try_lookup_one_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_lookup_one_len to i32), ptr @__kstrtab_try_lookup_one_len, ptr @__kstrtabns_try_lookup_one_len }, section "___ksymtab+try_lookup_one_len", align 4
@lookup_one_len.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_lookup_one_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_one_len = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_one_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_one_len to i32), ptr @__kstrtab_lookup_one_len, ptr @__kstrtabns_lookup_one_len }, section "___ksymtab+lookup_one_len", align 4
@lookup_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_lookup_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_one = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_one to i32), ptr @__kstrtab_lookup_one, ptr @__kstrtabns_lookup_one }, section "___ksymtab+lookup_one", align 4
@__kstrtab_lookup_one_len_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_one_len_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_one_len_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_one_len_unlocked to i32), ptr @__kstrtab_lookup_one_len_unlocked, ptr @__kstrtabns_lookup_one_len_unlocked }, section "___ksymtab+lookup_one_len_unlocked", align 4
@__kstrtab_lookup_positive_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_lookup_positive_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_lookup_positive_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lookup_positive_unlocked to i32), ptr @__kstrtab_lookup_positive_unlocked, ptr @__kstrtabns_lookup_positive_unlocked }, section "___ksymtab+lookup_positive_unlocked", align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"pts\00", align 1
@__const.path_pts.this = private unnamed_addr constant { { %struct.anon.14 }, ptr, [4 x i8] } { { %struct.anon.14 } { %struct.anon.14 { i32 0, i32 3 } }, ptr @.str.2, [4 x i8] zeroinitializer }, align 8
@__kstrtab_user_path_at_empty = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_path_at_empty = external dso_local constant [0 x i8], align 1
@__ksymtab_user_path_at_empty = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_path_at_empty to i32), ptr @__kstrtab_user_path_at_empty, ptr @__kstrtabns_user_path_at_empty }, section "___ksymtab+user_path_at_empty", align 4
@__kstrtab___check_sticky = external dso_local constant [0 x i8], align 1
@__kstrtabns___check_sticky = external dso_local constant [0 x i8], align 1
@__ksymtab___check_sticky = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__check_sticky to i32), ptr @__kstrtab___check_sticky, ptr @__kstrtabns___check_sticky }, section "___ksymtab+__check_sticky", align 4
@__kstrtab_lock_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_lock_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_lock_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lock_rename to i32), ptr @__kstrtab_lock_rename, ptr @__kstrtabns_lock_rename }, section "___ksymtab+lock_rename", align 4
@__kstrtab_unlock_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_unlock_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_unlock_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unlock_rename to i32), ptr @__kstrtab_unlock_rename, ptr @__kstrtabns_unlock_rename }, section "___ksymtab+unlock_rename", align 4
@__kstrtab_vfs_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_create = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_create to i32), ptr @__kstrtab_vfs_create, ptr @__kstrtabns_vfs_create }, section "___ksymtab+vfs_create", align 4
@__kstrtab_vfs_mkobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_mkobj = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_mkobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_mkobj to i32), ptr @__kstrtab_vfs_mkobj, ptr @__kstrtabns_vfs_mkobj }, section "___ksymtab+vfs_mkobj", align 4
@slash_name = external dso_local constant %struct.qstr, align 8
@__kstrtab_vfs_tmpfile = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_tmpfile = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_tmpfile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_tmpfile to i32), ptr @__kstrtab_vfs_tmpfile, ptr @__kstrtabns_vfs_tmpfile }, section "___ksymtab+vfs_tmpfile", align 4
@__kstrtab_kern_path_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_kern_path_create = external dso_local constant [0 x i8], align 1
@__ksymtab_kern_path_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kern_path_create to i32), ptr @__kstrtab_kern_path_create, ptr @__kstrtabns_kern_path_create }, section "___ksymtab+kern_path_create", align 4
@__kstrtab_done_path_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_done_path_create = external dso_local constant [0 x i8], align 1
@__ksymtab_done_path_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @done_path_create to i32), ptr @__kstrtab_done_path_create, ptr @__kstrtabns_done_path_create }, section "___ksymtab+done_path_create", align 4
@__kstrtab_user_path_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_user_path_create = external dso_local constant [0 x i8], align 1
@__ksymtab_user_path_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @user_path_create to i32), ptr @__kstrtab_user_path_create, ptr @__kstrtabns_user_path_create }, section "___ksymtab+user_path_create", align 4
@__kstrtab_vfs_mknod = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_mknod = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_mknod = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_mknod to i32), ptr @__kstrtab_vfs_mknod, ptr @__kstrtabns_vfs_mknod }, section "___ksymtab+vfs_mknod", align 4
@__kstrtab_vfs_mkdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_mkdir = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_mkdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_mkdir to i32), ptr @__kstrtab_vfs_mkdir, ptr @__kstrtabns_vfs_mkdir }, section "___ksymtab+vfs_mkdir", align 4
@__kstrtab_vfs_rmdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_rmdir = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_rmdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_rmdir to i32), ptr @__kstrtab_vfs_rmdir, ptr @__kstrtabns_vfs_rmdir }, section "___ksymtab+vfs_rmdir", align 4
@__kstrtab_vfs_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_unlink to i32), ptr @__kstrtab_vfs_unlink, ptr @__kstrtabns_vfs_unlink }, section "___ksymtab+vfs_unlink", align 4
@__kstrtab_vfs_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_symlink to i32), ptr @__kstrtab_vfs_symlink, ptr @__kstrtabns_vfs_symlink }, section "___ksymtab+vfs_symlink", align 4
@__kstrtab_vfs_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_link = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_link to i32), ptr @__kstrtab_vfs_link, ptr @__kstrtabns_vfs_link }, section "___ksymtab+vfs_link", align 4
@__kstrtab_vfs_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_rename to i32), ptr @__kstrtab_vfs_rename, ptr @__kstrtabns_vfs_rename }, section "___ksymtab+vfs_rename", align 4
@__kstrtab_vfs_readlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_readlink = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_readlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_readlink to i32), ptr @__kstrtab_vfs_readlink, ptr @__kstrtabns_vfs_readlink }, section "___ksymtab+vfs_readlink", align 4
@__kstrtab_vfs_get_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_get_link = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_get_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_get_link to i32), ptr @__kstrtab_vfs_get_link, ptr @__kstrtabns_vfs_get_link }, section "___ksymtab+vfs_get_link", align 4
@__kstrtab_page_get_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_get_link = external dso_local constant [0 x i8], align 1
@__ksymtab_page_get_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_get_link to i32), ptr @__kstrtab_page_get_link, ptr @__kstrtabns_page_get_link }, section "___ksymtab+page_get_link", align 4
@__kstrtab_page_put_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_put_link = external dso_local constant [0 x i8], align 1
@__ksymtab_page_put_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_put_link to i32), ptr @__kstrtab_page_put_link, ptr @__kstrtabns_page_put_link }, section "___ksymtab+page_put_link", align 4
@__kstrtab_page_readlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_readlink = external dso_local constant [0 x i8], align 1
@__ksymtab_page_readlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_readlink to i32), ptr @__kstrtab_page_readlink, ptr @__kstrtabns_page_readlink }, section "___ksymtab+page_readlink", align 4
@__kstrtab___page_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns___page_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab___page_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__page_symlink to i32), ptr @__kstrtab___page_symlink, ptr @__kstrtabns___page_symlink }, section "___ksymtab+__page_symlink", align 4
@__kstrtab_page_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab_page_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_symlink to i32), ptr @__kstrtab_page_symlink, ptr @__kstrtabns_page_symlink }, section "___ksymtab+page_symlink", align 4
@page_symlink_inode_operations = dso_local constant %struct.inode_operations { ptr null, ptr @page_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@__kstrtab_page_symlink_inode_operations = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_symlink_inode_operations = external dso_local constant [0 x i8], align 1
@__ksymtab_page_symlink_inode_operations = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_symlink_inode_operations to i32), ptr @__kstrtab_page_symlink_inode_operations, ptr @__kstrtabns_page_symlink_inode_operations }, section "___ksymtab+page_symlink_inode_operations", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@namei_sysctls = internal global [5 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.5, ptr @sysctl_protected_symlinks, i32 4, i16 384, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.6, ptr @sysctl_protected_hardlinks, i32 4, i16 384, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.7, ptr @sysctl_protected_fifos, i32 4, i16 384, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 12) }, %struct.ctl_table { ptr @.str.8, ptr @sysctl_protected_regular, i32 4, i16 384, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 12) }, %struct.ctl_table zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"namei_sysctls\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"protected_symlinks\00", align 1
@sysctl_protected_symlinks = internal global i32 0, section ".data..read_mostly", align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"protected_hardlinks\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"protected_fifos\00", align 1
@sysctl_protected_fifos = internal global i32 0, section ".data..read_mostly", align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"protected_regular\00", align 1
@sysctl_protected_regular = internal global i32 0, section ".data..read_mostly", align 4
@rename_lock = external dso_local global %struct.seqlock_t, align 4
@fsnotify_unlink.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"include/linux/fsnotify.h\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__initcall__kmod_namei__289_1074_init_fs_namei_sysctls5, ptr @__ksymtab___check_sticky, ptr @__ksymtab___page_symlink, ptr @__ksymtab_done_path_create, ptr @__ksymtab_follow_down, ptr @__ksymtab_follow_down_one, ptr @__ksymtab_follow_up, ptr @__ksymtab_full_name_hash, ptr @__ksymtab_generic_permission, ptr @__ksymtab_hashlen_string, ptr @__ksymtab_inode_permission, ptr @__ksymtab_kern_path, ptr @__ksymtab_kern_path_create, ptr @__ksymtab_lock_rename, ptr @__ksymtab_lookup_one, ptr @__ksymtab_lookup_one_len, ptr @__ksymtab_lookup_one_len_unlocked, ptr @__ksymtab_lookup_positive_unlocked, ptr @__ksymtab_page_get_link, ptr @__ksymtab_page_put_link, ptr @__ksymtab_page_readlink, ptr @__ksymtab_page_symlink, ptr @__ksymtab_page_symlink_inode_operations, ptr @__ksymtab_path_get, ptr @__ksymtab_path_put, ptr @__ksymtab_try_lookup_one_len, ptr @__ksymtab_unlock_rename, ptr @__ksymtab_user_path_at_empty, ptr @__ksymtab_user_path_create, ptr @__ksymtab_vfs_create, ptr @__ksymtab_vfs_get_link, ptr @__ksymtab_vfs_link, ptr @__ksymtab_vfs_mkdir, ptr @__ksymtab_vfs_mknod, ptr @__ksymtab_vfs_mkobj, ptr @__ksymtab_vfs_path_lookup, ptr @__ksymtab_vfs_readlink, ptr @__ksymtab_vfs_rename, ptr @__ksymtab_vfs_rmdir, ptr @__ksymtab_vfs_symlink, ptr @__ksymtab_vfs_tmpfile, ptr @__ksymtab_vfs_unlink], section "llvm.metadata"
@switch.table.do_rmdir = private unnamed_addr constant [3 x i32] [i32 -16, i32 -22, i32 -39], align 4

@sys_mknodat = dso_local alias i32 (i32, ptr, i16, i32), ptr @__se_sys_mknodat
@sys_mknod = dso_local alias i32 (ptr, i16, i32), ptr @__se_sys_mknod
@sys_mkdirat = dso_local alias i32 (i32, ptr, i16), ptr @__se_sys_mkdirat
@sys_mkdir = dso_local alias i32 (ptr, i16), ptr @__se_sys_mkdir
@sys_rmdir = dso_local alias i32 (ptr), ptr @__se_sys_rmdir
@sys_unlinkat = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_unlinkat
@sys_unlink = dso_local alias i32 (ptr), ptr @__se_sys_unlink
@sys_symlinkat = dso_local alias i32 (ptr, i32, ptr), ptr @__se_sys_symlinkat
@sys_symlink = dso_local alias i32 (ptr, ptr), ptr @__se_sys_symlink
@sys_linkat = dso_local alias i32 (i32, ptr, i32, ptr, i32), ptr @__se_sys_linkat
@sys_link = dso_local alias i32 (ptr, ptr), ptr @__se_sys_link
@sys_renameat2 = dso_local alias i32 (i32, ptr, i32, ptr, i32), ptr @__se_sys_renameat2
@sys_renameat = dso_local alias i32 (i32, ptr, i32, ptr), ptr @__se_sys_renameat
@sys_rename = dso_local alias i32 (ptr, ptr), ptr @__se_sys_rename

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @getname_flags(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @names_cachep, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7, !prof !8

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 4
  store ptr %8, ptr %5, align 8
  %9 = tail call i32 @strncpy_from_user(ptr noundef %8, ptr noundef %0, i32 noundef 4080) #13
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14, !prof !8

11:                                               ; preds = %7
  %12 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %5) #13
  %13 = inttoptr i32 %9 to ptr
  br label %47

14:                                               ; preds = %7
  %15 = icmp eq i32 %9, 4080
  br i1 %15, label %16, label %32, !prof !8

16:                                               ; preds = %14
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 17) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22, !prof !8

20:                                               ; preds = %16
  %21 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %5) #13
  br label %47

22:                                               ; preds = %16
  store ptr %5, ptr %18, align 8
  %23 = tail call i32 @strncpy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 4096) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28, !prof !8

25:                                               ; preds = %22
  %26 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef nonnull %5) #13
  tail call void @kfree(ptr noundef nonnull %18) #13
  %27 = inttoptr i32 %23 to ptr
  br label %47

28:                                               ; preds = %22
  %29 = icmp eq i32 %23, 4096
  br i1 %29, label %30, label %32, !prof !8

30:                                               ; preds = %28
  %31 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %31, ptr noundef nonnull %5) #13
  tail call void @kfree(ptr noundef nonnull %18) #13
  br label %47

32:                                               ; preds = %28, %14
  %33 = phi ptr [ %5, %14 ], [ %18, %28 ]
  %34 = phi i32 [ %9, %14 ], [ %23, %28 ]
  %35 = getelementptr inbounds %struct.filename, ptr %33, i32 0, i32 2
  store i32 1, ptr %35, align 8
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %44, !prof !8

37:                                               ; preds = %32
  %38 = icmp eq ptr %2, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  store i32 1, ptr %2, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = and i32 %1, 16384
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  tail call void @putname(ptr noundef nonnull %33)
  br label %47

44:                                               ; preds = %40, %32
  %45 = getelementptr inbounds %struct.filename, ptr %33, i32 0, i32 1
  store ptr %0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.filename, ptr %33, i32 0, i32 3
  store ptr null, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %43, %30, %25, %20, %11, %3
  %48 = phi ptr [ %13, %11 ], [ %33, %44 ], [ inttoptr (i32 -2 to ptr), %43 ], [ inttoptr (i32 -12 to ptr), %3 ], [ inttoptr (i32 -36 to ptr), %30 ], [ %27, %25 ], [ inttoptr (i32 -12 to ptr), %20 ]
  ret ptr %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @putname(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.filename, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

8:                                                ; preds = %3
  %9 = add nsw i32 %5, -1
  store i32 %9, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.filename, ptr %0, i32 0, i32 4
  %14 = icmp eq ptr %12, %13
  %15 = load ptr, ptr @names_cachep, align 4
  br i1 %14, label %17, label %16

16:                                               ; preds = %11
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %12) #13
  tail call void @kfree(ptr noundef %0) #13
  br label %18

17:                                               ; preds = %11
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef %0) #13
  br label %18

18:                                               ; preds = %17, %16, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @getname_uflags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 2
  %4 = and i32 %3, 16384
  %5 = tail call ptr @getname_flags(ptr noundef %0, i32 noundef %4, ptr noundef null)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @getname(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @getname_flags(ptr noundef %0, i32 noundef 0, ptr noundef null)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @getname_kernel(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @strlen(ptr noundef %0)
  %3 = add i32 %2, 1
  %4 = load ptr, ptr @names_cachep, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7, !prof !8

7:                                                ; preds = %1
  %8 = icmp ult i32 %3, 4081
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 4
  store ptr %10, ptr %5, align 8
  br label %22

11:                                               ; preds = %7
  %12 = icmp slt i32 %3, 4097
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3264, i32 noundef 17) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !8

17:                                               ; preds = %13
  %18 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef nonnull %5) #13
  br label %28

19:                                               ; preds = %13
  store ptr %5, ptr %15, align 8
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @names_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef nonnull %5) #13
  br label %28

22:                                               ; preds = %19, %9
  %23 = phi ptr [ %10, %9 ], [ %5, %19 ]
  %24 = phi ptr [ %5, %9 ], [ %15, %19 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %0, i32 %3, i1 false)
  %25 = getelementptr inbounds %struct.filename, ptr %24, i32 0, i32 1
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds %struct.filename, ptr %24, i32 0, i32 3
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.filename, ptr %24, i32 0, i32 2
  store i32 1, ptr %27, align 8
  br label %28

28:                                               ; preds = %22, %20, %17, %1
  %29 = phi ptr [ %24, %22 ], [ inttoptr (i32 -36 to ptr), %20 ], [ inttoptr (i32 -12 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %17 ]
  ret ptr %29
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_permission(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load i16, ptr %1, align 8
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.cred, ptr %10, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %7
  br i1 %13, label %14, label %20, !prof !10

14:                                               ; preds = %3
  %15 = and i32 %2, 7
  %16 = lshr i32 %5, 6
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %77, label %50

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %5, 56
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = tail call fastcc i32 @check_acl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  switch i32 %31, label %77 [
    i32 -11, label %32
    i32 -13, label %50
  ]

32:                                               ; preds = %30, %20
  %33 = and i32 %2, 7
  %34 = lshr i32 %5, 3
  %35 = xor i32 %34, %5
  %36 = and i32 %35, %33
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  %41 = insertvalue [1 x i32] poison, i32 %40, 0
  %42 = tail call i32 @in_group_p([1 x i32] %41) #13
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %5, i32 %34
  br label %45

45:                                               ; preds = %38, %32
  %46 = phi i32 [ %44, %38 ], [ %5, %32 ]
  %47 = xor i32 %46, -1
  %48 = and i32 %33, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %77, label %50

50:                                               ; preds = %45, %30, %14
  %51 = load i16, ptr %1, align 8
  %52 = and i16 %51, -4096
  %53 = icmp eq i16 %52, 16384
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = and i32 %2, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %1, i32 noundef 2) #13
  br i1 %58, label %77, label %59

59:                                               ; preds = %57, %54
  %60 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %1, i32 noundef 1) #13
  %61 = select i1 %60, i32 0, i32 -13
  br label %77

62:                                               ; preds = %50
  %63 = and i32 %2, 7
  %64 = icmp eq i32 %63, 4
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %1, i32 noundef 2) #13
  br i1 %66, label %77, label %67

67:                                               ; preds = %65, %62
  %68 = and i32 %2, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = load i16, ptr %1, align 8
  %72 = and i16 %71, 73
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70, %67
  %75 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %1, i32 noundef 1) #13
  br i1 %75, label %77, label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76, %74, %65, %59, %57, %45, %30, %14
  %78 = phi i32 [ -13, %76 ], [ 0, %57 ], [ %61, %59 ], [ 0, %65 ], [ 0, %74 ], [ 0, %14 ], [ 0, %45 ], [ %31, %30 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable_wrt_inode_uidgid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %29, label %6, !prof !10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = load i16, ptr %1, align 8
  %15 = and i16 %14, -4096
  switch i16 %15, label %16 [
    i16 -32768, label %50
    i16 16384, label %50
    i16 -24576, label %50
  ]

16:                                               ; preds = %13, %6
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %50, label %29

29:                                               ; preds = %25, %3
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %48, !prof !8

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.inode_operations, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !8

40:                                               ; preds = %34
  %41 = tail call i32 %38(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  br label %50

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %43) #13
  %44 = load i16, ptr %30, align 2
  %45 = or i16 %44, 1
  store i16 %45, ptr %30, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %46 = load i16, ptr %43, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %48

48:                                               ; preds = %42, %29
  %49 = tail call i32 @generic_permission(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  br label %50

50:                                               ; preds = %48, %40, %25, %21, %16, %13, %13, %13
  %51 = phi i32 [ -1, %16 ], [ -13, %25 ], [ -30, %13 ], [ -30, %13 ], [ -30, %13 ], [ -13, %21 ], [ %41, %40 ], [ %49, %48 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @path_get(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @mntget(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %8) #13
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mntget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @path_put(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @dput(ptr noundef %3) #13
  %4 = load ptr, ptr %0, align 4
  tail call void @mntput(ptr noundef %4) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nd_jump_link(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 86
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 131072
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36, !prof !10

9:                                                ; preds = %1
  %10 = and i32 %6, 262144
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12, !prof !10

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %13, %14
  %16 = and i32 %6, 1572864
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %22, label %36, !prof !15

19:                                               ; preds = %9
  %20 = and i32 %6, 1572864
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36, !prof !10

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @dput(ptr noundef %24) #13
  %25 = load ptr, ptr %4, align 4
  tail call void @mntput(ptr noundef %25) #13
  %26 = load i64, ptr %0, align 4
  store i64 %26, ptr %4, align 8
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 3
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 4
  store i32 %35, ptr %33, align 8
  br label %38

36:                                               ; preds = %19, %12, %1
  %37 = phi i32 [ -40, %1 ], [ -18, %12 ], [ -18, %19 ]
  tail call void @path_put(ptr noundef %0)
  br label %38

38:                                               ; preds = %36, %22
  %39 = phi i32 [ %37, %36 ], [ 0, %22 ]
  ret i32 %39
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_namei_sysctls() #5 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.3, ptr noundef nonnull @namei_sysctls, ptr noundef nonnull @.str.4) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @may_linkat(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr @sysctl_protected_hardlinks, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load i16, ptr %6, align 8
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 63488
  %21 = icmp ne i32 %20, 32768
  %22 = and i32 %19, 1032
  %23 = icmp eq i32 %22, 1032
  %24 = or i1 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %6, i32 noundef 6) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25, %17
  %29 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %6) #13
  %30 = xor i1 %29, true
  %31 = sext i1 %30 to i32
  br label %32

32:                                               ; preds = %28, %25, %14, %10, %2
  %33 = phi i32 [ -75, %10 ], [ -75, %2 ], [ 0, %14 ], [ 0, %25 ], [ %31, %28 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @follow_up(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -16
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #13
  %4 = getelementptr i8, ptr %2, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %3
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %8 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %24

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.mount, ptr %5, i32 0, i32 3
  %12 = tail call ptr @mntget(ptr noundef %11) #13
  %13 = getelementptr i8, ptr %2, i32 -4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %17) #13
  br label %18

18:                                               ; preds = %16, %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %19 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %21 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @dput(ptr noundef %22) #13
  store ptr %14, ptr %21, align 4
  %23 = load ptr, ptr %0, align 4
  tail call void @mntput(ptr noundef %23) #13
  store ptr %11, ptr %0, align 4
  br label %24

24:                                               ; preds = %18, %7
  %25 = phi i32 [ 0, %7 ], [ 1, %18 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @follow_down_one(ptr noundef %0) #0 {
  %2 = tail call ptr @lookup_mnt(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @dput(ptr noundef %6) #13
  %7 = load ptr, ptr %0, align 4
  tail call void @mntput(ptr noundef %7) #13
  store ptr %2, ptr %0, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %11) #13
  br label %12

12:                                               ; preds = %10, %4
  store ptr %8, ptr %5, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i32 [ 1, %12 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_mnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @follow_down(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  %4 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %7 = and i32 %6, 458752
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13, !prof !10

9:                                                ; preds = %1
  %10 = and i32 %6, 7340032
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 -2, i32 0, !prof !8
  br label %15

13:                                               ; preds = %1
  %14 = call fastcc i32 @__traverse_mounts(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #13
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ %12, %9 ]
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq ptr %17, %3
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @mntput(ptr noundef %3) #13
  br label %20

20:                                               ; preds = %19, %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  ret i32 %16
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @full_name_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6 {
  %4 = ptrtoint ptr %0 to i32
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %14, %3
  %7 = phi i32 [ %20, %14 ], [ %4, %3 ]
  %8 = phi i32 [ %18, %14 ], [ 0, %3 ]
  %9 = phi i32 [ %22, %14 ], [ %2, %3 ]
  %10 = phi ptr [ %21, %14 ], [ %1, %3 ]
  %11 = tail call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %10, ptr elementtype(i32) %10) #15, !srcloc !17
  %12 = icmp ult i32 %9, 4
  %13 = extractvalue { i32, i32 } %11, 0
  br i1 %12, label %24, label %14

14:                                               ; preds = %6
  %15 = xor i32 %13, %8
  %16 = xor i32 %15, %7
  %17 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 7) #13
  %18 = add i32 %17, %16
  %19 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 20) #13
  %20 = mul i32 %19, 9
  %21 = getelementptr i8, ptr %10, i32 4
  %22 = add i32 %9, -4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %6

24:                                               ; preds = %6
  %25 = extractvalue { i32, i32 } %11, 0
  %26 = shl nuw nsw i32 %9, 3
  %27 = shl nsw i32 -1, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  %30 = xor i32 %29, %8
  br label %31

31:                                               ; preds = %24, %14, %3
  %32 = phi i32 [ %7, %24 ], [ %4, %3 ], [ %20, %14 ]
  %33 = phi i32 [ %30, %24 ], [ 0, %3 ], [ %18, %14 ]
  %34 = mul i32 %33, 1640531527
  %35 = xor i32 %34, %32
  %36 = mul i32 %35, 1640531527
  ret i32 %36
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @hashlen_string(ptr noundef %0, ptr noundef %1) #6 {
  %3 = ptrtoint ptr %0 to i32
  %4 = tail call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %1, ptr elementtype(i32) %1) #15, !srcloc !17
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = add i32 %5, -16843009
  %7 = and i32 %5, -2139062144
  %8 = xor i32 %7, -2139062144
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %11, %2
  %12 = phi i32 [ %25, %11 ], [ %5, %2 ]
  %13 = phi i32 [ %22, %11 ], [ 0, %2 ]
  %14 = phi i32 [ %21, %11 ], [ %3, %2 ]
  %15 = phi i32 [ %19, %11 ], [ 0, %2 ]
  %16 = xor i32 %12, %15
  %17 = xor i32 %16, %14
  %18 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 7) #13
  %19 = add i32 %18, %17
  %20 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 20) #13
  %21 = mul i32 %20, 9
  %22 = add i32 %13, 4
  %23 = getelementptr i8, ptr %1, i32 %22
  %24 = tail call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %23, ptr elementtype(i32) %23) #15, !srcloc !17
  %25 = extractvalue { i32, i32 } %24, 0
  %26 = add i32 %25, -16843009
  %27 = and i32 %25, -2139062144
  %28 = xor i32 %27, -2139062144
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %11, label %31

31:                                               ; preds = %11
  %32 = extractvalue { i32, i32 } %24, 0
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi i32 [ %5, %2 ], [ %32, %31 ]
  %35 = phi i32 [ 0, %2 ], [ %19, %31 ]
  %36 = phi i32 [ %3, %2 ], [ %21, %31 ]
  %37 = phi i32 [ 0, %2 ], [ %22, %31 ]
  %38 = phi i32 [ %9, %2 ], [ %29, %31 ]
  %39 = add i32 %38, -1
  %40 = xor i32 %38, -1
  %41 = and i32 %39, %40
  %42 = lshr i32 %41, 7
  %43 = and i32 %42, %34
  %44 = xor i32 %43, %35
  %45 = icmp eq i32 %41, 127
  %46 = tail call i32 @llvm.ctlz.i32(i32 %42, i1 false) #13, !range !18
  %47 = sub nuw nsw i32 32, %46
  %48 = lshr i32 %47, 3
  %49 = select i1 %45, i32 0, i32 %48
  %50 = add i32 %49, %37
  %51 = zext i32 %50 to i64
  %52 = shl nuw i64 %51, 32
  %53 = mul i32 %44, 1640531527
  %54 = xor i32 %53, %36
  %55 = mul i32 %54, 1640531527
  %56 = zext i32 %55 to i64
  %57 = or i64 %52, %56
  ret i64 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @filename_lookup(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef readonly %4) local_unnamed_addr #0 {
  %6 = alloca %struct.nameidata, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #13
  %7 = getelementptr inbounds i8, ptr %6, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i32 136, i1 false), !annotation !19
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %1 to i32
  br label %61

11:                                               ; preds = %5
  %12 = tail call ptr @llvm.thread.pointer() #13
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 86
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 13
  %16 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 12
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 17
  store i32 %0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 14
  store ptr %1, ptr %18, align 8
  store ptr null, ptr %6, align 8
  %19 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  store ptr null, ptr %19, align 4
  %20 = icmp eq ptr %14, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.nameidata, ptr %14, i32 0, i32 11
  %23 = load i32, ptr %22, align 8
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi i32 [ %23, %21 ], [ 0, %11 ]
  %26 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 11
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 15
  store ptr %14, ptr %27, align 4
  store ptr %6, ptr %13, align 16
  %28 = icmp eq ptr %4, null
  br i1 %28, label %33, label %29, !prof !10

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 5
  store i32 1, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nameidata, ptr %6, i32 0, i32 2
  %32 = load i64, ptr %4, align 4
  store i64 %32, ptr %31, align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = or i32 %2, 64
  %35 = call fastcc i32 @path_lookupat(ptr noundef nonnull %6, i32 noundef %34, ptr noundef %3)
  %36 = icmp eq i32 %35, -10
  br i1 %36, label %37, label %39, !prof !8

37:                                               ; preds = %33
  %38 = call fastcc i32 @path_lookupat(ptr noundef nonnull %6, i32 noundef %2, ptr noundef %3)
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %41 = icmp eq i32 %40, -116
  br i1 %41, label %42, label %45, !prof !8

42:                                               ; preds = %39
  %43 = or i32 %2, 32
  %44 = call fastcc i32 @path_lookupat(ptr noundef nonnull %6, i32 noundef %43, ptr noundef %3)
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i32 [ %44, %42 ], [ %40, %39 ]
  %47 = load ptr, ptr %13, align 16
  %48 = getelementptr inbounds %struct.nameidata, ptr %47, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  store ptr %49, ptr %13, align 16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.nameidata, ptr %47, i32 0, i32 11
  %53 = load i32, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nameidata, ptr %49, i32 0, i32 11
  store i32 %53, ptr %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = getelementptr inbounds %struct.nameidata, ptr %47, i32 0, i32 12
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nameidata, ptr %47, i32 0, i32 13
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  call void @kfree(ptr noundef %57) #13
  br label %61

61:                                               ; preds = %60, %55, %9
  %62 = phi i32 [ %10, %9 ], [ %46, %55 ], [ %46, %60 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #13
  ret i32 %62
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @path_lookupat(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @path_init(ptr noundef %0, i32 noundef %1)
  %5 = and i32 %1, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7, !prof !10

7:                                                ; preds = %3
  %8 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %14, label %9

9:                                                ; preds = %7
  %10 = tail call fastcc i32 @handle_lookup_down(ptr noundef %0)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14, !prof !8

12:                                               ; preds = %9
  %13 = inttoptr i32 %10 to ptr
  br label %14

14:                                               ; preds = %12, %9, %7, %3
  %15 = phi ptr [ %4, %7 ], [ %13, %12 ], [ %4, %9 ], [ %4, %3 ]
  %16 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 9
  %17 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 1, i32 1
  %19 = getelementptr inbounds %struct.anon.14, ptr %17, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  br label %21

21:                                               ; preds = %37, %14
  %22 = phi ptr [ %15, %14 ], [ %38, %37 ]
  %23 = tail call fastcc i32 @link_path_walk(ptr noundef %22, ptr noundef %0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load i32, ptr %16, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 8
  %30 = load i32, ptr %19, align 4
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %20, align 4
  %36 = or i32 %35, 3
  store i32 %36, ptr %20, align 4
  br label %37

37:                                               ; preds = %34, %28, %25
  %38 = tail call fastcc ptr @walk_component(ptr noundef %0, i32 noundef 1) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %21

40:                                               ; preds = %37
  %41 = load i32, ptr %20, align 4
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44, !prof !10

44:                                               ; preds = %40
  %45 = tail call fastcc i32 @handle_lookup_down(ptr noundef %0)
  %46 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 8
  %48 = and i32 %47, -5
  store i32 %48, ptr %46, align 8
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %44, %40
  %51 = tail call fastcc i32 @complete_walk(ptr noundef %0)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32, ptr %20, align 4
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 7340032
  %62 = icmp eq i32 %61, 2097152
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %53
  %64 = load i64, ptr %0, align 8
  store i64 %64, ptr %2, align 4
  store ptr null, ptr %0, align 8
  %65 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  store ptr null, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %57, %50, %44, %21
  %67 = phi i32 [ 0, %63 ], [ -20, %57 ], [ %51, %50 ], [ %45, %44 ], [ %23, %21 ]
  tail call fastcc void @terminate_walk(ptr noundef %0)
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kern_path_locked(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.qstr, align 8
  %4 = alloca i32, align 4
  %5 = tail call ptr @getname_kernel(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #13, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !19
  %6 = call fastcc i32 @filename_parentat(i32 noundef -100, ptr noundef %5, i32 noundef 0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = inttoptr i32 %6 to ptr
  br label %31

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  br i1 %12, label %17, label %15, !prof !10

15:                                               ; preds = %10
  tail call void @dput(ptr noundef %14) #13
  %16 = load ptr, ptr %1, align 4
  tail call void @mntput(ptr noundef %16) #13
  br label %31

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 24
  tail call void @down_write(ptr noundef %20) #13
  %21 = load ptr, ptr %13, align 4
  %22 = call fastcc ptr @__lookup_hash(ptr noundef nonnull %3, ptr noundef %21, i32 noundef 0) #13
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 24
  call void @up_write(ptr noundef %28) #13
  %29 = load ptr, ptr %13, align 4
  call void @dput(ptr noundef %29) #13
  %30 = load ptr, ptr %1, align 4
  call void @mntput(ptr noundef %30) #13
  br label %31

31:                                               ; preds = %24, %17, %15, %8
  %32 = phi ptr [ %9, %8 ], [ inttoptr (i32 -22 to ptr), %15 ], [ %22, %24 ], [ %22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %33 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39, !prof !8

38:                                               ; preds = %34
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

39:                                               ; preds = %34
  %40 = add nsw i32 %36, -1
  store i32 %40, ptr %35, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 4
  %45 = icmp eq ptr %43, %44
  %46 = load ptr, ptr @names_cachep, align 4
  br i1 %45, label %48, label %47

47:                                               ; preds = %42
  call void @kmem_cache_free(ptr noundef %46, ptr noundef %43) #13
  call void @kfree(ptr noundef %5) #13
  br label %49

48:                                               ; preds = %42
  call void @kmem_cache_free(ptr noundef %46, ptr noundef %5) #13
  br label %49

49:                                               ; preds = %48, %47, %39, %31
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kern_path(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @getname_kernel(ptr noundef %0)
  %5 = tail call i32 @filename_lookup(i32 noundef -100, ptr noundef %4, i32 noundef %1, ptr noundef %2, ptr noundef null)
  %6 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.filename, ptr %4, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12, !prof !8

11:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

12:                                               ; preds = %7
  %13 = add nsw i32 %9, -1
  store i32 %13, ptr %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.filename, ptr %4, i32 0, i32 4
  %18 = icmp eq ptr %16, %17
  %19 = load ptr, ptr @names_cachep, align 4
  br i1 %18, label %21, label %20

20:                                               ; preds = %15
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %16) #13
  tail call void @kfree(ptr noundef %4) #13
  br label %22

21:                                               ; preds = %15
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %4) #13
  br label %22

22:                                               ; preds = %21, %20, %12, %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_path_lookup(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = tail call ptr @getname_kernel(ptr noundef %2)
  %9 = call i32 @filename_lookup(i32 noundef -100, ptr noundef %8, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6)
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %26, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.filename, ptr %8, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %11
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

16:                                               ; preds = %11
  %17 = add nsw i32 %13, -1
  store i32 %17, ptr %12, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr inbounds %struct.filename, ptr %8, i32 0, i32 4
  %22 = icmp eq ptr %20, %21
  %23 = load ptr, ptr @names_cachep, align 4
  br i1 %22, label %25, label %24

24:                                               ; preds = %19
  call void @kmem_cache_free(ptr noundef %23, ptr noundef %20) #13
  call void @kfree(ptr noundef %8) #13
  br label %26

25:                                               ; preds = %19
  call void @kmem_cache_free(ptr noundef %23, ptr noundef %8) #13
  br label %26

26:                                               ; preds = %25, %24, %16, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @try_lookup_one_len(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.qstr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !19
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @try_lookup_one_len.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %3
  store i1 true, ptr @try_lookup_one_len.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2702, i32 noundef 9, ptr noundef null) #13
  br label %14

14:                                               ; preds = %13, %3
  %15 = call fastcc i32 @lookup_one_common(ptr noundef nonnull @init_user_ns, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = inttoptr i32 %15 to ptr
  br label %37

19:                                               ; preds = %14
  %20 = call ptr @d_lookup(ptr noundef %1, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26, !prof !10

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 64
  %30 = call i32 %29(ptr noundef nonnull %20, i32 noundef 0) #13
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %37, !prof !8

32:                                               ; preds = %26
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  call void @d_invalidate(ptr noundef nonnull %20) #13
  br label %35

35:                                               ; preds = %34, %32
  call void @dput(ptr noundef nonnull %20) #13
  %36 = inttoptr i32 %30 to ptr
  br label %37

37:                                               ; preds = %35, %26, %22, %19, %17
  %38 = phi ptr [ %18, %17 ], [ %36, %35 ], [ null, %19 ], [ %20, %26 ], [ %20, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lookup_one_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 1
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 1
  store i32 %3, ptr %7, align 4
  %8 = ptrtoint ptr %2 to i32
  %9 = icmp eq i32 %3, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = mul i32 %8, 1640531527
  store i32 %11, ptr %4, align 8
  br label %96

12:                                               ; preds = %20, %5
  %13 = phi i32 [ %26, %20 ], [ %8, %5 ]
  %14 = phi i32 [ %24, %20 ], [ 0, %5 ]
  %15 = phi i32 [ %28, %20 ], [ %3, %5 ]
  %16 = phi ptr [ %27, %20 ], [ %1, %5 ]
  %17 = tail call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %16, ptr elementtype(i32) %16) #15, !srcloc !17
  %18 = icmp ult i32 %15, 4
  %19 = extractvalue { i32, i32 } %17, 0
  br i1 %18, label %30, label %20

20:                                               ; preds = %12
  %21 = xor i32 %19, %14
  %22 = xor i32 %21, %13
  %23 = tail call i32 @llvm.fshl.i32(i32 %21, i32 %21, i32 7) #13
  %24 = add i32 %23, %22
  %25 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 20) #13
  %26 = mul i32 %25, 9
  %27 = getelementptr i8, ptr %16, i32 4
  %28 = add i32 %15, -4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %12

30:                                               ; preds = %12
  %31 = extractvalue { i32, i32 } %17, 0
  %32 = shl nuw nsw i32 %15, 3
  %33 = shl nsw i32 -1, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = xor i32 %35, %14
  br label %37

37:                                               ; preds = %30, %20
  %38 = phi i32 [ %13, %30 ], [ %26, %20 ]
  %39 = phi i32 [ %36, %30 ], [ %24, %20 ]
  %40 = mul i32 %39, 1640531527
  %41 = xor i32 %40, %38
  %42 = mul i32 %41, 1640531527
  store i32 %42, ptr %4, align 8
  %43 = load i8, ptr %1, align 1
  %44 = icmp eq i8 %43, 46
  br i1 %44, label %45, label %53, !prof !8

45:                                               ; preds = %37
  %46 = icmp slt i32 %3, 2
  br i1 %46, label %96, label %47

47:                                               ; preds = %45
  %48 = icmp eq i32 %3, 2
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr i8, ptr %1, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 46
  br i1 %52, label %96, label %53

53:                                               ; preds = %49, %47, %37
  br label %54

54:                                               ; preds = %58, %53
  %55 = phi i32 [ %59, %58 ], [ %3, %53 ]
  %56 = phi ptr [ %60, %58 ], [ %1, %53 ]
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = add i32 %55, -1
  %60 = getelementptr i8, ptr %56, i32 1
  %61 = load i8, ptr %56, align 1
  switch i8 %61, label %54 [
    i8 47, label %96
    i8 0, label %96
  ]

62:                                               ; preds = %54
  %63 = load i32, ptr %2, align 8
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 8
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.dentry_operations, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = tail call i32 %70(ptr noundef %2, ptr noundef %4) #13
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %96

73:                                               ; preds = %66, %62
  %74 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 1
  %77 = load i16, ptr %76, align 2
  %78 = and i16 %77, 1
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %94, !prof !8

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 7
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.inode_operations, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !8

86:                                               ; preds = %80
  %87 = tail call i32 %84(ptr noundef %0, ptr noundef %75, i32 noundef 1) #13
  br label %96

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %89) #13
  %90 = load i16, ptr %76, align 2
  %91 = or i16 %90, 1
  store i16 %91, ptr %76, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %92 = load i16, ptr %89, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %89, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %94

94:                                               ; preds = %88, %73
  %95 = tail call i32 @generic_permission(ptr noundef %0, ptr noundef %75, i32 noundef 1) #13
  br label %96

96:                                               ; preds = %94, %86, %66, %58, %58, %49, %45, %10
  %97 = phi i32 [ %71, %66 ], [ -13, %49 ], [ -13, %45 ], [ -13, %10 ], [ %87, %86 ], [ %95, %94 ], [ -13, %58 ], [ -13, %58 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_one_len(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.qstr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !19
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @lookup_one_len.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %3
  store i1 true, ptr @lookup_one_len.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2729, i32 noundef 9, ptr noundef null) #13
  br label %14

14:                                               ; preds = %13, %3
  %15 = call fastcc i32 @lookup_one_common(ptr noundef nonnull @init_user_ns, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = inttoptr i32 %15 to ptr
  br label %39

19:                                               ; preds = %14
  %20 = call ptr @d_lookup(ptr noundef %1, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %39, label %26, !prof !10

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 64
  %30 = call i32 %29(ptr noundef nonnull %20, i32 noundef 0) #13
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %39, !prof !8

32:                                               ; preds = %26
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  call void @d_invalidate(ptr noundef nonnull %20) #13
  call void @dput(ptr noundef nonnull %20) #13
  br label %37

35:                                               ; preds = %32
  call void @dput(ptr noundef nonnull %20) #13
  %36 = inttoptr i32 %30 to ptr
  br label %39

37:                                               ; preds = %34, %19
  %38 = call fastcc ptr @__lookup_slow(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 0)
  br label %39

39:                                               ; preds = %37, %35, %26, %22, %17
  %40 = phi ptr [ %18, %17 ], [ %38, %37 ], [ %36, %35 ], [ %20, %26 ], [ %20, %22 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret ptr %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__lookup_slow(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_head, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %7 = getelementptr inbounds %struct.wait_queue_head, ptr %4, i32 0, i32 1
  store i32 0, ptr %4, align 4
  store ptr %7, ptr %7, align 4
  %8 = getelementptr inbounds %struct.wait_queue_head, ptr %4, i32 0, i32 1, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52, !prof !10

13:                                               ; preds = %3
  %14 = call ptr @d_alloc_parallel(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %4) #13
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %52, label %16

16:                                               ; preds = %34, %13
  %17 = phi ptr [ %35, %34 ], [ %14, %13 ]
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37, !prof !8

21:                                               ; preds = %16
  %22 = and i32 %18, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %52, label %24, !prof !10

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %26, align 64
  %28 = call i32 %27(ptr noundef %17, i32 noundef %2) #13
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %52, !prof !8

30:                                               ; preds = %24
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  call void @dput(ptr noundef %17) #13
  %33 = inttoptr i32 %28 to ptr
  br label %52

34:                                               ; preds = %30
  call void @d_invalidate(ptr noundef %17) #13
  call void @dput(ptr noundef %17) #13
  %35 = call ptr @d_alloc_parallel(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %4) #13
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %52, label %16

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %39, align 64
  %41 = call ptr %40(ptr noundef %6, ptr noundef %17, i32 noundef %2) #13
  %42 = load i32, ptr %17, align 8
  %43 = and i32 %42, 268435456
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !10

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %46) #13
  call void @__d_lookup_done(ptr noundef %17) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %49

49:                                               ; preds = %45, %37
  %50 = icmp eq ptr %41, null
  br i1 %50, label %52, label %51, !prof !10

51:                                               ; preds = %49
  call void @dput(ptr noundef %17) #13
  br label %52

52:                                               ; preds = %51, %49, %34, %32, %24, %21, %13, %3
  %53 = phi ptr [ %41, %51 ], [ %17, %49 ], [ inttoptr (i32 -2 to ptr), %3 ], [ %33, %32 ], [ %14, %13 ], [ %35, %34 ], [ %17, %24 ], [ %17, %21 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret ptr %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.qstr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !19
  %6 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = load i1, ptr @lookup_one.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %4
  store i1 true, ptr @lookup_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2759, i32 noundef 9, ptr noundef null) #13
  br label %15

15:                                               ; preds = %14, %4
  %16 = call fastcc i32 @lookup_one_common(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = inttoptr i32 %16 to ptr
  br label %40

20:                                               ; preds = %15
  %21 = call ptr @d_lookup(ptr noundef %2, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %21, align 8
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27, !prof !10

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 8
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 64
  %31 = call i32 %30(ptr noundef nonnull %21, i32 noundef 0) #13
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %40, !prof !8

33:                                               ; preds = %27
  %34 = icmp eq i32 %31, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  call void @d_invalidate(ptr noundef nonnull %21) #13
  call void @dput(ptr noundef nonnull %21) #13
  br label %38

36:                                               ; preds = %33
  call void @dput(ptr noundef nonnull %21) #13
  %37 = inttoptr i32 %31 to ptr
  br label %40

38:                                               ; preds = %35, %20
  %39 = call fastcc ptr @__lookup_slow(ptr noundef nonnull %5, ptr noundef %2, i32 noundef 0)
  br label %40

40:                                               ; preds = %38, %36, %27, %23, %18
  %41 = phi ptr [ %19, %18 ], [ %39, %38 ], [ %37, %36 ], [ %21, %27 ], [ %21, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_one_len_unlocked(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.qstr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !19
  %5 = call fastcc i32 @lookup_one_common(ptr noundef nonnull @init_user_ns, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = inttoptr i32 %5 to ptr
  br label %32

9:                                                ; preds = %3
  %10 = call ptr @d_lookup(ptr noundef %1, ptr noundef nonnull %4) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %32, label %16, !prof !10

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %18, align 64
  %20 = call i32 %19(ptr noundef nonnull %10, i32 noundef 0) #13
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %32, !prof !8

22:                                               ; preds = %16
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  call void @d_invalidate(ptr noundef nonnull %10) #13
  call void @dput(ptr noundef nonnull %10) #13
  br label %27

25:                                               ; preds = %22
  call void @dput(ptr noundef nonnull %10) #13
  %26 = inttoptr i32 %20 to ptr
  br label %32

27:                                               ; preds = %24, %9
  %28 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 24
  call void @down_read(ptr noundef %30) #13
  %31 = call fastcc ptr @__lookup_slow(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 0) #13
  call void @up_read(ptr noundef %30) #13
  br label %32

32:                                               ; preds = %27, %25, %16, %12, %7
  %33 = phi ptr [ %8, %7 ], [ %26, %25 ], [ %31, %27 ], [ %10, %16 ], [ %10, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lookup_slow(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @down_read(ptr noundef %6) #13
  %7 = tail call fastcc ptr @__lookup_slow(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  tail call void @up_read(ptr noundef %6) #13
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lookup_positive_unlocked(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @lookup_one_len_unlocked(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load volatile i32, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %8 = and i32 %7, 7340032
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @dput(ptr noundef %4) #13
  br label %11

11:                                               ; preds = %10, %6, %3
  %12 = phi ptr [ %4, %3 ], [ inttoptr (i32 -2 to ptr), %10 ], [ %4, %6 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @path_pts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.qstr, align 8
  %4 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @dget_parent(ptr noundef %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.path_pts.this, i32 16, i1 false)
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.vfsmount, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 13
  %12 = load ptr, ptr %11, align 64
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = tail call zeroext i1 @is_subdir(ptr noundef %6, ptr noundef %10) #13
  br i1 %15, label %17, label %16, !prof !10

16:                                               ; preds = %14
  tail call void @dput(ptr noundef %6) #13
  br label %34

17:                                               ; preds = %14, %1
  %18 = load ptr, ptr %4, align 4
  tail call void @dput(ptr noundef %18) #13
  store ptr %6, ptr %4, align 4
  %19 = call ptr @d_hash_and_lookup(ptr noundef %6, ptr noundef nonnull %3) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  store ptr %19, ptr %4, align 4
  call void @dput(ptr noundef %6) #13
  %22 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  %23 = load ptr, ptr %4, align 4
  %24 = load volatile i32, ptr %23, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %25 = and i32 %24, 458752
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !10

27:                                               ; preds = %21
  %28 = call fastcc i32 @__traverse_mounts(ptr noundef %0, i32 noundef %24, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0) #13
  br label %29

29:                                               ; preds = %27, %21
  %30 = load ptr, ptr %0, align 4
  %31 = icmp eq ptr %30, %22
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @mntput(ptr noundef %22) #13
  br label %33

33:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  br label %34

34:                                               ; preds = %33, %17, %16
  %35 = phi i32 [ -2, %16 ], [ 0, %33 ], [ -2, %17 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_hash_and_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = tail call ptr @getname_flags(ptr noundef %1, i32 noundef %2, ptr noundef %4)
  %7 = tail call i32 @filename_lookup(i32 noundef %0, ptr noundef %6, i32 noundef %2, ptr noundef %3, ptr noundef null)
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.filename, ptr %6, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

14:                                               ; preds = %9
  %15 = add nsw i32 %11, -1
  store i32 %15, ptr %10, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.filename, ptr %6, i32 0, i32 4
  %20 = icmp eq ptr %18, %19
  %21 = load ptr, ptr @names_cachep, align 4
  br i1 %20, label %23, label %22

22:                                               ; preds = %17
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %18) #13
  tail call void @kfree(ptr noundef %6) #13
  br label %24

23:                                               ; preds = %17
  tail call void @kmem_cache_free(ptr noundef %21, ptr noundef %6) #13
  br label %24

24:                                               ; preds = %23, %22, %14, %5
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__check_sticky(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #13
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 83
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.cred, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %8
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %8
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef %2, i32 noundef 3) #13
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %16, %12, %3
  %21 = phi i32 [ %19, %16 ], [ 0, %3 ], [ 0, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lock_rename(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = tail call ptr @d_ancestor(ptr noundef %1, ptr noundef %0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @d_ancestor(ptr noundef %0, ptr noundef %1) #13
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi ptr [ %0, %10 ], [ %1, %4 ]
  %14 = phi ptr [ %1, %10 ], [ %0, %4 ]
  %15 = phi ptr [ %11, %10 ], [ %8, %4 ]
  %16 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 24
  tail call void @down_write(ptr noundef %18) #13
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi ptr [ %0, %2 ], [ %14, %12 ]
  %21 = phi ptr [ null, %2 ], [ %15, %12 ]
  %22 = getelementptr inbounds %struct.dentry, ptr %20, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 24
  tail call void @down_write(ptr noundef %24) #13
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_ancestor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlock_rename(ptr noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  tail call void @up_write(ptr noundef %5) #13
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  tail call void @up_write(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %13) #13
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.thread.pointer() #13
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 83
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %48, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.cred, ptr %17, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef 3) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.inode_operations, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %28
  %35 = and i16 %3, 4095
  %36 = or i16 %35, -32768
  %37 = tail call i32 %32(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %36, i1 noundef zeroext %4) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 42
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %47 = tail call i32 @fsnotify(i32 noundef 256, ptr noundef %2, i32 noundef 3, ptr noundef %1, ptr noundef %46, ptr noundef null, i32 noundef 0) #13
  br label %48

48:                                               ; preds = %45, %39, %34, %28, %25, %21, %14, %9, %5
  %49 = phi i32 [ %26, %25 ], [ -13, %28 ], [ %37, %34 ], [ 0, %39 ], [ 0, %45 ], [ -75, %14 ], [ -75, %21 ], [ -2, %9 ], [ -17, %5 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_mkobj(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %45

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = tail call ptr @llvm.thread.pointer() #13
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 83
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %45, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %8, i32 noundef 3) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = and i16 %1, 4095
  %33 = or i16 %32, -32768
  %34 = tail call i32 %2(ptr noundef %0, i16 noundef zeroext %33, ptr noundef %3) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 42
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %44 = tail call i32 @fsnotify(i32 noundef 256, ptr noundef %0, i32 noundef 3, ptr noundef %8, ptr noundef %43, ptr noundef null, i32 noundef 0) #13
  br label %45

45:                                               ; preds = %42, %36, %31, %28, %24, %17, %12, %4
  %46 = phi i32 [ %29, %28 ], [ %34, %31 ], [ 0, %36 ], [ 0, %42 ], [ -75, %17 ], [ -75, %24 ], [ -2, %12 ], [ -17, %4 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @may_open_dev(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vfsmount, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i1 [ false, %1 ], [ %13, %7 ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vfs_tmpfile(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %6, i32 noundef 3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode_operations, ptr %11, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %9
  %16 = tail call ptr @d_alloc(ptr noundef %1, ptr noundef nonnull @slash_name) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18, !prof !8

18:                                               ; preds = %15
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds %struct.inode_operations, ptr %19, i32 0, i32 19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %16, i16 noundef zeroext %2) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28, !prof !8

28:                                               ; preds = %24
  %29 = and i32 %3, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %32) #13
  %33 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 23
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, 1024
  store i32 %35, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %36 = load i16, ptr %32, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %42

38:                                               ; preds = %24, %18, %15, %9, %4
  %39 = phi ptr [ null, %4 ], [ null, %15 ], [ %16, %18 ], [ %16, %24 ], [ null, %9 ]
  %40 = phi i32 [ %7, %4 ], [ -12, %15 ], [ %22, %18 ], [ -2, %24 ], [ -95, %9 ]
  tail call void @dput(ptr noundef %39) #13
  %41 = inttoptr i32 %40 to ptr
  br label %42

42:                                               ; preds = %38, %31, %28
  %43 = phi ptr [ %41, %38 ], [ %16, %31 ], [ %16, %28 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @do_filp_open(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nameidata, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %5, i8 0, i32 136, i1 false), !annotation !19
  %6 = getelementptr inbounds %struct.open_flags, ptr %2, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 86
  %10 = load ptr, ptr %9, align 16
  %11 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 13
  %12 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 12
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 17
  store i32 %0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 14
  store ptr %1, ptr %14, align 8
  store ptr null, ptr %4, align 8
  %15 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  store ptr null, ptr %15, align 4
  %16 = icmp eq ptr %10, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.nameidata, ptr %10, i32 0, i32 11
  %19 = load i32, ptr %18, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i32 [ %19, %17 ], [ 0, %3 ]
  %22 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 11
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 15
  store ptr %10, ptr %23, align 4
  store ptr %4, ptr %9, align 16
  %24 = or i32 %7, 64
  %25 = call fastcc ptr @path_openat(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %24)
  %26 = icmp eq ptr %25, inttoptr (i32 -10 to ptr)
  br i1 %26, label %27, label %29, !prof !8

27:                                               ; preds = %20
  %28 = call fastcc ptr @path_openat(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %7)
  br label %29

29:                                               ; preds = %27, %20
  %30 = phi ptr [ %28, %27 ], [ %25, %20 ]
  %31 = icmp eq ptr %30, inttoptr (i32 -116 to ptr)
  br i1 %31, label %32, label %35, !prof !8

32:                                               ; preds = %29
  %33 = or i32 %7, 32
  %34 = call fastcc ptr @path_openat(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi ptr [ %34, %32 ], [ %30, %29 ]
  %37 = load ptr, ptr %9, align 16
  %38 = getelementptr inbounds %struct.nameidata, ptr %37, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  store ptr %39, ptr %9, align 16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nameidata, ptr %37, i32 0, i32 11
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nameidata, ptr %39, i32 0, i32 11
  store i32 %43, ptr %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = getelementptr inbounds %struct.nameidata, ptr %37, i32 0, i32 12
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nameidata, ptr %37, i32 0, i32 13
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void @kfree(ptr noundef %47) #13
  br label %51

51:                                               ; preds = %50, %45
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #13
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @path_openat(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_head, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = load i32, ptr %1, align 4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 83
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @alloc_empty_file(i32 noundef %7, ptr noundef %10) #13
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %566, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4194304
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !10

18:                                               ; preds = %13
  %19 = tail call fastcc i32 @do_tmpfile(ptr noundef %0, i32 noundef %2, ptr noundef %1, ptr noundef %11)
  br label %549

20:                                               ; preds = %13
  %21 = and i32 %15, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !10

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @do_o_path(ptr noundef %0, i32 noundef %2, ptr noundef %11)
  br label %549

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @path_init(ptr noundef %0, i32 noundef %2)
  %27 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %28 = getelementptr inbounds %struct.open_flags, ptr %1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 9
  %31 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %32 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  %33 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 1
  %34 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 1, i32 1
  %35 = getelementptr inbounds %struct.anon.14, ptr %33, i32 0, i32 1
  %36 = getelementptr inbounds %struct.open_flags, ptr %1, i32 0, i32 1
  %37 = getelementptr inbounds %struct.wait_queue_head, ptr %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.wait_queue_head, ptr %4, i32 0, i32 1, i32 1
  %39 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 8
  %40 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1
  %41 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 1, i32 1
  br label %42

42:                                               ; preds = %394, %25
  %43 = phi ptr [ %26, %25 ], [ %395, %394 ]
  %44 = call fastcc i32 @link_path_walk(ptr noundef %43, ptr noundef %0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %547

46:                                               ; preds = %42
  %47 = load ptr, ptr %27, align 4
  %48 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !19
  %49 = load i32, ptr %28, align 4
  %50 = load i32, ptr %29, align 4
  %51 = or i32 %50, %49
  store i32 %51, ptr %29, align 4
  %52 = load i32, ptr %30, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %79, label %54

54:                                               ; preds = %46
  %55 = load i32, ptr %31, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %32, align 4
  %59 = add i32 %55, -1
  store i32 %59, ptr %31, align 4
  %60 = getelementptr %struct.saved, ptr %58, i32 %59, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr %struct.saved, ptr %58, i32 %59, i32 1, i32 1
  %65 = load ptr, ptr %64, align 4
  call void %61(ptr noundef %65) #13
  %66 = load i32, ptr %29, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %66, %63 ], [ %51, %57 ]
  %69 = and i32 %68, 64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = getelementptr %struct.saved, ptr %58, i32 %59
  %73 = getelementptr inbounds %struct.path, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  call void @dput(ptr noundef %74) #13
  %75 = load ptr, ptr %72, align 4
  call void @mntput(ptr noundef %75) #13
  br label %76

76:                                               ; preds = %71, %67, %54
  %77 = load i32, ptr %30, align 8
  %78 = call fastcc ptr @handle_dots(ptr noundef %0, i32 noundef %77) #13
  br label %394

79:                                               ; preds = %46
  %80 = and i32 %48, 64
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load ptr, ptr %34, align 8
  %84 = load i32, ptr %35, align 4
  %85 = getelementptr i8, ptr %83, i32 %84
  %86 = load i8, ptr %85, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = or i32 %51, 3
  store i32 %89, ptr %29, align 4
  br label %90

90:                                               ; preds = %88, %82
  %91 = call fastcc ptr @lookup_fast(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #13
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %394, label %93

93:                                               ; preds = %90
  %94 = icmp eq ptr %91, null
  br i1 %94, label %95, label %363, !prof !8

95:                                               ; preds = %93
  %96 = load i32, ptr %29, align 4
  %97 = and i32 %96, 64
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99, !prof !10

99:                                               ; preds = %95
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3375, 0\0A.popsection", ""() #13, !srcloc !21
  unreachable

100:                                              ; preds = %79
  %101 = and i32 %51, 64
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = call fastcc zeroext i1 @try_to_unlazy(ptr noundef %0) #13
  br i1 %104, label %105, label %394

105:                                              ; preds = %103, %100
  %106 = load ptr, ptr %34, align 8
  %107 = load i32, ptr %35, align 4
  %108 = getelementptr i8, ptr %106, i32 %107
  %109 = load i8, ptr %108, align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %394, !prof !10

111:                                              ; preds = %105, %95
  %112 = and i32 %48, 579
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %0, align 8
  %116 = call i32 @mnt_want_write(ptr noundef %115) #13
  %117 = icmp eq i32 %116, 0
  br label %118

118:                                              ; preds = %114, %111
  %119 = phi i1 [ %117, %114 ], [ false, %111 ]
  %120 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 5
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.inode, ptr %121, i32 0, i32 24
  br i1 %81, label %124, label %123

123:                                              ; preds = %118
  call void @down_write(ptr noundef %122) #13
  br label %125

124:                                              ; preds = %118
  call void @down_read(ptr noundef %122) #13
  br label %125

125:                                              ; preds = %124, %123
  %126 = load ptr, ptr %27, align 4
  %127 = getelementptr inbounds %struct.dentry, ptr %126, i32 0, i32 5
  %128 = load ptr, ptr %127, align 8
  %129 = load i32, ptr %1, align 4
  %130 = load i16, ptr %36, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  store ptr %37, ptr %37, align 4
  store ptr %37, ptr %38, align 4
  %131 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 4
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135, !prof !10

135:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %346

136:                                              ; preds = %125
  %137 = load i32, ptr %39, align 8
  %138 = and i32 %137, -1048577
  store i32 %138, ptr %39, align 8
  %139 = call ptr @d_lookup(ptr noundef %126, ptr noundef %33) #13
  br label %140

140:                                              ; preds = %160, %136
  %141 = phi ptr [ %139, %136 ], [ null, %160 ]
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = call ptr @d_alloc_parallel(ptr noundef %126, ptr noundef %33, ptr noundef nonnull %4) #13
  %145 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %145, label %329, label %146

146:                                              ; preds = %143, %140
  %147 = phi ptr [ %141, %140 ], [ %144, %143 ]
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 268435460
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %151, label %161, !prof !22

151:                                              ; preds = %146
  %152 = load i32, ptr %29, align 4
  %153 = getelementptr inbounds %struct.dentry, ptr %147, i32 0, i32 8
  %154 = load ptr, ptr %153, align 8
  %155 = load ptr, ptr %154, align 64
  %156 = call i32 %155(ptr noundef %147, i32 noundef %152) #13
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %161, label %158, !prof !10

158:                                              ; preds = %151
  %159 = icmp eq i32 %156, 0
  br i1 %159, label %160, label %325

160:                                              ; preds = %158
  call void @d_invalidate(ptr noundef %147) #13
  call void @dput(ptr noundef %147) #13
  br label %140

161:                                              ; preds = %151, %146
  %162 = getelementptr inbounds %struct.dentry, ptr %147, i32 0, i32 5
  %163 = load ptr, ptr %162, align 8
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %329

165:                                              ; preds = %161
  br i1 %119, label %168, label %166, !prof !10

166:                                              ; preds = %165
  %167 = and i32 %129, -513
  br label %168

168:                                              ; preds = %166, %165
  %169 = phi i32 [ %167, %166 ], [ %129, %165 ]
  %170 = load ptr, ptr %0, align 8
  %171 = getelementptr inbounds %struct.vfsmount, ptr %170, i32 0, i32 3
  %172 = load volatile ptr, ptr %171, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %173 = and i32 %169, 64
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %208, label %175

175:                                              ; preds = %168
  %176 = and i32 %169, 128
  %177 = icmp eq i32 %176, 0
  %178 = and i32 %169, -513
  %179 = select i1 %177, i32 %169, i32 %178
  %180 = load ptr, ptr %127, align 8
  %181 = getelementptr inbounds %struct.inode, ptr %180, i32 0, i32 8
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.super_block, ptr %182, i32 0, i32 10
  %184 = load i32, ptr %183, align 4
  %185 = and i32 %184, 65536
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %175
  %188 = call i32 @current_umask() #13
  %189 = trunc i32 %188 to i16
  %190 = xor i16 %189, -1
  %191 = and i16 %130, %190
  br label %192

192:                                              ; preds = %187, %175
  %193 = phi i16 [ %130, %175 ], [ %191, %187 ]
  br i1 %119, label %194, label %208, !prof !10

194:                                              ; preds = %192
  %195 = load ptr, ptr %27, align 4
  %196 = load ptr, ptr %9, align 8
  %197 = getelementptr inbounds %struct.cred, ptr %196, i32 0, i32 7
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, -1
  br i1 %199, label %208, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.cred, ptr %196, i32 0, i32 8
  %202 = load i32, ptr %201, align 4
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %208, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.dentry, ptr %195, i32 0, i32 5
  %206 = load ptr, ptr %205, align 8
  %207 = call i32 @inode_permission(ptr noundef %172, ptr noundef %206, i32 noundef 3) #13
  br label %208

208:                                              ; preds = %204, %200, %194, %192, %168
  %209 = phi i32 [ %169, %168 ], [ %179, %192 ], [ %179, %194 ], [ %179, %200 ], [ %179, %204 ]
  %210 = phi i32 [ 0, %168 ], [ -30, %192 ], [ -75, %194 ], [ -75, %200 ], [ %207, %204 ]
  %211 = phi i16 [ %130, %168 ], [ %193, %192 ], [ %193, %194 ], [ %193, %200 ], [ %193, %204 ]
  %212 = icmp eq i32 %210, 0
  %213 = and i32 %209, -65
  %214 = select i1 %212, i32 %209, i32 %213
  %215 = getelementptr inbounds %struct.inode, ptr %128, i32 0, i32 7
  %216 = load ptr, ptr %215, align 8
  %217 = getelementptr inbounds %struct.inode_operations, ptr %216, i32 0, i32 18
  %218 = load ptr, ptr %217, align 8
  %219 = icmp eq ptr %218, null
  br i1 %219, label %279, label %220

220:                                              ; preds = %208
  %221 = load ptr, ptr %27, align 4
  %222 = getelementptr inbounds %struct.dentry, ptr %221, i32 0, i32 5
  %223 = load ptr, ptr %222, align 8
  %224 = load i32, ptr %29, align 4
  %225 = shl i32 %224, 13
  %226 = and i32 %225, 16384
  %227 = or i32 %226, %214
  store ptr inttoptr (i32 -1 to ptr), ptr %41, align 4
  %228 = load ptr, ptr %0, align 8
  store ptr %228, ptr %40, align 8
  %229 = getelementptr inbounds %struct.inode, ptr %223, i32 0, i32 7
  %230 = load ptr, ptr %229, align 8
  %231 = getelementptr inbounds %struct.inode_operations, ptr %230, i32 0, i32 18
  %232 = load ptr, ptr %231, align 8
  %233 = and i32 %214, 3
  %234 = icmp eq i32 %233, 3
  %235 = sext i1 %234 to i32
  %236 = add i32 %227, %235
  %237 = call i32 %232(ptr noundef %223, ptr noundef %147, ptr noundef %11, i32 noundef %236, i16 noundef zeroext %211) #13
  %238 = load i32, ptr %147, align 8
  %239 = and i32 %238, 268435456
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %245, label %241, !prof !10

241:                                              ; preds = %220
  %242 = getelementptr inbounds %struct.dentry, ptr %147, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %242) #13
  call void @__d_lookup_done(ptr noundef %147) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %243 = load i16, ptr %242, align 4
  %244 = add i16 %243, 1
  store i16 %244, ptr %242, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %245

245:                                              ; preds = %241, %220
  %246 = icmp eq i32 %237, 0
  br i1 %246, label %247, label %269

247:                                              ; preds = %245
  %248 = load i32, ptr %39, align 8
  %249 = and i32 %248, 524288
  %250 = icmp eq i32 %249, 0
  %251 = load ptr, ptr %41, align 4
  br i1 %250, label %259, label %252

252:                                              ; preds = %247
  %253 = icmp eq ptr %251, %147
  br i1 %253, label %273, label %254, !prof !10

254:                                              ; preds = %252
  call void @dput(ptr noundef %147) #13
  %255 = load ptr, ptr %41, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %273, label %257

257:                                              ; preds = %254
  %258 = getelementptr inbounds %struct.dentry, ptr %255, i32 0, i32 7
  call void @lockref_get(ptr noundef %258) #13
  br label %273

259:                                              ; preds = %247
  %260 = ptrtoint ptr %251 to i32
  switch i32 %260, label %262 [
    i32 -1, label %261
    i32 0, label %264
  ], !prof !24

261:                                              ; preds = %259
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3201, i32 noundef 9, ptr noundef null) #13
  br label %269

262:                                              ; preds = %259
  call void @dput(ptr noundef %147) #13
  %263 = load ptr, ptr %41, align 4
  br label %264

264:                                              ; preds = %262, %259
  %265 = phi ptr [ %263, %262 ], [ %147, %259 ]
  %266 = load i32, ptr %265, align 8
  %267 = and i32 %266, 7340032
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %273, !prof !8

269:                                              ; preds = %264, %261, %245
  %270 = phi i32 [ %237, %245 ], [ -5, %261 ], [ -2, %264 ]
  %271 = phi ptr [ %147, %245 ], [ %147, %261 ], [ %265, %264 ]
  call void @dput(ptr noundef %271) #13
  %272 = inttoptr i32 %270 to ptr
  br label %273

273:                                              ; preds = %269, %264, %257, %254, %252
  %274 = phi ptr [ %272, %269 ], [ %255, %257 ], [ null, %254 ], [ %265, %264 ], [ %147, %252 ]
  br i1 %212, label %329, label %275, !prof !10

275:                                              ; preds = %273
  %276 = icmp eq ptr %274, inttoptr (i32 -2 to ptr)
  %277 = inttoptr i32 %210 to ptr
  %278 = select i1 %276, ptr %277, ptr %274
  br label %329

279:                                              ; preds = %208
  %280 = load i32, ptr %147, align 8
  %281 = and i32 %280, 268435456
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %301, label %283

283:                                              ; preds = %279
  %284 = load ptr, ptr %216, align 64
  %285 = load i32, ptr %29, align 4
  %286 = call ptr %284(ptr noundef %128, ptr noundef %147, i32 noundef %285) #13
  %287 = load i32, ptr %147, align 8
  %288 = and i32 %287, 268435456
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %294, label %290, !prof !10

290:                                              ; preds = %283
  %291 = getelementptr inbounds %struct.dentry, ptr %147, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %291) #13
  call void @__d_lookup_done(ptr noundef %147) #13
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %292 = load i16, ptr %291, align 4
  %293 = add i16 %292, 1
  store i16 %293, ptr %291, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %294

294:                                              ; preds = %290, %283
  %295 = icmp eq ptr %286, null
  br i1 %295, label %301, label %296, !prof !10

296:                                              ; preds = %294
  %297 = icmp ugt ptr %286, inttoptr (i32 -4096 to ptr)
  br i1 %297, label %299, label %298

298:                                              ; preds = %296
  call void @dput(ptr noundef %147) #13
  br label %301

299:                                              ; preds = %296
  %300 = ptrtoint ptr %286 to i32
  br label %325

301:                                              ; preds = %298, %294, %279
  %302 = phi ptr [ %147, %279 ], [ %147, %294 ], [ %286, %298 ]
  %303 = getelementptr inbounds %struct.dentry, ptr %302, i32 0, i32 5
  %304 = load ptr, ptr %303, align 8
  %305 = icmp ne ptr %304, null
  %306 = and i32 %214, 64
  %307 = icmp eq i32 %306, 0
  %308 = select i1 %305, i1 true, i1 %307
  br i1 %308, label %321, label %309

309:                                              ; preds = %301
  %310 = load i32, ptr %39, align 8
  %311 = or i32 %310, 1048576
  store i32 %311, ptr %39, align 8
  %312 = load ptr, ptr %215, align 8
  %313 = getelementptr inbounds %struct.inode_operations, ptr %312, i32 0, i32 5
  %314 = load ptr, ptr %313, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %325, label %316

316:                                              ; preds = %309
  %317 = and i32 %214, 128
  %318 = icmp ne i32 %317, 0
  %319 = call i32 %314(ptr noundef %172, ptr noundef %128, ptr noundef %302, i16 noundef zeroext %211, i1 noundef zeroext %318) #13
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %316, %301
  br i1 %212, label %329, label %322, !prof !10

322:                                              ; preds = %321
  %323 = load ptr, ptr %303, align 8
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %329

325:                                              ; preds = %322, %316, %309, %299, %158
  %326 = phi ptr [ %147, %299 ], [ %302, %316 ], [ %302, %309 ], [ %302, %322 ], [ %147, %158 ]
  %327 = phi i32 [ %300, %299 ], [ %319, %316 ], [ -13, %309 ], [ %210, %322 ], [ %156, %158 ]
  call void @dput(ptr noundef %326) #13
  %328 = inttoptr i32 %327 to ptr
  br label %329

329:                                              ; preds = %325, %322, %321, %275, %273, %161, %143
  %330 = phi ptr [ %328, %325 ], [ %147, %161 ], [ %274, %273 ], [ %302, %322 ], [ %302, %321 ], [ %278, %275 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %331 = icmp ugt ptr %330, inttoptr (i32 -4096 to ptr)
  br i1 %331, label %346, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %39, align 8
  %334 = and i32 %333, 1048576
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %346, label %336

336:                                              ; preds = %332
  %337 = load ptr, ptr %120, align 8
  %338 = getelementptr inbounds %struct.inode, ptr %337, i32 0, i32 8
  %339 = load ptr, ptr %338, align 4
  %340 = getelementptr inbounds %struct.super_block, ptr %339, i32 0, i32 42
  %341 = load volatile i32, ptr %340, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %336
  %344 = getelementptr inbounds %struct.dentry, ptr %330, i32 0, i32 4
  %345 = call i32 @fsnotify(i32 noundef 256, ptr noundef %330, i32 noundef 3, ptr noundef %337, ptr noundef %344, ptr noundef null, i32 noundef 0) #13
  br label %346

346:                                              ; preds = %343, %336, %332, %329, %135
  %347 = phi i1 [ true, %135 ], [ false, %332 ], [ true, %329 ], [ false, %336 ], [ false, %343 ]
  %348 = phi ptr [ inttoptr (i32 -2 to ptr), %135 ], [ %330, %332 ], [ %330, %329 ], [ %330, %336 ], [ %330, %343 ]
  %349 = load ptr, ptr %120, align 8
  %350 = getelementptr inbounds %struct.inode, ptr %349, i32 0, i32 24
  br i1 %81, label %352, label %351

351:                                              ; preds = %346
  call void @up_write(ptr noundef %350) #13
  br label %353

352:                                              ; preds = %346
  call void @up_read(ptr noundef %350) #13
  br label %353

353:                                              ; preds = %352, %351
  br i1 %119, label %354, label %356

354:                                              ; preds = %353
  %355 = load ptr, ptr %0, align 8
  call void @mnt_drop_write(ptr noundef %355) #13
  br label %356

356:                                              ; preds = %354, %353
  br i1 %347, label %394, label %357

357:                                              ; preds = %356
  %358 = load i32, ptr %39, align 8
  %359 = and i32 %358, 1572864
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %357
  %362 = load ptr, ptr %27, align 4
  call void @dput(ptr noundef %362) #13
  store ptr %348, ptr %27, align 4
  br label %393

363:                                              ; preds = %357, %93
  %364 = phi ptr [ %348, %357 ], [ %91, %93 ]
  %365 = load i32, ptr %31, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %385, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %32, align 4
  %369 = add i32 %365, -1
  store i32 %369, ptr %31, align 4
  %370 = getelementptr %struct.saved, ptr %368, i32 %369, i32 1
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %376, label %373

373:                                              ; preds = %367
  %374 = getelementptr %struct.saved, ptr %368, i32 %369, i32 1, i32 1
  %375 = load ptr, ptr %374, align 4
  call void %371(ptr noundef %375) #13
  br label %376

376:                                              ; preds = %373, %367
  %377 = load i32, ptr %29, align 4
  %378 = and i32 %377, 64
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %385

380:                                              ; preds = %376
  %381 = getelementptr %struct.saved, ptr %368, i32 %369
  %382 = getelementptr inbounds %struct.path, ptr %381, i32 0, i32 1
  %383 = load ptr, ptr %382, align 4
  call void @dput(ptr noundef %383) #13
  %384 = load ptr, ptr %381, align 4
  call void @mntput(ptr noundef %384) #13
  br label %385

385:                                              ; preds = %380, %376, %363
  %386 = load ptr, ptr %6, align 4
  %387 = load i32, ptr %5, align 4
  %388 = call fastcc ptr @step_into(ptr noundef %0, i32 noundef 1, ptr noundef %364, ptr noundef %386, i32 noundef %387) #13
  %389 = icmp eq ptr %388, null
  br i1 %389, label %393, label %390, !prof !10

390:                                              ; preds = %385
  %391 = load i32, ptr %29, align 4
  %392 = and i32 %391, -1793
  store i32 %392, ptr %29, align 4
  br label %394

393:                                              ; preds = %385, %361
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %397

394:                                              ; preds = %390, %356, %105, %103, %90, %76
  %395 = phi ptr [ %78, %76 ], [ %388, %390 ], [ %91, %90 ], [ inttoptr (i32 -10 to ptr), %103 ], [ inttoptr (i32 -21 to ptr), %105 ], [ %348, %356 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %42

397:                                              ; preds = %394, %393
  %398 = load i32, ptr %1, align 4
  %399 = load i32, ptr %39, align 8
  %400 = and i32 %399, 1572864
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = call fastcc i32 @complete_walk(ptr noundef %0) #13
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %547

405:                                              ; preds = %402, %397
  %406 = load ptr, ptr %0, align 8
  %407 = getelementptr inbounds %struct.vfsmount, ptr %406, i32 0, i32 3
  %408 = load volatile ptr, ptr %407, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %409 = and i32 %398, 64
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %474, label %411

411:                                              ; preds = %405
  %412 = and i32 %398, 128
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %411
  %415 = load i32, ptr %39, align 8
  %416 = and i32 %415, 1048576
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %547, label %418

418:                                              ; preds = %414, %411
  %419 = load ptr, ptr %27, align 4
  %420 = load i32, ptr %419, align 8
  %421 = and i32 %420, 6291456
  %422 = icmp eq i32 %421, 2097152
  br i1 %422, label %547, label %423

423:                                              ; preds = %418
  %424 = getelementptr inbounds %struct.dentry, ptr %419, i32 0, i32 5
  %425 = load ptr, ptr %424, align 8
  %426 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 19
  %427 = load i16, ptr %426, align 4
  %428 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 18
  %429 = load i32, ptr %428, align 8
  %430 = load i32, ptr @sysctl_protected_fifos, align 4
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %423
  %433 = load i16, ptr %425, align 8
  %434 = and i16 %433, -4096
  %435 = icmp eq i16 %434, 4096
  br i1 %435, label %474, label %436

436:                                              ; preds = %432, %423
  %437 = load i32, ptr @sysctl_protected_regular, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %443

439:                                              ; preds = %436
  %440 = load i16, ptr %425, align 8
  %441 = and i16 %440, -4096
  %442 = icmp eq i16 %441, -32768
  br i1 %442, label %474, label %443

443:                                              ; preds = %439, %436
  %444 = zext i16 %427 to i32
  %445 = and i32 %444, 512
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %474, label %447, !prof !10

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.inode, ptr %425, i32 0, i32 2
  %449 = load i32, ptr %448, align 4
  %450 = icmp eq i32 %449, %429
  br i1 %450, label %474, label %451

451:                                              ; preds = %447
  %452 = load ptr, ptr %9, align 8
  %453 = getelementptr inbounds %struct.cred, ptr %452, i32 0, i32 7
  %454 = load i32, ptr %453, align 4
  %455 = icmp eq i32 %454, %449
  br i1 %455, label %474, label %456

456:                                              ; preds = %451
  %457 = and i32 %444, 2
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %547, !prof !8

459:                                              ; preds = %456
  %460 = and i32 %444, 16
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %474, label %462

462:                                              ; preds = %459
  %463 = icmp sgt i32 %430, 1
  br i1 %463, label %464, label %468

464:                                              ; preds = %462
  %465 = load i16, ptr %425, align 8
  %466 = and i16 %465, -4096
  %467 = icmp eq i16 %466, 4096
  br i1 %467, label %547, label %468

468:                                              ; preds = %464, %462
  %469 = icmp sgt i32 %437, 1
  br i1 %469, label %470, label %474

470:                                              ; preds = %468
  %471 = load i16, ptr %425, align 8
  %472 = and i16 %471, -4096
  %473 = icmp eq i16 %472, -32768
  br i1 %473, label %547, label %474

474:                                              ; preds = %470, %468, %459, %451, %447, %443, %439, %432, %405
  %475 = load i32, ptr %29, align 4
  %476 = and i32 %475, 2
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %483, label %478

478:                                              ; preds = %474
  %479 = load ptr, ptr %27, align 4
  %480 = load i32, ptr %479, align 8
  %481 = and i32 %480, 7340032
  %482 = icmp eq i32 %481, 2097152
  br i1 %482, label %483, label %547

483:                                              ; preds = %478, %474
  %484 = getelementptr inbounds %struct.open_flags, ptr %1, i32 0, i32 2
  %485 = load i32, ptr %484, align 4
  %486 = load i32, ptr %39, align 8
  %487 = and i32 %486, 1048576
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %491, label %489

489:                                              ; preds = %483
  %490 = and i32 %398, -513
  br label %503

491:                                              ; preds = %483
  %492 = load ptr, ptr %27, align 4
  %493 = load i32, ptr %492, align 8
  %494 = and i32 %493, 7340032
  %495 = icmp ne i32 %494, 4194304
  %496 = and i32 %398, 512
  %497 = icmp eq i32 %496, 0
  %498 = select i1 %495, i1 true, i1 %497
  br i1 %498, label %503, label %499

499:                                              ; preds = %491
  %500 = load ptr, ptr %0, align 8
  %501 = call i32 @mnt_want_write(ptr noundef %500) #13
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %547

503:                                              ; preds = %499, %491, %489
  %504 = phi i32 [ %490, %489 ], [ %398, %491 ], [ %398, %499 ]
  %505 = phi i1 [ false, %489 ], [ false, %491 ], [ true, %499 ]
  %506 = phi i32 [ 0, %489 ], [ %485, %491 ], [ %485, %499 ]
  %507 = call fastcc i32 @may_open(ptr noundef %408, ptr noundef %0, i32 noundef %506, i32 noundef %504) #13
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %539

509:                                              ; preds = %503
  %510 = load i32, ptr %39, align 8
  %511 = and i32 %510, 524288
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %509
  %514 = call i32 @vfs_open(ptr noundef %0, ptr noundef %11) #13
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %539

516:                                              ; preds = %513, %509
  br i1 %505, label %517, label %547

517:                                              ; preds = %516
  %518 = load ptr, ptr %41, align 4
  %519 = getelementptr inbounds %struct.dentry, ptr %518, i32 0, i32 5
  %520 = load ptr, ptr %519, align 8
  %521 = getelementptr inbounds %struct.inode, ptr %520, i32 0, i32 37
  %522 = load volatile i32, ptr %521, align 4
  br label %523

523:                                              ; preds = %532, %517
  %524 = phi i32 [ %522, %517 ], [ %533, %532 ]
  %525 = icmp slt i32 %524, 0
  br i1 %525, label %543, label %526, !prof !8

526:                                              ; preds = %523
  %527 = add nuw i32 %524, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %521) #13, !srcloc !26
  br label %528

528:                                              ; preds = %528, %526
  %529 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %521, ptr %521, i32 %524, i32 %527, ptr elementtype(i32) %521) #13, !srcloc !27
  %530 = extractvalue { i32, i32 } %529, 0
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %528

532:                                              ; preds = %528
  %533 = extractvalue { i32, i32 } %529, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !28
  %534 = icmp eq i32 %533, %524
  br i1 %534, label %535, label %523, !prof !10

535:                                              ; preds = %532
  %536 = load ptr, ptr %41, align 4
  %537 = call i32 @do_truncate(ptr noundef %408, ptr noundef %536, i64 noundef 0, i32 noundef 32864, ptr noundef %11) #13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %521) #13, !srcloc !26
  %538 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %521, ptr %521, i32 1, ptr elementtype(i32) %521) #13, !srcloc !29
  br label %539

539:                                              ; preds = %535, %513, %503
  %540 = phi i32 [ %537, %535 ], [ %514, %513 ], [ %507, %503 ]
  %541 = icmp sgt i32 %540, 0
  br i1 %541, label %542, label %543, !prof !8

542:                                              ; preds = %539
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3482, i32 noundef 9, ptr noundef null) #13
  br label %543

543:                                              ; preds = %542, %539, %523
  %544 = phi i32 [ -22, %542 ], [ %540, %539 ], [ -26, %523 ]
  br i1 %505, label %545, label %547

545:                                              ; preds = %543
  %546 = load ptr, ptr %0, align 8
  call void @mnt_drop_write(ptr noundef %546) #13
  br label %547

547:                                              ; preds = %545, %543, %516, %499, %478, %470, %464, %456, %418, %414, %402, %42
  %548 = phi i32 [ %403, %402 ], [ -17, %414 ], [ -21, %418 ], [ -20, %478 ], [ %501, %499 ], [ %544, %545 ], [ %544, %543 ], [ -13, %456 ], [ -13, %464 ], [ -13, %470 ], [ 0, %516 ], [ %44, %42 ]
  call fastcc void @terminate_walk(ptr noundef %0)
  br label %549

549:                                              ; preds = %547, %23, %18
  %550 = phi i32 [ %19, %18 ], [ %24, %23 ], [ %548, %547 ]
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %558, !prof !10

552:                                              ; preds = %549
  %553 = getelementptr inbounds %struct.file, ptr %11, i32 0, i32 8
  %554 = load i32, ptr %553, align 8
  %555 = and i32 %554, 524288
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %566, !prof !8

557:                                              ; preds = %552
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3615, i32 noundef 9, ptr noundef null) #13
  br label %558

558:                                              ; preds = %557, %549
  %559 = phi i32 [ -22, %557 ], [ %550, %549 ]
  call void @fput(ptr noundef %11) #13
  %560 = icmp eq i32 %559, -518
  %561 = and i32 %2, 64
  %562 = icmp eq i32 %561, 0
  %563 = select i1 %562, i32 -116, i32 -10
  %564 = select i1 %560, i32 %563, i32 %559
  %565 = inttoptr i32 %564 to ptr
  br label %566

566:                                              ; preds = %558, %552, %3
  %567 = phi ptr [ %565, %558 ], [ %11, %3 ], [ %11, %552 ]
  ret ptr %567
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @do_file_open_root(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nameidata, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %5, i8 0, i32 136, i1 false), !annotation !19
  %6 = getelementptr inbounds %struct.open_flags, ptr %2, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 7340032
  %12 = icmp eq i32 %11, 6291456
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.open_flags, ptr %2, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %13, %3
  %19 = tail call ptr @getname_kernel(ptr noundef %1)
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %87, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #13
  %23 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 86
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 13
  %26 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 12
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 10
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 17
  store i32 -1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 14
  store ptr %19, ptr %29, align 8
  store ptr null, ptr %4, align 8
  %30 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  store ptr null, ptr %30, align 4
  %31 = icmp eq ptr %24, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.nameidata, ptr %24, i32 0, i32 11
  %34 = load i32, ptr %33, align 8
  br label %35

35:                                               ; preds = %32, %21
  %36 = phi i32 [ %34, %32 ], [ 0, %21 ]
  %37 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 11
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 15
  store ptr %24, ptr %38, align 4
  store ptr %4, ptr %23, align 16
  %39 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 5
  store i32 0, ptr %39, align 8
  %40 = icmp eq ptr %0, null
  br i1 %40, label %44, label %41, !prof !10

41:                                               ; preds = %35
  store i32 1, ptr %39, align 8
  %42 = getelementptr inbounds %struct.nameidata, ptr %4, i32 0, i32 2
  %43 = load i64, ptr %0, align 4
  store i64 %43, ptr %42, align 8
  br label %44

44:                                               ; preds = %41, %35
  %45 = or i32 %7, 64
  %46 = call fastcc ptr @path_openat(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %45)
  %47 = icmp eq ptr %46, inttoptr (i32 -10 to ptr)
  br i1 %47, label %48, label %50, !prof !8

48:                                               ; preds = %44
  %49 = call fastcc ptr @path_openat(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %7)
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi ptr [ %49, %48 ], [ %46, %44 ]
  %52 = icmp eq ptr %51, inttoptr (i32 -116 to ptr)
  br i1 %52, label %53, label %56, !prof !8

53:                                               ; preds = %50
  %54 = or i32 %7, 32
  %55 = call fastcc ptr @path_openat(ptr noundef nonnull %4, ptr noundef %2, i32 noundef %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi ptr [ %55, %53 ], [ %51, %50 ]
  %58 = load ptr, ptr %23, align 16
  %59 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %23, align 16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 11
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nameidata, ptr %60, i32 0, i32 11
  store i32 %64, ptr %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 13
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call void @kfree(ptr noundef %68) #13
  br label %72

72:                                               ; preds = %71, %66
  %73 = getelementptr inbounds %struct.filename, ptr %19, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %76, label %77, !prof !8

76:                                               ; preds = %72
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

77:                                               ; preds = %72
  %78 = add nsw i32 %74, -1
  store i32 %78, ptr %73, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load ptr, ptr %19, align 4
  %82 = getelementptr inbounds %struct.filename, ptr %19, i32 0, i32 4
  %83 = icmp eq ptr %81, %82
  %84 = load ptr, ptr @names_cachep, align 4
  br i1 %83, label %86, label %85

85:                                               ; preds = %80
  call void @kmem_cache_free(ptr noundef %84, ptr noundef %81) #13
  call void @kfree(ptr noundef %19) #13
  br label %87

86:                                               ; preds = %80
  call void @kmem_cache_free(ptr noundef %84, ptr noundef %19) #13
  br label %87

87:                                               ; preds = %86, %85, %77, %18, %13
  %88 = phi ptr [ inttoptr (i32 -40 to ptr), %13 ], [ %19, %18 ], [ %57, %77 ], [ %57, %85 ], [ %57, %86 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #13
  ret ptr %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kern_path_create(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @getname_kernel(ptr noundef %1)
  %6 = tail call fastcc ptr @filename_create(i32 noundef %0, ptr noundef %5, ptr noundef %2, i32 noundef %3)
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

13:                                               ; preds = %8
  %14 = add nsw i32 %10, -1
  store i32 %14, ptr %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 4
  %19 = icmp eq ptr %17, %18
  %20 = load ptr, ptr @names_cachep, align 4
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %17) #13
  tail call void @kfree(ptr noundef %5) #13
  br label %23

22:                                               ; preds = %16
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %5) #13
  br label %23

23:                                               ; preds = %22, %21, %13, %4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @filename_create(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.qstr, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !19
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %3, 32
  %10 = call fastcc i32 @filename_parentat(i32 noundef %0, ptr noundef %1, i32 noundef %9, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = inttoptr i32 %10 to ptr
  br label %61

14:                                               ; preds = %4
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56, !prof !10

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 4
  %19 = tail call i32 @mnt_want_write(ptr noundef %18) #13
  %20 = or i32 %9, 1536
  %21 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 24
  tail call void @down_write(ptr noundef %25) #13
  %26 = load ptr, ptr %21, align 4
  %27 = call fastcc ptr @__lookup_hash(ptr noundef nonnull %5, ptr noundef %26, i32 noundef %20)
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %47, label %29

29:                                               ; preds = %17
  %30 = load i32, ptr %27, align 8
  %31 = and i32 %30, 7340032
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  br i1 %8, label %34, label %42

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.qstr, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.anon.14, ptr %5, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %36, i32 %38
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44, !prof !10

42:                                               ; preds = %34, %33
  %43 = icmp eq i32 %19, 0
  br i1 %43, label %61, label %44, !prof !10

44:                                               ; preds = %42, %34, %29
  %45 = phi i32 [ -17, %29 ], [ -2, %34 ], [ %19, %42 ]
  call void @dput(ptr noundef %27) #13
  %46 = inttoptr i32 %45 to ptr
  br label %47

47:                                               ; preds = %44, %17
  %48 = phi ptr [ %27, %17 ], [ %46, %44 ]
  %49 = load ptr, ptr %21, align 4
  %50 = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 24
  call void @up_write(ptr noundef %52) #13
  %53 = icmp eq i32 %19, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load ptr, ptr %2, align 4
  call void @mnt_drop_write(ptr noundef %55) #13
  br label %56

56:                                               ; preds = %54, %47, %14
  %57 = phi ptr [ inttoptr (i32 -17 to ptr), %14 ], [ %48, %47 ], [ %48, %54 ]
  %58 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  call void @dput(ptr noundef %59) #13
  %60 = load ptr, ptr %2, align 4
  call void @mntput(ptr noundef %60) #13
  br label %61

61:                                               ; preds = %56, %42, %12
  %62 = phi ptr [ %13, %12 ], [ %57, %56 ], [ %27, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @done_path_create(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @dput(ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @up_write(ptr noundef %7) #13
  %8 = load ptr, ptr %0, align 4
  tail call void @mnt_drop_write(ptr noundef %8) #13
  %9 = load ptr, ptr %3, align 4
  tail call void @dput(ptr noundef %9) #13
  %10 = load ptr, ptr %0, align 4
  tail call void @mntput(ptr noundef %10) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @user_path_create(i32 noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) #9 {
  %5 = tail call ptr @getname_flags(ptr noundef %1, i32 noundef 0, ptr noundef null) #13
  %6 = tail call fastcc ptr @filename_create(i32 noundef %0, ptr noundef %5, ptr noundef %2, i32 noundef %3)
  %7 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

13:                                               ; preds = %8
  %14 = add nsw i32 %10, -1
  store i32 %14, ptr %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.filename, ptr %5, i32 0, i32 4
  %19 = icmp eq ptr %17, %18
  %20 = load ptr, ptr @names_cachep, align 4
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %17) #13
  tail call void @kfree(ptr noundef %5) #13
  br label %23

22:                                               ; preds = %16
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef %5) #13
  br label %23

23:                                               ; preds = %22, %21, %13, %4
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_mknod(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = and i16 %3, -4096
  %7 = icmp eq i16 %6, 8192
  %8 = icmp eq i32 %4, 0
  %9 = and i1 %7, %8
  %10 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %13
  %19 = tail call ptr @llvm.thread.pointer() #13
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 83
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %57, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.cred, ptr %21, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %57, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef 3) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  %33 = icmp eq i16 %6, 24576
  %34 = or i1 %7, %33
  %35 = xor i1 %34, true
  %36 = or i1 %9, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call zeroext i1 @capable(i32 noundef 27) #13
  br i1 %38, label %39, label %57

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.inode_operations, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = tail call i32 %43(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 42
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %56 = tail call i32 @fsnotify(i32 noundef 256, ptr noundef %2, i32 noundef 3, ptr noundef %1, ptr noundef %55, ptr noundef null, i32 noundef 0) #13
  br label %57

57:                                               ; preds = %54, %48, %45, %39, %37, %29, %25, %18, %13, %5
  %58 = phi i32 [ %30, %29 ], [ -1, %37 ], [ -1, %39 ], [ %46, %45 ], [ 0, %48 ], [ 0, %54 ], [ -75, %18 ], [ -75, %25 ], [ -2, %13 ], [ -17, %5 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mknodat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = trunc i32 %2 to i16
  %7 = tail call ptr @getname_flags(ptr noundef %5, i32 noundef 0, ptr noundef null) #13
  %8 = tail call fastcc i32 @do_mknodat(i32 noundef %0, ptr noundef %7, i16 noundef zeroext %6, i32 noundef %3) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mknod(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = trunc i32 %1 to i16
  %6 = tail call ptr @getname_flags(ptr noundef %4, i32 noundef 0, ptr noundef null) #13
  %7 = tail call fastcc i32 @do_mknodat(i32 noundef -100, ptr noundef %6, i16 noundef zeroext %5, i32 noundef %2) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_mkdir(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %55

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #13
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 83
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %55, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef 3) #13
  %26 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 35
  %29 = load i32, ptr %28, align 16
  %30 = icmp eq i32 %25, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.inode_operations, ptr %33, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = and i16 %3, 1023
  %39 = icmp eq i32 %29, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %42 = load i32, ptr %41, align 8
  %43 = icmp ult i32 %42, %29
  br i1 %43, label %44, label %55

44:                                               ; preds = %40, %37
  %45 = tail call i32 %35(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %38) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr inbounds %struct.super_block, ptr %48, i32 0, i32 42
  %50 = load volatile i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %54 = tail call i32 @fsnotify(i32 noundef 1073742080, ptr noundef %2, i32 noundef 3, ptr noundef %1, ptr noundef %53, ptr noundef null, i32 noundef 0) #13
  br label %55

55:                                               ; preds = %52, %47, %44, %40, %31, %24, %20, %13, %8, %4
  %56 = phi i32 [ %25, %24 ], [ -1, %31 ], [ -31, %40 ], [ %45, %44 ], [ 0, %47 ], [ 0, %52 ], [ -75, %13 ], [ -75, %20 ], [ -2, %8 ], [ -17, %4 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_mkdirat(i32 noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !19
  %5 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %6 = call fastcc ptr @filename_create(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %60, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65536
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %8
  %19 = tail call i32 @current_umask() #13
  %20 = trunc i32 %19 to i16
  %21 = xor i16 %20, -1
  %22 = and i16 %21, %2
  br label %23

23:                                               ; preds = %18, %8
  %24 = phi i16 [ %2, %8 ], [ %22, %18 ]
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.vfsmount, ptr %25, i32 0, i32 3
  %27 = load volatile ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %28 = load ptr, ptr %10, align 8
  %29 = tail call i32 @vfs_mkdir(ptr noundef %27, ptr noundef %28, ptr noundef %6, i16 noundef zeroext %24)
  tail call void @dput(ptr noundef %6) #13
  %30 = load ptr, ptr %10, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 24
  tail call void @up_write(ptr noundef %31) #13
  tail call void @mnt_drop_write(ptr noundef %25) #13
  tail call void @dput(ptr noundef %9) #13
  tail call void @mntput(ptr noundef %25) #13
  %32 = icmp eq i32 %29, -116
  br i1 %32, label %33, label %63

33:                                               ; preds = %23
  %34 = call fastcc ptr @filename_create(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %4, i32 noundef 34)
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %60, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 65536
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %36
  %47 = tail call i32 @current_umask() #13
  %48 = trunc i32 %47 to i16
  %49 = xor i16 %48, -1
  %50 = and i16 %24, %49
  br label %51

51:                                               ; preds = %46, %36
  %52 = phi i16 [ %24, %36 ], [ %50, %46 ]
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.vfsmount, ptr %53, i32 0, i32 3
  %55 = load volatile ptr, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %56 = load ptr, ptr %38, align 8
  %57 = tail call i32 @vfs_mkdir(ptr noundef %55, ptr noundef %56, ptr noundef %34, i16 noundef zeroext %52)
  tail call void @dput(ptr noundef %34) #13
  %58 = load ptr, ptr %38, align 8
  %59 = getelementptr inbounds %struct.inode, ptr %58, i32 0, i32 24
  tail call void @up_write(ptr noundef %59) #13
  tail call void @mnt_drop_write(ptr noundef %53) #13
  tail call void @dput(ptr noundef %37) #13
  tail call void @mntput(ptr noundef %53) #13
  br label %63

60:                                               ; preds = %33, %3
  %61 = phi ptr [ %6, %3 ], [ %34, %33 ]
  %62 = ptrtoint ptr %61 to i32
  br label %63

63:                                               ; preds = %60, %51, %23
  %64 = phi i32 [ %62, %60 ], [ %29, %23 ], [ %57, %51 ]
  %65 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %66
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

71:                                               ; preds = %66
  %72 = add nsw i32 %68, -1
  store i32 %72, ptr %67, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load ptr, ptr %1, align 4
  %76 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 4
  %77 = icmp eq ptr %75, %76
  %78 = load ptr, ptr @names_cachep, align 4
  br i1 %77, label %80, label %79

79:                                               ; preds = %74
  tail call void @kmem_cache_free(ptr noundef %78, ptr noundef %75) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %81

80:                                               ; preds = %74
  tail call void @kmem_cache_free(ptr noundef %78, ptr noundef %1) #13
  br label %81

81:                                               ; preds = %80, %79, %71, %63
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @current_umask() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mkdirat(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %1 to ptr
  %5 = trunc i32 %2 to i16
  %6 = tail call ptr @getname_flags(ptr noundef %4, i32 noundef 0, ptr noundef null) #13
  %7 = tail call i32 @do_mkdirat(i32 noundef %0, ptr noundef %6, i16 noundef zeroext %5) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mkdir(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = trunc i32 %1 to i16
  %5 = tail call ptr @getname_flags(ptr noundef %3, i32 noundef 0, ptr noundef null) #13
  %6 = tail call i32 @do_mkdirat(i32 noundef -100, ptr noundef %5, i16 noundef zeroext %4) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_rmdir(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc i32 @may_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %71

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode_operations, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %71, label %12

12:                                               ; preds = %6
  %13 = icmp eq ptr %2, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %15) #13
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 24
  tail call void @down_write(ptr noundef %19) #13
  %20 = load i32, ptr %2, align 8
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @__is_local_mountpoint(ptr noundef %2) #13
  br i1 %24, label %51, label %25

25:                                               ; preds = %23, %16
  %26 = load ptr, ptr %17, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 131072
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %25
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds %struct.inode_operations, ptr %32, i32 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = tail call i32 %34(ptr noundef %1, ptr noundef %2) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  tail call void @shrink_dcache_parent(ptr noundef %2) #13
  %38 = load ptr, ptr %17, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 16
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %42) #13
  %43 = load i32, ptr %2, align 8
  %44 = or i32 %43, 256
  store i32 %44, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %45 = load i16, ptr %42, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %47 = load i32, ptr %2, align 8
  %48 = and i32 %47, 65536
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  tail call void @__detach_mounts(ptr noundef %2) #13
  br label %51

51:                                               ; preds = %50, %37, %31, %25, %23
  %52 = phi i32 [ -16, %23 ], [ -16, %25 ], [ %35, %31 ], [ 0, %37 ], [ 0, %50 ]
  %53 = load ptr, ptr %17, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 24
  tail call void @up_write(ptr noundef %54) #13
  tail call void @dput(ptr noundef %2) #13
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load ptr, ptr %17, align 8
  tail call void @ihold(ptr noundef %57) #13
  tail call void @d_delete(ptr noundef %2) #13
  %58 = load i16, ptr %57, align 8
  %59 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.super_block, ptr %60, i32 0, i32 42
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %66 = and i16 %58, -4096
  %67 = icmp eq i16 %66, 16384
  %68 = select i1 %67, i32 1073742336, i32 512
  %69 = tail call i32 @fsnotify(i32 noundef %68, ptr noundef %57, i32 noundef 2, ptr noundef %1, ptr noundef %65, ptr noundef null, i32 noundef 0) #13
  br label %70

70:                                               ; preds = %64, %56
  tail call void @iput(ptr noundef %57) #13
  br label %71

71:                                               ; preds = %70, %51, %6, %3
  %72 = phi i32 [ %4, %3 ], [ -1, %6 ], [ 0, %70 ], [ %52, %51 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @may_delete(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 8
  %8 = and i32 %7, 7340032
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %82, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %6, null
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2899, 0\0A.popsection", ""() #13, !srcloc !30
  unreachable

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %20, label %19, !prof !10

19:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2901, 0\0A.popsection", ""() #13, !srcloc !31
  unreachable

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %82, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %82, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef 3)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %82

36:                                               ; preds = %31
  %37 = load i16, ptr %1, align 8
  %38 = and i16 %37, 512
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @llvm.thread.pointer() #13
  %42 = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 83
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.cred, ptr %43, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = load i32, ptr %21, align 4
  %47 = icmp eq i32 %46, %45
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %45
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call zeroext i1 @capable_wrt_inode_uidgid(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 3) #13
  br i1 %53, label %54, label %82

54:                                               ; preds = %52, %48, %40, %36
  %55 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 268
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load i32, ptr %21, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %82, label %62

62:                                               ; preds = %59
  %63 = load i32, ptr %25, align 8
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %82, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %2, align 8
  %67 = and i32 %66, 6291456
  %68 = icmp eq i32 %67, 2097152
  br i1 %3, label %69, label %73

69:                                               ; preds = %65
  br i1 %68, label %70, label %82

70:                                               ; preds = %69
  %71 = load ptr, ptr %14, align 8
  %72 = icmp eq ptr %71, %2
  br i1 %72, label %82, label %74

73:                                               ; preds = %65
  br i1 %68, label %82, label %74

74:                                               ; preds = %73, %70
  %75 = load i32, ptr %32, align 4
  %76 = and i32 %75, 16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = and i32 %66, 4096
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 0, i32 -16
  br label %82

82:                                               ; preds = %78, %74, %73, %70, %69, %62, %59, %54, %52, %31, %28, %24, %20, %4
  %83 = phi i32 [ -2, %4 ], [ -75, %24 ], [ -75, %20 ], [ %29, %28 ], [ -1, %31 ], [ -1, %62 ], [ -1, %54 ], [ -1, %52 ], [ -20, %69 ], [ -16, %70 ], [ -21, %73 ], [ -2, %74 ], [ %81, %78 ], [ -1, %59 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @shrink_dcache_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dont_mount(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %2) #13
  %3 = load i32, ptr %0, align 8
  %4 = or i32 %3, 256
  store i32 %4, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_rmdir(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  %4 = alloca %struct.qstr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !19
  %6 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %7 = call fastcc i32 @filename_parentat(i32 noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %89

9:                                                ; preds = %2
  %10 = load i32, ptr %5, align 4
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %40, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8
  %15 = call i32 @mnt_want_write(ptr noundef %14) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 24
  call void @down_write(ptr noundef %21) #13
  %22 = call fastcc ptr @__lookup_hash(ptr noundef nonnull %4, ptr noundef %18, i32 noundef 0)
  %23 = ptrtoint ptr %22 to i32
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.vfsmount, ptr %14, i32 0, i32 3
  %31 = load volatile ptr, ptr %30, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %32 = load ptr, ptr %19, align 8
  %33 = call i32 @vfs_rmdir(ptr noundef %31, ptr noundef %32, ptr noundef %22)
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i32 [ %33, %29 ], [ -2, %25 ]
  call void @dput(ptr noundef %22) #13
  br label %36

36:                                               ; preds = %34, %17
  %37 = phi i32 [ %23, %17 ], [ %35, %34 ]
  %38 = load ptr, ptr %19, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 24
  call void @up_write(ptr noundef %39) #13
  call void @mnt_drop_write(ptr noundef %14) #13
  br label %43

40:                                               ; preds = %9
  %41 = getelementptr inbounds [3 x i32], ptr @switch.table.do_rmdir, i32 0, i32 %11
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %36, %13
  %44 = phi i32 [ %15, %13 ], [ %37, %36 ], [ %42, %40 ]
  %45 = load ptr, ptr %6, align 4
  call void @dput(ptr noundef %45) #13
  %46 = load ptr, ptr %3, align 8
  call void @mntput(ptr noundef %46) #13
  %47 = icmp eq i32 %44, -116
  br i1 %47, label %48, label %89

48:                                               ; preds = %43
  %49 = call fastcc i32 @filename_parentat(i32 noundef %0, ptr noundef %1, i32 noundef 32, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %48
  %52 = load i32, ptr %5, align 4
  %53 = add i32 %52, -1
  %54 = icmp ult i32 %53, 3
  br i1 %54, label %82, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %3, align 8
  %57 = call i32 @mnt_want_write(ptr noundef %56) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 24
  call void @down_write(ptr noundef %63) #13
  %64 = call fastcc ptr @__lookup_hash(ptr noundef nonnull %4, ptr noundef %60, i32 noundef 32)
  %65 = ptrtoint ptr %64 to i32
  %66 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %78, label %67

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.dentry, ptr %64, i32 0, i32 5
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.vfsmount, ptr %56, i32 0, i32 3
  %73 = load volatile ptr, ptr %72, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %74 = load ptr, ptr %61, align 8
  %75 = call i32 @vfs_rmdir(ptr noundef %73, ptr noundef %74, ptr noundef %64)
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i32 [ %75, %71 ], [ -2, %67 ]
  call void @dput(ptr noundef %64) #13
  br label %78

78:                                               ; preds = %76, %59
  %79 = phi i32 [ %65, %59 ], [ %77, %76 ]
  %80 = load ptr, ptr %61, align 8
  %81 = getelementptr inbounds %struct.inode, ptr %80, i32 0, i32 24
  call void @up_write(ptr noundef %81) #13
  call void @mnt_drop_write(ptr noundef %56) #13
  br label %85

82:                                               ; preds = %51
  %83 = getelementptr inbounds [3 x i32], ptr @switch.table.do_rmdir, i32 0, i32 %53
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %78, %55
  %86 = phi i32 [ %57, %55 ], [ %79, %78 ], [ %84, %82 ]
  %87 = load ptr, ptr %6, align 4
  call void @dput(ptr noundef %87) #13
  %88 = load ptr, ptr %3, align 8
  call void @mntput(ptr noundef %88) #13
  br label %89

89:                                               ; preds = %85, %48, %43, %2
  %90 = phi i32 [ %7, %2 ], [ %44, %43 ], [ %49, %48 ], [ %86, %85 ]
  %91 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = icmp slt i32 %94, 1
  br i1 %95, label %96, label %97, !prof !8

96:                                               ; preds = %92
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

97:                                               ; preds = %92
  %98 = add nsw i32 %94, -1
  store i32 %98, ptr %93, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load ptr, ptr %1, align 4
  %102 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 4
  %103 = icmp eq ptr %101, %102
  %104 = load ptr, ptr @names_cachep, align 4
  br i1 %103, label %106, label %105

105:                                              ; preds = %100
  call void @kmem_cache_free(ptr noundef %104, ptr noundef %101) #13
  call void @kfree(ptr noundef %1) #13
  br label %107

106:                                              ; preds = %100
  call void @kmem_cache_free(ptr noundef %104, ptr noundef %1) #13
  br label %107

107:                                              ; preds = %106, %105, %97, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @filename_parentat(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = alloca %struct.nameidata, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #13
  %8 = getelementptr inbounds i8, ptr %7, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %8, i8 0, i32 136, i1 false), !annotation !19
  %9 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %1 to i32
  br label %72

12:                                               ; preds = %6
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 86
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 13
  %17 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 12
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 17
  store i32 %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 14
  store ptr %1, ptr %19, align 8
  store ptr null, ptr %7, align 8
  %20 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  store ptr null, ptr %20, align 4
  %21 = icmp eq ptr %15, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.nameidata, ptr %15, i32 0, i32 11
  %24 = load i32, ptr %23, align 8
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi i32 [ %24, %22 ], [ 0, %12 ]
  %27 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 11
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 15
  store ptr %15, ptr %28, align 4
  store ptr %7, ptr %14, align 16
  %29 = or i32 %2, 64
  %30 = call fastcc ptr @path_init(ptr noundef nonnull %7, i32 noundef %29) #13
  %31 = call fastcc i32 @link_path_walk(ptr noundef %30, ptr noundef nonnull %7) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = call fastcc i32 @complete_walk(ptr noundef nonnull %7) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i64, ptr %7, align 8
  store i64 %37, ptr %3, align 4
  store ptr null, ptr %7, align 8
  store ptr null, ptr %20, align 4
  call fastcc void @terminate_walk(ptr noundef nonnull %7) #13
  br label %52

38:                                               ; preds = %33, %25
  %39 = phi i32 [ %34, %33 ], [ %31, %25 ]
  call fastcc void @terminate_walk(ptr noundef nonnull %7) #13
  %40 = icmp eq i32 %39, -10
  br i1 %40, label %41, label %43, !prof !8

41:                                               ; preds = %38
  %42 = call fastcc i32 @path_parentat(ptr noundef nonnull %7, i32 noundef %2, ptr noundef %3)
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %42, %41 ], [ %39, %38 ]
  %45 = icmp eq i32 %44, -116
  br i1 %45, label %46, label %49, !prof !8

46:                                               ; preds = %43
  %47 = or i32 %2, 32
  %48 = call fastcc i32 @path_parentat(ptr noundef nonnull %7, i32 noundef %47, ptr noundef %3)
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %48, %46 ], [ %44, %43 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56, !prof !10

52:                                               ; preds = %49, %36
  %53 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %53, i32 16, i1 false)
  %54 = getelementptr inbounds %struct.nameidata, ptr %7, i32 0, i32 9
  %55 = load i32, ptr %54, align 8
  store i32 %55, ptr %5, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ 0, %52 ], [ %50, %49 ]
  %58 = load ptr, ptr %14, align 16
  %59 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 15
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %14, align 16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 11
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nameidata, ptr %60, i32 0, i32 11
  store i32 %64, ptr %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 12
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nameidata, ptr %58, i32 0, i32 13
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call void @kfree(ptr noundef %68) #13
  br label %72

72:                                               ; preds = %71, %66, %10
  %73 = phi i32 [ %11, %10 ], [ %57, %66 ], [ %57, %71 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #13
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__lookup_hash(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @d_lookup(ptr noundef %1, ptr noundef %0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10, !prof !10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = load ptr, ptr %12, align 64
  %14 = tail call i32 %13(ptr noundef nonnull %4, i32 noundef %2) #13
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %38, !prof !8

16:                                               ; preds = %10
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @d_invalidate(ptr noundef nonnull %4) #13
  tail call void @dput(ptr noundef nonnull %4) #13
  br label %21

19:                                               ; preds = %16
  tail call void @dput(ptr noundef nonnull %4) #13
  %20 = inttoptr i32 %14 to ptr
  br label %38

21:                                               ; preds = %18, %3
  %22 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38, !prof !10

28:                                               ; preds = %21
  %29 = tail call ptr @d_alloc(ptr noundef %1, ptr noundef %0) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31, !prof !8

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 7
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %33, align 64
  %35 = tail call ptr %34(ptr noundef %23, ptr noundef nonnull %29, i32 noundef %2) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !10

37:                                               ; preds = %31
  tail call void @dput(ptr noundef nonnull %29) #13
  br label %38

38:                                               ; preds = %37, %31, %28, %21, %19, %10, %6
  %39 = phi ptr [ %20, %19 ], [ %35, %37 ], [ %29, %31 ], [ inttoptr (i32 -2 to ptr), %21 ], [ inttoptr (i32 -12 to ptr), %28 ], [ %4, %10 ], [ %4, %6 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rmdir(i32 noundef %0) #0 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call ptr @getname_flags(ptr noundef %2, i32 noundef 0, ptr noundef null) #13
  %4 = tail call i32 @do_rmdir(i32 noundef -100, ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_unlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @may_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %113

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.inode_operations, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %113, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  tail call void @down_write(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load i32, ptr %2, align 8
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call zeroext i1 @__is_local_mountpoint(ptr noundef %2) #13
  br i1 %26, label %58, label %27

27:                                               ; preds = %25, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %28 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 40
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.file_lock_context, ptr %29, i32 0, i32 3
  %33 = load volatile ptr, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.file_lock_context, ptr %29, i32 0, i32 3, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %32
  br i1 %38, label %47, label %39

39:                                               ; preds = %35, %31
  %40 = tail call i32 @__break_lease(ptr noundef %6, i32 noundef 2049, i32 noundef 4) #13
  %41 = icmp eq i32 %40, -11
  %42 = icmp ne ptr %3, null
  %43 = and i1 %42, %41
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store ptr %6, ptr %3, align 4
  tail call void @ihold(ptr noundef %6) #13
  br label %58

45:                                               ; preds = %39
  %46 = icmp eq i32 %40, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %45, %35, %27
  %48 = load ptr, ptr %10, align 8
  %49 = getelementptr inbounds %struct.inode_operations, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 %50(ptr noundef %1, ptr noundef %2) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  tail call fastcc void @dont_mount(ptr noundef %2)
  %54 = load i32, ptr %2, align 8
  %55 = and i32 %54, 65536
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  tail call void @__detach_mounts(ptr noundef %2) #13
  br label %60

58:                                               ; preds = %47, %45, %44, %25, %15
  %59 = phi i32 [ -11, %44 ], [ -16, %25 ], [ -1, %15 ], [ %51, %47 ], [ %40, %45 ]
  tail call void @up_write(ptr noundef %16) #13
  br label %113

60:                                               ; preds = %57, %53
  tail call void @up_write(ptr noundef %16) #13
  %61 = load i32, ptr %2, align 8
  %62 = and i32 %61, 4096
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %60
  %65 = and i32 %61, 7340032
  %66 = icmp eq i32 %65, 0
  %67 = load i1, ptr @fsnotify_unlink.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !8

70:                                               ; preds = %64
  store i1 true, ptr @fsnotify_unlink.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %71

71:                                               ; preds = %70, %64
  br i1 %66, label %113, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %5, align 8
  %74 = load i16, ptr %73, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 42
  %78 = load volatile i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %113, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %82 = and i16 %74, -4096
  %83 = icmp eq i16 %82, 16384
  %84 = select i1 %83, i32 1073742336, i32 512
  %85 = tail call i32 @fsnotify(i32 noundef %84, ptr noundef %73, i32 noundef 2, ptr noundef %1, ptr noundef %81, ptr noundef null, i32 noundef 0) #13
  br label %113

86:                                               ; preds = %60
  %87 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.super_block, ptr %88, i32 0, i32 42
  %90 = load volatile i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load i16, ptr %6, align 8
  %94 = and i16 %93, -4096
  %95 = icmp eq i16 %94, 16384
  %96 = select i1 %95, i32 1073741828, i32 4
  %97 = tail call i32 @fsnotify(i32 noundef %96, ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %6, i32 noundef 0) #13
  br label %98

98:                                               ; preds = %92, %86
  %99 = load ptr, ptr %5, align 8
  tail call void @ihold(ptr noundef %99) #13
  tail call void @d_delete(ptr noundef %2) #13
  %100 = load i16, ptr %99, align 8
  %101 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.super_block, ptr %102, i32 0, i32 42
  %104 = load volatile i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %108 = and i16 %100, -4096
  %109 = icmp eq i16 %108, 16384
  %110 = select i1 %109, i32 1073742336, i32 512
  %111 = tail call i32 @fsnotify(i32 noundef %110, ptr noundef %99, i32 noundef 2, ptr noundef %1, ptr noundef %107, ptr noundef null, i32 noundef 0) #13
  br label %112

112:                                              ; preds = %106, %98
  tail call void @iput(ptr noundef %99) #13
  br label %113

113:                                              ; preds = %112, %80, %72, %71, %58, %9, %4
  %114 = phi i32 [ %7, %4 ], [ -1, %9 ], [ 0, %112 ], [ %59, %58 ], [ 0, %71 ], [ 0, %72 ], [ 0, %80 ]
  ret i32 %114
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_break_deleg(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #9 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 40
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.file_lock_context, ptr %4, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.file_lock_context, ptr %4, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %7
  br i1 %13, label %20, label %14

14:                                               ; preds = %10, %6
  %15 = tail call i32 @__break_lease(ptr noundef %0, i32 noundef 2049, i32 noundef 4) #13
  %16 = icmp eq i32 %15, -11
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store ptr %0, ptr %1, align 4
  tail call void @ihold(ptr noundef %0) #13
  br label %20

20:                                               ; preds = %19, %14, %10, %2
  %21 = phi i32 [ -11, %19 ], [ %15, %14 ], [ 0, %10 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_unlinkat(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  %4 = alloca %struct.qstr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %8 = getelementptr inbounds %struct.qstr, ptr %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.anon.14, ptr %4, i32 0, i32 1
  br label %10

10:                                               ; preds = %81, %2
  %11 = phi i1 [ false, %81 ], [ true, %2 ]
  %12 = phi i32 [ 32, %81 ], [ 0, %2 ]
  %13 = call fastcc i32 @filename_parentat(i32 noundef %0, ptr noundef %1, i32 noundef %12, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %86

15:                                               ; preds = %10
  %16 = load i32, ptr %5, align 4
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %3, align 8
  br i1 %17, label %19, label %81

19:                                               ; preds = %15
  %20 = call i32 @mnt_want_write(ptr noundef %18) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %81

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.vfsmount, ptr %18, i32 0, i32 3
  br label %26

26:                                               ; preds = %75, %22
  %27 = load ptr, ptr %24, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 24
  call void @down_write(ptr noundef %28) #13
  %29 = call fastcc ptr @__lookup_hash(ptr noundef nonnull %4, ptr noundef %23, i32 noundef %12)
  %30 = ptrtoint ptr %29 to i32
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %51, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %8, align 8
  %34 = load i32, ptr %9, align 4
  %35 = getelementptr i8, ptr %33, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = load i32, ptr %29, align 8
  %42 = and i32 %41, 7340032
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  call void @ihold(ptr noundef %40) #13
  %45 = load volatile ptr, ptr %25, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %46 = load ptr, ptr %24, align 8
  %47 = call i32 @vfs_unlink(ptr noundef %45, ptr noundef %46, ptr noundef %29, ptr noundef nonnull %6)
  br label %48

48:                                               ; preds = %109, %105, %44, %38
  %49 = phi i32 [ %47, %44 ], [ -2, %105 ], [ %112, %109 ], [ -2, %38 ]
  %50 = phi ptr [ %40, %44 ], [ null, %105 ], [ null, %109 ], [ %40, %38 ]
  call void @dput(ptr noundef %29) #13
  br label %51

51:                                               ; preds = %48, %26
  %52 = phi i32 [ %30, %26 ], [ %49, %48 ]
  %53 = phi ptr [ null, %26 ], [ %50, %48 ]
  %54 = load ptr, ptr %24, align 8
  %55 = getelementptr inbounds %struct.inode, ptr %54, i32 0, i32 24
  call void @up_write(ptr noundef %55) #13
  %56 = icmp eq ptr %53, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  call void @iput(ptr noundef nonnull %53) #13
  br label %58

58:                                               ; preds = %57, %51
  %59 = load ptr, ptr %6, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %58
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %62 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 40
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %75, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.file_lock_context, ptr %63, i32 0, i32 3
  %67 = load volatile ptr, ptr %66, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.file_lock_context, ptr %63, i32 0, i32 3, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %66
  br i1 %72, label %75, label %73

73:                                               ; preds = %69, %65
  %74 = call i32 @__break_lease(ptr noundef nonnull %59, i32 noundef 1, i32 noundef 4) #13
  br label %75

75:                                               ; preds = %73, %69, %61
  %76 = phi i32 [ %74, %73 ], [ 0, %69 ], [ 0, %61 ]
  %77 = load ptr, ptr %6, align 4
  call void @iput(ptr noundef %77) #13
  store ptr null, ptr %6, align 4
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %26, label %79

79:                                               ; preds = %75, %58
  %80 = phi i32 [ %76, %75 ], [ %52, %58 ]
  call void @mnt_drop_write(ptr noundef %18) #13
  br label %81

81:                                               ; preds = %79, %19, %15
  %82 = phi i32 [ %20, %19 ], [ %80, %79 ], [ -21, %15 ]
  %83 = load ptr, ptr %7, align 4
  call void @dput(ptr noundef %83) #13
  call void @mntput(ptr noundef %18) #13
  %84 = icmp eq i32 %82, -116
  %85 = and i1 %11, %84
  br i1 %85, label %10, label %86

86:                                               ; preds = %81, %10
  %87 = phi i32 [ %13, %10 ], [ %82, %81 ]
  %88 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %88, label %104, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %94, !prof !8

93:                                               ; preds = %89
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

94:                                               ; preds = %89
  %95 = add nsw i32 %91, -1
  store i32 %95, ptr %90, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load ptr, ptr %1, align 4
  %99 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 4
  %100 = icmp eq ptr %98, %99
  %101 = load ptr, ptr @names_cachep, align 4
  br i1 %100, label %103, label %102

102:                                              ; preds = %97
  call void @kmem_cache_free(ptr noundef %101, ptr noundef %98) #13
  call void @kfree(ptr noundef %1) #13
  br label %104

103:                                              ; preds = %97
  call void @kmem_cache_free(ptr noundef %101, ptr noundef %1) #13
  br label %104

104:                                              ; preds = %103, %102, %94, %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i32 %87

105:                                              ; preds = %32
  %106 = load i32, ptr %29, align 8
  %107 = and i32 %106, 7340032
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %48, label %109

109:                                              ; preds = %105
  %110 = and i32 %106, 6291456
  %111 = icmp eq i32 %110, 2097152
  %112 = select i1 %111, i32 -21, i32 -20
  br label %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_unlinkat(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, -513
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = inttoptr i32 %1 to ptr
  %8 = and i32 %2, 512
  %9 = icmp eq i32 %8, 0
  %10 = tail call ptr @getname_flags(ptr noundef %7, i32 noundef 0, ptr noundef null) #13
  br i1 %9, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @do_rmdir(i32 noundef %0, ptr noundef %10) #13
  br label %15

13:                                               ; preds = %6
  %14 = tail call i32 @do_unlinkat(i32 noundef %0, ptr noundef %10) #13
  br label %15

15:                                               ; preds = %13, %11, %3
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], [ -22, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_unlink(i32 noundef %0) #0 {
  %2 = inttoptr i32 %0 to ptr
  %3 = tail call ptr @getname_flags(ptr noundef %2, i32 noundef 0, ptr noundef null) #13
  %4 = tail call i32 @do_unlinkat(i32 noundef -100, ptr noundef %3) #13
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_symlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %45

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #13
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 83
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %45, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.cred, ptr %16, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %45, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef 3) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.inode_operations, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 32
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = tail call i32 %31(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 42
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %44 = tail call i32 @fsnotify(i32 noundef 256, ptr noundef %2, i32 noundef 3, ptr noundef %1, ptr noundef %43, ptr noundef null, i32 noundef 0) #13
  br label %45

45:                                               ; preds = %42, %36, %33, %27, %24, %20, %13, %8, %4
  %46 = phi i32 [ %25, %24 ], [ -1, %27 ], [ %34, %33 ], [ 0, %36 ], [ 0, %42 ], [ -75, %13 ], [ -75, %20 ], [ -2, %8 ], [ -17, %4 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_symlinkat(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !19
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  br label %10

8:                                                ; preds = %3
  %9 = ptrtoint ptr %0 to i32
  br label %71

10:                                               ; preds = %63, %6
  %11 = phi i1 [ false, %63 ], [ true, %6 ]
  %12 = phi i32 [ 32, %63 ], [ 0, %6 ]
  %13 = call fastcc ptr @filename_create(i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %12)
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %69, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.vfsmount, ptr %16, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %26
  %32 = tail call ptr @llvm.thread.pointer() #13
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 83
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %63, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.cred, ptr %34, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %63, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @inode_permission(ptr noundef %18, ptr noundef %21, i32 noundef 3) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 7
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.inode_operations, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 32
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = tail call i32 %49(ptr noundef %18, ptr noundef %21, ptr noundef %13, ptr noundef %22) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 42
  %58 = load volatile i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 4
  %62 = tail call i32 @fsnotify(i32 noundef 256, ptr noundef %13, i32 noundef 3, ptr noundef %21, ptr noundef %61, ptr noundef null, i32 noundef 0) #13
  br label %63

63:                                               ; preds = %60, %54, %51, %45, %42, %38, %31, %26, %15
  %64 = phi i32 [ %43, %42 ], [ -1, %45 ], [ %52, %51 ], [ 0, %54 ], [ 0, %60 ], [ -75, %31 ], [ -75, %38 ], [ -2, %26 ], [ -17, %15 ]
  tail call void @dput(ptr noundef %13) #13
  %65 = load ptr, ptr %20, align 8
  %66 = getelementptr inbounds %struct.inode, ptr %65, i32 0, i32 24
  tail call void @up_write(ptr noundef %66) #13
  tail call void @mnt_drop_write(ptr noundef %16) #13
  tail call void @dput(ptr noundef %19) #13
  tail call void @mntput(ptr noundef %16) #13
  %67 = icmp eq i32 %64, -116
  %68 = and i1 %11, %67
  br i1 %68, label %10, label %71

69:                                               ; preds = %10
  %70 = ptrtoint ptr %13 to i32
  br label %71

71:                                               ; preds = %69, %63, %8
  %72 = phi i32 [ %9, %8 ], [ %70, %69 ], [ %64, %63 ]
  %73 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %89, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.filename, ptr %2, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %78, label %79, !prof !8

78:                                               ; preds = %74
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

79:                                               ; preds = %74
  %80 = add nsw i32 %76, -1
  store i32 %80, ptr %75, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load ptr, ptr %2, align 4
  %84 = getelementptr inbounds %struct.filename, ptr %2, i32 0, i32 4
  %85 = icmp eq ptr %83, %84
  %86 = load ptr, ptr @names_cachep, align 4
  br i1 %85, label %88, label %87

87:                                               ; preds = %82
  tail call void @kmem_cache_free(ptr noundef %86, ptr noundef %83) #13
  tail call void @kfree(ptr noundef %2) #13
  br label %89

88:                                               ; preds = %82
  tail call void @kmem_cache_free(ptr noundef %86, ptr noundef %2) #13
  br label %89

89:                                               ; preds = %88, %87, %79, %71
  br i1 %5, label %105, label %90

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.filename, ptr %0, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp slt i32 %92, 1
  br i1 %93, label %94, label %95, !prof !8

94:                                               ; preds = %90
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

95:                                               ; preds = %90
  %96 = add nsw i32 %92, -1
  store i32 %96, ptr %91, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr inbounds %struct.filename, ptr %0, i32 0, i32 4
  %101 = icmp eq ptr %99, %100
  %102 = load ptr, ptr @names_cachep, align 4
  br i1 %101, label %104, label %103

103:                                              ; preds = %98
  tail call void @kmem_cache_free(ptr noundef %102, ptr noundef %99) #13
  tail call void @kfree(ptr noundef %0) #13
  br label %105

104:                                              ; preds = %98
  tail call void @kmem_cache_free(ptr noundef %102, ptr noundef %0) #13
  br label %105

105:                                              ; preds = %104, %103, %95, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_symlinkat(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = inttoptr i32 %2 to ptr
  %6 = tail call ptr @getname_flags(ptr noundef %4, i32 noundef 0, ptr noundef null) #13
  %7 = tail call ptr @getname_flags(ptr noundef %5, i32 noundef 0, ptr noundef null) #13
  %8 = tail call i32 @do_symlinkat(ptr noundef %6, i32 noundef %1, ptr noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_symlink(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call ptr @getname_flags(ptr noundef %3, i32 noundef 0, ptr noundef null) #13
  %6 = tail call ptr @getname_flags(ptr noundef %4, i32 noundef 0, ptr noundef null) #13
  %7 = tail call i32 @do_symlinkat(ptr noundef %5, i32 noundef -100, ptr noundef %6) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 35
  %11 = load i32, ptr %10, align 16
  %12 = icmp eq ptr %7, null
  br i1 %12, label %101, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %101

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %101

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #13
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 83
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %101, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %101, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @inode_permission(ptr noundef %1, ptr noundef %2, i32 noundef 3) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %101

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %41, label %101

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 12
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %101, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %101, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 7
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.inode_operations, ptr %56, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %101, label %60

60:                                               ; preds = %54
  %61 = load i16, ptr %7, align 8
  %62 = and i16 %61, -4096
  %63 = icmp eq i16 %62, 16384
  br i1 %63, label %101, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 24
  tail call void @down_write(ptr noundef %65) #13
  %66 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 11
  %67 = load i32, ptr %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 1024
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %69, %64
  %75 = icmp eq i32 %11, 0
  %76 = icmp ult i32 %67, %11
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %99

78:                                               ; preds = %74
  %79 = tail call fastcc i32 @try_break_deleg(ptr noundef nonnull %7, ptr noundef %4)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load ptr, ptr %55, align 8
  %83 = getelementptr inbounds %struct.inode_operations, ptr %82, i32 0, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = tail call i32 %84(ptr noundef %0, ptr noundef %2, ptr noundef %3) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1024
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %93) #13
  %94 = load i32, ptr %88, align 4
  %95 = and i32 %94, -1025
  store i32 %95, ptr %88, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %96 = load i16, ptr %93, align 4
  %97 = add i16 %96, 1
  store i16 %97, ptr %93, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %98

98:                                               ; preds = %92, %87
  tail call void @up_write(ptr noundef %65) #13
  tail call fastcc void @fsnotify_link(ptr noundef %2, ptr noundef nonnull %7, ptr noundef %3)
  br label %101

99:                                               ; preds = %81, %78, %74, %69
  %100 = phi i32 [ %85, %81 ], [ -2, %69 ], [ %79, %78 ], [ -31, %74 ]
  tail call void @up_write(ptr noundef %65) #13
  br label %101

101:                                              ; preds = %99, %98, %60, %54, %50, %46, %41, %36, %33, %29, %22, %17, %13, %5
  %102 = phi i32 [ -2, %5 ], [ %34, %33 ], [ -18, %36 ], [ -1, %41 ], [ -1, %50 ], [ -1, %54 ], [ -1, %60 ], [ %100, %99 ], [ 0, %98 ], [ -75, %22 ], [ -75, %29 ], [ -2, %17 ], [ -17, %13 ], [ -1, %46 ]
  ret i32 %102
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsnotify_link(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 42
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i16, ptr %1, align 8
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, 16384
  %13 = select i1 %12, i32 1073741828, i32 4
  %14 = tail call i32 @fsnotify(i32 noundef %13, ptr noundef %1, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %1, i32 noundef 0) #13
  br label %15

15:                                               ; preds = %9, %3
  %16 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 42
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %23 = tail call i32 @fsnotify(i32 noundef 256, ptr noundef %1, i32 noundef 2, ptr noundef %0, ptr noundef %22, ptr noundef null, i32 noundef 0) #13
  br label %24

24:                                               ; preds = %21, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_linkat(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.path, align 8
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store i64 0, ptr %6, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store ptr null, ptr %8, align 4
  %9 = and i32 %4, -5121
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %115

11:                                               ; preds = %5
  %12 = and i32 %4, 4096
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @capable(i32 noundef 2) #13
  br i1 %15, label %16, label %115

16:                                               ; preds = %14, %11
  %17 = lshr i32 %4, 10
  %18 = and i32 %17, 1
  %19 = call i32 @filename_lookup(i32 noundef %0, ptr noundef %1, i32 noundef %18, ptr noundef nonnull %6, ptr noundef null)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %115

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %23 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  %24 = or i32 %18, 32
  br label %25

25:                                               ; preds = %104, %21
  %26 = phi i32 [ %18, %21 ], [ %24, %104 ]
  %27 = and i32 %26, 32
  br label %28

28:                                               ; preds = %95, %25
  %29 = call fastcc ptr @filename_create(i32 noundef %2, ptr noundef %3, ptr noundef nonnull %7, i32 noundef %27)
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %108, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %7, align 8
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vfsmount, ptr %32, i32 0, i32 3
  %37 = load volatile ptr, ptr %36, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %38 = load ptr, ptr %22, align 4
  %39 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %69, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr @sysctl_protected_hardlinks, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = load i16, ptr %40, align 8
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 63488
  %55 = icmp ne i32 %54, 32768
  %56 = and i32 %53, 1032
  %57 = icmp eq i32 %56, 1032
  %58 = or i1 %55, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = call i32 @inode_permission(ptr noundef %37, ptr noundef %40, i32 noundef 6) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %59, %51
  %63 = call zeroext i1 @inode_owner_or_capable(ptr noundef %37, ptr noundef %40) #13
  br i1 %63, label %64, label %69, !prof !10

64:                                               ; preds = %62, %59, %48
  %65 = load ptr, ptr %23, align 4
  %66 = getelementptr inbounds %struct.dentry, ptr %65, i32 0, i32 5
  %67 = load ptr, ptr %66, align 8
  %68 = call i32 @vfs_link(ptr noundef %38, ptr noundef %37, ptr noundef %67, ptr noundef %29, ptr noundef nonnull %8)
  br label %69

69:                                               ; preds = %64, %62, %44, %35, %31
  %70 = phi i32 [ -18, %31 ], [ -1, %62 ], [ %68, %64 ], [ -75, %44 ], [ -75, %35 ]
  call void @dput(ptr noundef %29) #13
  %71 = load ptr, ptr %23, align 4
  %72 = getelementptr inbounds %struct.dentry, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 24
  call void @up_write(ptr noundef %74) #13
  call void @mnt_drop_write(ptr noundef %33) #13
  call void @dput(ptr noundef %71) #13
  call void @mntput(ptr noundef %33) #13
  %75 = load ptr, ptr %8, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %69
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %78 = getelementptr inbounds %struct.inode, ptr %75, i32 0, i32 40
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.file_lock_context, ptr %79, i32 0, i32 3
  %83 = load volatile ptr, ptr %82, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.file_lock_context, ptr %79, i32 0, i32 3, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %82
  br i1 %88, label %91, label %89

89:                                               ; preds = %85, %81
  %90 = call i32 @__break_lease(ptr noundef nonnull %75, i32 noundef 1, i32 noundef 4) #13
  br label %91

91:                                               ; preds = %89, %85, %77
  %92 = phi i32 [ %90, %89 ], [ 0, %85 ], [ 0, %77 ]
  %93 = load ptr, ptr %8, align 4
  call void @iput(ptr noundef %93) #13
  store ptr null, ptr %8, align 4
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load ptr, ptr %22, align 4
  call void @dput(ptr noundef %96) #13
  call void @mntput(ptr noundef %32) #13
  %97 = call i32 @filename_lookup(i32 noundef %0, ptr noundef %1, i32 noundef %26, ptr noundef nonnull %6, ptr noundef null)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %28, label %115

99:                                               ; preds = %91, %69
  %100 = phi i32 [ %92, %91 ], [ %70, %69 ]
  %101 = icmp eq i32 %100, -116
  %102 = icmp eq i32 %27, 0
  %103 = and i1 %102, %101
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load ptr, ptr %22, align 4
  call void @dput(ptr noundef %105) #13
  call void @mntput(ptr noundef %32) #13
  %106 = call i32 @filename_lookup(i32 noundef %0, ptr noundef %1, i32 noundef %24, ptr noundef nonnull %6, ptr noundef null)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %25, label %115

108:                                              ; preds = %28
  %109 = ptrtoint ptr %29 to i32
  %110 = load ptr, ptr %6, align 8
  br label %111

111:                                              ; preds = %108, %99
  %112 = phi ptr [ %110, %108 ], [ %32, %99 ]
  %113 = phi i32 [ %109, %108 ], [ %100, %99 ]
  %114 = load ptr, ptr %22, align 4
  call void @dput(ptr noundef %114) #13
  call void @mntput(ptr noundef %112) #13
  br label %115

115:                                              ; preds = %111, %104, %95, %16, %14, %5
  %116 = phi i32 [ %113, %111 ], [ -22, %5 ], [ -2, %14 ], [ %19, %16 ], [ %97, %95 ], [ %106, %104 ]
  %117 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %117, label %133, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = icmp slt i32 %120, 1
  br i1 %121, label %122, label %123, !prof !8

122:                                              ; preds = %118
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

123:                                              ; preds = %118
  %124 = add nsw i32 %120, -1
  store i32 %124, ptr %119, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load ptr, ptr %1, align 4
  %128 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 4
  %129 = icmp eq ptr %127, %128
  %130 = load ptr, ptr @names_cachep, align 4
  br i1 %129, label %132, label %131

131:                                              ; preds = %126
  call void @kmem_cache_free(ptr noundef %130, ptr noundef %127) #13
  call void @kfree(ptr noundef %1) #13
  br label %133

132:                                              ; preds = %126
  call void @kmem_cache_free(ptr noundef %130, ptr noundef %1) #13
  br label %133

133:                                              ; preds = %132, %131, %123, %115
  %134 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %134, label %150, label %135

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.filename, ptr %3, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %140, !prof !8

139:                                              ; preds = %135
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

140:                                              ; preds = %135
  %141 = add nsw i32 %137, -1
  store i32 %141, ptr %136, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load ptr, ptr %3, align 4
  %145 = getelementptr inbounds %struct.filename, ptr %3, i32 0, i32 4
  %146 = icmp eq ptr %144, %145
  %147 = load ptr, ptr @names_cachep, align 4
  br i1 %146, label %149, label %148

148:                                              ; preds = %143
  call void @kmem_cache_free(ptr noundef %147, ptr noundef %144) #13
  call void @kfree(ptr noundef %3) #13
  br label %150

149:                                              ; preds = %143
  call void @kmem_cache_free(ptr noundef %147, ptr noundef %3) #13
  br label %150

150:                                              ; preds = %149, %148, %140, %133
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_linkat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %3 to ptr
  %8 = shl i32 %4, 2
  %9 = and i32 %8, 16384
  %10 = tail call ptr @getname_flags(ptr noundef %6, i32 noundef %9, ptr noundef null) #13
  %11 = tail call ptr @getname_flags(ptr noundef %7, i32 noundef 0, ptr noundef null) #13
  %12 = tail call i32 @do_linkat(i32 noundef %0, ptr noundef %10, i32 noundef %2, ptr noundef %11, i32 noundef %4) #13
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_link(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call ptr @getname_flags(ptr noundef %3, i32 noundef 0, ptr noundef null) #13
  %6 = tail call ptr @getname_flags(ptr noundef %4, i32 noundef 0, ptr noundef null) #13
  %7 = tail call i32 @do_linkat(i32 noundef -100, ptr noundef %5, i32 noundef -100, ptr noundef %6, i32 noundef 0) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_rename(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.name_snapshot, align 8
  %3 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %8, align 8
  %16 = and i32 %15, 6291456
  %17 = icmp eq i32 %16, 2097152
  %18 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 35
  %25 = load i32, ptr %24, align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i32 56, i1 false), !annotation !19
  %26 = icmp eq ptr %19, %21
  br i1 %26, label %223, label %27

27:                                               ; preds = %1
  %28 = load ptr, ptr %0, align 4
  %29 = tail call fastcc i32 @may_delete(ptr noundef %28, ptr noundef %4, ptr noundef %8, i1 noundef zeroext %17)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %223

31:                                               ; preds = %27
  %32 = icmp ne ptr %21, null
  br i1 %32, label %56, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %20, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %223

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %223

43:                                               ; preds = %38
  %44 = tail call ptr @llvm.thread.pointer() #13
  %45 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 83
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.cred, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %223, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.cred, ptr %46, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %223, label %54

54:                                               ; preds = %50
  %55 = tail call i32 @inode_permission(ptr noundef %35, ptr noundef %6, i32 noundef 3) #13
  br label %68

56:                                               ; preds = %31
  %57 = load i32, ptr %10, align 8
  %58 = and i32 %57, 6291456
  %59 = icmp eq i32 %58, 2097152
  %60 = and i32 %14, 2
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  br i1 %61, label %64, label %66

64:                                               ; preds = %56
  %65 = tail call fastcc i32 @may_delete(ptr noundef %63, ptr noundef %6, ptr noundef %10, i1 noundef zeroext %17)
  br label %68

66:                                               ; preds = %56
  %67 = tail call fastcc i32 @may_delete(ptr noundef %63, ptr noundef %6, ptr noundef %10, i1 noundef zeroext %59)
  br label %68

68:                                               ; preds = %66, %64, %54
  %69 = phi i32 [ %67, %66 ], [ %65, %64 ], [ %55, %54 ]
  %70 = phi i1 [ %59, %66 ], [ %59, %64 ], [ false, %54 ]
  %71 = icmp eq i32 %69, 0
  br i1 %71, label %72, label %223

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 7
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.inode_operations, ptr %74, i32 0, i32 12
  %76 = load ptr, ptr %75, align 16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %223, label %78

78:                                               ; preds = %72
  %79 = icmp eq ptr %6, %4
  br i1 %79, label %95, label %80

80:                                               ; preds = %78
  br i1 %17, label %81, label %85

81:                                               ; preds = %80
  %82 = load ptr, ptr %0, align 4
  %83 = tail call i32 @inode_permission(ptr noundef %82, ptr noundef %19, i32 noundef 2)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %223

85:                                               ; preds = %81, %80
  %86 = and i32 %14, 2
  %87 = icmp eq i32 %86, 0
  %88 = xor i1 %70, true
  %89 = select i1 %87, i1 true, i1 %88
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = tail call i32 @inode_permission(ptr noundef %92, ptr noundef %21, i32 noundef 2)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %223

95:                                               ; preds = %90, %85, %78
  call void @take_dentry_name_snapshot(ptr noundef nonnull %2, ptr noundef %8) #13
  %96 = icmp eq ptr %10, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 7
  call void @lockref_get(ptr noundef %98) #13
  br label %99

99:                                               ; preds = %97, %95
  %100 = and i32 %14, 2
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %17, i1 %101, i1 false
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br i1 %32, label %109, label %115

104:                                              ; preds = %99
  call void @lock_two_nondirectories(ptr noundef %19, ptr noundef %21) #13
  %105 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, 256
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %121, label %206

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 24
  call void @down_write(ptr noundef %110) #13
  %111 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 256
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %209

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 256
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %115
  call void @dput(ptr noundef %10) #13
  br label %221

121:                                              ; preds = %104
  br i1 %32, label %127, label %132

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 256
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %209

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 256
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %206

132:                                              ; preds = %127, %122, %121, %115
  %133 = load i32, ptr %8, align 8
  %134 = and i32 %133, 65536
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = call zeroext i1 @__is_local_mountpoint(ptr noundef %8) #13
  br i1 %137, label %204, label %138

138:                                              ; preds = %136, %132
  %139 = load i32, ptr %10, align 8
  %140 = and i32 %139, 65536
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = call zeroext i1 @__is_local_mountpoint(ptr noundef %10) #13
  br i1 %143, label %204, label %144

144:                                              ; preds = %142, %138
  %145 = icmp eq i32 %25, 0
  %146 = select i1 %145, i1 true, i1 %79
  br i1 %146, label %162, label %147

147:                                              ; preds = %144
  %148 = xor i1 %17, true
  %149 = select i1 %148, i1 true, i1 %70
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 11
  %152 = load i32, ptr %151, align 8
  %153 = icmp ult i32 %152, %25
  br i1 %153, label %154, label %204

154:                                              ; preds = %150, %147
  %155 = select i1 %101, i1 true, i1 %17
  %156 = xor i1 %70, true
  %157 = select i1 %155, i1 true, i1 %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 11
  %160 = load i32, ptr %159, align 8
  %161 = icmp ult i32 %160, %25
  br i1 %161, label %162, label %204

162:                                              ; preds = %158, %154, %144
  br i1 %17, label %166, label %163

163:                                              ; preds = %162
  %164 = call fastcc i32 @try_break_deleg(ptr noundef %19, ptr noundef %12)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %204

166:                                              ; preds = %163, %162
  %167 = xor i1 %32, true
  %168 = select i1 %167, i1 true, i1 %70
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = call fastcc i32 @try_break_deleg(ptr noundef nonnull %21, ptr noundef %12)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %204

172:                                              ; preds = %169, %166
  %173 = load ptr, ptr %73, align 8
  %174 = getelementptr inbounds %struct.inode_operations, ptr %173, i32 0, i32 12
  %175 = load ptr, ptr %174, align 16
  %176 = getelementptr inbounds %struct.renamedata, ptr %0, i32 0, i32 3
  %177 = load ptr, ptr %176, align 4
  %178 = call i32 %175(ptr noundef %177, ptr noundef %4, ptr noundef %8, ptr noundef %6, ptr noundef %10, i32 noundef %14) #13
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %172
  %181 = select i1 %101, i1 %32, i1 false
  br i1 %181, label %182, label %192

182:                                              ; preds = %180
  br i1 %17, label %183, label %187

183:                                              ; preds = %182
  call void @shrink_dcache_parent(ptr noundef %10) #13
  %184 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %185 = load i32, ptr %184, align 4
  %186 = or i32 %185, 16
  store i32 %186, ptr %184, align 4
  br label %187

187:                                              ; preds = %183, %182
  call fastcc void @dont_mount(ptr noundef %10)
  %188 = load i32, ptr %10, align 8
  %189 = and i32 %188, 65536
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  call void @__detach_mounts(ptr noundef %10) #13
  br label %192

192:                                              ; preds = %191, %187, %180
  %193 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.super_block, ptr %194, i32 0, i32 5
  %196 = load ptr, ptr %195, align 32
  %197 = getelementptr inbounds %struct.file_system_type, ptr %196, i32 0, i32 1
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 32768
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %192
  br i1 %101, label %202, label %203

202:                                              ; preds = %201
  call void @d_move(ptr noundef %8, ptr noundef %10) #13
  br label %204

203:                                              ; preds = %201
  call void @d_exchange(ptr noundef %8, ptr noundef %10) #13
  br label %204

204:                                              ; preds = %203, %202, %192, %172, %169, %163, %158, %150, %142, %136
  %205 = phi i32 [ -16, %136 ], [ -16, %142 ], [ %178, %172 ], [ 0, %192 ], [ 0, %203 ], [ 0, %202 ], [ %170, %169 ], [ %164, %163 ], [ -31, %158 ], [ -31, %150 ]
  br i1 %102, label %208, label %206

206:                                              ; preds = %204, %127, %104
  %207 = phi i32 [ %205, %204 ], [ -1, %104 ], [ -1, %127 ]
  call void @unlock_two_nondirectories(ptr noundef %19, ptr noundef %21) #13
  br label %212

208:                                              ; preds = %204
  br i1 %32, label %209, label %212

209:                                              ; preds = %208, %122, %109
  %210 = phi i32 [ %205, %208 ], [ -1, %109 ], [ -1, %122 ]
  %211 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 24
  call void @up_write(ptr noundef %211) #13
  br label %212

212:                                              ; preds = %209, %208, %206
  %213 = phi i32 [ %205, %208 ], [ %210, %209 ], [ %207, %206 ]
  call void @dput(ptr noundef %10) #13
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = zext i1 %17 to i32
  %217 = select i1 %101, ptr %21, ptr null
  call fastcc void @fsnotify_move(ptr noundef %4, ptr noundef %6, ptr noundef nonnull %2, i32 noundef %216, ptr noundef %217, ptr noundef %8)
  br i1 %101, label %221, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 4
  %220 = zext i1 %70 to i32
  call fastcc void @fsnotify_move(ptr noundef %6, ptr noundef %4, ptr noundef %219, i32 noundef %220, ptr noundef null, ptr noundef %10)
  br label %221

221:                                              ; preds = %218, %215, %212, %120
  %222 = phi i32 [ -1, %120 ], [ 0, %215 ], [ 0, %218 ], [ %213, %212 ]
  call void @release_dentry_name_snapshot(ptr noundef nonnull %2) #13
  br label %223

223:                                              ; preds = %221, %90, %81, %72, %68, %50, %43, %38, %33, %27, %1
  %224 = phi i32 [ %222, %221 ], [ 0, %1 ], [ %29, %27 ], [ %69, %68 ], [ -1, %72 ], [ %83, %81 ], [ %93, %90 ], [ -75, %43 ], [ -75, %50 ], [ -2, %38 ], [ -17, %33 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  ret i32 %224
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_exchange(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_two_nondirectories(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsnotify_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 {
  %7 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @fsnotify_get_cookie() #13
  %10 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4
  %11 = icmp eq i32 %3, 0
  %12 = select i1 %11, i32 64, i32 1073741888
  %13 = select i1 %11, i32 128, i32 1073741952
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 42
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = select i1 %11, i32 268435456, i32 1342177280
  %21 = tail call i32 @fsnotify(i32 noundef %20, ptr noundef %5, i32 noundef 3, ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef 0) #13
  %22 = load ptr, ptr %14, align 4
  br label %23

23:                                               ; preds = %19, %6
  %24 = phi ptr [ %15, %6 ], [ %22, %19 ]
  %25 = getelementptr inbounds %struct.super_block, ptr %24, i32 0, i32 42
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @fsnotify(i32 noundef %12, ptr noundef %8, i32 noundef 2, ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef %9) #13
  br label %30

30:                                               ; preds = %28, %23
  %31 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.super_block, ptr %32, i32 0, i32 42
  %34 = load volatile i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = tail call i32 @fsnotify(i32 noundef %13, ptr noundef %8, i32 noundef 2, ptr noundef %1, ptr noundef %10, ptr noundef null, i32 noundef %9) #13
  br label %38

38:                                               ; preds = %36, %30
  %39 = icmp eq ptr %4, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.super_block, ptr %42, i32 0, i32 42
  %44 = load volatile i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i16, ptr %4, align 8
  %48 = and i16 %47, -4096
  %49 = icmp eq i16 %48, 16384
  %50 = select i1 %49, i32 1073741828, i32 4
  %51 = tail call i32 @fsnotify(i32 noundef %50, ptr noundef nonnull %4, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 0) #13
  br label %52

52:                                               ; preds = %46, %40, %38
  %53 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.super_block, ptr %54, i32 0, i32 42
  %56 = load volatile i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i16, ptr %8, align 8
  %60 = and i16 %59, -4096
  %61 = icmp eq i16 %60, 16384
  %62 = select i1 %61, i32 1073743872, i32 2048
  %63 = tail call i32 @fsnotify(i32 noundef %62, ptr noundef %8, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %8, i32 noundef 0) #13
  br label %64

64:                                               ; preds = %58, %52
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_renameat2(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.renamedata, align 4
  %7 = alloca %struct.path, align 8
  %8 = alloca %struct.path, align 8
  %9 = alloca %struct.qstr, align 8
  %10 = alloca %struct.qstr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store i64 0, ptr %7, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  store i64 0, ptr %8, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false), !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store ptr null, ptr %13, align 4
  %14 = icmp ult i32 %4, 8
  br i1 %14, label %15, label %175

15:                                               ; preds = %5
  %16 = and i32 %4, 5
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %4, 2
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  br i1 %20, label %21, label %175

21:                                               ; preds = %15
  %22 = shl nuw nsw i32 %18, 10
  %23 = and i32 %4, 1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 -16, i32 -17
  %26 = getelementptr inbounds %struct.path, ptr %8, i32 0, i32 1
  %27 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  %28 = getelementptr inbounds %struct.qstr, ptr %10, i32 0, i32 1
  %29 = getelementptr inbounds %struct.anon.14, ptr %10, i32 0, i32 1
  %30 = getelementptr inbounds %struct.qstr, ptr %9, i32 0, i32 1
  %31 = getelementptr inbounds %struct.anon.14, ptr %9, i32 0, i32 1
  %32 = select i1 %19, i32 -39, i32 -22
  %33 = getelementptr inbounds %struct.renamedata, ptr %6, i32 0, i32 1
  %34 = getelementptr inbounds %struct.renamedata, ptr %6, i32 0, i32 2
  %35 = getelementptr inbounds %struct.renamedata, ptr %6, i32 0, i32 4
  %36 = getelementptr inbounds %struct.renamedata, ptr %6, i32 0, i32 5
  %37 = getelementptr inbounds %struct.renamedata, ptr %6, i32 0, i32 3
  %38 = getelementptr inbounds %struct.renamedata, ptr %6, i32 0, i32 6
  %39 = getelementptr inbounds %struct.renamedata, ptr %6, i32 0, i32 7
  br label %40

40:                                               ; preds = %171, %21
  %41 = phi i1 [ false, %171 ], [ true, %21 ]
  %42 = phi i32 [ 32, %171 ], [ 0, %21 ]
  %43 = call fastcc i32 @filename_parentat(i32 noundef %0, ptr noundef %1, i32 noundef %42, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %11)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %175

45:                                               ; preds = %40
  %46 = call fastcc i32 @filename_parentat(i32 noundef %2, ptr noundef %3, i32 noundef %42, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %12)
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %7, align 8
  br i1 %47, label %49, label %171

49:                                               ; preds = %45
  %50 = load ptr, ptr %8, align 8
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %166

52:                                               ; preds = %49
  %53 = load i32, ptr %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %166

55:                                               ; preds = %52
  %56 = load i32, ptr %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %166

58:                                               ; preds = %55
  %59 = call i32 @mnt_want_write(ptr noundef %48) #13
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %166

61:                                               ; preds = %58
  %62 = load ptr, ptr %26, align 4
  %63 = load ptr, ptr %27, align 4
  %64 = or i32 %42, %22
  %65 = xor i32 %64, 2048
  %66 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 5
  %67 = getelementptr inbounds %struct.vfsmount, ptr %48, i32 0, i32 3
  %68 = getelementptr inbounds %struct.dentry, ptr %62, i32 0, i32 5
  %69 = icmp eq ptr %62, %63
  %70 = getelementptr inbounds %struct.dentry, ptr %62, i32 0, i32 9
  br label %71

71:                                               ; preds = %160, %61
  %72 = call ptr @lock_rename(ptr noundef %62, ptr noundef %63)
  %73 = call fastcc ptr @__lookup_hash(ptr noundef nonnull %9, ptr noundef %63, i32 noundef %42)
  %74 = ptrtoint ptr %73 to i32
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %134, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %73, align 8
  %78 = and i32 %77, 7340032
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %132, label %80

80:                                               ; preds = %76
  %81 = call fastcc ptr @__lookup_hash(ptr noundef nonnull %10, ptr noundef %62, i32 noundef %65)
  %82 = ptrtoint ptr %81 to i32
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %83, label %132, label %84

84:                                               ; preds = %80
  br i1 %24, label %89, label %85

85:                                               ; preds = %84
  %86 = load i32, ptr %81, align 8
  %87 = and i32 %86, 7340032
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %85, %84
  br i1 %19, label %103, label %90

90:                                               ; preds = %89
  %91 = load i32, ptr %81, align 8
  %92 = and i32 %91, 7340032
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %130, label %94

94:                                               ; preds = %90
  %95 = and i32 %91, 6291456
  %96 = icmp eq i32 %95, 2097152
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %28, align 8
  %99 = load i32, ptr %29, align 4
  %100 = getelementptr i8, ptr %98, i32 %99
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %130

103:                                              ; preds = %97, %94, %89
  %104 = load i32, ptr %73, align 8
  %105 = and i32 %104, 6291456
  %106 = icmp eq i32 %105, 2097152
  br i1 %106, label %120, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %30, align 8
  %109 = load i32, ptr %31, align 4
  %110 = getelementptr i8, ptr %108, i32 %109
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  br i1 %19, label %114, label %120

114:                                              ; preds = %113
  %115 = load ptr, ptr %28, align 8
  %116 = load i32, ptr %29, align 4
  %117 = getelementptr i8, ptr %115, i32 %116
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114, %113, %103
  %121 = icmp eq ptr %73, %72
  br i1 %121, label %130, label %122

122:                                              ; preds = %120
  %123 = icmp eq ptr %81, %72
  br i1 %123, label %130, label %124

124:                                              ; preds = %122
  %125 = load ptr, ptr %66, align 8
  store ptr %125, ptr %33, align 4
  store ptr %73, ptr %34, align 4
  %126 = load volatile ptr, ptr %67, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store ptr %126, ptr %6, align 4
  %127 = load ptr, ptr %68, align 8
  store ptr %127, ptr %35, align 4
  store ptr %81, ptr %36, align 4
  %128 = load volatile ptr, ptr %67, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  store ptr %128, ptr %37, align 4
  store ptr %13, ptr %38, align 4
  store i32 %4, ptr %39, align 4
  %129 = call i32 @vfs_rename(ptr noundef nonnull %6)
  br label %130

130:                                              ; preds = %124, %122, %120, %114, %107, %97, %90, %85
  %131 = phi i32 [ -17, %85 ], [ -2, %90 ], [ -22, %120 ], [ %32, %122 ], [ %129, %124 ], [ -20, %107 ], [ -20, %114 ], [ -20, %97 ]
  call void @dput(ptr noundef %81) #13
  br label %132

132:                                              ; preds = %130, %80, %76
  %133 = phi i32 [ -2, %76 ], [ %82, %80 ], [ %131, %130 ]
  call void @dput(ptr noundef %73) #13
  br label %134

134:                                              ; preds = %132, %71
  %135 = phi i32 [ %74, %71 ], [ %133, %132 ]
  %136 = load ptr, ptr %68, align 8
  %137 = getelementptr inbounds %struct.inode, ptr %136, i32 0, i32 24
  call void @up_write(ptr noundef %137) #13
  br i1 %69, label %143, label %138

138:                                              ; preds = %134
  %139 = load ptr, ptr %66, align 8
  %140 = getelementptr inbounds %struct.inode, ptr %139, i32 0, i32 24
  call void @up_write(ptr noundef %140) #13
  %141 = load ptr, ptr %70, align 4
  %142 = getelementptr inbounds %struct.super_block, ptr %141, i32 0, i32 37
  call void @mutex_unlock(ptr noundef %142) #13
  br label %143

143:                                              ; preds = %138, %134
  %144 = load ptr, ptr %13, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %164, label %146

146:                                              ; preds = %143
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !32
  %147 = getelementptr inbounds %struct.inode, ptr %144, i32 0, i32 40
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %160, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.file_lock_context, ptr %148, i32 0, i32 3
  %152 = load volatile ptr, ptr %151, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !33
  %153 = icmp eq ptr %152, %151
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.file_lock_context, ptr %148, i32 0, i32 3, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %151
  br i1 %157, label %160, label %158

158:                                              ; preds = %154, %150
  %159 = call i32 @__break_lease(ptr noundef nonnull %144, i32 noundef 1, i32 noundef 4) #13
  br label %160

160:                                              ; preds = %158, %154, %146
  %161 = phi i32 [ %159, %158 ], [ 0, %154 ], [ 0, %146 ]
  %162 = load ptr, ptr %13, align 4
  call void @iput(ptr noundef %162) #13
  store ptr null, ptr %13, align 4
  %163 = icmp eq i32 %161, 0
  br i1 %163, label %71, label %164

164:                                              ; preds = %160, %143
  %165 = phi i32 [ %161, %160 ], [ %135, %143 ]
  call void @mnt_drop_write(ptr noundef %48) #13
  br label %166

166:                                              ; preds = %164, %58, %55, %52, %49
  %167 = phi i32 [ -18, %49 ], [ -16, %52 ], [ %25, %55 ], [ %59, %58 ], [ %165, %164 ]
  %168 = icmp eq i32 %167, -116
  %169 = and i1 %41, %168
  %170 = load ptr, ptr %26, align 4
  call void @dput(ptr noundef %170) #13
  call void @mntput(ptr noundef %50) #13
  br label %171

171:                                              ; preds = %166, %45
  %172 = phi i1 [ %169, %166 ], [ false, %45 ]
  %173 = phi i32 [ %167, %166 ], [ %46, %45 ]
  %174 = load ptr, ptr %27, align 4
  call void @dput(ptr noundef %174) #13
  call void @mntput(ptr noundef %48) #13
  br i1 %172, label %40, label %175

175:                                              ; preds = %171, %40, %15, %5
  %176 = phi i32 [ -22, %5 ], [ -22, %15 ], [ %173, %171 ], [ %43, %40 ]
  %177 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %177, label %193, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %182, label %183, !prof !8

182:                                              ; preds = %178
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

183:                                              ; preds = %178
  %184 = add nsw i32 %180, -1
  store i32 %184, ptr %179, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load ptr, ptr %1, align 4
  %188 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 4
  %189 = icmp eq ptr %187, %188
  %190 = load ptr, ptr @names_cachep, align 4
  br i1 %189, label %192, label %191

191:                                              ; preds = %186
  call void @kmem_cache_free(ptr noundef %190, ptr noundef %187) #13
  call void @kfree(ptr noundef %1) #13
  br label %193

192:                                              ; preds = %186
  call void @kmem_cache_free(ptr noundef %190, ptr noundef %1) #13
  br label %193

193:                                              ; preds = %192, %191, %183, %175
  %194 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %194, label %210, label %195

195:                                              ; preds = %193
  %196 = getelementptr inbounds %struct.filename, ptr %3, i32 0, i32 2
  %197 = load i32, ptr %196, align 4
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %199, label %200, !prof !8

199:                                              ; preds = %195
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

200:                                              ; preds = %195
  %201 = add nsw i32 %197, -1
  store i32 %201, ptr %196, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load ptr, ptr %3, align 4
  %205 = getelementptr inbounds %struct.filename, ptr %3, i32 0, i32 4
  %206 = icmp eq ptr %204, %205
  %207 = load ptr, ptr @names_cachep, align 4
  br i1 %206, label %209, label %208

208:                                              ; preds = %203
  call void @kmem_cache_free(ptr noundef %207, ptr noundef %204) #13
  call void @kfree(ptr noundef %3) #13
  br label %210

209:                                              ; preds = %203
  call void @kmem_cache_free(ptr noundef %207, ptr noundef %3) #13
  br label %210

210:                                              ; preds = %209, %208, %200, %193
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  ret i32 %176
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_renameat2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %3 to ptr
  %8 = tail call ptr @getname_flags(ptr noundef %6, i32 noundef 0, ptr noundef null) #13
  %9 = tail call ptr @getname_flags(ptr noundef %7, i32 noundef 0, ptr noundef null) #13
  %10 = tail call i32 @do_renameat2(i32 noundef %0, ptr noundef %8, i32 noundef %2, ptr noundef %9, i32 noundef %4) #13
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_renameat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = inttoptr i32 %3 to ptr
  %7 = tail call ptr @getname_flags(ptr noundef %5, i32 noundef 0, ptr noundef null) #13
  %8 = tail call ptr @getname_flags(ptr noundef %6, i32 noundef 0, ptr noundef null) #13
  %9 = tail call i32 @do_renameat2(i32 noundef %0, ptr noundef %7, i32 noundef %2, ptr noundef %8, i32 noundef 0) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_rename(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call ptr @getname_flags(ptr noundef %3, i32 noundef 0, ptr noundef null) #13
  %6 = tail call ptr @getname_flags(ptr noundef %4, i32 noundef 0, ptr noundef null) #13
  %7 = tail call i32 @do_renameat2(i32 noundef -100, ptr noundef %5, i32 noundef -100, ptr noundef %6, i32 noundef 0) #13
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @readlink_copy(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = ptrtoint ptr %2 to i32
  %5 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %30, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strlen(ptr noundef %2)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1)
  %9 = icmp slt i32 %8, 0
  %10 = load i1, ptr @check_copy_size.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %6
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 230, i32 noundef 9, ptr noundef null) #13
  br label %14

14:                                               ; preds = %13, %6
  br i1 %9, label %30, label %15, !prof !8

15:                                               ; preds = %14
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %8, i32 -1090519040) #16, !srcloc !34
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #13
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #15, !srcloc !35
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #13, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !37
  %25 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %2, i32 noundef %8) #13
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #13, !srcloc !36
  tail call void asm sideeffect "isb ", "~{memory}"() #13, !srcloc !37
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %25, %19 ], [ %8, %15 ]
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %8, i32 -14
  br label %30

30:                                               ; preds = %26, %14, %3
  %31 = phi i32 [ %4, %3 ], [ -14, %14 ], [ %29, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_readlink(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.delayed_call, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 16
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %29, !prof !8

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode_operations, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !10

17:                                               ; preds = %11
  %18 = tail call i32 %15(ptr noundef %0, ptr noundef %1, i32 noundef %2) #13
  br label %50

19:                                               ; preds = %11
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 7340032
  %22 = icmp eq i32 %21, 6291456
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %24) #13
  %25 = load i16, ptr %7, align 2
  %26 = or i16 %25, 16
  store i16 %26, ptr %7, align 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %27 = load i16, ptr %24, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %29

29:                                               ; preds = %23, %3
  %30 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 43
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 7
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.inode_operations, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call ptr %37(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %4) #13
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = ptrtoint ptr %38 to i32
  br label %50

42:                                               ; preds = %33, %29
  %43 = phi ptr [ %31, %29 ], [ %38, %33 ]
  %44 = call i32 @readlink_copy(ptr noundef %1, i32 noundef %2, ptr noundef %43)
  %45 = load ptr, ptr %4, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.delayed_call, ptr %4, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  call void %45(ptr noundef %49) #13
  br label %50

50:                                               ; preds = %47, %42, %40, %19, %17
  %51 = phi i32 [ %18, %17 ], [ %41, %40 ], [ -22, %19 ], [ %44, %42 ], [ %44, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vfs_get_link(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 7340032
  %5 = icmp eq i32 %4, 6291456
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.inode_operations, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr %12(ptr noundef %0, ptr noundef %8, ptr noundef %1) #13
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi ptr [ %13, %6 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_get_link(ptr noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = tail call ptr @pagecache_get_page(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 1
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !10

15:                                               ; preds = %10
  %16 = add i32 %12, -1
  br label %19

17:                                               ; preds = %10
  %18 = ptrtoint ptr %8 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = inttoptr i32 %20 to ptr
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !38
  br label %45

26:                                               ; preds = %19
  %27 = load volatile i32, ptr %11, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !10

30:                                               ; preds = %26
  %31 = add i32 %27, -1
  br label %34

32:                                               ; preds = %26
  %33 = ptrtoint ptr %8 to i32
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #13, !srcloc !26
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #13, !srcloc !40
  %39 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !41
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  tail call void @__put_page(ptr noundef %36) #13
  br label %60

42:                                               ; preds = %3
  %43 = tail call ptr @read_cache_page(ptr noundef %5, i32 noundef 0, ptr noundef null, ptr noundef null) #13
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %60, label %45

45:                                               ; preds = %42, %25
  %46 = phi ptr [ %43, %42 ], [ %8, %25 ]
  store ptr @page_put_link, ptr %2, align 4
  %47 = getelementptr inbounds %struct.delayed_call, ptr %2, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4981, 0\0A.popsection", ""() #13, !srcloc !42
  unreachable

53:                                               ; preds = %45
  %54 = tail call ptr @page_address(ptr noundef %46) #13
  %55 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = tail call i32 @llvm.umin.i32(i32 %57, i32 4095) #13
  %59 = getelementptr i8, ptr %54, i32 %58
  store i8 0, ptr %59, align 1
  br label %60

60:                                               ; preds = %53, %42, %41, %34, %7
  %61 = phi ptr [ %54, %53 ], [ %43, %42 ], [ inttoptr (i32 -10 to ptr), %7 ], [ inttoptr (i32 -10 to ptr), %34 ], [ inttoptr (i32 -10 to ptr), %41 ]
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_put_link(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

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
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !26
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !40
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !41
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  tail call void @__put_page(ptr noundef %12) #13
  br label %18

18:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_readlink(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.delayed_call, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = call ptr @page_get_link(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %4)
  %8 = tail call i32 @readlink_copy(ptr noundef %1, i32 noundef %2, ptr noundef %7)
  %9 = load ptr, ptr %4, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.delayed_call, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %9(ptr noundef %13) #13
  br label %14

14:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__page_symlink(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store ptr null, ptr %5, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store ptr null, ptr %6, align 4, !annotation !19
  %9 = icmp eq i32 %3, 0
  %10 = select i1 %9, i32 0, i32 2
  %11 = add i32 %2, -1
  br label %12

12:                                               ; preds = %22, %4
  %13 = call i32 @pagecache_write_begin(ptr noundef null, ptr noundef %8, i64 noundef 0, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 4
  %17 = call ptr @page_address(ptr noundef %16) #13
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %17, ptr align 1 %1, i32 %11, i1 false)
  %18 = load ptr, ptr %5, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = call i32 @pagecache_write_end(ptr noundef null, ptr noundef %8, i64 noundef 0, i32 noundef %11, i32 noundef %11, ptr noundef %18, ptr noundef %19) #13
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = icmp slt i32 %20, %11
  br i1 %23, label %12, label %24

24:                                               ; preds = %22
  call void @__mark_inode_dirty(ptr noundef %0, i32 noundef 7) #13
  br label %25

25:                                               ; preds = %24, %15, %12
  %26 = phi i32 [ 0, %24 ], [ %20, %15 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_begin(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pagecache_write_end(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @page_symlink(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.address_space, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 7
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = tail call i32 @__page_symlink(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %10)
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_acl(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @get_cached_acl_rcu(ptr noundef %1, i32 noundef 32768) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = tail call i32 @posix_acl_permission(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %2) #13
  br label %32

15:                                               ; preds = %3
  %16 = tail call ptr @get_acl(ptr noundef %1, i32 noundef 32768) #13
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %32

20:                                               ; preds = %15
  %21 = icmp eq ptr %16, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  %23 = tail call i32 @posix_acl_permission(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16, i32 noundef %2) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !43
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #13, !srcloc !26
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #13, !srcloc !44
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %32, label %29, !prof !10

29:                                               ; preds = %27
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #13
  br label %32

30:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !45
  %31 = getelementptr inbounds %struct.posix_acl, ptr %16, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %31, ptr noundef nonnull inttoptr (i32 4 to ptr)) #13
  br label %32

32:                                               ; preds = %30, %29, %27, %20, %18, %13, %9, %6
  %33 = phi i32 [ %14, %13 ], [ %19, %18 ], [ -11, %6 ], [ -10, %9 ], [ -11, %20 ], [ %23, %27 ], [ %23, %29 ], [ %23, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cached_acl_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_permission(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_acl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__traverse_mounts(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %8 = and i32 %4, 790
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %50, %5
  %12 = phi i32 [ %34, %50 ], [ 0, %5 ]
  %13 = phi i1 [ true, %50 ], [ false, %5 ]
  %14 = phi i32 [ %51, %50 ], [ %1, %5 ]
  br label %15

15:                                               ; preds = %73, %11
  %16 = phi i32 [ %74, %73 ], [ %12, %11 ]
  %17 = phi i32 [ %76, %73 ], [ %14, %11 ]
  %18 = and i32 %17, 458752
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %78, label %20

20:                                               ; preds = %15
  %21 = and i32 %17, 262144
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.dentry_operations, ptr %26, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0, i1 noundef zeroext false) #13
  %30 = load ptr, ptr %7, align 4
  %31 = load volatile i32, ptr %30, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !46
  %32 = icmp slt i32 %29, 0
  br i1 %32, label %78, label %33

33:                                               ; preds = %23, %20
  %34 = phi i32 [ %29, %23 ], [ %16, %20 ]
  %35 = phi i32 [ %31, %23 ], [ %17, %20 ]
  %36 = and i32 %35, 65536
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = tail call ptr @lookup_mnt(ptr noundef %0) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %7, align 4
  tail call void @dput(ptr noundef %42) #13
  br i1 %13, label %43, label %45

43:                                               ; preds = %41
  %44 = load ptr, ptr %0, align 4
  tail call void @mntput(ptr noundef %44) #13
  br label %45

45:                                               ; preds = %43, %41
  store ptr %39, ptr %0, align 4
  %46 = load ptr, ptr %39, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %49) #13
  br label %50

50:                                               ; preds = %48, %45
  store ptr %46, ptr %7, align 4
  %51 = load i32, ptr %46, align 8
  br label %11

52:                                               ; preds = %38, %33
  %53 = and i32 %35, 131072
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %7, align 4
  br i1 %9, label %57, label %61

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %57, %55
  br i1 %10, label %66, label %62

62:                                               ; preds = %61
  %63 = load i32, ptr %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %3, align 4
  %65 = icmp sgt i32 %63, 39
  br i1 %65, label %73, label %66

66:                                               ; preds = %62, %61
  %67 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 8
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.dentry_operations, ptr %68, i32 0, i32 10
  %70 = load ptr, ptr %69, align 8
  %71 = tail call ptr %70(ptr noundef %0) #13
  %72 = tail call i32 @finish_automount(ptr noundef %71, ptr noundef %0) #13
  br label %73

73:                                               ; preds = %66, %62, %57
  %74 = phi i32 [ %72, %66 ], [ -21, %57 ], [ -40, %62 ]
  %75 = load ptr, ptr %7, align 4
  %76 = load volatile i32, ptr %75, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !47
  %77 = icmp slt i32 %74, 0
  br i1 %77, label %78, label %15

78:                                               ; preds = %73, %52, %23, %15
  %79 = phi i32 [ %29, %23 ], [ %74, %73 ], [ %34, %52 ], [ %16, %15 ]
  %80 = phi i32 [ %31, %23 ], [ %76, %73 ], [ %35, %52 ], [ %17, %15 ]
  %81 = icmp eq i32 %79, -21
  %82 = select i1 %81, i32 0, i32 %79
  br i1 %13, label %83, label %87

83:                                               ; preds = %78
  %84 = load ptr, ptr %0, align 4
  %85 = icmp eq ptr %84, %6
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void @mntput(ptr noundef %6) #13
  br label %87

87:                                               ; preds = %86, %83, %78
  %88 = icmp eq i32 %82, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  %90 = and i32 %80, 7340032
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93, !prof !8

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %92, %89, %87
  %94 = phi i32 [ %82, %87 ], [ -2, %92 ], [ 0, %89 ]
  %95 = zext i1 %13 to i8
  store i8 %95, ptr %2, align 1
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @finish_automount(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @path_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %1, 2097216
  %7 = icmp eq i32 %6, 2097152
  br i1 %7, label %240, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %5, align 1
  %10 = icmp eq i8 %9, 0
  %11 = and i32 %1, -65
  %12 = select i1 %10, i32 %11, i32 %1
  %13 = and i32 %12, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  br label %16

16:                                               ; preds = %15, %8
  %17 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  store i32 %12, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = or i32 %19, 4
  store i32 %20, ptr %18, align 8
  %21 = load volatile i32, ptr @mount_lock, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %24, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !49
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !50
  %25 = load volatile i32, ptr @mount_lock, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %24

28:                                               ; preds = %24, %16
  %29 = phi i32 [ %21, %16 ], [ %25, %24 ]
  %30 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  store i32 %29, ptr %30, align 8
  %31 = load volatile i32, ptr @rename_lock, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %34, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !51
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !52
  %35 = load volatile i32, ptr @rename_lock, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34, %28
  %39 = phi i32 [ %31, %28 ], [ %35, %34 ]
  %40 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 8
  store i32 %39, ptr %40, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !53
  %41 = load i32, ptr %18, align 8
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  br i1 %43, label %87, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 8
  %50 = load i8, ptr %5, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %47, align 8
  %54 = and i32 %53, 7340032
  %55 = icmp eq i32 %54, 2097152
  br i1 %55, label %56, label %240, !prof !10

56:                                               ; preds = %52, %45
  %57 = load i64, ptr %44, align 8
  store i64 %57, ptr %0, align 8
  %58 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %49, ptr %58, align 8
  br i1 %14, label %78, label %59

59:                                               ; preds = %56
  %60 = lshr i64 %57, 32
  %61 = trunc i64 %60 to i32
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %64 = getelementptr inbounds %struct.dentry, ptr %62, i32 0, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %68, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !55
  %69 = load ptr, ptr %63, align 4
  %70 = getelementptr inbounds %struct.dentry, ptr %69, i32 0, i32 1
  %71 = load volatile i32, ptr %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %68

74:                                               ; preds = %68, %59
  %75 = phi i32 [ %65, %59 ], [ %71, %68 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !56
  %76 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 16
  store i32 %75, ptr %77, align 8
  br label %240

78:                                               ; preds = %56
  %79 = trunc i64 %57 to i32
  %80 = inttoptr i32 %79 to ptr
  %81 = tail call ptr @mntget(ptr noundef %80) #13
  %82 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %240, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.dentry, ptr %83, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %86) #13
  br label %240

87:                                               ; preds = %38
  store ptr null, ptr %44, align 8
  %88 = load i8, ptr %5, align 1
  %89 = icmp eq i8 %88, 47
  %90 = and i32 %12, 1048576
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %89, i1 %91, i1 false
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @nd_jump_root(ptr noundef %0)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %240, label %96, !prof !10

96:                                               ; preds = %93
  %97 = inttoptr i32 %94 to ptr
  br label %240

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 17
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, -100
  br i1 %101, label %102, label %154

102:                                              ; preds = %98
  %103 = tail call ptr @llvm.thread.pointer() #13
  %104 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 89
  %105 = load ptr, ptr %104, align 64
  br i1 %14, label %142, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.fs_struct, ptr %105, i32 0, i32 2
  %109 = getelementptr inbounds %struct.fs_struct, ptr %105, i32 0, i32 6
  %110 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %111 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  br label %112

112:                                              ; preds = %138, %106
  %113 = load volatile i32, ptr %108, align 4
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %116, %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !57
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !58
  %117 = load volatile i32, ptr %108, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %116

120:                                              ; preds = %116, %112
  %121 = phi i32 [ %113, %112 ], [ %117, %116 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !59
  %122 = load i64, ptr %109, align 4
  store i64 %122, ptr %0, align 8
  %123 = lshr i64 %122, 32
  %124 = trunc i64 %123 to i32
  %125 = inttoptr i32 %124 to ptr
  %126 = getelementptr inbounds %struct.dentry, ptr %125, i32 0, i32 5
  %127 = load ptr, ptr %126, align 8
  store ptr %127, ptr %111, align 8
  %128 = getelementptr inbounds %struct.dentry, ptr %125, i32 0, i32 1
  %129 = load volatile i32, ptr %128, align 4
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %132, %120
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !61
  %133 = load ptr, ptr %110, align 4
  %134 = getelementptr inbounds %struct.dentry, ptr %133, i32 0, i32 1
  %135 = load volatile i32, ptr %134, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %132

138:                                              ; preds = %132, %120
  %139 = phi i32 [ %129, %120 ], [ %135, %132 ]
  store i32 %139, ptr %107, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %140 = load volatile i32, ptr %108, align 4
  %141 = icmp eq i32 %140, %121
  br i1 %141, label %206, label %112

142:                                              ; preds = %102
  %143 = getelementptr inbounds %struct.fs_struct, ptr %105, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %143) #13
  %144 = getelementptr inbounds %struct.fs_struct, ptr %105, i32 0, i32 6
  %145 = load i64, ptr %144, align 4
  store i64 %145, ptr %0, align 4
  %146 = trunc i64 %145 to i32
  %147 = inttoptr i32 %146 to ptr
  %148 = tail call ptr @mntget(ptr noundef %147) #13
  %149 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %209, label %152

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.dentry, ptr %150, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %153) #13
  br label %209

154:                                              ; preds = %98
  %155 = tail call i32 @__fdget_raw(i32 noundef %100) #13, !noalias !63
  %156 = and i32 %155, -4
  %157 = inttoptr i32 %156 to ptr
  %158 = icmp eq i32 %156, 0
  br i1 %158, label %240, label %159

159:                                              ; preds = %154
  %160 = load i8, ptr %5, align 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.file, ptr %157, i32 0, i32 1, i32 1
  %164 = load ptr, ptr %163, align 4
  %165 = load i32, ptr %164, align 8
  %166 = and i32 %165, 7340032
  %167 = icmp eq i32 %166, 2097152
  br i1 %167, label %172, label %168, !prof !10

168:                                              ; preds = %162
  %169 = and i32 %155, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %240, label %171

171:                                              ; preds = %168
  tail call void @fput(ptr noundef nonnull %157) #13
  br label %240

172:                                              ; preds = %162, %159
  %173 = getelementptr inbounds %struct.file, ptr %157, i32 0, i32 1
  %174 = load i64, ptr %173, align 8
  store i64 %174, ptr %0, align 8
  br i1 %14, label %196, label %175

175:                                              ; preds = %172
  %176 = lshr i64 %174, 32
  %177 = trunc i64 %176 to i32
  %178 = inttoptr i32 %177 to ptr
  %179 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %180 = getelementptr inbounds %struct.dentry, ptr %178, i32 0, i32 5
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %181, ptr %182, align 8
  %183 = getelementptr inbounds %struct.dentry, ptr %178, i32 0, i32 1
  %184 = load volatile i32, ptr %183, align 4
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %193, label %187

187:                                              ; preds = %187, %175
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !66
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !67
  %188 = load ptr, ptr %179, align 4
  %189 = getelementptr inbounds %struct.dentry, ptr %188, i32 0, i32 1
  %190 = load volatile i32, ptr %189, align 4
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %187

193:                                              ; preds = %187, %175
  %194 = phi i32 [ %184, %175 ], [ %190, %187 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !68
  %195 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  store i32 %194, ptr %195, align 4
  br label %202

196:                                              ; preds = %172
  tail call void @path_get(ptr noundef %0)
  %197 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.dentry, ptr %198, i32 0, i32 5
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %200, ptr %201, align 8
  br label %202

202:                                              ; preds = %196, %193
  %203 = and i32 %155, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %202
  tail call void @fput(ptr noundef nonnull %157) #13
  br label %206

206:                                              ; preds = %205, %202, %138
  %207 = and i32 %12, 1572864
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %240, label %221

209:                                              ; preds = %152, %142
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %210 = load i16, ptr %143, align 4
  %211 = add i16 %210, 1
  store i16 %211, ptr %143, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %212 = load ptr, ptr %149, align 4
  %213 = getelementptr inbounds %struct.dentry, ptr %212, i32 0, i32 5
  %214 = load ptr, ptr %213, align 8
  %215 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %214, ptr %215, align 8
  %216 = and i32 %12, 1572864
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %240, label %218

218:                                              ; preds = %209
  %219 = load i64, ptr %0, align 8
  store i64 %219, ptr %44, align 8
  %220 = trunc i64 %219 to i32
  br label %228

221:                                              ; preds = %206
  %222 = load i64, ptr %0, align 8
  store i64 %222, ptr %44, align 8
  %223 = trunc i64 %222 to i32
  br i1 %14, label %228, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 16
  store i32 %226, ptr %227, align 8
  br label %240

228:                                              ; preds = %221, %218
  %229 = phi i32 [ %220, %218 ], [ %223, %221 ]
  %230 = inttoptr i32 %229 to ptr
  %231 = tail call ptr @mntget(ptr noundef %230) #13
  %232 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %237, label %235

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.dentry, ptr %233, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %236) #13
  br label %237

237:                                              ; preds = %235, %228
  %238 = load i32, ptr %18, align 8
  %239 = or i32 %238, 2
  store i32 %239, ptr %18, align 8
  br label %240

240:                                              ; preds = %237, %224, %209, %206, %171, %168, %154, %96, %93, %85, %78, %74, %52, %2
  %241 = phi ptr [ %97, %96 ], [ %5, %74 ], [ %5, %93 ], [ %5, %224 ], [ %5, %237 ], [ %5, %206 ], [ inttoptr (i32 -11 to ptr), %2 ], [ inttoptr (i32 -20 to ptr), %52 ], [ %5, %78 ], [ %5, %85 ], [ %5, %209 ], [ inttoptr (i32 -20 to ptr), %171 ], [ inttoptr (i32 -20 to ptr), %168 ], [ inttoptr (i32 -9 to ptr), %154 ]
  ret ptr %241
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @handle_lookup_down(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %11) #13
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = tail call fastcc ptr @step_into(ptr noundef %0, i32 noundef 4, ptr noundef %14, ptr noundef %16, i32 noundef %18)
  %20 = ptrtoint ptr %19 to i32
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @link_path_walk(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.qstr, align 8
  %4 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 9
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 16
  store i32 %7, ptr %5, align 4
  %8 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = ptrtoint ptr %0 to i32
  br label %234

11:                                               ; preds = %23, %2
  %12 = phi ptr [ %24, %23 ], [ %0, %2 ]
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %14 [
    i8 47, label %23
    i8 0, label %25
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 3
  %16 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %17 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 5
  %18 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 1, i32 1
  %21 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 12
  %22 = getelementptr inbounds i8, ptr %3, i32 8
  br label %27

23:                                               ; preds = %11
  %24 = getelementptr i8, ptr %12, i32 1
  br label %11

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 19
  store i16 0, ptr %26, align 4
  br label %234

27:                                               ; preds = %224, %14
  %28 = phi ptr [ %12, %14 ], [ %225, %224 ]
  %29 = phi i32 [ 0, %14 ], [ %226, %224 ]
  %30 = load ptr, ptr %1, align 8
  %31 = getelementptr inbounds %struct.vfsmount, ptr %30, i32 0, i32 3
  %32 = load volatile ptr, ptr %31, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %33 = load i32, ptr %5, align 4
  %34 = and i32 %33, 64
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %63, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %15, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %56, !prof !8

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.inode_operations, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !8

48:                                               ; preds = %42
  %49 = call i32 %46(ptr noundef %32, ptr noundef %37, i32 noundef 129) #13
  br label %58

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %51) #13
  %52 = load i16, ptr %38, align 2
  %53 = or i16 %52, 1
  store i16 %53, ptr %38, align 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %54 = load i16, ptr %51, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %51, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %56

56:                                               ; preds = %50, %36
  %57 = call i32 @generic_permission(ptr noundef %32, ptr noundef %37, i32 noundef 129) #13
  br label %58

58:                                               ; preds = %56, %48
  %59 = phi i32 [ %49, %48 ], [ %57, %56 ]
  %60 = icmp eq i32 %59, -10
  br i1 %60, label %61, label %85

61:                                               ; preds = %58
  %62 = call fastcc zeroext i1 @try_to_unlazy(ptr noundef %1) #13
  br i1 %62, label %63, label %234

63:                                               ; preds = %61, %27
  %64 = load ptr, ptr %15, align 8
  %65 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 1
  %66 = load i16, ptr %65, align 2
  %67 = and i16 %66, 1
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %83, !prof !8

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 7
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.inode_operations, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !8

75:                                               ; preds = %69
  %76 = call i32 %73(ptr noundef %32, ptr noundef %64, i32 noundef 1) #13
  br label %85

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %78) #13
  %79 = load i16, ptr %65, align 2
  %80 = or i16 %79, 1
  store i16 %80, ptr %65, align 2
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %81 = load i16, ptr %78, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %78, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  br label %83

83:                                               ; preds = %77, %63
  %84 = call i32 @generic_permission(ptr noundef %32, ptr noundef %64, i32 noundef 1) #13
  br label %85

85:                                               ; preds = %83, %75, %58
  %86 = phi i32 [ %76, %75 ], [ %84, %83 ], [ %59, %58 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %234

88:                                               ; preds = %85
  %89 = load ptr, ptr %16, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %28, ptr elementtype(i32) %28) #15, !srcloc !17
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = xor i32 %92, 791621423
  %94 = add i32 %92, -16843009
  %95 = add i32 %93, -16843009
  %96 = or i32 %95, %94
  %97 = and i32 %92, -2139062144
  %98 = xor i32 %97, -2139062144
  %99 = and i32 %98, %96
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %101, %88
  %102 = phi i32 [ %115, %101 ], [ %92, %88 ]
  %103 = phi i32 [ %112, %101 ], [ 0, %88 ]
  %104 = phi i32 [ %111, %101 ], [ %90, %88 ]
  %105 = phi i32 [ %109, %101 ], [ 0, %88 ]
  %106 = xor i32 %105, %102
  %107 = xor i32 %106, %104
  %108 = call i32 @llvm.fshl.i32(i32 %106, i32 %106, i32 7) #13
  %109 = add i32 %108, %107
  %110 = call i32 @llvm.fshl.i32(i32 %107, i32 %107, i32 20) #13
  %111 = mul i32 %110, 9
  %112 = add i32 %103, 4
  %113 = getelementptr i8, ptr %28, i32 %112
  %114 = call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %113, ptr elementtype(i32) %113) #15, !srcloc !17
  %115 = extractvalue { i32, i32 } %114, 0
  %116 = xor i32 %115, 791621423
  %117 = add i32 %115, -16843009
  %118 = add i32 %116, -16843009
  %119 = or i32 %118, %117
  %120 = and i32 %115, -2139062144
  %121 = xor i32 %120, -2139062144
  %122 = and i32 %121, %119
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %101, label %124

124:                                              ; preds = %101
  %125 = extractvalue { i32, i32 } %114, 0
  br label %126

126:                                              ; preds = %124, %88
  %127 = phi i32 [ %92, %88 ], [ %125, %124 ]
  %128 = phi i32 [ 0, %88 ], [ %109, %124 ]
  %129 = phi i32 [ %90, %88 ], [ %111, %124 ]
  %130 = phi i32 [ 0, %88 ], [ %112, %124 ]
  %131 = phi i32 [ %99, %88 ], [ %122, %124 ]
  %132 = add i32 %131, -1
  %133 = xor i32 %131, -1
  %134 = and i32 %132, %133
  %135 = lshr i32 %134, 7
  %136 = and i32 %135, %127
  %137 = xor i32 %136, %128
  %138 = icmp eq i32 %134, 127
  %139 = call i32 @llvm.ctlz.i32(i32 %135, i1 false) #13, !range !18
  %140 = sub nuw nsw i32 32, %139
  %141 = lshr i32 %140, 3
  %142 = select i1 %138, i32 0, i32 %141
  %143 = add i32 %142, %130
  %144 = zext i32 %143 to i64
  %145 = shl nuw i64 %144, 32
  %146 = mul i32 %137, 1640531527
  %147 = xor i32 %146, %129
  %148 = mul i32 %147, 1640531527
  %149 = zext i32 %148 to i64
  %150 = or i64 %145, %149
  %151 = load i8, ptr %28, align 1
  %152 = icmp eq i8 %151, 46
  br i1 %152, label %153, label %161, !prof !69

153:                                              ; preds = %126
  switch i32 %143, label %161 [
    i32 2, label %154
    i32 1, label %176
  ]

154:                                              ; preds = %153
  %155 = getelementptr i8, ptr %28, i32 1
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 46
  br i1 %157, label %158, label %161, !prof !69

158:                                              ; preds = %154
  %159 = load i32, ptr %17, align 8
  %160 = or i32 %159, 4
  store i32 %160, ptr %17, align 8
  br label %176

161:                                              ; preds = %154, %153, %126
  %162 = load i32, ptr %17, align 8
  %163 = and i32 %162, -5
  store i32 %163, ptr %17, align 8
  %164 = load i32, ptr %89, align 8
  %165 = and i32 %164, 1
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %176, label %167, !prof !10

167:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  store i64 0, ptr %22, align 8, !annotation !19
  store i64 %150, ptr %3, align 8
  store ptr %28, ptr %18, align 8
  %168 = getelementptr inbounds %struct.dentry, ptr %89, i32 0, i32 8
  %169 = load ptr, ptr %168, align 8
  %170 = getelementptr inbounds %struct.dentry_operations, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %170, align 8
  %172 = call i32 %171(ptr noundef %89, ptr noundef nonnull %3) #13
  %173 = icmp slt i32 %172, 0
  %174 = load i64, ptr %3, align 8
  %175 = load ptr, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br i1 %173, label %234, label %176

176:                                              ; preds = %167, %161, %158, %153
  %177 = phi i32 [ 3, %158 ], [ 2, %153 ], [ 0, %161 ], [ 0, %167 ]
  %178 = phi ptr [ %28, %158 ], [ %28, %153 ], [ %28, %161 ], [ %175, %167 ]
  %179 = phi i64 [ %150, %158 ], [ %150, %153 ], [ %150, %161 ], [ %174, %167 ]
  store i64 %179, ptr %19, align 8
  store ptr %178, ptr %20, align 8
  store i32 %177, ptr %4, align 8
  %180 = lshr i64 %179, 32
  %181 = trunc i64 %180 to i32
  %182 = getelementptr i8, ptr %178, i32 %181
  %183 = load i8, ptr %182, align 1
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %185, %176
  %186 = phi ptr [ %187, %185 ], [ %182, %176 ]
  %187 = getelementptr i8, ptr %186, i32 1
  %188 = load i8, ptr %187, align 1
  switch i8 %188, label %205 [
    i8 47, label %185
    i8 0, label %189
  ], !prof !70

189:                                              ; preds = %185, %176
  %190 = icmp eq i32 %29, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 18
  %193 = load ptr, ptr %15, align 8
  %194 = getelementptr inbounds %struct.inode, ptr %193, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  store i32 %195, ptr %192, align 8
  %196 = load i16, ptr %193, align 8
  %197 = getelementptr inbounds %struct.nameidata, ptr %1, i32 0, i32 19
  store i16 %196, ptr %197, align 4
  %198 = load i32, ptr %5, align 4
  %199 = and i32 %198, -17
  store i32 %199, ptr %5, align 4
  br label %234

200:                                              ; preds = %189
  %201 = load ptr, ptr %21, align 4
  %202 = add i32 %29, -1
  %203 = getelementptr %struct.saved, ptr %201, i32 %202, i32 2
  %204 = load ptr, ptr %203, align 4
  br label %205

205:                                              ; preds = %200, %185
  %206 = phi i32 [ 0, %200 ], [ 2, %185 ]
  %207 = phi ptr [ %204, %200 ], [ %187, %185 ]
  %208 = phi i32 [ %202, %200 ], [ %29, %185 ]
  %209 = call fastcc ptr @walk_component(ptr noundef %1, i32 noundef %206)
  %210 = icmp eq ptr %209, null
  br i1 %210, label %219, label %211, !prof !10

211:                                              ; preds = %205
  %212 = icmp ugt ptr %209, inttoptr (i32 -4096 to ptr)
  br i1 %212, label %213, label %215

213:                                              ; preds = %211
  %214 = ptrtoint ptr %209 to i32
  br label %234

215:                                              ; preds = %211
  %216 = load ptr, ptr %21, align 4
  %217 = add i32 %208, 1
  %218 = getelementptr %struct.saved, ptr %216, i32 %208, i32 2
  store ptr %207, ptr %218, align 4
  br label %224

219:                                              ; preds = %205
  %220 = load ptr, ptr %16, align 4
  %221 = load i32, ptr %220, align 8
  %222 = and i32 %221, 7340032
  %223 = icmp eq i32 %222, 2097152
  br i1 %223, label %224, label %227, !prof !10

224:                                              ; preds = %219, %215
  %225 = phi ptr [ %209, %215 ], [ %207, %219 ]
  %226 = phi i32 [ %217, %215 ], [ %208, %219 ]
  br label %27

227:                                              ; preds = %219
  %228 = load i32, ptr %5, align 4
  %229 = and i32 %228, 64
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %227
  %232 = call fastcc zeroext i1 @try_to_unlazy(ptr noundef %1)
  br i1 %232, label %233, label %234

233:                                              ; preds = %231, %227
  br label %234

234:                                              ; preds = %233, %231, %213, %191, %167, %85, %61, %25, %9
  %235 = phi i32 [ %10, %9 ], [ 0, %25 ], [ -10, %231 ], [ 0, %191 ], [ -20, %233 ], [ %214, %213 ], [ -10, %61 ], [ %86, %85 ], [ %172, %167 ]
  ret i32 %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @complete_walk(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = and i32 %5, 1572864
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  store ptr null, ptr %17, align 8
  br label %18

18:                                               ; preds = %16, %8
  %19 = and i32 %5, -2097153
  store i32 %19, ptr %4, align 4
  %20 = tail call fastcc zeroext i1 @try_to_unlazy(ptr noundef %0)
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i32 [ %22, %21 ], [ %5, %1 ]
  %25 = and i32 %24, 1572864
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27, !prof !10

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %29 = tail call zeroext i1 @path_is_under(ptr noundef %0, ptr noundef %28) #13
  br i1 %29, label %30, label %50

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35, !prof !10

35:                                               ; preds = %30
  %36 = load i32, ptr %3, align 8
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39, !prof !10

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.dentry_operations, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %4, align 4
  %45 = tail call i32 %43(ptr noundef %3, i32 noundef %44) #13
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = icmp eq i32 %45, 0
  %49 = select i1 %48, i32 -116, i32 %45
  br label %50

50:                                               ; preds = %47, %39, %35, %30, %27, %18
  %51 = phi i32 [ %49, %47 ], [ -10, %18 ], [ -18, %27 ], [ 0, %30 ], [ 0, %35 ], [ 0, %39 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @terminate_walk(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  br label %7

7:                                                ; preds = %17, %5
  %8 = phi i32 [ %3, %5 ], [ %9, %17 ]
  %9 = add i32 %8, -1
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.saved, ptr %10, i32 %9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr %struct.saved, ptr %10, i32 %9, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %12(ptr noundef %16) #13
  br label %17

17:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 4
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void @dput(ptr noundef %26) #13
  %27 = load ptr, ptr %0, align 4
  tail call void @mntput(ptr noundef %27) #13
  %28 = load i32, ptr %2, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ 0, %30 ], [ %39, %32 ]
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr %struct.saved, ptr %34, i32 %33
  %36 = getelementptr inbounds %struct.path, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void @dput(ptr noundef %37) #13
  %38 = load ptr, ptr %35, align 4
  tail call void @mntput(ptr noundef %38) #13
  %39 = add nuw i32 %33, 1
  %40 = load i32, ptr %2, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %32, label %42

42:                                               ; preds = %32, %24
  %43 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %49 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void @dput(ptr noundef %50) #13
  %51 = load ptr, ptr %48, align 4
  tail call void @mntput(ptr noundef %51) #13
  %52 = load i32, ptr %43, align 8
  %53 = and i32 %52, -3
  store i32 %53, ptr %43, align 8
  br label %56

54:                                               ; preds = %19
  %55 = and i32 %21, -65
  store i32 %55, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  br label %56

56:                                               ; preds = %54, %47, %42
  store i32 0, ptr %2, align 4
  store ptr null, ptr %0, align 8
  %57 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  store ptr null, ptr %57, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nd_jump_root(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %65, !prof !10

6:                                                ; preds = %1
  %7 = and i32 %3, 262144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !10

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %10, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12, %9, %6
  %17 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @set_root(ptr noundef %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %20
  %24 = load i32, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ %3, %16 ]
  %27 = and i32 %26, 64
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %17, align 8
  store i64 %30, ptr %0, align 8
  %31 = lshr i64 %30, 32
  %32 = trunc i64 %31 to i32
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 16
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, %38
  br i1 %42, label %61, label %65

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @dput(ptr noundef %45) #13
  %46 = load ptr, ptr %0, align 4
  tail call void @mntput(ptr noundef %46) #13
  %47 = load i64, ptr %17, align 8
  store i64 %47, ptr %0, align 8
  %48 = trunc i64 %47 to i32
  %49 = inttoptr i32 %48 to ptr
  %50 = tail call ptr @mntget(ptr noundef %49) #13
  %51 = load ptr, ptr %44, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.dentry, ptr %51, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %54) #13
  %55 = load ptr, ptr %44, align 4
  br label %56

56:                                               ; preds = %53, %43
  %57 = phi ptr [ null, %43 ], [ %55, %53 ]
  %58 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %59, ptr %60, align 8
  br label %61

61:                                               ; preds = %56, %29
  %62 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %63 = load i32, ptr %62, align 8
  %64 = or i32 %63, 4
  store i32 %64, ptr %62, align 8
  br label %65

65:                                               ; preds = %61, %29, %20, %12, %1
  %66 = phi i32 [ -10, %29 ], [ 0, %61 ], [ %21, %20 ], [ -18, %1 ], [ -18, %12 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_root(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #13
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 89
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1572864
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 933, i32 noundef 9, ptr noundef null) #13
  br label %66

10:                                               ; preds = %1
  %11 = and i32 %6, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 16
  %15 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 2
  %16 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %17 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 5
  %18 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  br label %19

19:                                               ; preds = %43, %13
  %20 = load volatile i32, ptr %15, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !72
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !73
  %24 = load volatile i32, ptr %15, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %23

27:                                               ; preds = %23, %19
  %28 = phi i32 [ %20, %19 ], [ %24, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !74
  %29 = load i64, ptr %17, align 4
  store i64 %29, ptr %16, align 8
  %30 = lshr i64 %29, 32
  %31 = trunc i64 %30 to i32
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %37, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !76
  %38 = load ptr, ptr %18, align 4
  %39 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %37

43:                                               ; preds = %37, %27
  %44 = phi i32 [ %34, %27 ], [ %40, %37 ]
  store i32 %44, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %45 = load volatile i32, ptr %15, align 4
  %46 = icmp eq i32 %45, %28
  br i1 %46, label %66, label %19

47:                                               ; preds = %10
  %48 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %49 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.fs_struct, ptr %4, i32 0, i32 5
  %51 = load i64, ptr %50, align 4
  store i64 %51, ptr %48, align 4
  %52 = trunc i64 %51 to i32
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call ptr @mntget(ptr noundef %53) #13
  %55 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %59) #13
  br label %60

60:                                               ; preds = %58, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !11
  %61 = load i16, ptr %49, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %49, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %63 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %64 = load i32, ptr %63, align 8
  %65 = or i32 %64, 2
  store i32 %65, ptr %63, align 8
  br label %66

66:                                               ; preds = %60, %43, %9
  %67 = phi i32 [ -131, %9 ], [ 0, %60 ], [ 0, %43 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @step_into(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !annotation !19
  %8 = load ptr, ptr %0, align 8
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %5
  %15 = icmp eq ptr %3, null
  br i1 %15, label %123, label %16, !prof !8

16:                                               ; preds = %14
  %17 = load i32, ptr %2, align 8
  %18 = and i32 %17, 458752
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %120, label %20, !prof !10

20:                                               ; preds = %16
  %21 = and i32 %11, 262144
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %77, !prof !10

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  br label %25

25:                                               ; preds = %69, %23
  %26 = phi ptr [ %3, %23 ], [ %72, %69 ]
  %27 = phi i32 [ %4, %23 ], [ %70, %69 ]
  %28 = phi i32 [ %17, %23 ], [ %73, %69 ]
  %29 = phi ptr [ %2, %23 ], [ %50, %69 ]
  %30 = and i32 %28, 262144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32, !prof !10

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.dentry_operations, ptr %34, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef nonnull %7, i1 noundef zeroext true) #13
  switch i32 %37, label %77 [
    i32 0, label %38
    i32 -21, label %120
  ], !prof !77

38:                                               ; preds = %32
  %39 = load i32, ptr %29, align 8
  br label %40

40:                                               ; preds = %38, %25
  %41 = phi i32 [ %28, %25 ], [ %39, %38 ]
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 8
  %46 = call ptr @__lookup_mnt(ptr noundef %45, ptr noundef %29) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mount, ptr %46, i32 0, i32 3
  store ptr %49, ptr %7, align 8
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %9, align 4
  %51 = load i32, ptr %24, align 8
  %52 = or i32 %51, 4
  store i32 %52, ptr %24, align 8
  %53 = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %57, %48
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !78
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !79
  %58 = load volatile i32, ptr %53, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %57

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  %63 = load i32, ptr %62, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %64 = load volatile i32, ptr @mount_lock, align 4
  %65 = icmp eq i32 %64, %63
  %66 = and i32 %41, 131072
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %120, label %77, !prof !80

69:                                               ; preds = %57, %48
  %70 = phi i32 [ %54, %48 ], [ %58, %57 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !81
  %71 = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 5
  %72 = load ptr, ptr %71, align 8
  %73 = load i32, ptr %50, align 8
  br label %25

74:                                               ; preds = %40
  %75 = and i32 %41, 131072
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %120, label %77, !prof !10

77:                                               ; preds = %74, %61, %32, %20
  %78 = phi ptr [ %26, %74 ], [ %26, %61 ], [ %3, %20 ], [ %26, %32 ]
  %79 = phi i32 [ %27, %74 ], [ %27, %61 ], [ %4, %20 ], [ %27, %32 ]
  %80 = call fastcc zeroext i1 @try_to_unlazy_next(ptr noundef %0, ptr noundef %2, i32 noundef %4) #13
  br i1 %80, label %81, label %123

81:                                               ; preds = %77
  %82 = load ptr, ptr %0, align 8
  store ptr %82, ptr %7, align 8
  store ptr %2, ptr %9, align 4
  %83 = load i32, ptr %10, align 4
  br label %84

84:                                               ; preds = %81, %5
  %85 = phi ptr [ %3, %5 ], [ %78, %81 ]
  %86 = phi i32 [ %4, %5 ], [ %79, %81 ]
  %87 = phi i32 [ %11, %5 ], [ %83, %81 ]
  %88 = load volatile i32, ptr %2, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  %89 = and i32 %88, 458752
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94, !prof !10

91:                                               ; preds = %84
  %92 = and i32 %88, 7340032
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %109, label %116

94:                                               ; preds = %84
  %95 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 11
  %96 = call fastcc i32 @__traverse_mounts(ptr noundef nonnull %7, i32 noundef %88, ptr noundef nonnull %6, ptr noundef %95, i32 noundef %87) #13
  %97 = load i8, ptr %6, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr %10, align 4
  %101 = and i32 %100, 262144
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109, !prof !10

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %105 = load i32, ptr %104, align 8
  %106 = or i32 %105, 4
  store i32 %106, ptr %104, align 8
  br label %107

107:                                              ; preds = %103, %94
  %108 = icmp eq i32 %96, 0
  br i1 %108, label %116, label %109, !prof !10

109:                                              ; preds = %107, %99, %91
  %110 = phi i32 [ %96, %107 ], [ -18, %99 ], [ -2, %91 ]
  %111 = load ptr, ptr %9, align 4
  call void @dput(ptr noundef %111) #13
  %112 = load ptr, ptr %7, align 8
  %113 = load ptr, ptr %0, align 8
  %114 = icmp eq ptr %112, %113
  br i1 %114, label %125, label %115

115:                                              ; preds = %109
  call void @mntput(ptr noundef %112) #13
  br label %125

116:                                              ; preds = %107, %91
  %117 = load ptr, ptr %9, align 4
  %118 = getelementptr inbounds %struct.dentry, ptr %117, i32 0, i32 5
  %119 = load ptr, ptr %118, align 8
  br label %120

120:                                              ; preds = %116, %74, %61, %32, %16
  %121 = phi ptr [ %26, %61 ], [ %26, %74 ], [ %3, %16 ], [ %119, %116 ], [ %26, %32 ]
  %122 = phi i32 [ %27, %61 ], [ %27, %74 ], [ %4, %16 ], [ 0, %116 ], [ %27, %32 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %130

123:                                              ; preds = %77, %14
  %124 = phi i32 [ -2, %14 ], [ -10, %77 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %127

125:                                              ; preds = %115, %109
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  %126 = icmp slt i32 %110, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %110, %125 ]
  %129 = inttoptr i32 %128 to ptr
  br label %183

130:                                              ; preds = %125, %120
  %131 = phi i32 [ %122, %120 ], [ %86, %125 ]
  %132 = phi ptr [ %121, %120 ], [ %85, %125 ]
  %133 = load ptr, ptr %9, align 4
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 7340032
  %136 = icmp eq i32 %135, 6291456
  br i1 %136, label %137, label %152, !prof !8

137:                                              ; preds = %130
  %138 = and i32 %1, 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %10, align 4
  %142 = and i32 %141, 1
  %143 = icmp ne i32 %142, 0
  %144 = and i32 %1, 4
  %145 = icmp eq i32 %144, 0
  %146 = and i1 %145, %143
  br i1 %146, label %167, label %152

147:                                              ; preds = %137
  %148 = and i32 %1, 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, ptr %10, align 4
  br label %167

152:                                              ; preds = %147, %140, %130
  %153 = load i32, ptr %10, align 4
  %154 = and i32 %153, 64
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  call void @dput(ptr noundef %158) #13
  %159 = load ptr, ptr %0, align 8
  %160 = load ptr, ptr %7, align 8
  %161 = icmp eq ptr %159, %160
  br i1 %161, label %163, label %162

162:                                              ; preds = %156
  call void @mntput(ptr noundef %159) #13
  br label %163

163:                                              ; preds = %162, %156, %152
  %164 = load i64, ptr %7, align 8
  store i64 %164, ptr %0, align 8
  %165 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %132, ptr %165, align 8
  %166 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  store i32 %131, ptr %166, align 4
  br label %183

167:                                              ; preds = %150, %140
  %168 = phi i32 [ %151, %150 ], [ %141, %140 ]
  %169 = and i32 %168, 64
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.dentry, ptr %133, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %173 = load volatile i32, ptr %172, align 4
  %174 = icmp eq i32 %173, %131
  br i1 %174, label %181, label %183

175:                                              ; preds = %167
  %176 = load ptr, ptr %7, align 8
  %177 = load ptr, ptr %0, align 8
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = call ptr @mntget(ptr noundef %176) #13
  br label %181

181:                                              ; preds = %179, %175, %171
  %182 = call fastcc ptr @pick_link(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %132, i32 noundef %131, i32 noundef %1)
  br label %183

183:                                              ; preds = %181, %171, %163, %127
  %184 = phi ptr [ %129, %127 ], [ null, %163 ], [ %182, %181 ], [ inttoptr (i32 -10 to ptr), %171 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret ptr %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @pick_link(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8
  %9 = icmp sgt i32 %7, 39
  br i1 %9, label %32, label %10, !prof !8

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %39, !prof !8

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 13
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %39, !prof !8

19:                                               ; preds = %14
  %20 = tail call fastcc zeroext i1 @nd_alloc_stack(ptr noundef %0) #13
  br i1 %20, label %39, label %21, !prof !10

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = tail call fastcc zeroext i1 @legitimize_path(ptr noundef %0, ptr noundef %1, i32 noundef %3) #13
  %28 = tail call fastcc zeroext i1 @try_to_unlazy(ptr noundef %0) #13
  %29 = select i1 %28, i1 %27, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call fastcc zeroext i1 @nd_alloc_stack(ptr noundef %0) #13
  br i1 %31, label %39, label %32

32:                                               ; preds = %30, %26, %21, %5
  %33 = phi ptr [ inttoptr (i32 -40 to ptr), %5 ], [ inttoptr (i32 -10 to ptr), %26 ], [ inttoptr (i32 -12 to ptr), %30 ], [ inttoptr (i32 -12 to ptr), %21 ]
  %34 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 64
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %167

38:                                               ; preds = %32
  tail call void @path_put(ptr noundef %1)
  br label %167

39:                                               ; preds = %30, %19, %14, %10
  %40 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %11, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %11, align 4
  %44 = getelementptr %struct.saved, ptr %41, i32 %42
  %45 = load i64, ptr %1, align 4
  store i64 %45, ptr %44, align 4
  %46 = getelementptr %struct.saved, ptr %41, i32 %42, i32 1
  store ptr null, ptr %46, align 4
  %47 = getelementptr %struct.saved, ptr %41, i32 %42, i32 3
  store i32 %3, ptr %47, align 4
  %48 = and i32 %4, 1
  %49 = icmp eq i32 %48, 0
  %50 = load i32, ptr @sysctl_protected_symlinks, align 4
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %83, label %53

53:                                               ; preds = %39
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds %struct.vfsmount, ptr %54, i32 0, i32 3
  %56 = load volatile ptr, ptr %55, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %57 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = tail call ptr @llvm.thread.pointer() #13
  %60 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 83
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.cred, ptr %61, i32 0, i32 7
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %58
  br i1 %64, label %83, label %65

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 19
  %67 = load i16, ptr %66, align 4
  %68 = and i16 %67, 514
  %69 = icmp eq i16 %68, 514
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 18
  %72 = load i32, ptr %71, align 8
  %73 = icmp ne i32 %72, -1
  %74 = icmp eq i32 %72, %58
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 64
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 -13, i32 -10
  %82 = inttoptr i32 %81 to ptr
  br label %167

83:                                               ; preds = %70, %65, %53, %39
  %84 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 65536
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %167, !prof !10

88:                                               ; preds = %83
  %89 = load ptr, ptr %1, align 4
  %90 = getelementptr inbounds %struct.vfsmount, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %167, !prof !10

94:                                               ; preds = %88
  %95 = and i32 %85, 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  tail call void @touch_atime(ptr noundef %44) #13
  %98 = tail call i32 @__cond_resched() #13
  br label %104

99:                                               ; preds = %94
  %100 = tail call zeroext i1 @atime_needs_update(ptr noundef %44, ptr noundef %2) #13
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = tail call fastcc zeroext i1 @try_to_unlazy(ptr noundef %0)
  br i1 %102, label %103, label %167

103:                                              ; preds = %101
  tail call void @touch_atime(ptr noundef %44) #13
  br label %104

104:                                              ; preds = %103, %99, %97
  %105 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %106 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 43
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %130

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 7
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.inode_operations, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %84, align 4
  %115 = and i32 %114, 64
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %109
  %118 = tail call ptr %113(ptr noundef null, ptr noundef %2, ptr noundef %46) #13
  %119 = icmp eq ptr %118, inttoptr (i32 -10 to ptr)
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = tail call fastcc zeroext i1 @try_to_unlazy(ptr noundef %0)
  br i1 %121, label %122, label %167

122:                                              ; preds = %120, %109
  %123 = load ptr, ptr %105, align 4
  %124 = tail call ptr %113(ptr noundef %123, ptr noundef %2, ptr noundef %46) #13
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi ptr [ %118, %117 ], [ %124, %122 ]
  %127 = icmp eq ptr %126, null
  br i1 %127, label %148, label %128

128:                                              ; preds = %125
  %129 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %167, label %130

130:                                              ; preds = %128, %104
  %131 = phi ptr [ %107, %104 ], [ %126, %128 ]
  %132 = load i8, ptr %131, align 1
  %133 = icmp eq i8 %132, 47
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = tail call fastcc i32 @nd_jump_root(ptr noundef %0)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137, !prof !10

137:                                              ; preds = %134
  %138 = inttoptr i32 %135 to ptr
  br label %167

139:                                              ; preds = %139, %134
  %140 = phi ptr [ %141, %139 ], [ %131, %134 ]
  %141 = getelementptr i8, ptr %140, i32 1
  %142 = load i8, ptr %141, align 1
  %143 = icmp eq i8 %142, 47
  br i1 %143, label %139, label %144, !prof !8

144:                                              ; preds = %139, %130
  %145 = phi i8 [ %132, %130 ], [ %142, %139 ]
  %146 = phi ptr [ %131, %130 ], [ %141, %139 ]
  %147 = icmp eq i8 %145, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %144, %125
  %149 = load ptr, ptr %40, align 4
  %150 = load i32, ptr %11, align 4
  %151 = add i32 %150, -1
  store i32 %151, ptr %11, align 4
  %152 = getelementptr %struct.saved, ptr %149, i32 %151, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %148
  %156 = getelementptr %struct.saved, ptr %149, i32 %151, i32 1, i32 1
  %157 = load ptr, ptr %156, align 4
  tail call void %153(ptr noundef %157) #13
  br label %158

158:                                              ; preds = %155, %148
  %159 = load i32, ptr %84, align 4
  %160 = and i32 %159, 64
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = getelementptr %struct.saved, ptr %149, i32 %151
  %164 = getelementptr inbounds %struct.path, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  tail call void @dput(ptr noundef %165) #13
  %166 = load ptr, ptr %163, align 4
  tail call void @mntput(ptr noundef %166) #13
  br label %167

167:                                              ; preds = %162, %158, %144, %137, %128, %120, %101, %88, %83, %76, %38, %32
  %168 = phi ptr [ %82, %76 ], [ %138, %137 ], [ %146, %144 ], [ inttoptr (i32 -40 to ptr), %88 ], [ inttoptr (i32 -40 to ptr), %83 ], [ inttoptr (i32 -10 to ptr), %101 ], [ null, %158 ], [ null, %162 ], [ %126, %128 ], [ inttoptr (i32 -10 to ptr), %120 ], [ %33, %38 ], [ %33, %32 ]
  ret ptr %168
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @try_to_unlazy_next(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 808, 0\0A.popsection", ""() #13, !srcloc !82
  unreachable

9:                                                ; preds = %3
  %10 = and i32 %5, -65
  store i32 %10, ptr %4, align 4
  %11 = tail call fastcc zeroext i1 @legitimize_links(ptr noundef %0)
  br i1 %11, label %12, label %68, !prof !10

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 8
  %16 = tail call zeroext i1 @legitimize_mnt(ptr noundef %13, i32 noundef %15) #13
  br i1 %16, label %17, label %68, !prof !10

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 7
  %21 = tail call i32 @lockref_get_not_dead(ptr noundef %20) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %69, label %23, !prof !8

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %25 = tail call i32 @lockref_get_not_dead(ptr noundef %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %71, label %27, !prof !8

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %29 = load volatile i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %74, !prof !10

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = or i32 %37, 2
  store i32 %41, ptr %36, align 8
  %42 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 16
  %43 = load i32, ptr %42, align 8
  %44 = load i32, ptr %14, align 8
  %45 = tail call i32 @__legitimize_mnt(ptr noundef nonnull %33, i32 noundef %44) #13
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47, !prof !10

47:                                               ; preds = %40
  %48 = icmp sgt i32 %45, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store ptr null, ptr %32, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  br label %72

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.dentry, ptr %54, i32 0, i32 7
  %56 = tail call i32 @lockref_get_not_dead(ptr noundef %55) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58, !prof !8

58:                                               ; preds = %52
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %61 = load volatile i32, ptr %60, align 4
  %62 = icmp eq i32 %61, %43
  br i1 %62, label %67, label %74, !prof !10

63:                                               ; preds = %31
  %64 = load i32, ptr %4, align 4
  %65 = and i32 %64, 1572864
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74, !prof !10

67:                                               ; preds = %63, %58, %35
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  br label %75

68:                                               ; preds = %12, %9
  store ptr null, ptr %0, align 8
  br label %69

69:                                               ; preds = %68, %17
  %70 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  store ptr null, ptr %70, align 4
  br label %71

71:                                               ; preds = %69, %23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  br label %75

72:                                               ; preds = %52, %50
  %73 = phi ptr [ %51, %50 ], [ %53, %52 ]
  store ptr null, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %63, %58, %27
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  tail call void @dput(ptr noundef %1) #13
  br label %75

75:                                               ; preds = %74, %71, %67
  %76 = phi i1 [ false, %71 ], [ false, %74 ], [ true, %67 ]
  ret i1 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lookup_mnt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @legitimize_links(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13, !prof !10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %49, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  %12 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  br label %15

13:                                               ; preds = %1
  tail call fastcc void @drop_links(ptr noundef %0)
  %14 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  store i32 0, ptr %14, align 4
  br label %49

15:                                               ; preds = %45, %10
  %16 = phi i32 [ 0, %10 ], [ %46, %45 ]
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr %struct.saved, ptr %17, i32 %16
  %19 = getelementptr %struct.saved, ptr %17, i32 %16, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %12, align 8
  %22 = load ptr, ptr %18, align 4
  %23 = tail call i32 @__legitimize_mnt(ptr noundef %22, i32 noundef %21) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25, !prof !10

25:                                               ; preds = %15
  %26 = icmp sgt i32 %23, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  store ptr null, ptr %18, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = getelementptr inbounds %struct.path, ptr %18, i32 0, i32 1
  br label %41

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.path, ptr %18, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dentry, ptr %32, i32 0, i32 7
  %34 = tail call i32 @lockref_get_not_dead(ptr noundef %33) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36, !prof !8

36:                                               ; preds = %30
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %20
  br i1 %40, label %45, label %43, !prof !10

41:                                               ; preds = %30, %28
  %42 = phi ptr [ %29, %28 ], [ %31, %30 ]
  store ptr null, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %36
  tail call fastcc void @drop_links(ptr noundef %0)
  %44 = add nuw i32 %16, 1
  store i32 %44, ptr %7, align 4
  br label %49

45:                                               ; preds = %36
  %46 = add nuw i32 %16, 1
  %47 = load i32, ptr %7, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %15, label %49

49:                                               ; preds = %45, %43, %13, %6
  %50 = phi i1 [ false, %13 ], [ false, %43 ], [ true, %6 ], [ true, %45 ]
  ret i1 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @legitimize_mnt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drop_links(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  br label %7

7:                                                ; preds = %17, %5
  %8 = phi i32 [ %3, %5 ], [ %9, %17 ]
  %9 = add i32 %8, -1
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.saved, ptr %10, i32 %9, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr %struct.saved, ptr %10, i32 %9, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %12(ptr noundef %16) #13
  br label %17

17:                                               ; preds = %14, %7
  store ptr null, ptr %11, align 4
  %18 = icmp eq i32 %9, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @legitimize_path(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = load ptr, ptr %1, align 4
  %7 = tail call i32 @__legitimize_mnt(ptr noundef %6, i32 noundef %5) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  store ptr null, ptr %1, align 4
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  store ptr null, ptr %13, align 4
  br label %26

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dentry, ptr %16, i32 0, i32 7
  %18 = tail call i32 @lockref_get_not_dead(ptr noundef %17) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !8

20:                                               ; preds = %14
  store ptr null, ptr %15, align 4
  br label %26

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %2
  br label %26

26:                                               ; preds = %21, %20, %12
  %27 = phi i1 [ false, %12 ], [ false, %20 ], [ %25, %21 ]
  ret i1 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__legitimize_mnt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @atime_needs_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @try_to_unlazy(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 772, 0\0A.popsection", ""() #13, !srcloc !83
  unreachable

9:                                                ; preds = %1
  %10 = and i32 %5, -65
  store i32 %10, ptr %4, align 4
  %11 = tail call fastcc zeroext i1 @legitimize_links(ptr noundef %0)
  br i1 %11, label %12, label %76, !prof !10

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %0, align 4
  %18 = tail call i32 @__legitimize_mnt(ptr noundef %17, i32 noundef %16) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !10

20:                                               ; preds = %12
  %21 = icmp sgt i32 %18, 0
  br i1 %21, label %22, label %77

22:                                               ; preds = %20
  store ptr null, ptr %0, align 4
  br label %77

23:                                               ; preds = %12
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 7
  %26 = tail call i32 @lockref_get_not_dead(ptr noundef %25) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %77, label %28, !prof !8

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %31 = load volatile i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %14
  br i1 %32, label %33, label %79, !prof !10

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = or i32 %39, 2
  store i32 %43, ptr %38, align 8
  %44 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 16
  %45 = load i32, ptr %44, align 8
  %46 = load i32, ptr %15, align 8
  %47 = tail call i32 @__legitimize_mnt(ptr noundef nonnull %35, i32 noundef %46) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49, !prof !10

49:                                               ; preds = %42
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  store ptr null, ptr %34, align 4
  br label %52

52:                                               ; preds = %51, %49
  %53 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  br label %77

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 7
  %58 = tail call i32 @lockref_get_not_dead(ptr noundef %57) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60, !prof !8

60:                                               ; preds = %54
  %61 = load ptr, ptr %55, align 4
  %62 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %63 = load volatile i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %45
  br i1 %64, label %69, label %79, !prof !10

65:                                               ; preds = %33
  %66 = load i32, ptr %4, align 4
  %67 = and i32 %66, 1572864
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79, !prof !10

69:                                               ; preds = %65, %60, %37
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  %70 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %71, %73
  br i1 %74, label %80, label %75, !prof !10

75:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 782, 0\0A.popsection", ""() #13, !srcloc !84
  unreachable

76:                                               ; preds = %9
  store ptr null, ptr %0, align 8
  br label %77

77:                                               ; preds = %76, %54, %52, %23, %22, %20
  %78 = phi ptr [ %53, %52 ], [ %2, %76 ], [ %2, %22 ], [ %2, %20 ], [ %2, %23 ], [ %55, %54 ]
  store ptr null, ptr %78, align 4
  br label %79

79:                                               ; preds = %77, %65, %60, %28
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  br label %80

80:                                               ; preds = %79, %69
  %81 = phi i1 [ false, %79 ], [ true, %69 ]
  ret i1 %81
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @put_link(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = getelementptr %struct.saved, ptr %3, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr %struct.saved, ptr %3, i32 %6, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %8(ptr noundef %12) #13
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 64
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr %struct.saved, ptr %3, i32 %6
  %20 = getelementptr inbounds %struct.path, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void @dput(ptr noundef %21) #13
  %22 = load ptr, ptr %19, align 4
  tail call void @mntput(ptr noundef %22) #13
  br label %23

23:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nd_alloc_stack(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 64
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 3264, i32 2592
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef %6, i32 noundef 960) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !8

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef align 8 dereferenceable(48) %11, i32 48, i1 false)
  %12 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  store ptr %8, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = xor i1 %9, true
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @walk_component(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !19
  %5 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call fastcc void @put_link(ptr noundef %0)
  %16 = load i32, ptr %5, align 8
  br label %17

17:                                               ; preds = %15, %11, %8
  %18 = phi i32 [ %16, %15 ], [ %6, %11 ], [ %6, %8 ]
  %19 = tail call fastcc ptr @handle_dots(ptr noundef %0, i32 noundef %18)
  br label %65

20:                                               ; preds = %2
  %21 = call fastcc ptr @lookup_fast(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %65, label %23

23:                                               ; preds = %20
  %24 = icmp eq ptr %21, null
  br i1 %24, label %25, label %33, !prof !8

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 1
  %27 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = tail call fastcc ptr @lookup_slow(ptr noundef %26, ptr noundef %28, i32 noundef %30)
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %65, label %33

33:                                               ; preds = %25, %23
  %34 = phi ptr [ %31, %25 ], [ %21, %23 ]
  %35 = and i32 %1, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 12
  %43 = load ptr, ptr %42, align 4
  %44 = add i32 %39, -1
  store i32 %44, ptr %38, align 4
  %45 = getelementptr %struct.saved, ptr %43, i32 %44, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = getelementptr %struct.saved, ptr %43, i32 %44, i32 1, i32 1
  %50 = load ptr, ptr %49, align 4
  tail call void %46(ptr noundef %50) #13
  br label %51

51:                                               ; preds = %48, %41
  %52 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 64
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = getelementptr %struct.saved, ptr %43, i32 %44
  %58 = getelementptr inbounds %struct.path, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  tail call void @dput(ptr noundef %59) #13
  %60 = load ptr, ptr %57, align 4
  tail call void @mntput(ptr noundef %60) #13
  br label %61

61:                                               ; preds = %56, %51, %37, %33
  %62 = load ptr, ptr %3, align 4
  %63 = load i32, ptr %4, align 4
  %64 = tail call fastcc ptr @step_into(ptr noundef %0, i32 noundef %1, ptr noundef %34, ptr noundef %62, i32 noundef %63)
  br label %65

65:                                               ; preds = %61, %25, %20, %17
  %66 = phi ptr [ %19, %17 ], [ %64, %61 ], [ %21, %20 ], [ %31, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @handle_dots(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  %4 = alloca %struct.path, align 8
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %1, 3
  br i1 %6, label %7, label %183

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @set_root(ptr noundef %0), !range !85
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %181

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %0, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = icmp eq ptr %20, %21
  %23 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  br i1 %19, label %98, label %25

25:                                               ; preds = %15
  br i1 %22, label %26, label %30

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %24, %28
  br i1 %29, label %89, label %30

30:                                               ; preds = %26, %25
  %31 = load ptr, ptr %20, align 4
  %32 = icmp eq ptr %24, %31
  br i1 %32, label %33, label %58, !prof !8

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !19
  %34 = getelementptr i8, ptr %20, i32 -16
  %35 = call fastcc zeroext i1 @choose_mountpoint_rcu(ptr noundef %34, ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = load i32, ptr %16, align 4
  %38 = and i32 %37, 262144
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %56, !prof !10

40:                                               ; preds = %36
  %41 = load i64, ptr %4, align 8
  store i64 %41, ptr %0, align 8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.dentry, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %46, ptr %47, align 8
  %48 = load i32, ptr %5, align 4
  %49 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  %51 = load i32, ptr %50, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %52 = load volatile i32, ptr @mount_lock, align 4
  %53 = icmp eq i32 %52, %51
  br i1 %53, label %54, label %56, !prof !10

54:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %55 = load ptr, ptr %23, align 4
  br label %58

56:                                               ; preds = %40, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %181

57:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %89

58:                                               ; preds = %54, %30
  %59 = phi ptr [ %55, %54 ], [ %24, %30 ]
  %60 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 1
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %68, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !86
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !87
  %69 = load volatile i32, ptr %64, align 4
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %68

72:                                               ; preds = %68, %58
  %73 = phi i32 [ %65, %58 ], [ %69, %68 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !88
  %74 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 1
  %75 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  %76 = load i32, ptr %75, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %77 = load volatile i32, ptr %74, align 4
  %78 = icmp eq i32 %77, %76
  br i1 %78, label %79, label %181, !prof !10

79:                                               ; preds = %72
  %80 = load ptr, ptr %0, align 8
  %81 = getelementptr inbounds %struct.vfsmount, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 13
  %85 = load ptr, ptr %84, align 64
  %86 = icmp eq ptr %83, %85
  br i1 %86, label %147, label %87

87:                                               ; preds = %79
  %88 = tail call zeroext i1 @is_subdir(ptr noundef %61, ptr noundef %83) #13
  br i1 %88, label %147, label %181, !prof !10

89:                                               ; preds = %57, %26
  %90 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  %91 = load i32, ptr %90, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %92 = load volatile i32, ptr @mount_lock, align 4
  %93 = icmp eq i32 %92, %91
  br i1 %93, label %94, label %181, !prof !10

94:                                               ; preds = %89
  %95 = load i32, ptr %16, align 4
  %96 = and i32 %95, 524288
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %154, label %181, !prof !10

98:                                               ; preds = %15
  br i1 %22, label %99, label %103

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 2, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %24, %101
  br i1 %102, label %138, label %103

103:                                              ; preds = %99, %98
  %104 = load ptr, ptr %20, align 4
  %105 = icmp eq ptr %24, %104
  br i1 %105, label %106, label %122, !prof !8

106:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !19
  %107 = getelementptr i8, ptr %20, i32 -16
  %108 = call fastcc zeroext i1 @choose_mountpoint(ptr noundef %107, ptr noundef %8, ptr noundef nonnull %3) #13
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  tail call void @path_put(ptr noundef %0) #13
  %110 = load i64, ptr %3, align 8
  store i64 %110, ptr %0, align 8
  %111 = lshr i64 %110, 32
  %112 = trunc i64 %111 to i32
  %113 = inttoptr i32 %112 to ptr
  %114 = getelementptr inbounds %struct.dentry, ptr %113, i32 0, i32 5
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  store ptr %115, ptr %116, align 8
  %117 = load i32, ptr %16, align 4
  %118 = and i32 %117, 262144
  %119 = icmp eq i32 %118, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %119, label %122, label %181, !prof !10

120:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %121 = load i32, ptr %16, align 4
  br label %138

122:                                              ; preds = %109, %103
  %123 = phi ptr [ %24, %103 ], [ %113, %109 ]
  %124 = tail call ptr @dget_parent(ptr noundef %123) #13
  %125 = load ptr, ptr %0, align 8
  %126 = getelementptr inbounds %struct.vfsmount, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %125, align 4
  %129 = getelementptr inbounds %struct.super_block, ptr %127, i32 0, i32 13
  %130 = load ptr, ptr %129, align 64
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %122
  %133 = tail call zeroext i1 @is_subdir(ptr noundef %124, ptr noundef %128) #13
  br i1 %133, label %135, label %134, !prof !10

134:                                              ; preds = %132
  tail call void @dput(ptr noundef %124) #13
  br label %181

135:                                              ; preds = %132, %122
  %136 = getelementptr inbounds %struct.dentry, ptr %124, i32 0, i32 5
  %137 = load ptr, ptr %136, align 8
  br label %147

138:                                              ; preds = %120, %99
  %139 = phi i32 [ %121, %120 ], [ %17, %99 ]
  %140 = and i32 %139, 524288
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %181, !prof !10

142:                                              ; preds = %138
  %143 = load ptr, ptr %23, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.dentry, ptr %143, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %146) #13
  br label %154

147:                                              ; preds = %135, %87, %79
  %148 = phi ptr [ %63, %79 ], [ %63, %87 ], [ %137, %135 ]
  %149 = phi i32 [ %73, %79 ], [ %73, %87 ], [ 0, %135 ]
  %150 = phi ptr [ %61, %79 ], [ %61, %87 ], [ %124, %135 ]
  %151 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %181, label %152

152:                                              ; preds = %147
  %153 = icmp eq ptr %150, null
  br i1 %153, label %154, label %162, !prof !8

154:                                              ; preds = %152, %145, %142, %94
  %155 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 3
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  %160 = load i32, ptr %159, align 4
  %161 = tail call fastcc ptr @step_into(ptr noundef %0, i32 noundef 4, ptr noundef %156, ptr noundef %158, i32 noundef %160)
  br label %164

162:                                              ; preds = %152
  %163 = tail call fastcc ptr @step_into(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %150, ptr noundef %148, i32 noundef %149)
  br label %164

164:                                              ; preds = %162, %154
  %165 = phi ptr [ %161, %154 ], [ %163, %162 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %181, !prof !10

167:                                              ; preds = %164
  %168 = load i32, ptr %16, align 4
  %169 = and i32 %168, 1572864
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %183, label %171, !prof !10

171:                                              ; preds = %167
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !89
  %172 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 7
  %173 = load i32, ptr %172, align 8
  %174 = load volatile i32, ptr @mount_lock, align 4
  %175 = icmp eq i32 %174, %173
  br i1 %175, label %176, label %181, !prof !10

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 8
  %178 = load i32, ptr %177, align 4
  %179 = load volatile i32, ptr @rename_lock, align 4
  %180 = icmp eq i32 %179, %178
  br i1 %180, label %183, label %181, !prof !10

181:                                              ; preds = %176, %171, %164, %147, %138, %134, %109, %94, %89, %87, %72, %56, %11
  %182 = phi ptr [ inttoptr (i32 -11 to ptr), %171 ], [ %150, %147 ], [ %165, %164 ], [ %13, %11 ], [ inttoptr (i32 -18 to ptr), %109 ], [ inttoptr (i32 -18 to ptr), %138 ], [ inttoptr (i32 -2 to ptr), %134 ], [ inttoptr (i32 -10 to ptr), %89 ], [ inttoptr (i32 -10 to ptr), %72 ], [ inttoptr (i32 -10 to ptr), %56 ], [ inttoptr (i32 -10 to ptr), %87 ], [ inttoptr (i32 -10 to ptr), %94 ], [ inttoptr (i32 -11 to ptr), %176 ]
  br label %183

183:                                              ; preds = %181, %176, %167, %2
  %184 = phi ptr [ %182, %181 ], [ null, %176 ], [ null, %167 ], [ null, %2 ]
  ret ptr %184
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lookup_fast(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %61, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !19
  %12 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 1
  %13 = call ptr @__d_lookup_rcu(ptr noundef %6, ptr noundef %12, ptr noundef nonnull %4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !8

15:                                               ; preds = %11
  %16 = call fastcc zeroext i1 @try_to_unlazy(ptr noundef %0)
  %17 = select i1 %16, ptr null, ptr inttoptr (i32 -10 to ptr)
  br label %57

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  store ptr %20, ptr %1, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 1
  %22 = load i32, ptr %4, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %23 = load volatile i32, ptr %21, align 4
  %24 = icmp eq i32 %23, %22
  br i1 %24, label %25, label %57, !prof !10

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 1
  %27 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = load volatile i32, ptr %26, align 4
  %30 = icmp eq i32 %29, %28
  br i1 %30, label %31, label %57, !prof !10

31:                                               ; preds = %25
  %32 = load i32, ptr %4, align 4
  store i32 %32, ptr %2, align 4
  %33 = load i32, ptr %13, align 8
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36, !prof !10

36:                                               ; preds = %31
  %37 = load i32, ptr %7, align 4
  %38 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %39, align 64
  %41 = call i32 %40(ptr noundef nonnull %13, i32 noundef %37) #13
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %57, label %43, !prof !10

43:                                               ; preds = %36
  %44 = load i32, ptr %4, align 4
  %45 = call fastcc zeroext i1 @try_to_unlazy_next(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %44)
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = icmp eq i32 %41, -10
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = load i32, ptr %13, align 8
  %50 = and i32 %49, 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52, !prof !10

52:                                               ; preds = %48
  %53 = load i32, ptr %7, align 4
  %54 = load ptr, ptr %38, align 8
  %55 = load ptr, ptr %54, align 64
  %56 = call i32 %55(ptr noundef nonnull %13, i32 noundef %53) #13
  br label %59

57:                                               ; preds = %43, %36, %31, %25, %18, %15
  %58 = phi ptr [ inttoptr (i32 -10 to ptr), %43 ], [ inttoptr (i32 -10 to ptr), %25 ], [ inttoptr (i32 -10 to ptr), %18 ], [ %13, %36 ], [ %13, %31 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %84

59:                                               ; preds = %52, %48, %46
  %60 = phi i32 [ %41, %46 ], [ %56, %52 ], [ 1, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %75

61:                                               ; preds = %3
  %62 = getelementptr inbounds %struct.nameidata, ptr %0, i32 0, i32 1
  %63 = tail call ptr @__d_lookup(ptr noundef %6, ptr noundef %62) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %84, label %65, !prof !8

65:                                               ; preds = %61
  %66 = load i32, ptr %63, align 8
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69, !prof !10

69:                                               ; preds = %65
  %70 = load i32, ptr %7, align 4
  %71 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 8
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %72, align 64
  %74 = tail call i32 %73(ptr noundef nonnull %63, i32 noundef %70) #13
  br label %75

75:                                               ; preds = %69, %59
  %76 = phi ptr [ %13, %59 ], [ %63, %69 ]
  %77 = phi i32 [ %60, %59 ], [ %74, %69 ]
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %84, !prof !8

79:                                               ; preds = %75
  %80 = icmp eq i32 %77, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  call void @d_invalidate(ptr noundef nonnull %76) #13
  br label %82

82:                                               ; preds = %81, %79
  call void @dput(ptr noundef nonnull %76) #13
  %83 = inttoptr i32 %77 to ptr
  br label %84

84:                                               ; preds = %82, %75, %65, %61, %57
  %85 = phi ptr [ %83, %82 ], [ null, %61 ], [ %76, %75 ], [ %58, %57 ], [ %63, %65 ]
  ret ptr %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @choose_mountpoint_rcu(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  br label %6

6:                                                ; preds = %20, %4
  %7 = phi ptr [ %0, %4 ], [ %9, %20 ]
  %8 = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %36, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.mount, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 3
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %36, label %20, !prof !8

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.mount, ptr %9, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %13, %22
  br i1 %23, label %6, label %24

24:                                               ; preds = %20
  store ptr %21, ptr %2, align 4
  %25 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  store ptr %13, ptr %25, align 4
  %26 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %30, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !90
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !91
  %31 = load volatile i32, ptr %26, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30, %24
  %35 = phi i32 [ %27, %24 ], [ %31, %30 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !92
  store i32 %35, ptr %3, align 4
  br label %36

36:                                               ; preds = %34, %16, %6
  %37 = phi i1 [ true, %34 ], [ false, %6 ], [ false, %16 ]
  ret i1 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @choose_mountpoint(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  %4 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.path, ptr %2, i32 0, i32 1
  br label %6

6:                                                ; preds = %66, %3
  %7 = load volatile i32, ptr @mount_lock, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %10, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !93
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !94
  %11 = load volatile i32, ptr @mount_lock, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %7, %6 ], [ %11, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !95
  br label %16

16:                                               ; preds = %30, %14
  %17 = phi ptr [ %0, %14 ], [ %19, %30 ]
  %18 = getelementptr inbounds %struct.mount, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %17
  br i1 %20, label %43, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mount, ptr %17, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %4, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 3
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %43, label %30, !prof !8

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.mount, ptr %19, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %23, %32
  br i1 %33, label %16, label %34

34:                                               ; preds = %30
  store ptr %31, ptr %2, align 4
  store ptr %23, ptr %5, align 4
  %35 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %39, %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !90
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !91
  %40 = load volatile i32, ptr %35, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %39

43:                                               ; preds = %26, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %44 = load volatile i32, ptr @mount_lock, align 4
  %45 = icmp eq i32 %44, %15
  br i1 %45, label %67, label %66

46:                                               ; preds = %39, %34
  %47 = phi i32 [ %36, %34 ], [ %40, %39 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !92
  %48 = load ptr, ptr %2, align 4
  %49 = tail call i32 @__legitimize_mnt(ptr noundef %48, i32 noundef %15) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51, !prof !10

51:                                               ; preds = %46
  %52 = icmp sgt i32 %49, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  store ptr null, ptr %2, align 4
  br label %64

54:                                               ; preds = %46
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 7
  %57 = tail call i32 @lockref_get_not_dead(ptr noundef %56) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59, !prof !8

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 4
  %61 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !62
  %62 = load volatile i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %47
  br i1 %63, label %67, label %65, !prof !10

64:                                               ; preds = %54, %53, %51
  store ptr null, ptr %5, align 4
  br label %65

65:                                               ; preds = %64, %59
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  tail call void @path_put(ptr noundef %2)
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !48
  br label %66

66:                                               ; preds = %65, %43
  br label %6

67:                                               ; preds = %59, %43
  %68 = phi i1 [ true, %59 ], [ false, %43 ]
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  ret i1 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__d_lookup_rcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_is_under(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_parallel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_lookup_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_subdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_empty_file(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_tmpfile(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !19
  %6 = or i32 %1, 2
  %7 = call fastcc i32 @path_lookupat(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %38, !prof !10

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8
  %11 = tail call i32 @mnt_want_write(ptr noundef %10) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33, !prof !10

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.vfsmount, ptr %10, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %16 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.open_flags, ptr %2, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  %20 = load i32, ptr %2, align 4
  %21 = tail call ptr @vfs_tmpfile(ptr noundef %15, ptr noundef %17, i16 noundef zeroext %19, i32 noundef %20)
  %22 = ptrtoint ptr %21 to i32
  %23 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  tail call void @dput(ptr noundef %17) #13
  store ptr %21, ptr %16, align 4
  %25 = load i32, ptr %2, align 4
  %26 = call fastcc i32 @may_open(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @vfs_open(ptr noundef nonnull %5, ptr noundef %3) #13
  br label %30

30:                                               ; preds = %28, %24, %13
  %31 = phi i32 [ %22, %13 ], [ %26, %24 ], [ %29, %28 ]
  %32 = load ptr, ptr %5, align 8
  call void @mnt_drop_write(ptr noundef %32) #13
  br label %33

33:                                               ; preds = %30, %9
  %34 = phi i32 [ %11, %9 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  call void @dput(ptr noundef %36) #13
  %37 = load ptr, ptr %5, align 8
  call void @mntput(ptr noundef %37) #13
  br label %38

38:                                               ; preds = %33, %4
  %39 = phi i32 [ %34, %33 ], [ %7, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_o_path(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store i64 0, ptr %4, align 8, !annotation !19
  %5 = call fastcc i32 @path_lookupat(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call i32 @vfs_open(ptr noundef nonnull %4, ptr noundef %2) #13
  %9 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @dput(ptr noundef %10) #13
  %11 = load ptr, ptr %4, align 8
  call void @mntput(ptr noundef %11) #13
  br label %12

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %5, %3 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @may_open(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %8, align 8
  %12 = and i16 %11, -4096
  %13 = zext i16 %12 to i32
  %14 = add nsw i32 %13, -4096
  %15 = lshr exact i32 %14, 12
  switch i32 %15, label %47 [
    i32 9, label %72
    i32 3, label %16
    i32 5, label %22
    i32 1, label %22
    i32 0, label %37
    i32 11, label %37
    i32 7, label %42
  ]

16:                                               ; preds = %10
  %17 = and i32 %2, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %16
  %20 = and i32 %2, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %72

22:                                               ; preds = %10, %10
  %23 = load ptr, ptr %1, align 4
  %24 = getelementptr inbounds %struct.vfsmount, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.vfsmount, ptr %23, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.super_block, ptr %30, i32 0, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 4
  %34 = and i32 %2, 1
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %72

37:                                               ; preds = %10, %10
  %38 = and i32 %2, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %37, %28
  %41 = and i32 %3, -513
  br label %47

42:                                               ; preds = %10
  %43 = and i32 %2, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call zeroext i1 @path_noexec(ptr noundef %1) #13
  br i1 %46, label %72, label %47

47:                                               ; preds = %45, %42, %40, %19, %10
  %48 = phi i32 [ %3, %10 ], [ %3, %45 ], [ %3, %42 ], [ %41, %40 ], [ %3, %19 ]
  %49 = or i32 %2, 32
  %50 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52
  %58 = and i32 %48, 3
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %48, 1024
  %61 = icmp ne i32 %60, 0
  %62 = or i1 %59, %61
  %63 = and i32 %48, 512
  %64 = icmp eq i32 %63, 0
  %65 = and i1 %64, %62
  br i1 %65, label %66, label %72

66:                                               ; preds = %57, %52
  %67 = and i32 %48, 262144
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %66
  %70 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef nonnull %8) #13
  br i1 %70, label %71, label %72

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %69, %57, %47, %45, %37, %28, %22, %19, %16, %10, %4
  %73 = phi i32 [ 0, %71 ], [ -2, %4 ], [ -40, %10 ], [ -21, %16 ], [ -13, %19 ], [ -13, %28 ], [ -13, %37 ], [ -13, %45 ], [ %50, %47 ], [ -1, %57 ], [ -1, %69 ], [ -13, %22 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_truncate(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_mknodat(i32 noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store i64 0, ptr %5, align 8, !annotation !19
  %6 = lshr i16 %2, 12
  %7 = zext i16 %6 to i32
  switch i32 %7, label %8 [
    i32 8, label %9
    i32 2, label %9
    i32 6, label %9
    i32 1, label %9
    i32 12, label %9
    i32 0, label %9
    i32 4, label %97
  ]

8:                                                ; preds = %4
  br label %97

9:                                                ; preds = %4, %4, %4, %4, %4, %4
  %10 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %11 = and i32 %3, 255
  %12 = lshr i32 %3, 12
  %13 = and i32 %12, 1048320
  %14 = or i32 %13, %11
  %15 = shl i32 %3, 12
  %16 = and i32 %15, -1048576
  %17 = or i32 %14, %16
  %18 = call fastcc ptr @filename_create(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 0)
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %94, label %20

20:                                               ; preds = %9
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 65536
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = tail call i32 @current_umask() #13
  %32 = trunc i32 %31 to i16
  %33 = xor i16 %32, -1
  %34 = and i16 %33, %2
  br label %35

35:                                               ; preds = %30, %20
  %36 = phi i16 [ %2, %20 ], [ %34, %30 ]
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.vfsmount, ptr %37, i32 0, i32 3
  %39 = load volatile ptr, ptr %38, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %40 = lshr i16 %36, 12
  %41 = zext i16 %40 to i32
  switch i32 %41, label %51 [
    i32 0, label %42
    i32 8, label %42
    i32 2, label %45
    i32 6, label %45
    i32 1, label %48
    i32 12, label %48
  ]

42:                                               ; preds = %35, %35
  %43 = load ptr, ptr %22, align 8
  %44 = tail call i32 @vfs_create(ptr noundef %39, ptr noundef %43, ptr noundef %18, i16 noundef zeroext %36, i1 noundef zeroext true)
  br label %51

45:                                               ; preds = %35, %35
  %46 = load ptr, ptr %22, align 8
  %47 = tail call i32 @vfs_mknod(ptr noundef %39, ptr noundef %46, ptr noundef %18, i16 noundef zeroext %36, i32 noundef %17)
  br label %51

48:                                               ; preds = %35, %35
  %49 = load ptr, ptr %22, align 8
  %50 = tail call i32 @vfs_mknod(ptr noundef %39, ptr noundef %49, ptr noundef %18, i16 noundef zeroext %36, i32 noundef 0)
  br label %51

51:                                               ; preds = %48, %45, %42, %35
  %52 = phi i32 [ 0, %35 ], [ %50, %48 ], [ %47, %45 ], [ %44, %42 ]
  tail call void @dput(ptr noundef %18) #13
  %53 = load ptr, ptr %22, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %53, i32 0, i32 24
  tail call void @up_write(ptr noundef %54) #13
  tail call void @mnt_drop_write(ptr noundef %37) #13
  tail call void @dput(ptr noundef %21) #13
  tail call void @mntput(ptr noundef %37) #13
  %55 = icmp eq i32 %52, -116
  br i1 %55, label %56, label %97

56:                                               ; preds = %51
  %57 = call fastcc ptr @filename_create(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef 32)
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %94, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %10, align 4
  %61 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.inode, ptr %62, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.super_block, ptr %64, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 65536
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = tail call i32 @current_umask() #13
  %71 = trunc i32 %70 to i16
  %72 = xor i16 %71, -1
  %73 = and i16 %36, %72
  br label %74

74:                                               ; preds = %69, %59
  %75 = phi i16 [ %36, %59 ], [ %73, %69 ]
  %76 = load ptr, ptr %5, align 8
  %77 = getelementptr inbounds %struct.vfsmount, ptr %76, i32 0, i32 3
  %78 = load volatile ptr, ptr %77, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !23
  %79 = lshr i16 %75, 12
  %80 = zext i16 %79 to i32
  switch i32 %80, label %90 [
    i32 0, label %87
    i32 8, label %87
    i32 2, label %84
    i32 6, label %84
    i32 1, label %81
    i32 12, label %81
  ]

81:                                               ; preds = %74, %74
  %82 = load ptr, ptr %61, align 8
  %83 = tail call i32 @vfs_mknod(ptr noundef %78, ptr noundef %82, ptr noundef %57, i16 noundef zeroext %75, i32 noundef 0)
  br label %90

84:                                               ; preds = %74, %74
  %85 = load ptr, ptr %61, align 8
  %86 = tail call i32 @vfs_mknod(ptr noundef %78, ptr noundef %85, ptr noundef %57, i16 noundef zeroext %75, i32 noundef %17)
  br label %90

87:                                               ; preds = %74, %74
  %88 = load ptr, ptr %61, align 8
  %89 = tail call i32 @vfs_create(ptr noundef %78, ptr noundef %88, ptr noundef %57, i16 noundef zeroext %75, i1 noundef zeroext true)
  br label %90

90:                                               ; preds = %87, %84, %81, %74
  %91 = phi i32 [ 0, %74 ], [ %83, %81 ], [ %86, %84 ], [ %89, %87 ]
  tail call void @dput(ptr noundef %57) #13
  %92 = load ptr, ptr %61, align 8
  %93 = getelementptr inbounds %struct.inode, ptr %92, i32 0, i32 24
  tail call void @up_write(ptr noundef %93) #13
  tail call void @mnt_drop_write(ptr noundef %76) #13
  tail call void @dput(ptr noundef %60) #13
  tail call void @mntput(ptr noundef %76) #13
  br label %97

94:                                               ; preds = %56, %9
  %95 = phi ptr [ %18, %9 ], [ %57, %56 ]
  %96 = ptrtoint ptr %95 to i32
  br label %97

97:                                               ; preds = %94, %90, %51, %8, %4
  %98 = phi i32 [ -22, %8 ], [ -1, %4 ], [ %96, %94 ], [ %52, %51 ], [ %91, %90 ]
  %99 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %115, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %105, !prof !8

104:                                              ; preds = %100
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/namei.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #13, !srcloc !9
  unreachable

105:                                              ; preds = %100
  %106 = add nsw i32 %102, -1
  store i32 %106, ptr %101, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load ptr, ptr %1, align 4
  %110 = getelementptr inbounds %struct.filename, ptr %1, i32 0, i32 4
  %111 = icmp eq ptr %109, %110
  %112 = load ptr, ptr @names_cachep, align 4
  br i1 %111, label %114, label %113

113:                                              ; preds = %108
  tail call void @kmem_cache_free(ptr noundef %112, ptr noundef %109) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %115

114:                                              ; preds = %108
  tail call void @kmem_cache_free(ptr noundef %112, ptr noundef %1) #13
  br label %115

115:                                              ; preds = %114, %113, %105, %97
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__is_local_mountpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__detach_mounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @path_parentat(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @path_init(ptr noundef %0, i32 noundef %1)
  %5 = tail call fastcc i32 @link_path_walk(ptr noundef %4, ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @complete_walk(ptr noundef %0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, ptr %0, align 8
  store i64 %11, ptr %2, align 4
  store ptr null, ptr %0, align 8
  %12 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  store ptr null, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %7, %3
  %14 = phi i32 [ 0, %10 ], [ %8, %7 ], [ %5, %3 ]
  tail call fastcc void @terminate_walk(ptr noundef %0)
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_get_cookie() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pagecache_get_page(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @read_cache_page(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readonly }
attributes #16 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2154931583, i64 2154932058, i64 2154931620, i64 2154931676, i64 2154931710, i64 2154931734, i64 2154931775, i64 2154931796, i64 2154931824, i64 2154931858}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2149059260}
!12 = !{i64 2149055084}
!13 = !{i64 2149055159, i64 2149055186, i64 2149055233, i64 2149055255, i64 2149055283, i64 2149055303}
!14 = !{i64 2149082263}
!15 = !{!"branch_weights", i32 2000, i32 2002}
!16 = !{i64 2154990818}
!17 = !{i64 7537228, i64 7537250, i64 7537258, i64 7537296, i64 7537311, i64 7537336, i64 7537359, i64 7537378, i64 7537419, i64 7537474, i64 7537485, i64 7537503, i64 7537539, i64 7537554, i64 7537573}
!18 = !{i32 0, i32 33}
!19 = !{!"auto-init"}
!20 = !{i64 2155060769}
!21 = !{i64 2155079179, i64 2155079655, i64 2155079216, i64 2155079272, i64 2155079306, i64 2155079330, i64 2155079371, i64 2155079392, i64 2155079420, i64 2155079454}
!22 = !{!"branch_weights", i32 1, i32 4001}
!23 = !{i64 2151473596}
!24 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!25 = !{i64 2148173378}
!26 = !{i64 557793, i64 2148047764, i64 2148047790, i64 2148047837, i64 2148047859, i64 2148047887, i64 2148047907}
!27 = !{i64 543856, i64 543880, i64 543901, i64 543918, i64 543935}
!28 = !{i64 2148173578}
!29 = !{i64 2148062333, i64 2148062359, i64 2148062388, i64 2148062422, i64 2148062453, i64 2148062476}
!30 = !{i64 2155065510, i64 2155065986, i64 2155065547, i64 2155065603, i64 2155065637, i64 2155065661, i64 2155065702, i64 2155065723, i64 2155065751, i64 2155065785}
!31 = !{i64 2155066542, i64 2155067018, i64 2155066579, i64 2155066635, i64 2155066669, i64 2155066693, i64 2155066734, i64 2155066755, i64 2155066783, i64 2155066817}
!32 = !{i64 2151584342}
!33 = !{i64 2148745467}
!34 = !{i64 2151246538, i64 2151246563}
!35 = !{i64 3742072}
!36 = !{i64 3742269}
!37 = !{i64 2151227548}
!38 = !{i64 2149890363}
!39 = !{i64 2148160631}
!40 = !{i64 2148063017, i64 2148063049, i64 2148063078, i64 2148063112, i64 2148063143, i64 2148063166}
!41 = !{i64 2148160834}
!42 = !{i64 2155242053, i64 2155242529, i64 2155242090, i64 2155242146, i64 2155242180, i64 2155242204, i64 2155242245, i64 2155242266, i64 2155242294, i64 2155242328}
!43 = !{i64 2148161632}
!44 = !{i64 2148063791, i64 2148063823, i64 2148063852, i64 2148063886, i64 2148063917, i64 2148063940}
!45 = !{i64 2149408612}
!46 = !{i64 2154978171}
!47 = !{i64 2154984393}
!48 = !{i64 2149458032}
!49 = !{i64 2155027789}
!50 = !{i64 2155027631}
!51 = !{i64 2155029654}
!52 = !{i64 2155029496}
!53 = !{i64 2155029798}
!54 = !{i64 2155032035}
!55 = !{i64 2155031877}
!56 = !{i64 2155032179}
!57 = !{i64 2155034182}
!58 = !{i64 2155034024}
!59 = !{i64 2155034326}
!60 = !{i64 2155040275}
!61 = !{i64 2155040117}
!62 = !{i64 2149302065}
!63 = !{!64}
!64 = distinct !{!64, !65, !"fdget_raw: argument 0"}
!65 = distinct !{!65, !"fdget_raw"}
!66 = !{i64 2155043721}
!67 = !{i64 2155043563}
!68 = !{i64 2155043865}
!69 = !{!"branch_weights", i32 1073205, i32 2146410443}
!70 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!71 = !{i64 2149458249}
!72 = !{i64 2154953768}
!73 = !{i64 2154953610}
!74 = !{i64 2154953912}
!75 = !{i64 2154955800}
!76 = !{i64 2154955642}
!77 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!78 = !{i64 2154995700}
!79 = !{i64 2154995542}
!80 = !{!"branch_weights", i32 -102759400, i32 4193255}
!81 = !{i64 2154995844}
!82 = !{i64 2154947837, i64 2154948312, i64 2154947874, i64 2154947930, i64 2154947964, i64 2154947988, i64 2154948029, i64 2154948050, i64 2154948078, i64 2154948112}
!83 = !{i64 2154941543, i64 2154942018, i64 2154941580, i64 2154941636, i64 2154941670, i64 2154941694, i64 2154941735, i64 2154941756, i64 2154941784, i64 2154941818}
!84 = !{i64 2154942736, i64 2154943211, i64 2154942773, i64 2154942829, i64 2154942863, i64 2154942887, i64 2154942928, i64 2154942949, i64 2154942977, i64 2154943011}
!85 = !{i32 -131, i32 1}
!86 = !{i64 2155008386}
!87 = !{i64 2155008228}
!88 = !{i64 2155008530}
!89 = !{i64 2155015177}
!90 = !{i64 2154967521}
!91 = !{i64 2154967363}
!92 = !{i64 2154967665}
!93 = !{i64 2149311427}
!94 = !{i64 2149311269}
!95 = !{i64 2149311571}
