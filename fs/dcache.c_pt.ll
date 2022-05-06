; ModuleID = '/llk/IR/fs/dcache.c_pt.bc'
source_filename = "../fs/dcache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysctl_vfs_cache_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22sysctl_vfs_cache_pressure\22\09\09\09\09\09"
module asm "__kstrtabns_sysctl_vfs_cache_pressure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rename_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22rename_lock\22\09\09\09\09\09"
module asm "__kstrtabns_rename_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_empty_name:\09\09\09\09\09"
module asm "\09.asciz \09\22empty_name\22\09\09\09\09\09"
module asm "__kstrtabns_empty_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slash_name:\09\09\09\09\09"
module asm "\09.asciz \09\22slash_name\22\09\09\09\09\09"
module asm "__kstrtabns_slash_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dotdot_name:\09\09\09\09\09"
module asm "\09.asciz \09\22dotdot_name\22\09\09\09\09\09"
module asm "__kstrtabns_dotdot_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_take_dentry_name_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22take_dentry_name_snapshot\22\09\09\09\09\09"
module asm "__kstrtabns_take_dentry_name_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_dentry_name_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22release_dentry_name_snapshot\22\09\09\09\09\09"
module asm "__kstrtabns_release_dentry_name_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___d_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22__d_drop\22\09\09\09\09\09"
module asm "__kstrtabns___d_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22d_drop\22\09\09\09\09\09"
module asm "__kstrtabns_d_drop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_mark_dontcache:\09\09\09\09\09"
module asm "\09.asciz \09\22d_mark_dontcache\22\09\09\09\09\09"
module asm "__kstrtabns_d_mark_dontcache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dput:\09\09\09\09\09"
module asm "\09.asciz \09\22dput\22\09\09\09\09\09"
module asm "__kstrtabns_dput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dget_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22dget_parent\22\09\09\09\09\09"
module asm "__kstrtabns_dget_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_find_any_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22d_find_any_alias\22\09\09\09\09\09"
module asm "__kstrtabns_d_find_any_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_find_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22d_find_alias\22\09\09\09\09\09"
module asm "__kstrtabns_d_find_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_prune_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22d_prune_aliases\22\09\09\09\09\09"
module asm "__kstrtabns_d_prune_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shrink_dcache_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22shrink_dcache_sb\22\09\09\09\09\09"
module asm "__kstrtabns_shrink_dcache_sb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_path_has_submounts:\09\09\09\09\09"
module asm "\09.asciz \09\22path_has_submounts\22\09\09\09\09\09"
module asm "__kstrtabns_path_has_submounts:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_shrink_dcache_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22shrink_dcache_parent\22\09\09\09\09\09"
module asm "__kstrtabns_shrink_dcache_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22d_invalidate\22\09\09\09\09\09"
module asm "__kstrtabns_d_invalidate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22d_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_d_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_alloc_anon:\09\09\09\09\09"
module asm "\09.asciz \09\22d_alloc_anon\22\09\09\09\09\09"
module asm "__kstrtabns_d_alloc_anon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_alloc_name:\09\09\09\09\09"
module asm "\09.asciz \09\22d_alloc_name\22\09\09\09\09\09"
module asm "__kstrtabns_d_alloc_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_set_d_op:\09\09\09\09\09"
module asm "\09.asciz \09\22d_set_d_op\22\09\09\09\09\09"
module asm "__kstrtabns_d_set_d_op:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_set_fallthru:\09\09\09\09\09"
module asm "\09.asciz \09\22d_set_fallthru\22\09\09\09\09\09"
module asm "__kstrtabns_d_set_fallthru:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22d_instantiate\22\09\09\09\09\09"
module asm "__kstrtabns_d_instantiate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_instantiate_new:\09\09\09\09\09"
module asm "\09.asciz \09\22d_instantiate_new\22\09\09\09\09\09"
module asm "__kstrtabns_d_instantiate_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_make_root:\09\09\09\09\09"
module asm "\09.asciz \09\22d_make_root\22\09\09\09\09\09"
module asm "__kstrtabns_d_make_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_instantiate_anon:\09\09\09\09\09"
module asm "\09.asciz \09\22d_instantiate_anon\22\09\09\09\09\09"
module asm "__kstrtabns_d_instantiate_anon:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_obtain_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22d_obtain_alias\22\09\09\09\09\09"
module asm "__kstrtabns_d_obtain_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_obtain_root:\09\09\09\09\09"
module asm "\09.asciz \09\22d_obtain_root\22\09\09\09\09\09"
module asm "__kstrtabns_d_obtain_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_add_ci:\09\09\09\09\09"
module asm "\09.asciz \09\22d_add_ci\22\09\09\09\09\09"
module asm "__kstrtabns_d_add_ci:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22d_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_d_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_hash_and_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22d_hash_and_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_d_hash_and_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22d_delete\22\09\09\09\09\09"
module asm "__kstrtabns_d_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_rehash:\09\09\09\09\09"
module asm "\09.asciz \09\22d_rehash\22\09\09\09\09\09"
module asm "__kstrtabns_d_rehash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_alloc_parallel:\09\09\09\09\09"
module asm "\09.asciz \09\22d_alloc_parallel\22\09\09\09\09\09"
module asm "__kstrtabns_d_alloc_parallel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___d_lookup_done:\09\09\09\09\09"
module asm "\09.asciz \09\22__d_lookup_done\22\09\09\09\09\09"
module asm "__kstrtabns___d_lookup_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_add:\09\09\09\09\09"
module asm "\09.asciz \09\22d_add\22\09\09\09\09\09"
module asm "__kstrtabns_d_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_exact_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22d_exact_alias\22\09\09\09\09\09"
module asm "__kstrtabns_d_exact_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_move:\09\09\09\09\09"
module asm "\09.asciz \09\22d_move\22\09\09\09\09\09"
module asm "__kstrtabns_d_move:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_splice_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22d_splice_alias\22\09\09\09\09\09"
module asm "__kstrtabns_d_splice_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_subdir:\09\09\09\09\09"
module asm "\09.asciz \09\22is_subdir\22\09\09\09\09\09"
module asm "__kstrtabns_is_subdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_genocide:\09\09\09\09\09"
module asm "\09.asciz \09\22d_genocide\22\09\09\09\09\09"
module asm "__kstrtabns_d_genocide:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_d_tmpfile:\09\09\09\09\09"
module asm "\09.asciz \09\22d_tmpfile\22\09\09\09\09\09"
module asm "__kstrtabns_d_tmpfile:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_names_cachep:\09\09\09\09\09"
module asm "\09.asciz \09\22names_cachep\22\09\09\09\09\09"
module asm "__kstrtabns_names_cachep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.anon = type { i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.hlist_bl_head = type { ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_stat_t = type { i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { i64 }
%union.anon.66 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.60, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.61, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.62, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.60 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.61 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.62 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.anon.65 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }
%struct.check_mount = type { ptr, i32 }
%struct.path = type { ptr, ptr }
%struct.mount = type { %struct.hlist_node, ptr, ptr, %struct.vfsmount, %union.anon.68, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, %union.anon.69, %struct.list_head, ptr, i32, i32, i32, i32, %struct.hlist_head, %struct.hlist_head }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%union.anon.68 = type { %struct.callback_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.select_data = type { ptr, %union.anon.71, %struct.list_head }
%union.anon.71 = type { i32 }
%struct.external_name = type { %union.anon.70, [0 x i8] }
%union.anon.70 = type { %struct.callback_head }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.16 }
%struct.llist_node = type { ptr }
%union.anon.16 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.53 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@sysctl_vfs_cache_pressure = dso_local global i32 100, section ".data..read_mostly", align 4
@__kstrtab_sysctl_vfs_cache_pressure = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysctl_vfs_cache_pressure = external dso_local constant [0 x i8], align 1
@__ksymtab_sysctl_vfs_cache_pressure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysctl_vfs_cache_pressure to i32), ptr @__kstrtab_sysctl_vfs_cache_pressure, ptr @__kstrtabns_sysctl_vfs_cache_pressure }, section "___ksymtab_gpl+sysctl_vfs_cache_pressure", align 4
@rename_lock = dso_local global %struct.seqlock_t zeroinitializer, section ".data..cacheline_aligned", align 64
@__kstrtab_rename_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_rename_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_rename_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rename_lock to i32), ptr @__kstrtab_rename_lock, ptr @__kstrtabns_rename_lock }, section "___ksymtab+rename_lock", align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@empty_name = dso_local constant { { %struct.anon }, ptr, [4 x i8] } { { %struct.anon } zeroinitializer, ptr @.str, [4 x i8] undef }, align 8
@__kstrtab_empty_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_empty_name = external dso_local constant [0 x i8], align 1
@__ksymtab_empty_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @empty_name to i32), ptr @__kstrtab_empty_name, ptr @__kstrtabns_empty_name }, section "___ksymtab+empty_name", align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@slash_name = dso_local constant { { %struct.anon }, ptr, [4 x i8] } { { %struct.anon } { %struct.anon { i32 0, i32 1 } }, ptr @.str.1, [4 x i8] undef }, align 8
@__kstrtab_slash_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_slash_name = external dso_local constant [0 x i8], align 1
@__ksymtab_slash_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slash_name to i32), ptr @__kstrtab_slash_name, ptr @__kstrtabns_slash_name }, section "___ksymtab+slash_name", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@dotdot_name = dso_local constant { { %struct.anon }, ptr, [4 x i8] } { { %struct.anon } { %struct.anon { i32 0, i32 2 } }, ptr @.str.2, [4 x i8] undef }, align 8
@__kstrtab_dotdot_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_dotdot_name = external dso_local constant [0 x i8], align 1
@__ksymtab_dotdot_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dotdot_name to i32), ptr @__kstrtab_dotdot_name, ptr @__kstrtabns_dotdot_name }, section "___ksymtab+dotdot_name", align 4
@__initcall__kmod_dcache__217_202_init_fs_dcache_sysctls5 = internal global ptr @init_fs_dcache_sysctls, section ".initcall5.init", align 4
@__kstrtab_take_dentry_name_snapshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_take_dentry_name_snapshot = external dso_local constant [0 x i8], align 1
@__ksymtab_take_dentry_name_snapshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @take_dentry_name_snapshot to i32), ptr @__kstrtab_take_dentry_name_snapshot, ptr @__kstrtabns_take_dentry_name_snapshot }, section "___ksymtab+take_dentry_name_snapshot", align 4
@__kstrtab_release_dentry_name_snapshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_dentry_name_snapshot = external dso_local constant [0 x i8], align 1
@__ksymtab_release_dentry_name_snapshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_dentry_name_snapshot to i32), ptr @__kstrtab_release_dentry_name_snapshot, ptr @__kstrtabns_release_dentry_name_snapshot }, section "___ksymtab+release_dentry_name_snapshot", align 4
@__kstrtab___d_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns___d_drop = external dso_local constant [0 x i8], align 1
@__ksymtab___d_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__d_drop to i32), ptr @__kstrtab___d_drop, ptr @__kstrtabns___d_drop }, section "___ksymtab+__d_drop", align 4
@__kstrtab_d_drop = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_drop = external dso_local constant [0 x i8], align 1
@__ksymtab_d_drop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_drop to i32), ptr @__kstrtab_d_drop, ptr @__kstrtabns_d_drop }, section "___ksymtab+d_drop", align 4
@__kstrtab_d_mark_dontcache = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_mark_dontcache = external dso_local constant [0 x i8], align 1
@__ksymtab_d_mark_dontcache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_mark_dontcache to i32), ptr @__kstrtab_d_mark_dontcache, ptr @__kstrtabns_d_mark_dontcache }, section "___ksymtab+d_mark_dontcache", align 4
@__kstrtab_dput = external dso_local constant [0 x i8], align 1
@__kstrtabns_dput = external dso_local constant [0 x i8], align 1
@__ksymtab_dput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dput to i32), ptr @__kstrtab_dput, ptr @__kstrtabns_dput }, section "___ksymtab+dput", align 4
@__kstrtab_dget_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_dget_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_dget_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dget_parent to i32), ptr @__kstrtab_dget_parent, ptr @__kstrtabns_dget_parent }, section "___ksymtab+dget_parent", align 4
@__kstrtab_d_find_any_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_find_any_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_d_find_any_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_find_any_alias to i32), ptr @__kstrtab_d_find_any_alias, ptr @__kstrtabns_d_find_any_alias }, section "___ksymtab+d_find_any_alias", align 4
@__kstrtab_d_find_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_find_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_d_find_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_find_alias to i32), ptr @__kstrtab_d_find_alias, ptr @__kstrtabns_d_find_alias }, section "___ksymtab+d_find_alias", align 4
@__kstrtab_d_prune_aliases = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_prune_aliases = external dso_local constant [0 x i8], align 1
@__ksymtab_d_prune_aliases = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_prune_aliases to i32), ptr @__kstrtab_d_prune_aliases, ptr @__kstrtabns_d_prune_aliases }, section "___ksymtab+d_prune_aliases", align 4
@__kstrtab_shrink_dcache_sb = external dso_local constant [0 x i8], align 1
@__kstrtabns_shrink_dcache_sb = external dso_local constant [0 x i8], align 1
@__ksymtab_shrink_dcache_sb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shrink_dcache_sb to i32), ptr @__kstrtab_shrink_dcache_sb, ptr @__kstrtabns_shrink_dcache_sb }, section "___ksymtab+shrink_dcache_sb", align 4
@mount_lock = external dso_local global %struct.seqlock_t, align 4
@__kstrtab_path_has_submounts = external dso_local constant [0 x i8], align 1
@__kstrtabns_path_has_submounts = external dso_local constant [0 x i8], align 1
@__ksymtab_path_has_submounts = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @path_has_submounts to i32), ptr @__kstrtab_path_has_submounts, ptr @__kstrtabns_path_has_submounts }, section "___ksymtab+path_has_submounts", align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"fs/dcache.c\00", align 1
@__kstrtab_shrink_dcache_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_shrink_dcache_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_shrink_dcache_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @shrink_dcache_parent to i32), ptr @__kstrtab_shrink_dcache_parent, ptr @__kstrtabns_shrink_dcache_parent }, section "___ksymtab+shrink_dcache_parent", align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"s_umount should've been locked\00", align 1
@__kstrtab_d_invalidate = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_invalidate = external dso_local constant [0 x i8], align 1
@__ksymtab_d_invalidate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_invalidate to i32), ptr @__kstrtab_d_invalidate, ptr @__kstrtabns_d_invalidate }, section "___ksymtab+d_invalidate", align 4
@__kstrtab_d_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_d_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_alloc to i32), ptr @__kstrtab_d_alloc, ptr @__kstrtabns_d_alloc }, section "___ksymtab+d_alloc", align 4
@__kstrtab_d_alloc_anon = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_alloc_anon = external dso_local constant [0 x i8], align 1
@__ksymtab_d_alloc_anon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_alloc_anon to i32), ptr @__kstrtab_d_alloc_anon, ptr @__kstrtabns_d_alloc_anon }, section "___ksymtab+d_alloc_anon", align 4
@__kstrtab_d_alloc_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_alloc_name = external dso_local constant [0 x i8], align 1
@__ksymtab_d_alloc_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_alloc_name to i32), ptr @__kstrtab_d_alloc_name, ptr @__kstrtabns_d_alloc_name }, section "___ksymtab+d_alloc_name", align 4
@d_set_d_op.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@d_set_d_op.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_d_set_d_op = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_set_d_op = external dso_local constant [0 x i8], align 1
@__ksymtab_d_set_d_op = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_set_d_op to i32), ptr @__kstrtab_d_set_d_op, ptr @__kstrtabns_d_set_d_op }, section "___ksymtab+d_set_d_op", align 4
@__kstrtab_d_set_fallthru = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_set_fallthru = external dso_local constant [0 x i8], align 1
@__ksymtab_d_set_fallthru = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_set_fallthru to i32), ptr @__kstrtab_d_set_fallthru, ptr @__kstrtabns_d_set_fallthru }, section "___ksymtab+d_set_fallthru", align 4
@__kstrtab_d_instantiate = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_instantiate = external dso_local constant [0 x i8], align 1
@__ksymtab_d_instantiate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_instantiate to i32), ptr @__kstrtab_d_instantiate, ptr @__kstrtabns_d_instantiate }, section "___ksymtab+d_instantiate", align 4
@__kstrtab_d_instantiate_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_instantiate_new = external dso_local constant [0 x i8], align 1
@__ksymtab_d_instantiate_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_instantiate_new to i32), ptr @__kstrtab_d_instantiate_new, ptr @__kstrtabns_d_instantiate_new }, section "___ksymtab+d_instantiate_new", align 4
@__kstrtab_d_make_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_make_root = external dso_local constant [0 x i8], align 1
@__ksymtab_d_make_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_make_root to i32), ptr @__kstrtab_d_make_root, ptr @__kstrtabns_d_make_root }, section "___ksymtab+d_make_root", align 4
@__kstrtab_d_instantiate_anon = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_instantiate_anon = external dso_local constant [0 x i8], align 1
@__ksymtab_d_instantiate_anon = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_instantiate_anon to i32), ptr @__kstrtab_d_instantiate_anon, ptr @__kstrtabns_d_instantiate_anon }, section "___ksymtab+d_instantiate_anon", align 4
@__kstrtab_d_obtain_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_obtain_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_d_obtain_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_obtain_alias to i32), ptr @__kstrtab_d_obtain_alias, ptr @__kstrtabns_d_obtain_alias }, section "___ksymtab+d_obtain_alias", align 4
@__kstrtab_d_obtain_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_obtain_root = external dso_local constant [0 x i8], align 1
@__ksymtab_d_obtain_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_obtain_root to i32), ptr @__kstrtab_d_obtain_root, ptr @__kstrtabns_d_obtain_root }, section "___ksymtab+d_obtain_root", align 4
@__kstrtab_d_add_ci = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_add_ci = external dso_local constant [0 x i8], align 1
@__ksymtab_d_add_ci = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_add_ci to i32), ptr @__kstrtab_d_add_ci, ptr @__kstrtabns_d_add_ci }, section "___ksymtab+d_add_ci", align 4
@__kstrtab_d_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_d_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_lookup to i32), ptr @__kstrtab_d_lookup, ptr @__kstrtabns_d_lookup }, section "___ksymtab+d_lookup", align 4
@__kstrtab_d_hash_and_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_hash_and_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_d_hash_and_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_hash_and_lookup to i32), ptr @__kstrtab_d_hash_and_lookup, ptr @__kstrtabns_d_hash_and_lookup }, section "___ksymtab+d_hash_and_lookup", align 4
@__kstrtab_d_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_d_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_delete to i32), ptr @__kstrtab_d_delete, ptr @__kstrtabns_d_delete }, section "___ksymtab+d_delete", align 4
@__kstrtab_d_rehash = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_rehash = external dso_local constant [0 x i8], align 1
@__ksymtab_d_rehash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_rehash to i32), ptr @__kstrtab_d_rehash, ptr @__kstrtabns_d_rehash }, section "___ksymtab+d_rehash", align 4
@__kstrtab_d_alloc_parallel = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_alloc_parallel = external dso_local constant [0 x i8], align 1
@__ksymtab_d_alloc_parallel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_alloc_parallel to i32), ptr @__kstrtab_d_alloc_parallel, ptr @__kstrtabns_d_alloc_parallel }, section "___ksymtab+d_alloc_parallel", align 4
@__kstrtab___d_lookup_done = external dso_local constant [0 x i8], align 1
@__kstrtabns___d_lookup_done = external dso_local constant [0 x i8], align 1
@__ksymtab___d_lookup_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__d_lookup_done to i32), ptr @__kstrtab___d_lookup_done, ptr @__kstrtabns___d_lookup_done }, section "___ksymtab+__d_lookup_done", align 4
@__kstrtab_d_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_add = external dso_local constant [0 x i8], align 1
@__ksymtab_d_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_add to i32), ptr @__kstrtab_d_add, ptr @__kstrtabns_d_add }, section "___ksymtab+d_add", align 4
@__kstrtab_d_exact_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_exact_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_d_exact_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_exact_alias to i32), ptr @__kstrtab_d_exact_alias, ptr @__kstrtabns_d_exact_alias }, section "___ksymtab+d_exact_alias", align 4
@__kstrtab_d_move = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_move = external dso_local constant [0 x i8], align 1
@__ksymtab_d_move = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_move to i32), ptr @__kstrtab_d_move, ptr @__kstrtabns_d_move }, section "___ksymtab+d_move", align 4
@d_splice_alias._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.d_splice_alias = private unnamed_addr constant [15 x i8] c"d_splice_alias\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"\014VFS: Lookup of '%s' in %s %s would have caused loop\0A\00", align 1
@__kstrtab_d_splice_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_splice_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_d_splice_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_splice_alias to i32), ptr @__kstrtab_d_splice_alias, ptr @__kstrtabns_d_splice_alias }, section "___ksymtab+d_splice_alias", align 4
@__kstrtab_is_subdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_subdir = external dso_local constant [0 x i8], align 1
@__ksymtab_is_subdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_subdir to i32), ptr @__kstrtab_is_subdir, ptr @__kstrtabns_is_subdir }, section "___ksymtab+is_subdir", align 4
@__kstrtab_d_genocide = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_genocide = external dso_local constant [0 x i8], align 1
@__ksymtab_d_genocide = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_genocide to i32), ptr @__kstrtab_d_genocide, ptr @__kstrtabns_d_genocide }, section "___ksymtab+d_genocide", align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"#%llu\00", align 1
@__kstrtab_d_tmpfile = external dso_local constant [0 x i8], align 1
@__kstrtabns_d_tmpfile = external dso_local constant [0 x i8], align 1
@__ksymtab_d_tmpfile = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @d_tmpfile to i32), ptr @__kstrtab_d_tmpfile, ptr @__kstrtabns_d_tmpfile }, section "___ksymtab+d_tmpfile", align 4
@__setup_str_set_dhash_entries = internal constant [15 x i8] c"dhash_entries=\00", section ".init.rodata", align 1
@__setup_set_dhash_entries = internal global %struct.obs_kernel_param { ptr @__setup_str_set_dhash_entries, ptr @set_dhash_entries, i32 0 }, section ".init.setup", align 4
@names_cachep = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_names_cachep = external dso_local constant [0 x i8], align 1
@__kstrtabns_names_cachep = external dso_local constant [0 x i8], align 1
@__ksymtab_names_cachep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @names_cachep to i32), ptr @__kstrtab_names_cachep, ptr @__kstrtabns_names_cachep }, section "___ksymtab+names_cachep", align 4
@in_lookup_hashtable = internal global [1024 x %struct.hlist_bl_head] zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"names_cache\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@fs_dcache_sysctls = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr @dentry_stat, i32 24, i16 292, ptr null, ptr @proc_nr_dentry, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"fs_dcache_sysctls\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"dentry-state\00", align 1
@dentry_stat = internal global %struct.dentry_stat_t { i32 0, i32 0, i32 45, i32 0, i32 0, i32 0 }, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@nr_dentry = internal global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@nr_dentry_unused = internal global i32 0, section ".data..percpu", align 4
@nr_dentry_negative = internal global i32 0, section ".data..percpu", align 4
@d_lru_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@d_lru_add.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@d_lru_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@d_lru_del.__already_done.13 = internal unnamed_addr global i1 false, section ".data.once", align 1
@d_shrink_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@d_shrink_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dentry_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@d_lru_isolate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@d_lru_shrink_move.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"\013BUG: Dentry %p{i=%lx,n=%pd}  still in use (%d) [unmount of %s %s]\0A\00", align 1
@dentry_hashtable = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@d_hash_shift = internal global i32 0, section ".data..read_mostly", align 4
@dhash_entries = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"Dentry cache\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"dentry\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @__initcall__kmod_dcache__217_202_init_fs_dcache_sysctls5, ptr @__ksymtab___d_drop, ptr @__ksymtab___d_lookup_done, ptr @__ksymtab_d_add, ptr @__ksymtab_d_add_ci, ptr @__ksymtab_d_alloc, ptr @__ksymtab_d_alloc_anon, ptr @__ksymtab_d_alloc_name, ptr @__ksymtab_d_alloc_parallel, ptr @__ksymtab_d_delete, ptr @__ksymtab_d_drop, ptr @__ksymtab_d_exact_alias, ptr @__ksymtab_d_find_alias, ptr @__ksymtab_d_find_any_alias, ptr @__ksymtab_d_genocide, ptr @__ksymtab_d_hash_and_lookup, ptr @__ksymtab_d_instantiate, ptr @__ksymtab_d_instantiate_anon, ptr @__ksymtab_d_instantiate_new, ptr @__ksymtab_d_invalidate, ptr @__ksymtab_d_lookup, ptr @__ksymtab_d_make_root, ptr @__ksymtab_d_mark_dontcache, ptr @__ksymtab_d_move, ptr @__ksymtab_d_obtain_alias, ptr @__ksymtab_d_obtain_root, ptr @__ksymtab_d_prune_aliases, ptr @__ksymtab_d_rehash, ptr @__ksymtab_d_set_d_op, ptr @__ksymtab_d_set_fallthru, ptr @__ksymtab_d_splice_alias, ptr @__ksymtab_d_tmpfile, ptr @__ksymtab_dget_parent, ptr @__ksymtab_dotdot_name, ptr @__ksymtab_dput, ptr @__ksymtab_empty_name, ptr @__ksymtab_is_subdir, ptr @__ksymtab_names_cachep, ptr @__ksymtab_path_has_submounts, ptr @__ksymtab_release_dentry_name_snapshot, ptr @__ksymtab_rename_lock, ptr @__ksymtab_shrink_dcache_parent, ptr @__ksymtab_shrink_dcache_sb, ptr @__ksymtab_slash_name, ptr @__ksymtab_sysctl_vfs_cache_pressure, ptr @__ksymtab_take_dentry_name_snapshot, ptr @__setup_set_dhash_entries], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_fs_dcache_sysctls() #0 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.9, ptr noundef nonnull @fs_dcache_sysctls, ptr noundef nonnull @.str.10) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @take_dentry_name_snapshot(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %0, ptr noundef align 8 dereferenceable(16) %4, i32 16, i1 false)
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 6
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %12, label %9, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %6, i32 -8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !11
  br label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.name_snapshot, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %13, ptr align 4 %6, i32 %16, i1 false)
  %17 = getelementptr inbounds %struct.qstr, ptr %0, i32 0, i32 1
  store ptr %13, ptr %17, align 8
  br label %18

18:                                               ; preds = %12, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_dentry_name_snapshot(ptr noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.qstr, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.name_snapshot, ptr %0, i32 0, i32 1
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %14, label %6, !prof !9

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #16, !srcloc !10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #16, !srcloc !17
  %9 = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14, !prof !19

11:                                               ; preds = %6
  %12 = icmp eq ptr %7, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %11, %6, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__d_drop(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %9, label %13, !prof !19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 18
  br label %20

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 8
  %16 = load ptr, ptr @dentry_hashtable, align 4
  %17 = load i32, ptr @d_hash_shift, align 4
  %18 = lshr i32 %15, %17
  %19 = getelementptr %struct.hlist_bl_head, ptr %16, i32 %18
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi ptr [ %12, %9 ], [ %19, %13 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %22

22:                                               ; preds = %36, %20
  %23 = load volatile i32, ptr %21, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31, !prof !21

26:                                               ; preds = %22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #16, !srcloc !10
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 1, ptr elementtype(i32) %21) #16, !srcloc !22
  %28 = extractvalue { i32, i32, i32 } %27, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31, !prof !9

31:                                               ; preds = %26, %22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %32

32:                                               ; preds = %32, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %33 = load volatile i32, ptr %21, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %32

36:                                               ; preds = %32
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %22

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %2, align 4
  %41 = ptrtoint ptr %39 to i32
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = and i32 %43, 1
  %45 = or i32 %44, %41
  %46 = inttoptr i32 %45 to ptr
  store volatile ptr %46, ptr %40, align 4
  %47 = icmp eq ptr %39, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.hlist_bl_node, ptr %39, i32 0, i32 1
  store ptr %40, ptr %49, align 4
  br label %50

50:                                               ; preds = %48, %37
  %51 = load volatile i32, ptr %21, align 4
  %52 = and i32 %51, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %52, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  store ptr null, ptr %2, align 4
  %53 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !30
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, 2
  store i32 %55, ptr %53, align 4
  br label %56

56:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_drop(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  tail call void @__d_drop(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %3 = load i16, ptr %2, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_mark_dontcache(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -128
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %19, %9 ], [ %6, %1 ]
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %11) #16
  %12 = load i32, ptr %10, align 8
  %13 = or i32 %12, 128
  store i32 %13, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %14 = load i16, ptr %11, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %16 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 15
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 -128
  %20 = icmp eq ptr %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %9

22:                                               ; preds = %9, %1
  %23 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 65536
  store i32 %25, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %26 = load i16, ptr %2, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dput(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %48, %1
  %4 = phi ptr [ %49, %48 ], [ %0, %1 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  br i1 %7, label %9, label %39, !prof !9

9:                                                ; preds = %3
  %10 = tail call i32 @lockref_put_return(ptr noundef %8) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %21, !prof !19

12:                                               ; preds = %9
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  %13 = getelementptr inbounds %struct.anon.65, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %43, !prof !21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.anon.65, ptr %8, i32 0, i32 1
  %18 = add nsw i32 %14, -1
  store i32 %18, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %19 = load i16, ptr %8, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %42

21:                                               ; preds = %9
  %22 = icmp eq i32 %10, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  %24 = load volatile i32, ptr %4, align 8
  %25 = and i32 %24, 524512
  %26 = icmp eq i32 %25, 524352
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %27, %23
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  %32 = getelementptr inbounds %struct.anon.65, ptr %8, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35, !prof !33

35:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %36 = load i16, ptr %8, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %42

38:                                               ; preds = %31
  store i32 1, ptr %32, align 4
  br label %43

39:                                               ; preds = %3
  %40 = tail call i32 @lockref_put_or_lock(ptr noundef %8) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42, !prof !19

42:                                               ; preds = %39, %35, %27, %21, %16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %51

43:                                               ; preds = %39, %38, %12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %44 = tail call fastcc zeroext i1 @retain_dentry(ptr noundef nonnull %4)
  br i1 %44, label %45, label %48, !prof !9

45:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %46 = load i16, ptr %8, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %51

48:                                               ; preds = %43
  %49 = tail call fastcc ptr @dentry_kill(ptr noundef nonnull %4)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %3

51:                                               ; preds = %48, %45, %42, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @retain_dentry(ptr noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 268435456
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 665, i32 noundef 9, ptr noundef null) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10, !prof !19

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %43, !prof !9

14:                                               ; preds = %10
  %15 = and i32 %11, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17, !prof !9

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.dentry_operations, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 16
  %22 = tail call i32 %21(ptr noundef %0) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load i32, ptr %0, align 8
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %25, %24 ], [ %11, %14 ]
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43, !prof !9

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  %32 = getelementptr inbounds %struct.anon.65, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = and i32 %27, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !19

37:                                               ; preds = %30
  tail call fastcc void @d_lru_add(ptr noundef %0)
  br label %43

38:                                               ; preds = %30
  %39 = and i32 %27, 64
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43, !prof !19

41:                                               ; preds = %38
  %42 = or i32 %27, 64
  store i32 %42, ptr %0, align 8
  br label %43

43:                                               ; preds = %41, %38, %37, %26, %17, %10, %6
  %44 = phi i1 [ false, %6 ], [ false, %10 ], [ false, %17 ], [ false, %26 ], [ true, %38 ], [ true, %41 ], [ true, %37 ]
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @dentry_kill(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %7 = tail call i32 @_raw_spin_trylock(ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9, !prof !19

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7
  %15 = tail call i32 @_raw_spin_trylock(ptr noundef %14) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29, !prof !19

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @__lock_parent(ptr noundef %0)
  br i1 %4, label %19, label %38

19:                                               ; preds = %17
  %20 = load ptr, ptr %2, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22, !prof !9

22:                                               ; preds = %19
  %23 = icmp eq ptr %18, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %28 = load ptr, ptr %2, align 8
  br label %31

29:                                               ; preds = %13, %9
  %30 = phi ptr [ null, %9 ], [ %11, %13 ]
  tail call fastcc void @__dentry_kill(ptr noundef %0)
  br label %65

31:                                               ; preds = %24, %22, %5
  %32 = phi ptr [ %3, %5 ], [ %28, %24 ], [ %20, %22 ]
  %33 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %36 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %36) #16
  tail call void @_raw_spin_lock(ptr noundef %33) #16
  %37 = tail call fastcc ptr @lock_parent(ptr noundef %0)
  br label %38

38:                                               ; preds = %31, %19, %17
  %39 = phi ptr [ %32, %31 ], [ null, %19 ], [ %3, %17 ]
  %40 = phi ptr [ %37, %31 ], [ %18, %19 ], [ %18, %17 ]
  %41 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  %42 = getelementptr inbounds %struct.anon.65, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %47, label %45, !prof !9

45:                                               ; preds = %38
  %46 = add i32 %43, -1
  store i32 %46, ptr %42, align 4
  br label %50

47:                                               ; preds = %38
  %48 = tail call fastcc zeroext i1 @retain_dentry(ptr noundef %0)
  br i1 %48, label %50, label %49, !prof !19

49:                                               ; preds = %47
  tail call fastcc void @__dentry_kill(ptr noundef %0)
  br label %65

50:                                               ; preds = %47, %45
  %51 = icmp eq ptr %39, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %54 = load i16, ptr %53, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %56

56:                                               ; preds = %52, %50
  %57 = icmp eq ptr %40, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %60 = load i16, ptr %59, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %62

62:                                               ; preds = %58, %56
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %63 = load i16, ptr %41, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %65

65:                                               ; preds = %62, %49, %29
  %66 = phi ptr [ null, %62 ], [ %40, %49 ], [ %30, %29 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dput_to_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 8
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  br i1 %5, label %7, label %36, !prof !9

7:                                                ; preds = %2
  %8 = tail call i32 @lockref_put_return(ptr noundef %6) #16
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %18, !prof !19

10:                                               ; preds = %7
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %11 = getelementptr inbounds %struct.anon.65, ptr %6, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %40, !prof !21

14:                                               ; preds = %10
  %15 = add nsw i32 %12, -1
  store i32 %15, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %16 = load i16, ptr %6, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %39

18:                                               ; preds = %7
  %19 = icmp eq i32 %8, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !32
  %21 = load volatile i32, ptr %0, align 8
  %22 = and i32 %21, 524512
  %23 = icmp eq i32 %22, 524352
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %24, %20
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %29 = getelementptr inbounds %struct.anon.65, ptr %6, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32, !prof !33

32:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %33 = load i16, ptr %6, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %39

35:                                               ; preds = %28
  store i32 1, ptr %29, align 4
  br label %40

36:                                               ; preds = %2
  %37 = tail call i32 @lockref_put_or_lock(ptr noundef %6) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39, !prof !19

39:                                               ; preds = %36, %32, %24, %18, %14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %46

40:                                               ; preds = %36, %35, %10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %41 = tail call fastcc zeroext i1 @retain_dentry(ptr noundef %0)
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call fastcc void @__dput_to_list(ptr noundef %0, ptr noundef %1)
  br label %43

43:                                               ; preds = %42, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %44 = load i16, ptr %6, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %46

46:                                               ; preds = %43, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dput_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  %8 = getelementptr inbounds %struct.anon.65, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  br label %44

11:                                               ; preds = %2
  %12 = and i32 %3, 524288
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call fastcc void @d_lru_del(ptr noundef %0)
  br label %15

15:                                               ; preds = %14, %11
  %16 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.anon.65, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  store i32 %19, ptr %17, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 525312
  %24 = icmp ne i32 %23, 0
  %25 = load i1, ptr @d_shrink_add.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !19

28:                                               ; preds = %21
  store i1 true, ptr @d_shrink_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 454, i32 noundef 9, ptr noundef null) #16
  br label %29

29:                                               ; preds = %28, %21
  %30 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 12
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store ptr %31, ptr %30, align 4
  %33 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  store volatile ptr %30, ptr %1, align 4
  %34 = load i32, ptr %0, align 8
  %35 = or i32 %34, 525312
  store i32 %35, ptr %0, align 8
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #12, !srcloc !36
  %40 = add i32 %39, ptrtoint (ptr @nr_dentry_unused to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #16, !srcloc !37
  br label %44

44:                                               ; preds = %29, %15, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dget_parent(ptr noundef %0) #1 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !38
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  %7 = tail call i32 @lockref_get_not_zero(ptr noundef %6) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !19

9:                                                ; preds = %1
  %10 = and i32 %3, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %11 = load volatile i32, ptr %2, align 4
  %12 = icmp eq i32 %11, %10
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  tail call void @dput(ptr noundef %5)
  br label %14

14:                                               ; preds = %13, %1
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %16) #16
  %17 = load ptr, ptr %4, align 8
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %27, label %19, !prof !9

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %24, %19 ], [ %16, %14 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %24) #16
  %25 = load ptr, ptr %4, align 8
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %19, !prof !9

27:                                               ; preds = %19, %14
  %28 = phi ptr [ %15, %14 ], [ %23, %19 ]
  %29 = phi ptr [ %16, %14 ], [ %24, %19 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %30 = getelementptr inbounds %struct.anon.65, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !19

33:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 991, 0\0A.popsection", ""() #16, !srcloc !40
  unreachable

34:                                               ; preds = %27
  %35 = add i32 %31, 1
  store i32 %35, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %36 = load i16, ptr %29, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %38

38:                                               ; preds = %34, %9
  %39 = phi ptr [ %28, %34 ], [ %5, %9 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_find_any_alias(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %4, i32 -128
  %8 = getelementptr i8, ptr %4, i32 -48
  tail call void @lockref_get(ptr noundef %8) #16
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %7, %6 ], [ null, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %11 = load i16, ptr %2, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_find_alias(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = load i16, ptr %0, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, 16384
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load volatile ptr, ptr %2, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 -128
  %15 = getelementptr i8, ptr %11, i32 -48
  tail call void @lockref_get(ptr noundef %15) #16
  br label %43

16:                                               ; preds = %5
  %17 = load ptr, ptr %2, align 8
  %18 = icmp eq ptr %17, null
  %19 = getelementptr i8, ptr %17, i32 -128
  %20 = icmp eq ptr %19, null
  %21 = or i1 %18, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %34, %16
  %23 = phi ptr [ %40, %34 ], [ %19, %16 ]
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.anon.65, ptr %24, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %32 = load i16, ptr %24, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %43

34:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %35 = load i16, ptr %24, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %37 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 15
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %38, i32 -128
  %41 = icmp eq ptr %40, null
  %42 = or i1 %39, %41
  br i1 %42, label %43, label %22

43:                                               ; preds = %34, %28, %16, %13, %10
  %44 = phi ptr [ %23, %28 ], [ %14, %13 ], [ null, %10 ], [ null, %16 ], [ null, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %45 = load i16, ptr %6, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %47

47:                                               ; preds = %43, %1
  %48 = phi ptr [ null, %1 ], [ %44, %43 ]
  ret ptr %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_find_alias_rcu(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %30, !prof !9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11, !prof !19

11:                                               ; preds = %7
  %12 = load i16, ptr %0, align 8
  %13 = and i16 %12, -4096
  %14 = icmp eq i16 %13, 16384
  %15 = getelementptr i8, ptr %9, i32 -128
  br i1 %14, label %30, label %16

16:                                               ; preds = %11
  %17 = icmp eq ptr %15, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %23, %16
  %19 = phi ptr [ %27, %23 ], [ %15, %16 ]
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 15
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %25, i32 -128
  %28 = icmp eq ptr %27, null
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %18

30:                                               ; preds = %23, %18, %16, %11, %7, %1
  %31 = phi ptr [ null, %7 ], [ null, %1 ], [ null, %16 ], [ %15, %11 ], [ null, %23 ], [ %19, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %32 = load i16, ptr %2, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_prune_aliases(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = getelementptr i8, ptr %4, i32 -128
  %7 = icmp eq ptr %6, null
  %8 = or i1 %5, %7
  br i1 %8, label %53, label %9

9:                                                ; preds = %51, %1
  %10 = phi ptr [ %52, %51 ], [ %6, %1 ]
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.anon.65, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  %21 = tail call i32 @_raw_spin_trylock(ptr noundef %20) #16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25, !prof !19

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @__lock_parent(ptr noundef nonnull %10) #16
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ %17, %19 ]
  %27 = load i32, ptr %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29, !prof !9

29:                                               ; preds = %25
  %30 = icmp eq ptr %26, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %42

35:                                               ; preds = %25, %15
  %36 = phi ptr [ %26, %25 ], [ null, %15 ]
  tail call fastcc void @__dentry_kill(ptr noundef nonnull %10)
  tail call void @dput(ptr noundef %36)
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %37 = load ptr, ptr %3, align 8
  %38 = icmp eq ptr %37, null
  %39 = getelementptr i8, ptr %37, i32 -128
  %40 = icmp eq ptr %39, null
  %41 = or i1 %38, %40
  br i1 %41, label %53, label %51

42:                                               ; preds = %31, %29, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %43 = load i16, ptr %11, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %45 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 15
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  %48 = getelementptr i8, ptr %46, i32 -128
  %49 = icmp eq ptr %48, null
  %50 = or i1 %47, %49
  br i1 %50, label %53, label %51

51:                                               ; preds = %42, %35
  %52 = phi ptr [ %48, %42 ], [ %39, %35 ]
  br label %9

53:                                               ; preds = %42, %35, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %54 = load i16, ptr %2, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @lock_parent(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  %7 = tail call i32 @_raw_spin_trylock(ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11, !prof !19

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @__lock_parent(ptr noundef %0)
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = phi ptr [ %10, %9 ], [ null, %1 ], [ %3, %5 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dentry_kill(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %0
  %5 = select i1 %4, ptr null, ptr %3
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @lockref_mark_dead(ptr noundef %6) #16
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry_operations, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0) #16
  %15 = load i32, ptr %0, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i32 [ %15, %10 ], [ %7, %1 ]
  %18 = and i32 %17, 525312
  %19 = icmp eq i32 %18, 524288
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call fastcc void @d_lru_del(ptr noundef %0)
  br label %21

21:                                               ; preds = %20, %16
  tail call void @__d_drop(ptr noundef %0)
  %22 = load i32, ptr %0, align 8
  %23 = or i32 %22, 32768
  store i32 %23, ptr %0, align 8
  %24 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 13
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %43, label %27, !prof !19

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 13, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %29, ptr %30, align 4
  store volatile ptr %25, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 14
  %32 = load ptr, ptr %24, align 8
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %43, label %34

34:                                               ; preds = %40, %27
  %35 = phi ptr [ %41, %40 ], [ %32, %27 ]
  %36 = getelementptr i8, ptr %35, i32 -112
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 536870912
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !9

40:                                               ; preds = %34
  %41 = load ptr, ptr %35, align 8
  store ptr %41, ptr %24, align 8
  %42 = icmp eq ptr %41, %31
  br i1 %42, label %43, label %34

43:                                               ; preds = %40, %34, %27, %21
  %44 = icmp eq ptr %5, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %49

49:                                               ; preds = %45, %43
  %50 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call fastcc void @dentry_unlink_inode(ptr noundef %0)
  br label %57

54:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %55 = load i16, ptr %6, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %57

57:                                               ; preds = %54, %53
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %59 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %60) #12, !srcloc !36
  %62 = add i32 %61, ptrtoint (ptr @nr_dentry to i32)
  %63 = inttoptr i32 %62 to ptr
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, -1
  store i32 %65, ptr %63, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #16, !srcloc !37
  %66 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.dentry_operations, ptr %67, i32 0, i32 6
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void %71(ptr noundef %0) #16
  br label %74

74:                                               ; preds = %73, %69, %57
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %75 = load i32, ptr %0, align 8
  %76 = and i32 %75, 1024
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = or i32 %75, 8388608
  store i32 %79, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %80 = load i16, ptr %6, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %85

82:                                               ; preds = %74
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %83 = load i16, ptr %6, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call fastcc void @dentry_free(ptr noundef %0)
  br label %85

85:                                               ; preds = %82, %78
  %86 = tail call i32 @__cond_resched() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shrink_dentry_list(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %72, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  br label %6

6:                                                ; preds = %69, %4
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr i8, ptr %7, i32 -104
  %9 = getelementptr i8, ptr %7, i32 -24
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %10 = tail call fastcc zeroext i1 @shrink_lock_dentry(ptr noundef %8)
  tail call void asm sideeffect "", "~{memory}"() #16
  %11 = load i32, ptr %8, align 8
  %12 = and i32 %11, 525312
  %13 = icmp ne i32 %12, 525312
  %14 = load i1, ptr @d_shrink_del.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %10, label %47, label %17

17:                                               ; preds = %6
  br i1 %16, label %18, label %19, !prof !19

18:                                               ; preds = %17
  store i1 true, ptr @d_shrink_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 446, i32 noundef 9, ptr noundef null) #16
  br label %19

19:                                               ; preds = %18, %17
  %20 = getelementptr i8, ptr %7, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %20, align 4
  %24 = load i32, ptr %8, align 8
  %25 = and i32 %24, -525313
  store i32 %25, ptr %8, align 8
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #12, !srcloc !36
  %30 = add i32 %29, ptrtoint (ptr @nr_dentry_unused to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %26) #16, !srcloc !37
  %34 = getelementptr i8, ptr %7, i32 -20
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %19
  %38 = load i32, ptr %8, align 8
  %39 = and i32 %38, 8388608
  %40 = icmp eq i32 %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %41 = load i16, ptr %9, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br i1 %40, label %69, label %43

43:                                               ; preds = %37
  tail call fastcc void @dentry_free(ptr noundef %8)
  br label %69

44:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %45 = load i16, ptr %9, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %69

47:                                               ; preds = %6
  br i1 %16, label %48, label %49, !prof !19

48:                                               ; preds = %47
  store i1 true, ptr @d_shrink_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 446, i32 noundef 9, ptr noundef null) #16
  br label %49

49:                                               ; preds = %48, %47
  %50 = getelementptr i8, ptr %7, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %50, align 4
  %54 = load i32, ptr %8, align 8
  %55 = and i32 %54, -525313
  store i32 %55, ptr %8, align 8
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %57 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %58 = inttoptr i32 %57 to ptr
  %59 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %58) #12, !srcloc !36
  %60 = add i32 %59, ptrtoint (ptr @nr_dentry_unused to i32)
  %61 = inttoptr i32 %60 to ptr
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, -1
  store i32 %63, ptr %61, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %56) #16, !srcloc !37
  %64 = getelementptr i8, ptr %7, i32 -88
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, %8
  br i1 %66, label %68, label %67

67:                                               ; preds = %49
  tail call fastcc void @__dput_to_list(ptr noundef %65, ptr noundef %0)
  br label %68

68:                                               ; preds = %67, %49
  tail call fastcc void @__dentry_kill(ptr noundef %8)
  br label %69

69:                                               ; preds = %68, %44, %43, %37
  %70 = load volatile ptr, ptr %0, align 4
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %6

72:                                               ; preds = %69, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @shrink_lock_dentry(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.anon.65, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %49

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 17
  %12 = tail call i32 @_raw_spin_trylock(ptr noundef %11) #16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !19

14:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %15 = load i16, ptr %2, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @_raw_spin_lock(ptr noundef %11) #16
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %17 = load i32, ptr %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %45, !prof !9

19:                                               ; preds = %14
  %20 = load ptr, ptr %7, align 8
  %21 = icmp eq ptr %8, %20
  br i1 %21, label %22, label %45, !prof !9

22:                                               ; preds = %19, %10, %6
  %23 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 7
  %28 = tail call i32 @_raw_spin_trylock(ptr noundef %27) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49, !prof !19

30:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %31 = load i16, ptr %2, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @_raw_spin_lock(ptr noundef %27) #16
  %33 = load ptr, ptr %23, align 8
  %34 = icmp eq ptr %24, %33
  br i1 %34, label %38, label %35, !prof !9

35:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %36 = load i16, ptr %27, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  br label %44

38:                                               ; preds = %30
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41, !prof !9

41:                                               ; preds = %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %42 = load i16, ptr %27, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %44

44:                                               ; preds = %41, %35
  br i1 %9, label %49, label %45

45:                                               ; preds = %44, %19, %14
  %46 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %49

49:                                               ; preds = %45, %44, %38, %26, %22, %1
  %50 = phi i1 [ false, %1 ], [ true, %26 ], [ true, %22 ], [ true, %38 ], [ false, %45 ], [ false, %44 ]
  ret i1 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dentry_free(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 365, i32 noundef 9, ptr noundef null) #16
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 6
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %18, label %12, !prof !9

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %9, i32 -8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #16, !srcloc !10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #16, !srcloc !17
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %12
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @__d_free_external) #16
  br label %25

18:                                               ; preds = %12, %7
  %19 = load i32, ptr %0, align 8
  %20 = and i32 %19, 1073741824
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr @dentry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %23, ptr noundef %0) #16
  br label %25

24:                                               ; preds = %18
  tail call void @call_rcu(ptr noundef %2, ptr noundef nonnull @__d_free) #16
  br label %25

25:                                               ; preds = %24, %22, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @prune_dcache_sb(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 48
  %6 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %11 = call i32 @list_lru_walk_one(ptr noundef %5, i32 noundef %7, ptr noundef %9, ptr noundef nonnull @dentry_lru_isolate, ptr noundef nonnull %3, ptr noundef %10) #16
  call void @shrink_dentry_list(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dentry_lru_isolate(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -104
  %6 = getelementptr i8, ptr %0, i32 -24
  %7 = tail call i32 @_raw_spin_trylock(ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -20
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %5, align 8
  br i1 %12, label %48, label %14

14:                                               ; preds = %9
  %15 = and i32 %13, 525312
  %16 = icmp ne i32 %15, 524288
  %17 = load i1, ptr @d_lru_isolate.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %22, !prof !19

20:                                               ; preds = %14
  store i1 true, ptr @d_lru_isolate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 468, i32 noundef 9, ptr noundef null) #16
  %21 = load i32, ptr %5, align 8
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %13, %14 ]
  %24 = and i32 %23, -524289
  store i32 %24, ptr %5, align 8
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #12, !srcloc !36
  %29 = add i32 %28, ptrtoint (ptr @nr_dentry_unused to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #16, !srcloc !37
  %33 = load i32, ptr %5, align 8
  %34 = and i32 %33, 7340032
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %22
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #12, !srcloc !36
  %41 = add i32 %40, ptrtoint (ptr @nr_dentry_negative to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, -1
  store i32 %44, ptr %42, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #16, !srcloc !37
  br label %45

45:                                               ; preds = %36, %22
  tail call void @list_lru_isolate(ptr noundef %1, ptr noundef %0) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %46 = load i16, ptr %6, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %80

48:                                               ; preds = %9
  %49 = and i32 %13, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = and i32 %13, -65
  store i32 %52, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %53 = load i16, ptr %6, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %80

55:                                               ; preds = %48
  %56 = and i32 %13, 525312
  %57 = icmp ne i32 %56, 524288
  %58 = load i1, ptr @d_lru_shrink_move.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %63, !prof !19

61:                                               ; preds = %55
  store i1 true, ptr @d_lru_shrink_move.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 479, i32 noundef 9, ptr noundef null) #16
  %62 = load i32, ptr %5, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i32 [ %62, %61 ], [ %13, %55 ]
  %65 = or i32 %64, 1024
  store i32 %65, ptr %5, align 8
  %66 = and i32 %64, 7340032
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %70 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %71) #12, !srcloc !36
  %73 = add i32 %72, ptrtoint (ptr @nr_dentry_negative to i32)
  %74 = inttoptr i32 %73 to ptr
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %75, -1
  store i32 %76, ptr %74, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #16, !srcloc !37
  br label %77

77:                                               ; preds = %68, %63
  tail call void @list_lru_isolate_move(ptr noundef %1, ptr noundef %0, ptr noundef %3) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %78 = load i16, ptr %6, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %80

80:                                               ; preds = %77, %51, %45, %4
  %81 = phi i32 [ 0, %45 ], [ 2, %51 ], [ 0, %77 ], [ 3, %4 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shrink_dcache_sb(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_head, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 48
  br label %6

6:                                                ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr %3, ptr %3, align 8
  store ptr %3, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store i32 1024, ptr %2, align 4
  %7 = call i32 @list_lru_walk_node(ptr noundef %5, i32 noundef 0, ptr noundef nonnull @dentry_lru_isolate_shrink, ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  call void @shrink_dentry_list(ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %8 = call i32 @list_lru_count_node(ptr noundef %5, i32 noundef 0) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %6

10:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dentry_lru_isolate_shrink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #1 {
  %5 = getelementptr i8, ptr %0, i32 -24
  %6 = tail call i32 @_raw_spin_trylock(ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %0, i32 -104
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 525312
  %12 = icmp ne i32 %11, 524288
  %13 = load i1, ptr @d_lru_shrink_move.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !19

16:                                               ; preds = %8
  store i1 true, ptr @d_lru_shrink_move.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 479, i32 noundef 9, ptr noundef null) #16
  %17 = load i32, ptr %9, align 8
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ %17, %16 ], [ %10, %8 ]
  %20 = or i32 %19, 1024
  store i32 %20, ptr %9, align 8
  %21 = and i32 %19, 7340032
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #12, !srcloc !36
  %28 = add i32 %27, ptrtoint (ptr @nr_dentry_negative to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #16, !srcloc !37
  br label %32

32:                                               ; preds = %23, %18
  tail call void @list_lru_isolate_move(ptr noundef %1, ptr noundef %0, ptr noundef %3) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %33 = load i16, ptr %5, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %35

35:                                               ; preds = %32, %4
  %36 = phi i32 [ 0, %32 ], [ 3, %4 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @path_has_submounts(ptr nocapture noundef readonly %0) #1 {
  %2 = alloca %struct.check_mount, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.check_mount, ptr %2, i32 0, i32 1
  store i32 0, ptr %4, align 4
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1)) #16
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call fastcc void @d_walk(ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull @path_check_mount)
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %7 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr getelementptr inbounds (%struct.seqlock_t, ptr @mount_lock, i32 0, i32 1), align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %9 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @d_walk(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = load volatile i32, ptr @rename_lock, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !42
  %8 = load volatile i32, ptr @rename_lock, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %4, %3 ], [ %8, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  br label %15

14:                                               ; preds = %115
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #16
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %12, %11 ], [ 1, %14 ]
  tail call void @_raw_spin_lock(ptr noundef %13) #16
  %17 = tail call i32 %2(ptr noundef %1, ptr noundef %0) #16
  switch i32 %17, label %19 [
    i32 2, label %18
    i32 1, label %103
    i32 3, label %103
  ]

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18, %15
  %20 = phi i1 [ true, %15 ], [ false, %18 ]
  %21 = and i32 %16, 1
  %22 = icmp eq i32 %21, 0
  br label %27

23:                                               ; preds = %59
  %24 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i1 [ %20, %19 ], [ %60, %23 ]
  %29 = phi ptr [ %0, %19 ], [ %44, %23 ]
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  br label %33

32:                                               ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i1 [ %28, %27 ], [ %71, %32 ]
  %35 = phi ptr [ %31, %27 ], [ %91, %32 ]
  %36 = phi ptr [ %29, %27 ], [ %78, %32 ]
  %37 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 14
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %70, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 14
  br label %41

41:                                               ; preds = %67, %39
  %42 = phi ptr [ %45, %67 ], [ %35, %39 ]
  %43 = phi i1 [ %68, %67 ], [ %34, %39 ]
  %44 = getelementptr i8, ptr %42, i32 -112
  %45 = load ptr, ptr %42, align 4
  %46 = load i32, ptr %44, align 8
  %47 = and i32 %46, 536870912
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %67, !prof !9

49:                                               ; preds = %41
  %50 = getelementptr i8, ptr %42, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %50) #16
  %51 = tail call i32 %2(ptr noundef %1, ptr noundef %44) #16
  switch i32 %51, label %59 [
    i32 3, label %56
    i32 1, label %52
    i32 2, label %55
  ]

52:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %53 = load i16, ptr %50, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %105

55:                                               ; preds = %49
  br label %59

56:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %57 = load i16, ptr %50, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %67

59:                                               ; preds = %55, %49
  %60 = phi i1 [ %43, %49 ], [ false, %55 ]
  %61 = getelementptr i8, ptr %42, i32 8
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %64, label %23

64:                                               ; preds = %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %65 = load i16, ptr %50, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %67

67:                                               ; preds = %64, %56, %41
  %68 = phi i1 [ %43, %41 ], [ %43, %56 ], [ %60, %64 ]
  %69 = icmp eq ptr %45, %40
  br i1 %69, label %70, label %41

70:                                               ; preds = %67, %33
  %71 = phi i1 [ %34, %33 ], [ %68, %67 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %72 = icmp eq ptr %36, %0
  br i1 %72, label %98, label %75

73:                                               ; preds = %88
  %74 = icmp eq ptr %78, %0
  br i1 %74, label %98, label %75

75:                                               ; preds = %73, %70
  %76 = phi ptr [ %78, %73 ], [ %36, %70 ]
  %77 = getelementptr inbounds %struct.dentry, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.dentry, ptr %76, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %80 = load i16, ptr %79, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %82 = getelementptr inbounds %struct.dentry, ptr %78, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %82) #16
  br i1 %22, label %83, label %86

83:                                               ; preds = %75
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %84 = load volatile i32, ptr @rename_lock, align 64
  %85 = icmp eq i32 %84, %16
  br i1 %85, label %86, label %115

86:                                               ; preds = %83, %75
  %87 = getelementptr inbounds %struct.dentry, ptr %78, i32 0, i32 14
  br label %88

88:                                               ; preds = %93, %86
  %89 = phi ptr [ %94, %93 ], [ %76, %86 ]
  %90 = getelementptr inbounds %struct.dentry, ptr %89, i32 0, i32 13
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, %87
  br i1 %92, label %73, label %93

93:                                               ; preds = %88
  %94 = getelementptr i8, ptr %91, i32 -112
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 32768
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %32, label %88, !prof !9

98:                                               ; preds = %73, %70
  br i1 %22, label %99, label %102

99:                                               ; preds = %98
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %100 = load volatile i32, ptr @rename_lock, align 64
  %101 = icmp eq i32 %100, %16
  br i1 %101, label %102, label %115

102:                                              ; preds = %99, %98
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %105

103:                                              ; preds = %15, %15
  %104 = and i32 %16, 1
  br label %105

105:                                              ; preds = %103, %102, %52
  %106 = phi i32 [ %104, %103 ], [ %21, %52 ], [ %21, %102 ]
  %107 = phi ptr [ %0, %103 ], [ %36, %52 ], [ %0, %102 ]
  %108 = getelementptr inbounds %struct.dentry, ptr %107, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %109 = load i16, ptr %108, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr %108, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %111 = icmp eq i32 %106, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %105
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %113 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %120

115:                                              ; preds = %99, %83
  %116 = phi ptr [ %0, %99 ], [ %78, %83 ]
  %117 = getelementptr inbounds %struct.dentry, ptr %116, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %118 = load i16, ptr %117, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %117, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br i1 %71, label %14, label %120

120:                                              ; preds = %115, %112, %105
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @path_check_mount(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6, !prof !9

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = tail call ptr @__lookup_mnt(ptr noundef %7, ptr noundef %1) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mount, ptr %8, i32 0, i32 3, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 33554432
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.check_mount, ptr %0, i32 0, i32 1
  store i32 1, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %10, %6, %2
  %18 = phi i32 [ 1, %15 ], [ 0, %2 ], [ 0, %10 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @d_set_mounted(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #16
  %2 = load i32, ptr @rename_lock, align 64
  %3 = add i32 %2, 1
  store i32 %3, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %5, %7
  br i1 %8, label %23, label %9

9:                                                ; preds = %18, %1
  %10 = phi ptr [ %20, %18 ], [ %6, %1 ]
  %11 = phi ptr [ %19, %18 ], [ %5, %1 ]
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16
  %16 = load i16, ptr %12, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16
  tail call void asm sideeffect "", "~{memory}"() #16
  br i1 %15, label %41, label %18, !prof !19

18:                                               ; preds = %9
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %9

23:                                               ; preds = %18, %1
  %24 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %24) #16
  %25 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load ptr, ptr %4, align 8
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28, %23
  %32 = load i32, ptr %0, align 8
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = or i32 %32, 65536
  store i32 %36, ptr %0, align 8
  br label %37

37:                                               ; preds = %35, %31, %28
  %38 = phi i32 [ -2, %28 ], [ -16, %31 ], [ 0, %35 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %39 = load i16, ptr %24, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %41

41:                                               ; preds = %37, %9
  %42 = phi i32 [ %38, %37 ], [ -2, %9 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %43 = load i32, ptr @rename_lock, align 64
  %44 = add i32 %43, 1
  store i32 %44, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %45 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shrink_dcache_parent(ptr noundef %0) #1 {
  %2 = alloca %struct.select_data, align 4
  %3 = getelementptr inbounds %struct.select_data, ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.select_data, ptr %2, i32 0, i32 2
  %5 = getelementptr inbounds %struct.select_data, ptr %2, i32 0, i32 2, i32 1
  br label %6

6:                                                ; preds = %38, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  store ptr %0, ptr %2, align 4
  store i32 0, ptr %3, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %5, align 4
  call fastcc void @d_walk(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @select_collect)
  %7 = load volatile ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, %4
  br i1 %8, label %9, label %37

9:                                                ; preds = %6
  %10 = call i32 @__cond_resched() #16
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  store ptr null, ptr %3, align 4
  call fastcc void @d_walk(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @select_collect2)
  %14 = load ptr, ptr %3, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %17) #16
  %18 = load ptr, ptr %3, align 4
  %19 = call fastcc zeroext i1 @shrink_lock_dentry(ptr noundef %18)
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 7
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %34

25:                                               ; preds = %16
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, %26
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  call fastcc void @__dput_to_list(ptr noundef %28, ptr noundef %4)
  %31 = load ptr, ptr %3, align 4
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %26, %25 ]
  call fastcc void @__dentry_kill(ptr noundef %33)
  br label %34

34:                                               ; preds = %32, %20, %13
  %35 = load volatile ptr, ptr %4, align 4
  %36 = icmp eq ptr %35, %4
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %6
  call void @shrink_dentry_list(ptr noundef %4)
  br label %38

38:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  br label %6

39:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @select_collect(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %56, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = and i32 %6, 524288
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @d_lru_del(ptr noundef %1)
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %15 = getelementptr inbounds %struct.anon.65, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.select_data, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 525312
  %22 = icmp ne i32 %21, 0
  %23 = load i1, ptr @d_shrink_add.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !19

26:                                               ; preds = %18
  store i1 true, ptr @d_shrink_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 454, i32 noundef 9, ptr noundef null) #16
  br label %27

27:                                               ; preds = %26, %18
  %28 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 12
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store ptr %29, ptr %28, align 4
  %31 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 12, i32 0, i32 1
  store ptr %19, ptr %31, align 4
  store volatile ptr %28, ptr %19, align 4
  %32 = load i32, ptr %1, align 8
  %33 = or i32 %32, 525312
  store i32 %33, ptr %1, align 8
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #12, !srcloc !36
  %38 = add i32 %37, ptrtoint (ptr @nr_dentry_unused to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #16, !srcloc !37
  br label %42

42:                                               ; preds = %27, %5
  %43 = getelementptr inbounds %struct.select_data, ptr %0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %13
  %47 = getelementptr inbounds %struct.select_data, ptr %0, i32 0, i32 2
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #16
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 2, i32 1
  br label %56

56:                                               ; preds = %50, %46, %2
  %57 = phi i32 [ 0, %2 ], [ 0, %46 ], [ %55, %50 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @select_collect2(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %59, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %11 = getelementptr inbounds %struct.anon.65, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %15 = getelementptr inbounds %struct.select_data, ptr %0, i32 0, i32 1
  store ptr %1, ptr %15, align 4
  br label %59

16:                                               ; preds = %5
  %17 = and i32 %6, 524288
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call fastcc void @d_lru_del(ptr noundef %1)
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %22 = getelementptr inbounds %struct.anon.65, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.select_data, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 525312
  %29 = icmp ne i32 %28, 0
  %30 = load i1, ptr @d_shrink_add.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !19

33:                                               ; preds = %25
  store i1 true, ptr @d_shrink_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 454, i32 noundef 9, ptr noundef null) #16
  br label %34

34:                                               ; preds = %33, %25
  %35 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 12
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store ptr %36, ptr %35, align 4
  %38 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 12, i32 0, i32 1
  store ptr %26, ptr %38, align 4
  store volatile ptr %35, ptr %26, align 4
  %39 = load i32, ptr %1, align 8
  %40 = or i32 %39, 525312
  store i32 %40, ptr %1, align 8
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %42 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %43 = inttoptr i32 %42 to ptr
  %44 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #12, !srcloc !36
  %45 = add i32 %44, ptrtoint (ptr @nr_dentry_unused to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %41) #16, !srcloc !37
  br label %49

49:                                               ; preds = %34, %20, %9
  %50 = getelementptr inbounds %struct.select_data, ptr %0, i32 0, i32 2
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @llvm.thread.pointer() #16
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 2, i32 1
  br label %59

59:                                               ; preds = %53, %49, %14, %2
  %60 = phi i32 [ 1, %14 ], [ 0, %2 ], [ 0, %49 ], [ %58, %53 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @shrink_dcache_for_umount(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 14
  %3 = tail call i32 @down_read_trylock(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1695, i32 noundef 9, ptr noundef nonnull @.str.4) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %8 = load ptr, ptr %7, align 64
  store ptr null, ptr %7, align 64
  tail call void @shrink_dcache_parent(ptr noundef %8) #16
  tail call fastcc void @d_walk(ptr noundef %8, ptr noundef %8, ptr noundef nonnull @umount_check) #16
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  tail call void @__d_drop(ptr noundef %8) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @dput(ptr noundef %8) #16
  %12 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 18
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp ult ptr %13, inttoptr (i32 2 to ptr)
  br i1 %14, label %30, label %15

15:                                               ; preds = %24, %6
  %16 = phi ptr [ %28, %24 ], [ %13, %6 ]
  %17 = ptrtoint ptr %16 to i32
  %18 = and i32 %17, -2
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr i8, ptr %19, i32 -8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %19, i32 72
  tail call void @lockref_get(ptr noundef %23) #16
  br label %24

24:                                               ; preds = %22, %15
  tail call void @shrink_dcache_parent(ptr noundef %20) #16
  tail call fastcc void @d_walk(ptr noundef %20, ptr noundef %20, ptr noundef nonnull @umount_check) #16
  %25 = getelementptr i8, ptr %19, i32 72
  tail call void @_raw_spin_lock(ptr noundef %25) #16
  tail call void @__d_drop(ptr noundef %20) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %26 = load i16, ptr %25, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @dput(ptr noundef %20) #16
  %28 = load volatile ptr, ptr %12, align 4
  %29 = icmp ult ptr %28, inttoptr (i32 2 to ptr)
  br i1 %29, label %30, label %15

30:                                               ; preds = %24, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_invalidate(ptr noundef %0) #1 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %3) #16
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %8 = load i16, ptr %3, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %32

10:                                               ; preds = %1
  tail call void @__d_drop(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %11 = load i16, ptr %3, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %10
  tail call void @shrink_dcache_parent(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4
  call fastcc void @d_walk(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @find_submount)
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %20

19:                                               ; preds = %28
  call void @shrink_dcache_parent(ptr noundef %0)
  br label %27

20:                                               ; preds = %28, %16
  %21 = phi ptr [ %30, %28 ], [ %17, %16 ]
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  call void @__detach_mounts(ptr noundef nonnull %21) #16
  %26 = load ptr, ptr %2, align 4
  br label %28

27:                                               ; preds = %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  br label %32

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %26, %25 ], [ %21, %20 ]
  call void @dput(ptr noundef %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store ptr null, ptr %2, align 4
  call fastcc void @d_walk(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @find_submount)
  %30 = load ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %19, label %20

32:                                               ; preds = %27, %10, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @find_submount(ptr nocapture noundef writeonly %0, ptr noundef %1) #7 {
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %8 = getelementptr inbounds %struct.anon.65, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4
  store ptr %1, ptr %0, align 4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 1, %6 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_alloc(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc ptr @__d_alloc(ptr noundef %4, ptr noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.anon.65, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 13
  %14 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %13, ptr %16, align 4
  store ptr %15, ptr %13, align 4
  %17 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 13, i32 1
  store ptr %14, ptr %17, align 4
  store volatile ptr %13, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %18 = load i16, ptr %8, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %20

20:                                               ; preds = %7, %2
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__d_alloc(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr @dentry_cache, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3264) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 6
  %8 = getelementptr %struct.dentry, ptr %4, i32 0, i32 6, i32 35
  store i8 0, ptr %8, align 1
  %9 = icmp eq ptr %1, null
  br i1 %9, label %22, label %10, !prof !19

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 35
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = add i32 %12, 9
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 4197584) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load ptr, ptr @dentry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef nonnull %4) #16
  br label %80

20:                                               ; preds = %14
  store volatile i32 1, ptr %16, align 64
  %21 = getelementptr inbounds %struct.external_name, ptr %16, i32 0, i32 1
  br label %22

22:                                               ; preds = %20, %10, %6
  %23 = phi ptr [ %21, %20 ], [ %7, %6 ], [ %7, %10 ]
  %24 = phi ptr [ %1, %20 ], [ @slash_name, %6 ], [ %1, %10 ]
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %28 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1
  store i32 %26, ptr %28, align 4
  %29 = load i32, ptr %24, align 8
  store i32 %29, ptr %27, align 8
  %30 = getelementptr inbounds %struct.qstr, ptr %24, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %23, ptr align 1 %31, i32 %26, i1 false)
  %32 = load i32, ptr %25, align 4
  %33 = getelementptr i8, ptr %23, i32 %32
  store i8 0, ptr %33, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !46
  %34 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, i32 1
  store volatile ptr %23, ptr %34, align 8
  %35 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  %36 = getelementptr inbounds %struct.anon.65, ptr %35, i32 0, i32 1
  store i32 1, ptr %36, align 4
  store i32 0, ptr %4, align 8
  store i32 0, ptr %35, align 8
  %37 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 1
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  store ptr %4, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  store ptr %0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 8
  store ptr null, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 2
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 2, i32 1
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 12
  store volatile ptr %45, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 12, i32 0, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 14
  store volatile ptr %47, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 14, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 15
  store ptr null, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 15, i32 0, i32 1
  store ptr null, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 13
  store volatile ptr %51, ptr %51, align 8
  %52 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 13, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  %54 = load ptr, ptr %53, align 16
  tail call void @d_set_d_op(ptr noundef nonnull %4, ptr noundef %54)
  %55 = load ptr, ptr %41, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %22
  %58 = getelementptr inbounds %struct.dentry_operations, ptr %55, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = tail call i32 %59(ptr noundef nonnull %4) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %34, align 8
  %66 = icmp eq ptr %65, %7
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = getelementptr i8, ptr %65, i32 -8
  tail call void @kfree(ptr noundef %68) #16
  br label %69

69:                                               ; preds = %67, %64
  %70 = load ptr, ptr @dentry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %70, ptr noundef nonnull %4) #16
  br label %80

71:                                               ; preds = %61, %57, %22
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %73 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %74 = inttoptr i32 %73 to ptr
  %75 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %74) #12, !srcloc !36
  %76 = add i32 %75, ptrtoint (ptr @nr_dentry to i32)
  %77 = inttoptr i32 %76 to ptr
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #16, !srcloc !37
  br label %80

80:                                               ; preds = %71, %69, %18, %2
  %81 = phi ptr [ null, %69 ], [ %4, %71 ], [ null, %2 ], [ null, %18 ]
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_alloc_anon(ptr noundef %0) #1 {
  %2 = tail call fastcc ptr @__d_alloc(ptr noundef %0, ptr noundef null)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_alloc_cursor(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc ptr @__d_alloc(ptr noundef %3, ptr noundef null) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8
  %8 = or i32 %7, 536870912
  store i32 %8, ptr %4, align 8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %11) #16
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  store ptr %0, ptr %13, align 8
  br label %14

14:                                               ; preds = %12, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_alloc_pseudo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call fastcc ptr @__d_alloc(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !19

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8
  %7 = or i32 %6, 1073741824
  store i32 %7, ptr %3, align 8
  br label %8

8:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_alloc_name(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.qstr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds i8, ptr %3, i32 8
  store i64 0, ptr %4, align 8, !annotation !47
  %5 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  store ptr %1, ptr %5, align 8
  %6 = tail call i64 @hashlen_string(ptr noundef %0, ptr noundef %1) #18
  store i64 %6, ptr %3, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = call fastcc ptr @__d_alloc(ptr noundef %8, ptr noundef nonnull %3) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.anon.65, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 3
  store ptr %0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 13
  %18 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %17, ptr %20, align 4
  store ptr %19, ptr %17, align 4
  %21 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 13, i32 1
  store ptr %18, ptr %21, align 4
  store volatile ptr %17, ptr %18, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %22 = load i16, ptr %12, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %24

24:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i64 @hashlen_string(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_set_d_op(ptr nocapture noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  %6 = load i1, ptr @d_set_d_op.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10, !prof !19

9:                                                ; preds = %2
  store i1 true, ptr @d_set_d_op.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1916, i32 noundef 9, ptr noundef null) #16
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 67110927
  %13 = icmp ne i32 %12, 0
  %14 = load i1, ptr @d_set_d_op.__already_done.5, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !19

17:                                               ; preds = %10
  store i1 true, ptr @d_set_d_op.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1922, i32 noundef 9, ptr noundef null) #16
  br label %18

18:                                               ; preds = %17, %10
  store ptr %1, ptr %3, align 8
  %19 = icmp eq ptr %1, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.dentry_operations, ptr %1, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %0, align 8
  %26 = or i32 %25, 1
  store i32 %26, ptr %0, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %struct.dentry_operations, ptr %1, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %0, align 8
  %33 = or i32 %32, 2
  store i32 %33, ptr %0, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr %1, align 64
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, ptr %0, align 8
  %39 = or i32 %38, 4
  store i32 %39, ptr %0, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.dentry_operations, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %0, align 8
  %46 = or i32 %45, 2048
  store i32 %46, ptr %0, align 8
  br label %47

47:                                               ; preds = %44, %40
  %48 = getelementptr inbounds %struct.dentry_operations, ptr %1, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %0, align 8
  %53 = or i32 %52, 8
  store i32 %53, ptr %0, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = getelementptr inbounds %struct.dentry_operations, ptr %1, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, ptr %0, align 8
  %60 = or i32 %59, 16
  store i32 %60, ptr %0, align 8
  br label %61

61:                                               ; preds = %58, %54
  %62 = getelementptr inbounds %struct.dentry_operations, ptr %1, i32 0, i32 12
  %63 = load ptr, ptr %62, align 16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, ptr %0, align 8
  %67 = or i32 %66, 67108864
  store i32 %67, ptr %0, align 8
  br label %68

68:                                               ; preds = %65, %61, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_set_fallthru(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = load i32, ptr %0, align 8
  %4 = or i32 %3, 16777216
  store i32 %4, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_instantiate(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2031, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %10) #16
  tail call fastcc void @__d_instantiate(ptr noundef %0, ptr noundef nonnull %1)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %13

13:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__d_instantiate(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %1, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %1, align 8
  %7 = and i16 %6, -4096
  %8 = icmp eq i16 %7, 16384
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  br i1 %8, label %11, label %21

11:                                               ; preds = %5
  %12 = and i16 %10, 2
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %35, !prof !19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !19

19:                                               ; preds = %14
  %20 = or i16 %10, 2
  store i16 %20, ptr %9, align 2
  br label %35

21:                                               ; preds = %5
  %22 = and i16 %10, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %32, !prof !19

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.inode_operations, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35, !prof !9

30:                                               ; preds = %24
  %31 = or i16 %10, 4
  store i16 %31, ptr %9, align 2
  br label %32

32:                                               ; preds = %30, %21
  %33 = icmp eq i16 %7, -32768
  br i1 %33, label %35, label %34, !prof !9

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %32, %24, %19, %14, %11
  %36 = phi i32 [ 2097152, %19 ], [ 2097152, %11 ], [ 5242880, %34 ], [ 4194304, %32 ], [ 3145728, %14 ], [ 6291456, %24 ]
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41, !prof !9

41:                                               ; preds = %35
  %42 = or i32 %36, 131072
  br label %43

43:                                               ; preds = %41, %35, %2
  %44 = phi i32 [ 0, %2 ], [ %42, %41 ], [ %36, %35 ]
  %45 = load i32, ptr %0, align 8
  %46 = and i32 %45, 268435456
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1998, i32 noundef 9, ptr noundef null) #16
  br label %49

49:                                               ; preds = %48, %43
  %50 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %50) #16
  %51 = load i32, ptr %0, align 8
  %52 = and i32 %51, 524288
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %56 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %57 = inttoptr i32 %56 to ptr
  %58 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %57) #12, !srcloc !36
  %59 = add i32 %58, ptrtoint (ptr @nr_dentry_negative to i32)
  %60 = inttoptr i32 %59 to ptr
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %55) #16, !srcloc !37
  br label %63

63:                                               ; preds = %54, %49
  %64 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15
  %65 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 32
  %66 = load ptr, ptr %65, align 4
  store volatile ptr %66, ptr %64, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.hlist_node, ptr %66, i32 0, i32 1
  store volatile ptr %64, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %63
  store volatile ptr %64, ptr %65, align 4
  %71 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %65, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  %75 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  store ptr %1, ptr %75, align 8
  %76 = load volatile i32, ptr %0, align 8
  %77 = and i32 %76, -24117249
  %78 = or i32 %77, %44
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  store volatile i32 %78, ptr %0, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %79 = load i32, ptr %72, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %72, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %81 = load volatile i32, ptr %50, align 4
  store volatile i32 %81, ptr %3, align 4
  %82 = lshr i32 %81, 16
  %83 = and i32 %81, 65535
  %84 = icmp eq i32 %83, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %84, label %85, label %86, !prof !19

85:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #16, !srcloc !50
  unreachable

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.dentry, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.inode, ptr %90, i32 0, i32 45
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 134217728
  %94 = icmp eq i32 %93, 0
  %95 = and i32 %92, 462911
  %96 = icmp eq i32 %95, 0
  %97 = or i1 %94, %96
  %98 = load i32, ptr %0, align 8
  %99 = and i32 %98, -16385
  %100 = select i1 %97, i32 0, i32 16384
  %101 = or i32 %100, %99
  store i32 %101, ptr %0, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %102 = load i16, ptr %50, align 4
  %103 = add i16 %102, 1
  store i16 %103, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_instantiate_new(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2049, 0\0A.popsection", ""() #16, !srcloc !51
  unreachable

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %10, !prof !19

9:                                                ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2050, 0\0A.popsection", ""() #16, !srcloc !52
  unreachable

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %11) #16
  tail call fastcc void @__d_instantiate(ptr noundef %0, ptr noundef nonnull %1)
  %12 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 23
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !19

16:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2055, i32 noundef 9, ptr noundef null) #16
  %17 = load i32, ptr %12, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i32 [ %17, %16 ], [ %13, %10 ]
  %20 = and i32 %19, -32777
  store i32 %20, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !53
  tail call void @wake_up_bit(ptr noundef %12, i32 noundef 3) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %21 = load i16, ptr %11, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_make_root(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call fastcc ptr @__d_alloc(ptr noundef %5, ptr noundef null) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 15, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2031, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %14) #16
  tail call fastcc void @__d_instantiate(ptr noundef nonnull %6, ptr noundef nonnull %0) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %18

17:                                               ; preds = %3
  tail call void @iput(ptr noundef nonnull %0) #16
  br label %18

18:                                               ; preds = %17, %13, %1
  %19 = phi ptr [ %6, %13 ], [ null, %17 ], [ null, %1 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_instantiate_anon(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc ptr @__d_instantiate_anon(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__d_instantiate_anon(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 32
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr i8, ptr %6, i32 -128
  %10 = getelementptr i8, ptr %6, i32 -48
  tail call void @lockref_get(ptr noundef %10) #16
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %13 = load i16, ptr %4, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @dput(ptr noundef %0)
  tail call void @iput(ptr noundef %1) #16
  br label %115

15:                                               ; preds = %8, %3
  %16 = icmp eq ptr %1, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %15
  %18 = load i16, ptr %1, align 8
  %19 = and i16 %18, -4096
  %20 = icmp eq i16 %19, 16384
  %21 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  br i1 %20, label %23, label %33

23:                                               ; preds = %17
  %24 = and i16 %22, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %47, !prof !19

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %28 = load ptr, ptr %27, align 8
  %29 = load ptr, ptr %28, align 64
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31, !prof !19

31:                                               ; preds = %26
  %32 = or i16 %22, 2
  store i16 %32, ptr %21, align 2
  br label %47

33:                                               ; preds = %17
  %34 = and i16 %22, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %44, !prof !19

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.inode_operations, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47, !prof !9

42:                                               ; preds = %36
  %43 = or i16 %22, 4
  store i16 %43, ptr %21, align 2
  br label %44

44:                                               ; preds = %42, %33
  %45 = icmp eq i16 %19, -32768
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %44, %36, %31, %26, %23
  %48 = phi i32 [ 2097152, %31 ], [ 2097152, %23 ], [ 5242880, %46 ], [ 4194304, %44 ], [ 3145728, %26 ], [ 6291456, %36 ]
  %49 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 2048
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !9

53:                                               ; preds = %47
  %54 = or i32 %48, 131072
  br label %55

55:                                               ; preds = %53, %47, %15
  %56 = phi i32 [ 0, %15 ], [ %54, %53 ], [ %48, %47 ]
  %57 = or i32 %56, 32
  %58 = select i1 %2, i32 %57, i32 %56
  %59 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %59) #16
  %60 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  store ptr %1, ptr %60, align 8
  %61 = load volatile i32, ptr %0, align 8
  %62 = and i32 %61, -24117249
  %63 = or i32 %62, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  store volatile i32 %63, ptr %0, align 8
  %64 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15
  %65 = load ptr, ptr %5, align 4
  store volatile ptr %65, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  store volatile ptr %64, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %55
  store volatile ptr %64, ptr %5, align 4
  %70 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %5, ptr %70, align 4
  br i1 %2, label %110, label %71

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.super_block, ptr %73, i32 0, i32 18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %75

75:                                               ; preds = %89, %71
  %76 = load volatile i32, ptr %74, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84, !prof !21

79:                                               ; preds = %75
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %74) #16, !srcloc !10
  %80 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %74, ptr %74, i32 1, ptr elementtype(i32) %74) #16, !srcloc !22
  %81 = extractvalue { i32, i32, i32 } %80, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84, !prof !9

84:                                               ; preds = %79, %75
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %85

85:                                               ; preds = %85, %84
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %86 = load volatile i32, ptr %74, align 4
  %87 = and i32 %86, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %85

89:                                               ; preds = %85
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %75

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2
  %92 = load ptr, ptr %72, align 4
  %93 = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 18
  %94 = load ptr, ptr %93, align 4
  %95 = ptrtoint ptr %94 to i32
  %96 = and i32 %95, -2
  %97 = inttoptr i32 %96 to ptr
  store ptr %97, ptr %91, align 4
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.hlist_bl_node, ptr %97, i32 0, i32 1
  store ptr %91, ptr %100, align 4
  br label %101

101:                                              ; preds = %99, %90
  %102 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  store ptr %93, ptr %102, align 4
  %103 = ptrtoint ptr %91 to i32
  %104 = or i32 %103, 1
  %105 = inttoptr i32 %104 to ptr
  store ptr %105, ptr %93, align 4
  %106 = load ptr, ptr %72, align 4
  %107 = getelementptr inbounds %struct.super_block, ptr %106, i32 0, i32 18
  %108 = load volatile i32, ptr %107, align 4
  %109 = and i32 %108, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %109, ptr %107, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %110

110:                                              ; preds = %101, %69
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %111 = load i16, ptr %59, align 4
  %112 = add i16 %111, 1
  store i16 %112, ptr %59, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %113 = load i16, ptr %4, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %115

115:                                              ; preds = %110, %12
  %116 = phi ptr [ %9, %12 ], [ %0, %110 ]
  ret ptr %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_obtain_alias(ptr noundef %0) #1 {
  %2 = tail call fastcc ptr @__d_obtain_alias(ptr noundef %0, i1 noundef zeroext true)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__d_obtain_alias(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %9, i32 -128
  %13 = getelementptr i8, ptr %9, i32 -48
  tail call void @lockref_get(ptr noundef %13) #16
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %12, %11 ], [ null, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %16 = load i16, ptr %7, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call fastcc ptr @__d_alloc(ptr noundef %21, ptr noundef null) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @__d_instantiate_anon(ptr noundef nonnull %22, ptr noundef nonnull %0, i1 noundef zeroext %1)
  br label %28

26:                                               ; preds = %19, %14
  %27 = phi ptr [ %15, %14 ], [ inttoptr (i32 -12 to ptr), %19 ]
  tail call void @iput(ptr noundef nonnull %0) #16
  br label %28

28:                                               ; preds = %26, %24, %4, %2
  %29 = phi ptr [ %27, %26 ], [ %25, %24 ], [ inttoptr (i32 -116 to ptr), %2 ], [ %0, %4 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_obtain_root(ptr noundef %0) #1 {
  %2 = tail call fastcc ptr @__d_obtain_alias(ptr noundef %0, i1 noundef zeroext false)
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_add_ci(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.qstr, ptr %2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @full_name_hash(ptr noundef %5, ptr noundef %7, i32 noundef %9) #18
  store i32 %10, ptr %2, align 8
  %11 = load i32, ptr %5, align 8
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.dentry_operations, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 %18(ptr noundef %5, ptr noundef %2) #16
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %37, label %21, !prof !19

21:                                               ; preds = %14, %3
  br label %22

22:                                               ; preds = %34, %21
  %23 = load volatile i32, ptr @rename_lock, align 64
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %26, %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !42
  %27 = load volatile i32, ptr @rename_lock, align 64
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %23, %22 ], [ %27, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %32 = tail call ptr @__d_lookup(ptr noundef %5, ptr noundef %2) #16
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %35 = load volatile i32, ptr @rename_lock, align 64
  %36 = icmp eq i32 %35, %31
  br i1 %36, label %41, label %22

37:                                               ; preds = %14
  %38 = inttoptr i32 %19 to ptr
  br label %39

39:                                               ; preds = %37, %30
  %40 = phi ptr [ %38, %37 ], [ %32, %30 ]
  tail call void @iput(ptr noundef %1) #16
  br label %80

41:                                               ; preds = %34
  %42 = load i32, ptr %0, align 8
  %43 = and i32 %42, 268435456
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %4, align 8
  br i1 %44, label %56, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 12
  %48 = load ptr, ptr %47, align 8
  %49 = tail call ptr @d_alloc_parallel(ptr noundef %45, ptr noundef %2, ptr noundef %48)
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %49, align 8
  %53 = and i32 %52, 268435456
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51, %46
  tail call void @iput(ptr noundef %1) #16
  br label %80

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = tail call fastcc ptr @__d_alloc(ptr noundef %58, ptr noundef %2) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %74, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %62) #16
  %63 = getelementptr inbounds %struct.anon.65, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 3
  store ptr %45, ptr %66, align 8
  %67 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 13
  %68 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 14
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %67, ptr %70, align 4
  store ptr %69, ptr %67, align 4
  %71 = getelementptr inbounds %struct.dentry, ptr %59, i32 0, i32 13, i32 1
  store ptr %68, ptr %71, align 4
  store volatile ptr %67, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %72 = load i16, ptr %62, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %62, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %75

74:                                               ; preds = %56
  tail call void @iput(ptr noundef %1) #16
  br label %80

75:                                               ; preds = %61, %51
  %76 = phi ptr [ %49, %51 ], [ %59, %61 ]
  %77 = tail call ptr @d_splice_alias(ptr noundef %1, ptr noundef %76)
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @dput(ptr noundef %76)
  br label %80

80:                                               ; preds = %79, %75, %74, %55, %39
  %81 = phi ptr [ %40, %39 ], [ %49, %55 ], [ %77, %79 ], [ inttoptr (i32 -12 to ptr), %74 ], [ %76, %75 ]
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_hash_and_lookup(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @full_name_hash(ptr noundef %0, ptr noundef %4, i32 noundef %6) #18
  store i32 %7, ptr %1, align 8
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %12, %2
  br label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dentry_operations, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 %16(ptr noundef %0, ptr noundef %1) #16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %11, !prof !19

19:                                               ; preds = %12
  %20 = inttoptr i32 %17 to ptr
  br label %36

21:                                               ; preds = %33, %11
  %22 = load volatile i32, ptr @rename_lock, align 64
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %25, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !42
  %26 = load volatile i32, ptr @rename_lock, align 64
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %22, %21 ], [ %26, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %31 = tail call ptr @__d_lookup(ptr noundef %0, ptr noundef %1) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %34 = load volatile i32, ptr @rename_lock, align 64
  %35 = icmp eq i32 %34, %30
  br i1 %35, label %36, label %21

36:                                               ; preds = %33, %29, %19
  %37 = phi ptr [ %20, %19 ], [ null, %33 ], [ %31, %29 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_alloc_parallel(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = alloca i32, align 4
  %6 = load i32, ptr %1, align 8
  %7 = ptrtoint ptr %0 to i32
  %8 = lshr i32 %7, 6
  %9 = add i32 %6, %8
  %10 = mul i32 %9, 1640531527
  %11 = lshr i32 %10, 22
  %12 = getelementptr %struct.hlist_bl_head, ptr @in_lookup_hashtable, i32 %11
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = tail call fastcc ptr @__d_alloc(ptr noundef %14, ptr noundef %1) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %18) #16
  %19 = getelementptr inbounds %struct.anon.65, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 3
  store ptr %0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 13
  %24 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 14
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %23, ptr %26, align 4
  store ptr %25, ptr %23, align 4
  %27 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 13, i32 1
  store ptr %24, ptr %27, align 4
  store volatile ptr %23, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %28 = load i16, ptr %18, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !47
  %30 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %31 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %32 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %33 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 1
  %35 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 2
  %36 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3
  %37 = getelementptr inbounds %struct.wait_queue_entry, ptr %4, i32 0, i32 3, i32 1
  br label %39

38:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  br label %268

39:                                               ; preds = %167, %17
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %40 = load ptr, ptr %30, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %40, i32 0, i32 43
  %42 = load volatile i32, ptr %41, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !54
  %43 = load volatile i32, ptr @rename_lock, align 64
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %46, %39
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !41
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !42
  %47 = load volatile i32, ptr @rename_lock, align 64
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %46

50:                                               ; preds = %46, %39
  %51 = phi i32 [ %43, %39 ], [ %47, %46 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %52 = call ptr @__d_lookup_rcu(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %66, label %54, !prof !9

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 7
  %56 = call i32 @lockref_get_not_dead(ptr noundef %55) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %167

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 1
  %61 = load i32, ptr %5, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %62 = load volatile i32, ptr %60, align 4
  %63 = icmp eq i32 %62, %61
  call void asm sideeffect "", "~{memory}"() #16
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  call void @dput(ptr noundef nonnull %52)
  br label %167

65:                                               ; preds = %59
  call void @dput(ptr noundef nonnull %15)
  br label %268

66:                                               ; preds = %50
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %67 = load volatile i32, ptr @rename_lock, align 64
  %68 = icmp eq i32 %67, %51
  br i1 %68, label %70, label %69, !prof !9

69:                                               ; preds = %66
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %167

70:                                               ; preds = %66
  %71 = and i32 %42, 1
  %72 = icmp eq i32 %71, 0
  call void asm sideeffect "", "~{memory}"() #16
  br i1 %72, label %73, label %167, !prof !9

73:                                               ; preds = %87, %70
  %74 = load volatile i32, ptr %12, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82, !prof !21

77:                                               ; preds = %73
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #16, !srcloc !10
  %78 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #16, !srcloc !22
  %79 = extractvalue { i32, i32, i32 } %78, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82, !prof !9

82:                                               ; preds = %77, %73
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %83

83:                                               ; preds = %83, %82
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %84 = load volatile i32, ptr %12, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %83

87:                                               ; preds = %83
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %73

88:                                               ; preds = %77
  %89 = load ptr, ptr %30, align 8
  %90 = getelementptr inbounds %struct.inode, ptr %89, i32 0, i32 43
  %91 = load volatile i32, ptr %90, align 4
  %92 = icmp eq i32 %91, %42
  br i1 %92, label %96, label %93, !prof !9

93:                                               ; preds = %88
  %94 = load volatile i32, ptr %12, align 4
  %95 = and i32 %94, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %95, ptr %12, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  br label %167

96:                                               ; preds = %88
  %97 = load ptr, ptr %12, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = and i32 %98, -2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %246, label %101

101:                                              ; preds = %96
  %102 = inttoptr i32 %99 to ptr
  br label %103

103:                                              ; preds = %243, %101
  %104 = phi ptr [ %244, %243 ], [ %102, %101 ]
  %105 = getelementptr i8, ptr %104, i32 -128
  %106 = getelementptr i8, ptr %104, i32 -104
  %107 = load i32, ptr %106, align 8
  %108 = icmp eq i32 %107, %6
  br i1 %108, label %109, label %243

109:                                              ; preds = %103
  %110 = getelementptr i8, ptr %104, i32 -112
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, %0
  br i1 %112, label %113, label %243

113:                                              ; preds = %109
  %114 = load i32, ptr %0, align 8
  %115 = and i32 %114, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %141, !prof !9

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %104, i32 -100
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %32, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %243

122:                                              ; preds = %117
  %123 = load ptr, ptr %33, align 8
  %124 = getelementptr i8, ptr %104, i32 -96
  %125 = load volatile ptr, ptr %124, align 8
  br label %126

126:                                              ; preds = %136, %122
  %127 = phi ptr [ %125, %122 ], [ %137, %136 ]
  %128 = phi ptr [ %123, %122 ], [ %138, %136 ]
  %129 = phi i32 [ %119, %122 ], [ %139, %136 ]
  %130 = load i32, ptr %127, align 4
  %131 = call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %128, ptr elementtype(i32) %128) #12, !srcloc !55
  %132 = icmp ult i32 %129, 4
  %133 = extractvalue { i32, i32 } %131, 0
  br i1 %132, label %151, label %134

134:                                              ; preds = %126
  %135 = icmp eq i32 %130, %133
  br i1 %135, label %136, label %243, !prof !9

136:                                              ; preds = %134
  %137 = getelementptr i8, ptr %127, i32 4
  %138 = getelementptr i8, ptr %128, i32 4
  %139 = add i32 %129, -4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %159, label %126

141:                                              ; preds = %113
  %142 = load ptr, ptr %31, align 8
  %143 = getelementptr inbounds %struct.dentry_operations, ptr %142, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr i8, ptr %104, i32 -100
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr i8, ptr %104, i32 -96
  %148 = load ptr, ptr %147, align 8
  %149 = call i32 %144(ptr noundef %105, i32 noundef %146, ptr noundef %148, ptr noundef %1) #16
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %159, label %243

151:                                              ; preds = %126
  %152 = extractvalue { i32, i32 } %131, 0
  %153 = shl nuw nsw i32 %129, 3
  %154 = shl nsw i32 -1, %153
  %155 = xor i32 %154, -1
  %156 = xor i32 %152, %130
  %157 = and i32 %156, %155
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %243

159:                                              ; preds = %151, %141, %136
  %160 = getelementptr i8, ptr %104, i32 -104
  %161 = getelementptr i8, ptr %104, i32 -112
  %162 = load volatile i32, ptr %12, align 4
  %163 = and i32 %162, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %163, ptr %12, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %164 = getelementptr i8, ptr %104, i32 -48
  %165 = call i32 @lockref_get_not_dead(ptr noundef %164) #16
  %166 = icmp eq i32 %165, 0
  call void asm sideeffect "", "~{memory}"() #16
  br i1 %166, label %167, label %168

167:                                              ; preds = %265, %159, %93, %70, %69, %64, %58
  br label %39

168:                                              ; preds = %159
  call void @_raw_spin_lock(ptr noundef %164) #16
  %169 = load i32, ptr %105, align 8
  %170 = and i32 %169, 268435456
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #16
  %173 = tail call ptr @llvm.thread.pointer() #16
  store i32 0, ptr %4, align 4
  store ptr %173, ptr %34, align 4
  store ptr @default_wake_function, ptr %35, align 4
  store ptr null, ptr %36, align 4
  store ptr null, ptr %37, align 4
  %174 = getelementptr i8, ptr %104, i32 -24
  %175 = load ptr, ptr %174, align 8
  call void @add_wait_queue(ptr noundef %175, ptr noundef nonnull %4) #16
  %176 = getelementptr inbounds %struct.task_struct, ptr %173, i32 0, i32 1
  br label %177

177:                                              ; preds = %177, %172
  store volatile i32 2, ptr %176, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !56
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %178 = load i16, ptr %164, align 4
  %179 = add i16 %178, 1
  store i16 %179, ptr %164, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  call void @schedule() #16
  call void @_raw_spin_lock(ptr noundef %164) #16
  %180 = load i32, ptr %105, align 8
  %181 = and i32 %180, 268435456
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %177

183:                                              ; preds = %177
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #16
  br label %184

184:                                              ; preds = %183, %168
  %185 = load i32, ptr %160, align 8
  %186 = icmp eq i32 %185, %6
  br i1 %186, label %187, label %265, !prof !9

187:                                              ; preds = %184
  %188 = load ptr, ptr %161, align 8
  %189 = icmp eq ptr %188, %0
  br i1 %189, label %190, label %265, !prof !9

190:                                              ; preds = %187
  %191 = getelementptr i8, ptr %104, i32 -116
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %265, label %194, !prof !19

194:                                              ; preds = %190
  %195 = load i32, ptr %0, align 8
  %196 = and i32 %195, 2
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %222, !prof !9

198:                                              ; preds = %194
  %199 = getelementptr i8, ptr %104, i32 -100
  %200 = load i32, ptr %199, align 4
  %201 = load i32, ptr %32, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %265, !prof !21

203:                                              ; preds = %198
  %204 = load ptr, ptr %33, align 8
  %205 = getelementptr i8, ptr %104, i32 -96
  %206 = load volatile ptr, ptr %205, align 8
  br label %207

207:                                              ; preds = %217, %203
  %208 = phi ptr [ %206, %203 ], [ %218, %217 ]
  %209 = phi ptr [ %204, %203 ], [ %219, %217 ]
  %210 = phi i32 [ %200, %203 ], [ %220, %217 ]
  %211 = load i32, ptr %208, align 4
  %212 = call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %209, ptr elementtype(i32) %209) #12, !srcloc !55
  %213 = icmp ult i32 %210, 4
  %214 = extractvalue { i32, i32 } %212, 0
  br i1 %213, label %232, label %215

215:                                              ; preds = %207
  %216 = icmp eq i32 %211, %214
  br i1 %216, label %217, label %265, !prof !9

217:                                              ; preds = %215
  %218 = getelementptr i8, ptr %208, i32 4
  %219 = getelementptr i8, ptr %209, i32 4
  %220 = add i32 %210, -4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %240, label %207

222:                                              ; preds = %194
  %223 = load ptr, ptr %31, align 8
  %224 = getelementptr inbounds %struct.dentry_operations, ptr %223, i32 0, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr i8, ptr %104, i32 -100
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr i8, ptr %104, i32 -96
  %229 = load ptr, ptr %228, align 8
  %230 = call i32 %225(ptr noundef %105, i32 noundef %227, ptr noundef %229, ptr noundef %1) #16
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %240, label %265, !prof !9

232:                                              ; preds = %207
  %233 = extractvalue { i32, i32 } %212, 0
  %234 = shl nuw nsw i32 %210, 3
  %235 = shl nsw i32 -1, %234
  %236 = xor i32 %235, -1
  %237 = xor i32 %233, %211
  %238 = and i32 %237, %236
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %265, !prof !9

240:                                              ; preds = %232, %222, %217
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %241 = load i16, ptr %164, align 4
  %242 = add i16 %241, 1
  store i16 %242, ptr %164, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  call void @dput(ptr noundef nonnull %15)
  br label %268

243:                                              ; preds = %151, %141, %134, %117, %109, %103
  %244 = load ptr, ptr %104, align 4
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %103

246:                                              ; preds = %243, %96
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %247 = load i32, ptr %15, align 8
  %248 = or i32 %247, 268435456
  store i32 %248, ptr %15, align 8
  %249 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 12
  store ptr %2, ptr %249, align 8
  %250 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 15
  %251 = load ptr, ptr %12, align 4
  %252 = ptrtoint ptr %251 to i32
  %253 = and i32 %252, -2
  %254 = inttoptr i32 %253 to ptr
  store ptr %254, ptr %250, align 4
  %255 = icmp eq i32 %253, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.hlist_bl_node, ptr %254, i32 0, i32 1
  store ptr %250, ptr %257, align 4
  br label %258

258:                                              ; preds = %256, %246
  %259 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 15, i32 0, i32 1
  store ptr %12, ptr %259, align 4
  %260 = ptrtoint ptr %250 to i32
  %261 = or i32 %260, 1
  %262 = inttoptr i32 %261 to ptr
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  store volatile ptr %262, ptr %12, align 4
  %263 = load volatile i32, ptr %12, align 4
  %264 = and i32 %263, -2
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %264, ptr %12, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %268

265:                                              ; preds = %232, %222, %215, %198, %190, %187, %184
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %266 = load i16, ptr %164, align 4
  %267 = add i16 %266, 1
  store i16 %267, ptr %164, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  call void @dput(ptr noundef %105)
  br label %167

268:                                              ; preds = %258, %240, %65, %38
  %269 = phi ptr [ inttoptr (i32 -12 to ptr), %38 ], [ %52, %65 ], [ %105, %240 ], [ %15, %258 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret ptr %269
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_splice_alias(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %82, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3084, 0\0A.popsection", ""() #16, !srcloc !58
  unreachable

9:                                                ; preds = %4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %81, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %12) #16
  %13 = load i16, ptr %0, align 8
  %14 = and i16 %13, -4096
  %15 = icmp eq i16 %14, 16384
  br i1 %15, label %16, label %81

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 32
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %81, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -128
  %22 = getelementptr i8, ptr %18, i32 -48
  tail call void @lockref_get(ptr noundef %22) #16
  %23 = icmp eq ptr %21, null
  br i1 %23, label %81, label %24, !prof !9

24:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %25 = load i16, ptr %12, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #16
  %27 = load i32, ptr @rename_lock, align 64
  %28 = add i32 %27, 1
  store i32 %28, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  br label %29

29:                                               ; preds = %34, %24
  %30 = phi ptr [ %1, %24 ], [ %32, %34 ]
  %31 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %55, label %34

34:                                               ; preds = %29
  %35 = icmp eq ptr %32, %21
  br i1 %35, label %36, label %29

36:                                               ; preds = %34
  %37 = icmp eq ptr %30, null
  br i1 %37, label %55, label %38, !prof !9

38:                                               ; preds = %36
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %39 = load i32, ptr @rename_lock, align 64
  %40 = add i32 %39, 1
  store i32 %40, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %41 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void @dput(ptr noundef nonnull %21)
  %43 = tail call i32 @___ratelimit(ptr noundef nonnull @d_splice_alias._rs, ptr noundef nonnull @__func__.d_splice_alias) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 32
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 33
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %47, ptr noundef %52, ptr noundef %53) #19
  br label %79

55:                                               ; preds = %36, %29
  %56 = getelementptr i8, ptr %18, i32 -112
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %21, %57
  br i1 %58, label %74, label %59

59:                                               ; preds = %55
  %60 = icmp eq ptr %57, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %62) #16
  br label %63

63:                                               ; preds = %61, %59
  %64 = tail call fastcc i32 @__d_unalias(ptr noundef %1, ptr noundef nonnull %21)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %65 = load i32, ptr @rename_lock, align 64
  %66 = add i32 %65, 1
  store i32 %66, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %67 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  tail call void @dput(ptr noundef nonnull %21)
  %71 = inttoptr i32 %64 to ptr
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi ptr [ %71, %70 ], [ %21, %63 ]
  tail call void @dput(ptr noundef %57)
  br label %79

74:                                               ; preds = %55
  tail call fastcc void @__d_move(ptr noundef nonnull %21, ptr noundef %1, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %75 = load i32, ptr @rename_lock, align 64
  %76 = add i32 %75, 1
  store i32 %76, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %77 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %78 = add i16 %77, 1
  store i16 %78, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %79

79:                                               ; preds = %74, %72, %45, %38
  %80 = phi ptr [ inttoptr (i32 -40 to ptr), %45 ], [ inttoptr (i32 -40 to ptr), %38 ], [ %21, %74 ], [ %73, %72 ]
  tail call void @iput(ptr noundef nonnull %0) #16
  br label %82

81:                                               ; preds = %20, %16, %11, %9
  tail call fastcc void @__d_add(ptr noundef %1, ptr noundef %0)
  br label %82

82:                                               ; preds = %81, %79, %2
  %83 = phi ptr [ %80, %79 ], [ null, %81 ], [ %0, %2 ]
  ret ptr %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__d_lookup_rcu(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = load i64, ptr %1, align 8
  %5 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = trunc i64 %4 to i32
  %8 = load ptr, ptr @dentry_hashtable, align 4
  %9 = load i32, ptr @d_hash_shift, align 4
  %10 = lshr i32 %7, %9
  %11 = getelementptr %struct.hlist_bl_head, ptr %8, i32 %10
  %12 = load volatile ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = and i32 %13, -2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %93, label %16

16:                                               ; preds = %3
  %17 = inttoptr i32 %14 to ptr
  %18 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %19 = lshr i64 %4, 32
  %20 = trunc i64 %19 to i32
  br label %21

21:                                               ; preds = %90, %16
  %22 = phi ptr [ %17, %16 ], [ %91, %90 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = getelementptr i8, ptr %22, i32 -4
  %25 = load volatile i32, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !59
  %26 = getelementptr i8, ptr %22, i32 8
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %29, label %90

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %22, i32 4
  %31 = getelementptr i8, ptr %22, i32 16
  %32 = getelementptr i8, ptr %22, i32 20
  %33 = getelementptr i8, ptr %22, i32 24
  br label %34

34:                                               ; preds = %57, %29
  %35 = phi i32 [ %25, %29 ], [ %58, %57 ]
  %36 = and i32 %35, -2
  %37 = load ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %90, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %0, align 8
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %61, label %43, !prof !9

43:                                               ; preds = %39
  %44 = load i32, ptr %31, align 8
  %45 = icmp eq i32 %44, %7
  br i1 %45, label %46, label %90

46:                                               ; preds = %43
  %47 = load i32, ptr %32, align 4
  %48 = load ptr, ptr %33, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %49 = load volatile i32, ptr %24, align 4
  %50 = icmp eq i32 %49, %36
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load ptr, ptr %18, align 8
  %53 = getelementptr inbounds %struct.dentry_operations, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %54(ptr noundef %23, i32 noundef %47, ptr noundef %48, ptr noundef %1) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %89, label %90

57:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !60
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !61
  %58 = load volatile i32, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !59
  %59 = load ptr, ptr %26, align 8
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %34, label %90

61:                                               ; preds = %39
  %62 = load i64, ptr %31, align 8
  %63 = icmp eq i64 %62, %4
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load volatile ptr, ptr %33, align 8
  br label %66

66:                                               ; preds = %76, %64
  %67 = phi ptr [ %65, %64 ], [ %77, %76 ]
  %68 = phi ptr [ %6, %64 ], [ %78, %76 ]
  %69 = phi i32 [ %20, %64 ], [ %79, %76 ]
  %70 = load i32, ptr %67, align 4
  %71 = tail call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %68, ptr elementtype(i32) %68) #12, !srcloc !55
  %72 = icmp ult i32 %69, 4
  %73 = extractvalue { i32, i32 } %71, 0
  br i1 %72, label %81, label %74

74:                                               ; preds = %66
  %75 = icmp eq i32 %70, %73
  br i1 %75, label %76, label %90, !prof !9

76:                                               ; preds = %74
  %77 = getelementptr i8, ptr %67, i32 4
  %78 = getelementptr i8, ptr %68, i32 4
  %79 = add i32 %69, -4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %66

81:                                               ; preds = %66
  %82 = extractvalue { i32, i32 } %71, 0
  %83 = shl nuw nsw i32 %69, 3
  %84 = shl nsw i32 -1, %83
  %85 = xor i32 %84, -1
  %86 = xor i32 %82, %70
  %87 = and i32 %86, %85
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81, %76, %51
  store i32 %36, ptr %2, align 4
  br label %93

90:                                               ; preds = %81, %74, %61, %57, %51, %43, %34, %21
  %91 = load volatile ptr, ptr %22, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %21

93:                                               ; preds = %90, %89, %3
  %94 = phi ptr [ %23, %89 ], [ null, %3 ], [ null, %90 ]
  ret ptr %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_lookup(ptr noundef %0, ptr noundef %1) #1 {
  br label %3

3:                                                ; preds = %15, %2
  %4 = load volatile i32, ptr @rename_lock, align 64
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !42
  %8 = load volatile i32, ptr @rename_lock, align 64
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %7

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %4, %3 ], [ %8, %7 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  %13 = tail call ptr @__d_lookup(ptr noundef %0, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %16 = load volatile i32, ptr @rename_lock, align 64
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %18, label %3

18:                                               ; preds = %15, %11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__d_lookup(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %1, align 8
  %4 = load ptr, ptr @dentry_hashtable, align 4
  %5 = load i32, ptr @d_hash_shift, align 4
  %6 = lshr i32 %3, %5
  %7 = getelementptr %struct.hlist_bl_head, ptr %4, i32 %6
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %8 = load volatile ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = and i32 %9, -2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %90, label %12

12:                                               ; preds = %2
  %13 = inttoptr i32 %10 to ptr
  %14 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %15 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %16 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  br label %17

17:                                               ; preds = %87, %12
  %18 = phi ptr [ %13, %12 ], [ %88, %87 ]
  %19 = getelementptr i8, ptr %18, i32 -8
  %20 = getelementptr i8, ptr %18, i32 16
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, %3
  br i1 %22, label %23, label %87

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %18, i32 72
  tail call void @_raw_spin_lock(ptr noundef %24) #16
  %25 = getelementptr i8, ptr %18, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %84

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %18, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %84, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %60, !prof !9

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %18, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = load i32, ptr %15, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %36
  %42 = load ptr, ptr %16, align 8
  %43 = getelementptr i8, ptr %18, i32 24
  %44 = load volatile ptr, ptr %43, align 8
  br label %45

45:                                               ; preds = %55, %41
  %46 = phi ptr [ %44, %41 ], [ %56, %55 ]
  %47 = phi ptr [ %42, %41 ], [ %57, %55 ]
  %48 = phi i32 [ %38, %41 ], [ %58, %55 ]
  %49 = load i32, ptr %46, align 4
  %50 = tail call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %47, ptr elementtype(i32) %47) #12, !srcloc !55
  %51 = icmp ult i32 %48, 4
  %52 = extractvalue { i32, i32 } %50, 0
  br i1 %51, label %70, label %53

53:                                               ; preds = %45
  %54 = icmp eq i32 %49, %52
  br i1 %54, label %55, label %84, !prof !9

55:                                               ; preds = %53
  %56 = getelementptr i8, ptr %46, i32 4
  %57 = getelementptr i8, ptr %47, i32 4
  %58 = add i32 %48, -4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %78, label %45

60:                                               ; preds = %32
  %61 = load ptr, ptr %14, align 8
  %62 = getelementptr inbounds %struct.dentry_operations, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %18, i32 20
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %18, i32 24
  %67 = load ptr, ptr %66, align 8
  %68 = tail call i32 %63(ptr noundef %19, i32 noundef %65, ptr noundef %67, ptr noundef %1) #16
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %84

70:                                               ; preds = %45
  %71 = extractvalue { i32, i32 } %50, 0
  %72 = shl nuw nsw i32 %48, 3
  %73 = shl nsw i32 -1, %72
  %74 = xor i32 %73, -1
  %75 = xor i32 %71, %49
  %76 = and i32 %75, %74
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70, %60, %55
  %79 = getelementptr i8, ptr %18, i32 76
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %82 = load i16, ptr %24, align 4
  %83 = add i16 %82, 1
  store i16 %83, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %90

84:                                               ; preds = %70, %60, %53, %36, %28, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %85 = load i16, ptr %24, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %87

87:                                               ; preds = %84, %17
  %88 = load volatile ptr, ptr %18, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %17

90:                                               ; preds = %87, %78, %2
  %91 = phi ptr [ %19, %78 ], [ null, %2 ], [ null, %87 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  ret ptr %91
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @full_name_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_delete(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %4) #16
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.anon.65, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, -257
  store i32 %11, ptr %0, align 8
  tail call fastcc void @dentry_unlink_inode(ptr noundef %0)
  br label %17

12:                                               ; preds = %1
  tail call void @__d_drop(ptr noundef %0)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %13 = load i16, ptr %5, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %15 = load i16, ptr %4, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @dentry_unlink_inode(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  %7 = load volatile i32, ptr %0, align 8
  %8 = and i32 %7, -24117249
  store volatile i32 %8, ptr %0, align 8
  store ptr null, ptr %2, align 8
  %9 = and i32 %7, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #12, !srcloc !36
  %16 = add i32 %15, ptrtoint (ptr @nr_dentry_negative to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  store i32 %19, ptr %17, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #16, !srcloc !37
  br label %20

20:                                               ; preds = %11, %1
  %21 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15
  %22 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %21, align 4
  store volatile ptr %26, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  store ptr null, ptr %21, align 4
  store ptr null, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %20
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %32 = load i32, ptr %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %4, align 4
  %34 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %35 = load i16, ptr %34, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %37 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %38 = load i16, ptr %37, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %40 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 11
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 42
  %47 = load volatile i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i16, ptr %3, align 8
  %51 = and i16 %50, -4096
  %52 = icmp eq i16 %51, 16384
  %53 = select i1 %52, i32 1073742848, i32 1024
  %54 = tail call i32 @fsnotify(i32 noundef %53, ptr noundef %3, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %3, i32 noundef 0) #16
  br label %55

55:                                               ; preds = %49, %43
  tail call void @__fsnotify_inode_delete(ptr noundef %3) #16
  br label %56

56:                                               ; preds = %55, %31
  %57 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.dentry_operations, ptr %58, i32 0, i32 8
  %62 = load ptr, ptr %61, align 32
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void %62(ptr noundef %0, ptr noundef %3) #16
  br label %66

65:                                               ; preds = %60, %56
  tail call void @iput(ptr noundef %3) #16
  br label %66

66:                                               ; preds = %65, %64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_rehash(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = load ptr, ptr @dentry_hashtable, align 4
  %6 = load i32, ptr @d_hash_shift, align 4
  %7 = lshr i32 %4, %6
  %8 = getelementptr %struct.hlist_bl_head, ptr %5, i32 %7
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %9

9:                                                ; preds = %23, %1
  %10 = load volatile i32, ptr %8, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18, !prof !21

13:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #16, !srcloc !10
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #16, !srcloc !22
  %15 = extractvalue { i32, i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !9

18:                                               ; preds = %13, %9
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %19

19:                                               ; preds = %19, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %20 = load volatile i32, ptr %8, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %19

23:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %9

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %8, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = and i32 %27, -2
  %29 = inttoptr i32 %28 to ptr
  store ptr %29, ptr %25, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.hlist_bl_node, ptr %29, i32 0, i32 1
  store ptr %25, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  store ptr %8, ptr %34, align 4
  %35 = ptrtoint ptr %25 to i32
  %36 = or i32 %35, 1
  %37 = inttoptr i32 %36 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  store volatile ptr %37, ptr %8, align 4
  %38 = load volatile i32, ptr %8, align 4
  %39 = and i32 %38, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %39, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %40 = load i16, ptr %2, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_get_not_dead(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__d_lookup_done(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = ptrtoint ptr %3 to i32
  %7 = lshr i32 %6, 6
  %8 = add i32 %7, %5
  %9 = mul i32 %8, 1640531527
  %10 = lshr i32 %9, 22
  %11 = getelementptr %struct.hlist_bl_head, ptr @in_lookup_hashtable, i32 %10
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %12

12:                                               ; preds = %26, %1
  %13 = load volatile i32, ptr %11, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21, !prof !21

16:                                               ; preds = %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 1, ptr elementtype(i32) %11) #16, !srcloc !22
  %18 = extractvalue { i32, i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21, !prof !9

21:                                               ; preds = %16, %12
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %22

22:                                               ; preds = %22, %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %23 = load volatile i32, ptr %11, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %22

26:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %12

27:                                               ; preds = %16
  %28 = load i32, ptr %0, align 8
  %29 = and i32 %28, -268435457
  store i32 %29, ptr %0, align 8
  %30 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = ptrtoint ptr %31 to i32
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = and i32 %36, 1
  %38 = or i32 %37, %34
  %39 = inttoptr i32 %38 to ptr
  store volatile ptr %39, ptr %33, align 4
  %40 = icmp eq ptr %31, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.hlist_bl_node, ptr %31, i32 0, i32 1
  store ptr %33, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %27
  %44 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 12
  %45 = load ptr, ptr %44, align 8
  tail call void @__wake_up(ptr noundef %45, i32 noundef 3, i32 noundef 0, ptr noundef null) #16
  store ptr null, ptr %44, align 8
  %46 = load volatile i32, ptr %11, align 4
  %47 = and i32 %46, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %47, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  store ptr null, ptr %30, align 4
  store ptr null, ptr %32, align 4
  store volatile ptr %44, ptr %44, align 4
  %48 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 12, i32 0, i32 1
  store ptr %44, ptr %48, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_add(ptr noundef %0, ptr noundef %1) #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %5) #16
  br label %6

6:                                                ; preds = %4, %2
  tail call fastcc void @__d_add(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__d_add(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %4) #16
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 268435456
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8, !prof !9

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc i32 @start_dir_add(ptr noundef %12)
  tail call void @__d_lookup_done(ptr noundef %0)
  %14 = add i32 %13, 2
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi ptr [ %12, %8 ], [ null, %2 ]
  %17 = phi i32 [ %14, %8 ], [ 2, %2 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %97, label %19

19:                                               ; preds = %15
  %20 = load i16, ptr %1, align 8
  %21 = and i16 %20, -4096
  %22 = icmp eq i16 %21, 16384
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  br i1 %22, label %25, label %35

25:                                               ; preds = %19
  %26 = and i16 %24, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %49, !prof !19

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %30 = load ptr, ptr %29, align 8
  %31 = load ptr, ptr %30, align 64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33, !prof !19

33:                                               ; preds = %28
  %34 = or i16 %24, 2
  store i16 %34, ptr %23, align 2
  br label %49

35:                                               ; preds = %19
  %36 = and i16 %24, 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %46, !prof !19

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.inode_operations, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49, !prof !9

44:                                               ; preds = %38
  %45 = or i16 %24, 4
  store i16 %45, ptr %23, align 2
  br label %46

46:                                               ; preds = %44, %35
  %47 = icmp eq i16 %21, -32768
  br i1 %47, label %49, label %48, !prof !9

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %46, %38, %33, %28, %25
  %50 = phi i32 [ 2097152, %33 ], [ 2097152, %25 ], [ 5242880, %48 ], [ 4194304, %46 ], [ 3145728, %28 ], [ 6291456, %38 ]
  %51 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55, !prof !9

55:                                               ; preds = %49
  %56 = or i32 %50, 131072
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i32 [ %56, %55 ], [ %50, %49 ]
  %59 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15
  %60 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 32
  %61 = load ptr, ptr %60, align 4
  store volatile ptr %61, ptr %59, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  store volatile ptr %59, ptr %64, align 4
  br label %65

65:                                               ; preds = %63, %57
  store volatile ptr %59, ptr %60, align 4
  %66 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  store volatile ptr %60, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  %70 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  store ptr %1, ptr %70, align 8
  %71 = load volatile i32, ptr %0, align 8
  %72 = and i32 %71, -24117249
  %73 = or i32 %72, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !49
  store volatile i32 %73, ptr %0, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %74 = load i32, ptr %67, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %67, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %76 = load volatile i32, ptr %4, align 4
  store volatile i32 %76, ptr %3, align 4
  %77 = lshr i32 %76, 16
  %78 = and i32 %76, 65535
  %79 = icmp eq i32 %78, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %79, label %80, label %81, !prof !19

80:                                               ; preds = %65
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #16, !srcloc !50
  unreachable

81:                                               ; preds = %65
  %82 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  %84 = getelementptr inbounds %struct.dentry, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.inode, ptr %85, i32 0, i32 45
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 134217728
  %89 = icmp eq i32 %88, 0
  %90 = and i32 %87, 462911
  %91 = icmp eq i32 %90, 0
  %92 = or i1 %89, %91
  %93 = load i32, ptr %0, align 8
  %94 = and i32 %93, -16385
  %95 = select i1 %92, i32 0, i32 16384
  %96 = or i32 %95, %94
  store i32 %96, ptr %0, align 8
  br label %97

97:                                               ; preds = %81, %15
  %98 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %99 = load i32, ptr %98, align 8
  %100 = load ptr, ptr @dentry_hashtable, align 4
  %101 = load i32, ptr @d_hash_shift, align 4
  %102 = lshr i32 %99, %101
  %103 = getelementptr %struct.hlist_bl_head, ptr %100, i32 %102
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %104

104:                                              ; preds = %118, %97
  %105 = load volatile i32, ptr %103, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113, !prof !21

108:                                              ; preds = %104
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %103) #16, !srcloc !10
  %109 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %103, ptr %103, i32 1, ptr elementtype(i32) %103) #16, !srcloc !22
  %110 = extractvalue { i32, i32, i32 } %109, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %119, label %113, !prof !9

113:                                              ; preds = %108, %104
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %114

114:                                              ; preds = %114, %113
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %115 = load volatile i32, ptr %103, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %114

118:                                              ; preds = %114
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %104

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2
  %121 = load ptr, ptr %103, align 4
  %122 = ptrtoint ptr %121 to i32
  %123 = and i32 %122, -2
  %124 = inttoptr i32 %123 to ptr
  store ptr %124, ptr %120, align 4
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.hlist_bl_node, ptr %124, i32 0, i32 1
  store ptr %120, ptr %127, align 4
  br label %128

128:                                              ; preds = %126, %119
  %129 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  store ptr %103, ptr %129, align 4
  %130 = ptrtoint ptr %120 to i32
  %131 = or i32 %130, 1
  %132 = inttoptr i32 %131 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  store volatile ptr %132, ptr %103, align 4
  %133 = load volatile i32, ptr %103, align 4
  %134 = and i32 %133, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %134, ptr %103, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %135 = icmp eq ptr %16, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !62
  %137 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 43
  store volatile i32 %17, ptr %137, align 4
  br label %138

138:                                              ; preds = %136, %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %139 = load i16, ptr %4, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br i1 %18, label %145, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %143 = load i16, ptr %142, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr %142, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %145

145:                                              ; preds = %141, %138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @d_exact_alias(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 32
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = getelementptr i8, ptr %7, i32 -128
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %133, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  br label %16

16:                                               ; preds = %126, %12
  %17 = phi ptr [ %9, %12 ], [ %130, %126 ]
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %21, label %126

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %13, align 8
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %126

26:                                               ; preds = %21
  %27 = load i32, ptr %23, align 8
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %54, !prof !9

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = load i32, ptr %14, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %126

35:                                               ; preds = %30
  %36 = load ptr, ptr %15, align 8
  %37 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 4, i32 1
  %38 = load volatile ptr, ptr %37, align 8
  br label %39

39:                                               ; preds = %49, %35
  %40 = phi ptr [ %38, %35 ], [ %50, %49 ]
  %41 = phi ptr [ %36, %35 ], [ %51, %49 ]
  %42 = phi i32 [ %32, %35 ], [ %52, %49 ]
  %43 = load i32, ptr %40, align 4
  %44 = tail call { i32, i32 } asm "1:\09ldr\09$0, [$2]\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align 2\0A3:\09and\09$1, $2, #0x3\0A\09bic\09$2, $2, #0x3\0A\09ldr\09$0, [$2]\0A\09lsl\09$1, $1, #0x3\0A\09lsr\09$0, $0, $1\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=&r,=&r,r,*Qo"(ptr %41, ptr elementtype(i32) %41) #12, !srcloc !55
  %45 = icmp ult i32 %42, 4
  %46 = extractvalue { i32, i32 } %44, 0
  br i1 %45, label %65, label %47

47:                                               ; preds = %39
  %48 = icmp eq i32 %43, %46
  br i1 %48, label %49, label %126, !prof !9

49:                                               ; preds = %47
  %50 = getelementptr i8, ptr %40, i32 4
  %51 = getelementptr i8, ptr %41, i32 4
  %52 = add i32 %42, -4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %73, label %39

54:                                               ; preds = %26
  %55 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 8
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.dentry_operations, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 4, i32 1
  %62 = load ptr, ptr %61, align 8
  %63 = tail call i32 %58(ptr noundef nonnull %17, i32 noundef %60, ptr noundef %62, ptr noundef %3) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %126

65:                                               ; preds = %39
  %66 = extractvalue { i32, i32 } %44, 0
  %67 = shl nuw nsw i32 %42, 3
  %68 = shl nsw i32 -1, %67
  %69 = xor i32 %68, -1
  %70 = xor i32 %66, %43
  %71 = and i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %65, %54, %49
  %74 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %74) #16
  %75 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 2, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %79 = load i16, ptr %74, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %122

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.anon.65, ptr %74, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 4
  %85 = load i32, ptr %18, align 8
  %86 = load ptr, ptr @dentry_hashtable, align 4
  %87 = load i32, ptr @d_hash_shift, align 4
  %88 = lshr i32 %85, %87
  %89 = getelementptr %struct.hlist_bl_head, ptr %86, i32 %88
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %90

90:                                               ; preds = %104, %81
  %91 = load volatile i32, ptr %89, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99, !prof !21

94:                                               ; preds = %90
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #16, !srcloc !10
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %89, ptr %89, i32 1, ptr elementtype(i32) %89) #16, !srcloc !22
  %96 = extractvalue { i32, i32, i32 } %95, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99, !prof !9

99:                                               ; preds = %94, %90
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %100

100:                                              ; preds = %100, %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %101 = load volatile i32, ptr %89, align 4
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %100

104:                                              ; preds = %100
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %90

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 2
  %107 = load ptr, ptr %89, align 4
  %108 = ptrtoint ptr %107 to i32
  %109 = and i32 %108, -2
  %110 = inttoptr i32 %109 to ptr
  store ptr %110, ptr %106, align 4
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.hlist_bl_node, ptr %110, i32 0, i32 1
  store ptr %106, ptr %113, align 4
  br label %114

114:                                              ; preds = %112, %105
  store ptr %89, ptr %75, align 4
  %115 = ptrtoint ptr %106 to i32
  %116 = or i32 %115, 1
  %117 = inttoptr i32 %116 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  store volatile ptr %117, ptr %89, align 4
  %118 = load volatile i32, ptr %89, align 4
  %119 = and i32 %118, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %119, ptr %89, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %120 = load i16, ptr %74, align 4
  %121 = add i16 %120, 1
  store i16 %121, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %122

122:                                              ; preds = %114, %78
  %123 = phi ptr [ %17, %114 ], [ null, %78 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %124 = load i16, ptr %5, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %136

126:                                              ; preds = %65, %54, %47, %30, %21, %16
  %127 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 15
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  %130 = getelementptr i8, ptr %128, i32 -128
  %131 = icmp eq ptr %130, null
  %132 = or i1 %129, %131
  br i1 %132, label %133, label %16

133:                                              ; preds = %126, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %134 = load i16, ptr %5, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %136

136:                                              ; preds = %133, %122
  %137 = phi ptr [ %123, %122 ], [ null, %133 ]
  ret ptr %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_move(ptr noundef %0, ptr noundef %1) #1 {
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #16
  %3 = load i32, ptr @rename_lock, align 64
  %4 = add i32 %3, 1
  store i32 %4, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  tail call fastcc void @__d_move(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %5 = load i32, ptr @rename_lock, align 64
  %6 = add i32 %5, 1
  store i32 %6, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %7 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__d_move(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !19

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2890, i32 noundef 9, ptr noundef null) #16
  br label %10

10:                                               ; preds = %9, %3
  %11 = icmp eq ptr %0, %1
  br i1 %11, label %12, label %13, !prof !19

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2891, i32 noundef 9, ptr noundef null) #16
  br label %450

13:                                               ; preds = %18, %10
  %14 = phi ptr [ %16, %18 ], [ %0, %10 ]
  %15 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = icmp eq ptr %16, %1
  br i1 %19, label %20, label %13

20:                                               ; preds = %18
  %21 = icmp eq ptr %14, null
  br i1 %21, label %23, label %22, !prof !9

22:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2894, 0\0A.popsection", ""() #16, !srcloc !63
  unreachable

23:                                               ; preds = %20, %13
  %24 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %31, %23
  %27 = phi ptr [ %1, %23 ], [ %29, %31 ]
  %28 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = icmp eq ptr %29, %25
  br i1 %32, label %33, label %26

33:                                               ; preds = %31
  %34 = icmp eq ptr %25, %0
  %35 = icmp eq ptr %27, null
  br i1 %34, label %38, label %43

36:                                               ; preds = %26
  %37 = icmp eq ptr %25, %0
  br i1 %37, label %40, label %44

38:                                               ; preds = %33
  br i1 %35, label %40, label %39, !prof !9

39:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2898, 0\0A.popsection", ""() #16, !srcloc !64
  unreachable

40:                                               ; preds = %38, %36
  %41 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  br label %57

43:                                               ; preds = %33
  br i1 %35, label %44, label %48

44:                                               ; preds = %43, %36
  %45 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.dentry, ptr %46, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %47) #16
  br label %57

48:                                               ; preds = %43
  %49 = icmp eq ptr %27, %0
  br i1 %49, label %50, label %51, !prof !19

50:                                               ; preds = %48
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2905, 0\0A.popsection", ""() #16, !srcloc !65
  unreachable

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %52) #16
  %53 = icmp eq ptr %27, %1
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  br label %57

57:                                               ; preds = %54, %44, %40
  %58 = phi ptr [ %42, %40 ], [ %56, %54 ], [ %25, %44 ]
  %59 = phi i1 [ true, %40 ], [ false, %54 ], [ false, %44 ]
  %60 = getelementptr inbounds %struct.dentry, ptr %58, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %60) #16
  br label %61

61:                                               ; preds = %57, %51
  %62 = phi i1 [ false, %51 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %63) #16
  %64 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %64) #16
  %65 = load i32, ptr %1, align 8
  %66 = and i32 %65, 268435456
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68, !prof !9

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 8
  %73 = tail call fastcc i32 @start_dir_add(ptr noundef %72)
  tail call void @__d_lookup_done(ptr noundef %1)
  %74 = add i32 %73, 2
  br label %75

75:                                               ; preds = %68, %61
  %76 = phi i32 [ %74, %68 ], [ 2, %61 ]
  %77 = phi ptr [ %72, %68 ], [ null, %61 ]
  %78 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  %81 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  %84 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %134, label %87

87:                                               ; preds = %75
  %88 = load ptr, ptr %24, align 8
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %90, label %94, !prof !19

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.super_block, ptr %92, i32 0, i32 18
  br label %101

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %96 = load i32, ptr %95, align 8
  %97 = load ptr, ptr @dentry_hashtable, align 4
  %98 = load i32, ptr @d_hash_shift, align 4
  %99 = lshr i32 %96, %98
  %100 = getelementptr %struct.hlist_bl_head, ptr %97, i32 %99
  br label %101

101:                                              ; preds = %94, %90
  %102 = phi ptr [ %93, %90 ], [ %100, %94 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %103

103:                                              ; preds = %117, %101
  %104 = load volatile i32, ptr %102, align 4
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %112, !prof !21

107:                                              ; preds = %103
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %102) #16, !srcloc !10
  %108 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %102, ptr %102, i32 1, ptr elementtype(i32) %102) #16, !srcloc !22
  %109 = extractvalue { i32, i32, i32 } %108, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %118, label %112, !prof !9

112:                                              ; preds = %107, %103
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %113

113:                                              ; preds = %113, %112
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %114 = load volatile i32, ptr %102, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %113

117:                                              ; preds = %113
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %103

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %84, align 4
  %122 = ptrtoint ptr %120 to i32
  %123 = load ptr, ptr %121, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = and i32 %124, 1
  %126 = or i32 %125, %122
  %127 = inttoptr i32 %126 to ptr
  store volatile ptr %127, ptr %121, align 4
  %128 = icmp eq ptr %120, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.hlist_bl_node, ptr %120, i32 0, i32 1
  store ptr %121, ptr %130, align 4
  br label %131

131:                                              ; preds = %129, %118
  %132 = load volatile i32, ptr %102, align 4
  %133 = and i32 %132, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %133, ptr %102, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %134

134:                                              ; preds = %131, %75
  %135 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %186, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %140, %1
  br i1 %141, label %142, label %146, !prof !19

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.super_block, ptr %144, i32 0, i32 18
  br label %153

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %148 = load i32, ptr %147, align 8
  %149 = load ptr, ptr @dentry_hashtable, align 4
  %150 = load i32, ptr @d_hash_shift, align 4
  %151 = lshr i32 %148, %150
  %152 = getelementptr %struct.hlist_bl_head, ptr %149, i32 %151
  br label %153

153:                                              ; preds = %146, %142
  %154 = phi ptr [ %145, %142 ], [ %152, %146 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %155

155:                                              ; preds = %169, %153
  %156 = load volatile i32, ptr %154, align 4
  %157 = and i32 %156, 1
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164, !prof !21

159:                                              ; preds = %155
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %154) #16, !srcloc !10
  %160 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %154, ptr %154, i32 1, ptr elementtype(i32) %154) #16, !srcloc !22
  %161 = extractvalue { i32, i32, i32 } %160, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %170, label %164, !prof !9

164:                                              ; preds = %159, %155
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %165

165:                                              ; preds = %165, %164
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %166 = load volatile i32, ptr %154, align 4
  %167 = and i32 %166, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %165

169:                                              ; preds = %165
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %155

170:                                              ; preds = %159
  %171 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = load ptr, ptr %135, align 4
  %174 = ptrtoint ptr %172 to i32
  %175 = load ptr, ptr %173, align 4
  %176 = ptrtoint ptr %175 to i32
  %177 = and i32 %176, 1
  %178 = or i32 %177, %174
  %179 = inttoptr i32 %178 to ptr
  store volatile ptr %179, ptr %173, align 4
  %180 = icmp eq ptr %172, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.hlist_bl_node, ptr %172, i32 0, i32 1
  store ptr %173, ptr %182, align 4
  br label %183

183:                                              ; preds = %181, %170
  %184 = load volatile i32, ptr %154, align 4
  %185 = and i32 %184, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %185, ptr %154, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  br label %186

186:                                              ; preds = %183, %134
  %187 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %188 = load ptr, ptr %187, align 8
  store ptr %188, ptr %24, align 8
  br i1 %2, label %234, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 6
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %196, label %194, !prof !9

194:                                              ; preds = %189
  %195 = getelementptr i8, ptr %191, i32 -8
  br label %196

196:                                              ; preds = %194, %189
  %197 = phi ptr [ %195, %194 ], [ null, %189 ]
  %198 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 6
  %201 = icmp eq ptr %199, %200
  br i1 %201, label %207, label %202, !prof !9

202:                                              ; preds = %196
  %203 = getelementptr i8, ptr %199, i32 -8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %203) #16, !srcloc !10
  %204 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %203, ptr %203, i32 1, ptr elementtype(i32) %203) #16, !srcloc !11
  %205 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %206 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %205, ptr noundef align 8 dereferenceable(16) %206, i32 16, i1 false) #16
  br label %214

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %209 = getelementptr inbounds %struct.anon, ptr %208, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = add i32 %210, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %192, ptr align 1 %199, i32 %211, i1 false) #16
  %212 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  store ptr %192, ptr %190, align 8
  %213 = load i64, ptr %208, align 8
  store i64 %213, ptr %212, align 8
  br label %214

214:                                              ; preds = %207, %202
  %215 = icmp eq ptr %197, null
  br i1 %215, label %221, label %216

216:                                              ; preds = %214
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %197) #16, !srcloc !10
  %217 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %197, ptr nonnull %197, i32 1, ptr nonnull elementtype(i32) %197) #16, !srcloc !17
  %218 = extractvalue { i32, i32 } %217, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221, !prof !9

220:                                              ; preds = %216
  tail call void @kvfree_call_rcu(ptr noundef nonnull %197, ptr noundef null) #16
  br label %221

221:                                              ; preds = %220, %216, %214
  store ptr null, ptr %135, align 4
  %222 = load ptr, ptr %24, align 8
  %223 = getelementptr inbounds %struct.dentry, ptr %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.anon.65, ptr %223, i32 0, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = add i32 %225, 1
  store i32 %226, ptr %224, align 4
  br i1 %62, label %360, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  %229 = getelementptr inbounds %struct.anon.65, ptr %228, i32 0, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = add i32 %230, -1
  store i32 %231, ptr %229, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %360, !prof !19

233:                                              ; preds = %227
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2936, i32 noundef 9, ptr noundef null) #16
  br label %360

234:                                              ; preds = %186
  store ptr %25, ptr %187, align 8
  %235 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %236 = load ptr, ptr %235, align 8
  %237 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6
  %238 = icmp eq ptr %236, %237
  %239 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %240 = load ptr, ptr %239, align 8
  %241 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6
  %242 = icmp eq ptr %240, %241
  br i1 %238, label %250, label %243, !prof !9

243:                                              ; preds = %234
  br i1 %242, label %245, label %244, !prof !9

244:                                              ; preds = %243
  store ptr %240, ptr %235, align 8
  store ptr %236, ptr %239, align 8
  br label %291

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %247 = getelementptr inbounds %struct.anon, ptr %246, i32 0, i32 1
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %237, ptr align 1 %241, i32 %249, i1 false) #16
  store ptr %236, ptr %239, align 8
  store ptr %237, ptr %235, align 8
  br label %291

250:                                              ; preds = %234
  br i1 %242, label %251, label %286, !prof !9

251:                                              ; preds = %250
  %252 = load i32, ptr %241, align 4
  %253 = load i32, ptr %237, align 4
  store i32 %253, ptr %241, align 4
  store i32 %252, ptr %237, align 4
  %254 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 4
  %255 = load i32, ptr %254, align 4
  %256 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 4
  %257 = load i32, ptr %256, align 4
  store i32 %257, ptr %254, align 4
  store i32 %255, ptr %256, align 4
  %258 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 8
  %259 = load i32, ptr %258, align 4
  %260 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 8
  %261 = load i32, ptr %260, align 4
  store i32 %261, ptr %258, align 4
  store i32 %259, ptr %260, align 4
  %262 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 12
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 12
  %265 = load i32, ptr %264, align 4
  store i32 %265, ptr %262, align 4
  store i32 %263, ptr %264, align 4
  %266 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 16
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 16
  %269 = load i32, ptr %268, align 4
  store i32 %269, ptr %266, align 4
  store i32 %267, ptr %268, align 4
  %270 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 20
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 20
  %273 = load i32, ptr %272, align 4
  store i32 %273, ptr %270, align 4
  store i32 %271, ptr %272, align 4
  %274 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 24
  %275 = load i32, ptr %274, align 4
  %276 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 24
  %277 = load i32, ptr %276, align 4
  store i32 %277, ptr %274, align 4
  store i32 %275, ptr %276, align 4
  %278 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 28
  %279 = load i32, ptr %278, align 4
  %280 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 28
  %281 = load i32, ptr %280, align 4
  store i32 %281, ptr %278, align 4
  store i32 %279, ptr %280, align 4
  %282 = getelementptr %struct.dentry, ptr %0, i32 0, i32 6, i32 32
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr %struct.dentry, ptr %1, i32 0, i32 6, i32 32
  %285 = load i32, ptr %284, align 4
  store i32 %285, ptr %282, align 4
  store i32 %283, ptr %284, align 4
  br label %291

286:                                              ; preds = %250
  %287 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %288 = getelementptr inbounds %struct.anon, ptr %287, i32 0, i32 1
  %289 = load i32, ptr %288, align 4
  %290 = add i32 %289, 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %241, ptr align 1 %237, i32 %290, i1 false) #16
  store ptr %240, ptr %235, align 8
  store ptr %241, ptr %239, align 8
  br label %291

291:                                              ; preds = %286, %251, %245, %244
  %292 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %293 = load i64, ptr %292, align 8
  %294 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %295 = load i64, ptr %294, align 8
  store i64 %295, ptr %292, align 8
  store i64 %293, ptr %294, align 8
  %296 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 13
  %297 = load ptr, ptr %187, align 8
  %298 = getelementptr inbounds %struct.dentry, ptr %297, i32 0, i32 14
  %299 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 13, i32 1
  %300 = load ptr, ptr %299, align 4
  %301 = load ptr, ptr %296, align 4
  %302 = getelementptr inbounds %struct.list_head, ptr %301, i32 0, i32 1
  store ptr %300, ptr %302, align 4
  store volatile ptr %301, ptr %300, align 4
  %303 = load ptr, ptr %298, align 4
  %304 = getelementptr inbounds %struct.list_head, ptr %303, i32 0, i32 1
  store ptr %296, ptr %304, align 4
  store ptr %303, ptr %296, align 4
  store ptr %298, ptr %299, align 4
  store volatile ptr %296, ptr %298, align 4
  %305 = load i32, ptr %294, align 8
  %306 = load ptr, ptr @dentry_hashtable, align 4
  %307 = load i32, ptr @d_hash_shift, align 4
  %308 = lshr i32 %305, %307
  %309 = getelementptr %struct.hlist_bl_head, ptr %306, i32 %308
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %310

310:                                              ; preds = %324, %291
  %311 = load volatile i32, ptr %309, align 4
  %312 = and i32 %311, 1
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %319, !prof !21

314:                                              ; preds = %310
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %309) #16, !srcloc !10
  %315 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %309, ptr %309, i32 1, ptr elementtype(i32) %309) #16, !srcloc !22
  %316 = extractvalue { i32, i32, i32 } %315, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %317 = and i32 %316, 1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %325, label %319, !prof !9

319:                                              ; preds = %314, %310
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %320

320:                                              ; preds = %320, %319
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %321 = load volatile i32, ptr %309, align 4
  %322 = and i32 %321, 1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %320

324:                                              ; preds = %320
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %310

325:                                              ; preds = %314
  %326 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2
  %327 = load ptr, ptr %309, align 4
  %328 = ptrtoint ptr %327 to i32
  %329 = and i32 %328, -2
  %330 = inttoptr i32 %329 to ptr
  store ptr %330, ptr %326, align 4
  %331 = icmp eq i32 %329, 0
  br i1 %331, label %334, label %332

332:                                              ; preds = %325
  %333 = getelementptr inbounds %struct.hlist_bl_node, ptr %330, i32 0, i32 1
  store ptr %326, ptr %333, align 4
  br label %334

334:                                              ; preds = %332, %325
  store ptr %309, ptr %135, align 4
  %335 = ptrtoint ptr %326 to i32
  %336 = or i32 %335, 1
  %337 = inttoptr i32 %336 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  store volatile ptr %337, ptr %309, align 4
  %338 = load volatile i32, ptr %309, align 4
  %339 = and i32 %338, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %339, ptr %309, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  %340 = load volatile i32, ptr %64, align 4
  store volatile i32 %340, ptr %5, align 4
  %341 = lshr i32 %340, 16
  %342 = and i32 %340, 65535
  %343 = icmp eq i32 %342, %341
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br i1 %343, label %344, label %345, !prof !19

344:                                              ; preds = %334
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #16, !srcloc !50
  unreachable

345:                                              ; preds = %334
  %346 = load ptr, ptr %187, align 8
  %347 = getelementptr inbounds %struct.dentry, ptr %346, i32 0, i32 5
  %348 = load ptr, ptr %347, align 8
  %349 = getelementptr inbounds %struct.inode, ptr %348, i32 0, i32 45
  %350 = load i32, ptr %349, align 4
  %351 = and i32 %350, 134217728
  %352 = icmp eq i32 %351, 0
  %353 = and i32 %350, 462911
  %354 = icmp eq i32 %353, 0
  %355 = or i1 %352, %354
  %356 = load i32, ptr %1, align 8
  %357 = and i32 %356, -16385
  %358 = select i1 %355, i32 0, i32 16384
  %359 = or i32 %358, %357
  store i32 %359, ptr %1, align 8
  br label %360

360:                                              ; preds = %345, %233, %227, %221
  %361 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 13
  %362 = load ptr, ptr %24, align 8
  %363 = getelementptr inbounds %struct.dentry, ptr %362, i32 0, i32 14
  %364 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 13, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = load ptr, ptr %361, align 4
  %367 = getelementptr inbounds %struct.list_head, ptr %366, i32 0, i32 1
  store ptr %365, ptr %367, align 4
  store volatile ptr %366, ptr %365, align 4
  %368 = load ptr, ptr %363, align 4
  %369 = getelementptr inbounds %struct.list_head, ptr %368, i32 0, i32 1
  store ptr %361, ptr %369, align 4
  store ptr %368, ptr %361, align 4
  store ptr %363, ptr %364, align 4
  store volatile ptr %361, ptr %363, align 4
  %370 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %371 = load i32, ptr %370, align 8
  %372 = load ptr, ptr @dentry_hashtable, align 4
  %373 = load i32, ptr @d_hash_shift, align 4
  %374 = lshr i32 %371, %373
  %375 = getelementptr %struct.hlist_bl_head, ptr %372, i32 %374
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %376

376:                                              ; preds = %390, %360
  %377 = load volatile i32, ptr %375, align 4
  %378 = and i32 %377, 1
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %385, !prof !21

380:                                              ; preds = %376
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %375) #16, !srcloc !10
  %381 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %375, ptr %375, i32 1, ptr elementtype(i32) %375) #16, !srcloc !22
  %382 = extractvalue { i32, i32, i32 } %381, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !23
  %383 = and i32 %382, 1
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %391, label %385, !prof !9

385:                                              ; preds = %380, %376
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  br label %386

386:                                              ; preds = %386, %385
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  %387 = load volatile i32, ptr %375, align 4
  %388 = and i32 %387, 1
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %386

390:                                              ; preds = %386
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !27
  br label %376

391:                                              ; preds = %380
  %392 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2
  %393 = load ptr, ptr %375, align 4
  %394 = ptrtoint ptr %393 to i32
  %395 = and i32 %394, -2
  %396 = inttoptr i32 %395 to ptr
  store ptr %396, ptr %392, align 4
  %397 = icmp eq i32 %395, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %391
  %399 = getelementptr inbounds %struct.hlist_bl_node, ptr %396, i32 0, i32 1
  store ptr %392, ptr %399, align 4
  br label %400

400:                                              ; preds = %398, %391
  store ptr %375, ptr %84, align 4
  %401 = ptrtoint ptr %392 to i32
  %402 = or i32 %401, 1
  %403 = inttoptr i32 %402 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !57
  store volatile ptr %403, ptr %375, align 4
  %404 = load volatile i32, ptr %375, align 4
  %405 = and i32 %404, -2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  store volatile i32 %405, ptr %375, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %406 = load volatile i32, ptr %63, align 4
  store volatile i32 %406, ptr %4, align 4
  %407 = lshr i32 %406, 16
  %408 = and i32 %406, 65535
  %409 = icmp eq i32 %408, %407
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %409, label %410, label %411, !prof !19

410:                                              ; preds = %400
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/fsnotify_backend.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 526, 0\0A.popsection", ""() #16, !srcloc !50
  unreachable

411:                                              ; preds = %400
  %412 = load ptr, ptr %24, align 8
  %413 = getelementptr inbounds %struct.dentry, ptr %412, i32 0, i32 5
  %414 = load ptr, ptr %413, align 8
  %415 = getelementptr inbounds %struct.inode, ptr %414, i32 0, i32 45
  %416 = load i32, ptr %415, align 4
  %417 = and i32 %416, 134217728
  %418 = icmp eq i32 %417, 0
  %419 = and i32 %416, 462911
  %420 = icmp eq i32 %419, 0
  %421 = or i1 %418, %420
  %422 = load i32, ptr %0, align 8
  %423 = and i32 %422, -16385
  %424 = select i1 %421, i32 0, i32 16384
  %425 = or i32 %424, %423
  store i32 %425, ptr %0, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %426 = load i32, ptr %81, align 4
  %427 = add i32 %426, 1
  store i32 %427, ptr %81, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %428 = load i32, ptr %78, align 4
  %429 = add i32 %428, 1
  store i32 %429, ptr %78, align 4
  %430 = icmp eq ptr %77, null
  br i1 %430, label %433, label %431

431:                                              ; preds = %411
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !62
  %432 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 43
  store volatile i32 %76, ptr %432, align 4
  br label %433

433:                                              ; preds = %431, %411
  %434 = load ptr, ptr %24, align 8
  %435 = icmp eq ptr %434, %25
  br i1 %435, label %440, label %436

436:                                              ; preds = %433
  %437 = getelementptr inbounds %struct.dentry, ptr %434, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %438 = load i16, ptr %437, align 4
  %439 = add i16 %438, 1
  store i16 %439, ptr %437, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %440

440:                                              ; preds = %436, %433
  br i1 %62, label %445, label %441

441:                                              ; preds = %440
  %442 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %443 = load i16, ptr %442, align 4
  %444 = add i16 %443, 1
  store i16 %444, ptr %442, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %445

445:                                              ; preds = %441, %440
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %446 = load i16, ptr %64, align 4
  %447 = add i16 %446, 1
  store i16 %447, ptr %64, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %448 = load i16, ptr %63, align 4
  %449 = add i16 %448, 1
  store i16 %449, ptr %63, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %450

450:                                              ; preds = %445, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_exchange(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1)) #16
  %3 = load i32, ptr @rename_lock, align 64
  %4 = add i32 %3, 1
  store i32 %4, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !44
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !19

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2989, i32 noundef 9, ptr noundef null) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !19

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2990, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %19, !prof !19

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2991, i32 noundef 9, ptr noundef null) #16
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %24, !prof !19

23:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2992, i32 noundef 9, ptr noundef null) #16
  br label %24

24:                                               ; preds = %23, %19
  tail call fastcc void @__d_move(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true)
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !45
  %25 = load i32, ptr @rename_lock, align 64
  %26 = add i32 %25, 1
  store i32 %26, ptr @rename_lock, align 64
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %27 = load i16, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr getelementptr inbounds (%struct.seqlock_t, ptr @rename_lock, i32 0, i32 1), align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @d_ancestor(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #9 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %1, %2 ], [ %6, %8 ]
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %6, %0
  br i1 %9, label %10, label %3

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %4, %8 ], [ null, %3 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__d_unalias(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call fastcc void @__d_move(ptr noundef %1, ptr noundef %0, i1 noundef zeroext false)
  br label %35

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 37
  %13 = tail call i32 @mutex_trylock(ptr noundef %12) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %10, align 4
  %17 = getelementptr inbounds %struct.super_block, ptr %16, i32 0, i32 37
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 24
  %22 = tail call i32 @down_read_trylock(ptr noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %15
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 24
  tail call fastcc void @__d_move(ptr noundef %1, ptr noundef %0, i1 noundef zeroext false)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @up_read(ptr noundef nonnull %28) #16
  br label %31

31:                                               ; preds = %30, %24, %15
  %32 = phi i32 [ 0, %30 ], [ 0, %24 ], [ -116, %15 ]
  %33 = icmp eq ptr %17, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @mutex_unlock(ptr noundef nonnull %17) #16
  br label %35

35:                                               ; preds = %34, %31, %9, %8
  %36 = phi i32 [ 0, %8 ], [ %32, %34 ], [ %32, %31 ], [ -116, %9 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_subdir(ptr noundef readonly %0, ptr noundef readnone %1) #1 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %27, label %4

4:                                                ; preds = %21, %2
  %5 = load volatile i32, ptr @rename_lock, align 64
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !41
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !42
  %9 = load volatile i32, ptr @rename_lock, align 64
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %5, %4 ], [ %9, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %0, %12 ], [ %17, %19 ]
  %16 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %17, %1
  br i1 %20, label %21, label %14

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %15, %19 ], [ null, %14 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !39
  %23 = load volatile i32, ptr @rename_lock, align 64
  %24 = icmp eq i32 %23, %13
  br i1 %24, label %25, label %4

25:                                               ; preds = %21
  %26 = icmp ne ptr %22, null
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i1 [ %26, %25 ], [ true, %2 ]
  ret i1 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_genocide(ptr noundef %0) #1 {
  tail call fastcc void @d_walk(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @d_genocide_kill)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @d_genocide_kill(ptr noundef readnone %0, ptr noundef %1) #7 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = load i32, ptr %1, align 8
  %14 = and i32 %13, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = or i32 %13, 512
  store i32 %17, ptr %1, align 8
  %18 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %19 = getelementptr inbounds %struct.anon.65, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %16, %12, %8, %4, %2
  %23 = phi i32 [ 3, %8 ], [ 3, %4 ], [ 0, %12 ], [ 0, %16 ], [ 0, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @d_tmpfile(ptr noundef %0, ptr noundef %1) #1 {
  tail call void @drop_nlink(ptr noundef %1) #16
  tail call void @__mark_inode_dirty(ptr noundef %1, i32 noundef 7) #16
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 6
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %19, !prof !9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 15, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19, !prof !9

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %20, !prof !19

19:                                               ; preds = %15, %11, %7, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3200, 0\0A.popsection", ""() #16, !srcloc !66
  unreachable

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4
  %22 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %22) #16
  %23 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %23) #16
  %24 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef nonnull @.str.7, i64 noundef %26)
  %28 = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %29 = load i16, ptr %23, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %31 = load ptr, ptr %16, align 8
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %32, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %35 = load ptr, ptr %8, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !9

37:                                               ; preds = %20
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/dcache.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2031, 0\0A.popsection", ""() #16, !srcloc !48
  unreachable

38:                                               ; preds = %20
  %39 = icmp eq ptr %1, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %41) #16
  tail call fastcc void @__d_instantiate(ptr noundef %0, ptr noundef nonnull %1) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %42 = load i16, ptr %41, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %44

44:                                               ; preds = %40, %38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_dhash_entries(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = call i32 @simple_strtoul(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #16
  store i32 %5, ptr @dhash_entries, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @vfs_caches_init_early() local_unnamed_addr #0 section ".init.text" {
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(4096) @in_lookup_hashtable, i8 0, i32 4096, i1 false)
  tail call fastcc void @dcache_init_early() #20
  tail call void @inode_init_early() #19
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @dcache_init_early() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @dhash_entries, align 4
  %2 = tail call ptr @alloc_large_system_hash(ptr noundef nonnull @.str.15, i32 noundef 4, i32 noundef %1, i32 noundef 13, i32 noundef 5, ptr noundef nonnull @d_hash_shift, ptr noundef null, i32 noundef 0, i32 noundef 0) #16
  store ptr %2, ptr @dentry_hashtable, align 4
  %3 = load i32, ptr @d_hash_shift, align 4
  %4 = sub i32 32, %3
  store i32 %4, ptr @d_hash_shift, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @inode_init_early() local_unnamed_addr #10 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @vfs_caches_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.8, i32 noundef 4096, i32 noundef 0, i32 noundef 270336, i32 noundef 0, i32 noundef 4096, ptr noundef null) #16
  store ptr %1, ptr @names_cachep, align 4
  %2 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.16, i32 noundef 136, i32 noundef 8, i32 noundef 1441792, i32 noundef 44, i32 noundef 36, ptr noundef null) #16
  store ptr %2, ptr @dentry_cache, align 4
  tail call void @inode_init() #19
  tail call void @files_init() #19
  tail call void @files_maxfiles_init() #19
  tail call void @mnt_init() #19
  tail call void @bdev_cache_init() #19
  tail call void @chrdev_init() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @inode_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @files_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @files_maxfiles_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mnt_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @bdev_cache_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @chrdev_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_nr_dentry(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 {
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %8 = icmp ult i32 %7, %6
  br i1 %8, label %9, label %20

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %18, %9 ], [ %7, %5 ]
  %11 = phi i32 [ %17, %9 ], [ 0, %5 ]
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @nr_dentry to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %11
  %18 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #18
  %19 = icmp ult i32 %18, %6
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %5
  %21 = phi i32 [ 0, %5 ], [ %17, %9 ]
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #16
  store i32 %22, ptr @dentry_stat, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %36

25:                                               ; preds = %25, %20
  %26 = phi i32 [ %34, %25 ], [ %23, %20 ]
  %27 = phi i32 [ %33, %25 ], [ 0, %20 ]
  %28 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, ptrtoint (ptr @nr_dentry_unused to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %27
  %34 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @__cpu_possible_mask) #18
  %35 = icmp ult i32 %34, %6
  br i1 %35, label %25, label %36

36:                                               ; preds = %25, %20
  %37 = phi i32 [ 0, %20 ], [ %33, %25 ]
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 0) #16
  store i32 %38, ptr getelementptr inbounds (%struct.dentry_stat_t, ptr @dentry_stat, i32 0, i32 1), align 4
  %39 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  %40 = icmp ult i32 %39, %6
  br i1 %40, label %41, label %52

41:                                               ; preds = %41, %36
  %42 = phi i32 [ %50, %41 ], [ %39, %36 ]
  %43 = phi i32 [ %49, %41 ], [ 0, %36 ]
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, ptrtoint (ptr @nr_dentry_negative to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %43
  %50 = tail call i32 @cpumask_next(i32 noundef %42, ptr noundef nonnull @__cpu_possible_mask) #18
  %51 = icmp ult i32 %50, %6
  br i1 %51, label %41, label %52

52:                                               ; preds = %41, %36
  %53 = phi i32 [ 0, %36 ], [ %49, %41 ]
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0) #16
  store i32 %54, ptr getelementptr inbounds (%struct.dentry_stat_t, ptr @dentry_stat, i32 0, i32 4), align 4
  %55 = tail call i32 @proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_put_or_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockref_put_return(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @d_lru_add(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 525312
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @d_lru_add.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %10, !prof !19

8:                                                ; preds = %1
  store i1 true, ptr @d_lru_add.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 426, i32 noundef 9, ptr noundef null) #16
  %9 = load i32, ptr %0, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %2, %1 ]
  %12 = or i32 %11, 524288
  store i32 %12, ptr %0, align 8
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #12, !srcloc !36
  %17 = add i32 %16, ptrtoint (ptr @nr_dentry_unused to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #16, !srcloc !37
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 7340032
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %10
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #12, !srcloc !36
  %29 = add i32 %28, ptrtoint (ptr @nr_dentry_negative to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #16, !srcloc !37
  br label %33

33:                                               ; preds = %24, %10
  %34 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 48
  %37 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 12
  %38 = tail call zeroext i1 @list_lru_add(ptr noundef %36, ptr noundef %37) #16
  %39 = load i1, ptr @d_lru_add.__already_done.12, align 1
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %33
  store i1 true, ptr @d_lru_add.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 431, i32 noundef 9, ptr noundef null) #16
  br label %42

42:                                               ; preds = %41, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__lock_parent(ptr noundef %0) unnamed_addr #1 {
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %3 = load i16, ptr %2, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %7) #16
  %8 = load ptr, ptr %5, align 8
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %18, label %10, !prof !9

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %15, %10 ], [ %7, %1 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !12
  %12 = load i16, ptr %11, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  %14 = load volatile ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %15) #16
  %16 = load ptr, ptr %5, align 8
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %10, !prof !9

18:                                               ; preds = %10, %1
  %19 = phi ptr [ %6, %1 ], [ %14, %10 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !34
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @_raw_spin_lock(ptr noundef %2) #16
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi ptr [ %19, %21 ], [ null, %18 ]
  ret ptr %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @d_lru_del(ptr noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 525312
  %4 = icmp ne i32 %3, 524288
  %5 = load i1, ptr @d_lru_del.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %10, !prof !19

8:                                                ; preds = %1
  store i1 true, ptr @d_lru_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 436, i32 noundef 9, ptr noundef null) #16
  %9 = load i32, ptr %0, align 8
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %2, %1 ]
  %12 = and i32 %11, -524289
  store i32 %12, ptr %0, align 8
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #12, !srcloc !36
  %17 = add i32 %16, ptrtoint (ptr @nr_dentry_unused to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #16, !srcloc !37
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 7340032
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %10
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !35
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #12, !srcloc !36
  %29 = add i32 %28, ptrtoint (ptr @nr_dentry_negative to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #16, !srcloc !37
  br label %33

33:                                               ; preds = %24, %10
  %34 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 48
  %37 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 12
  %38 = tail call zeroext i1 @list_lru_del(ptr noundef %36, ptr noundef %37) #16
  %39 = load i1, ptr @d_lru_del.__already_done.13, align 1
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %33
  store i1 true, ptr @d_lru_del.__already_done.13, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 441, i32 noundef 9, ptr noundef null) #16
  br label %42

42:                                               ; preds = %41, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @list_lru_del(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_mark_dead(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__d_free_external(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = getelementptr i8, ptr %0, i32 -96
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -8
  tail call void @kfree(ptr noundef %5) #16
  %6 = load ptr, ptr @dentry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %2) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__d_free(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -128
  %3 = load ptr, ptr @dentry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %3, ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_one(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_lru_isolate_move(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_walk_node(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @list_lru_count_node(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__lookup_mnt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @umount_check(ptr noundef readnone %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 14
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %32

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %8, label %13

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %10 = getelementptr inbounds %struct.anon.65, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %32, label %13

13:                                               ; preds = %8, %6
  %14 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ 0, %13 ]
  %22 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  %23 = getelementptr inbounds %struct.anon.65, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 32
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.super_block, ptr %26, i32 0, i32 33
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %1, i32 noundef %21, ptr noundef %1, i32 noundef %24, ptr noundef %29, ptr noundef %30) #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1676, i32 noundef 9, ptr noundef null) #16
  br label %32

32:                                               ; preds = %20, %8, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__detach_mounts(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fsnotify_inode_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @start_dir_add(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  br label %3

3:                                                ; preds = %16, %1
  %4 = load i32, ptr %2, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !67
  %8 = add nuw i32 %4, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #16, !srcloc !10
  br label %9

9:                                                ; preds = %9, %7
  %10 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %4, i32 %8) #16, !srcloc !68
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !69
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !70
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !71
  br label %3

17:                                               ; preds = %13
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_large_system_hash(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { cold nounwind }
attributes #20 = { cold }

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
!10 = !{i64 615886, i64 2148117452, i64 2148117478, i64 2148117525, i64 2148117547, i64 2148117575, i64 2148117595}
!11 = !{i64 2148180714, i64 2148180740, i64 2148180769, i64 2148180803, i64 2148180834, i64 2148180857}
!12 = !{i64 2149252827}
!13 = !{i64 2149248651}
!14 = !{i64 2149248726, i64 2149248753, i64 2149248800, i64 2149248822, i64 2149248850, i64 2149248870}
!15 = !{i64 2149275830}
!16 = !{i64 2148281393}
!17 = !{i64 2148183755, i64 2148183787, i64 2148183816, i64 2148183850, i64 2148183881, i64 2148183904}
!18 = !{i64 2148281596}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2150734299}
!21 = !{!"branch_weights", i32 2146410443, i32 1073205}
!22 = !{i64 2148189176, i64 2148189208, i64 2148189237, i64 2148189271, i64 2148189302, i64 2148189325}
!23 = !{i64 2148290516}
!24 = !{i64 2150734410}
!25 = !{i64 2150734639}
!26 = !{i64 2150734481}
!27 = !{i64 2150734721}
!28 = !{i64 2148275188}
!29 = !{i64 2150735507}
!30 = !{i64 2149674024}
!31 = !{i64 2149026628}
!32 = !{i64 2152769465}
!33 = !{!"branch_weights", i32 1073205, i32 2146410443}
!34 = !{i64 2149026845}
!35 = !{i64 644633, i64 644694}
!36 = !{i64 651738}
!37 = !{i64 647650}
!38 = !{i64 2152775807}
!39 = !{i64 2149671890}
!40 = !{i64 2152780441, i64 2152780917, i64 2152780478, i64 2152780534, i64 2152780568, i64 2152780592, i64 2152780633, i64 2152780654, i64 2152780682, i64 2152780716}
!41 = !{i64 2149681258}
!42 = !{i64 2149681100}
!43 = !{i64 2149681402}
!44 = !{i64 2149672189}
!45 = !{i64 2149672490}
!46 = !{i64 2152823373}
!47 = !{!"auto-init"}
!48 = !{i64 2152861192, i64 2152861669, i64 2152861229, i64 2152861285, i64 2152861319, i64 2152861343, i64 2152861384, i64 2152861405, i64 2152861433, i64 2152861467}
!49 = !{i64 2152639318}
!50 = !{i64 2152244513, i64 2152245010, i64 2152244550, i64 2152244606, i64 2152244640, i64 2152244664, i64 2152244705, i64 2152244726, i64 2152244754, i64 2152244788}
!51 = !{i64 2152863392, i64 2152863869, i64 2152863429, i64 2152863485, i64 2152863519, i64 2152863543, i64 2152863584, i64 2152863605, i64 2152863633, i64 2152863667}
!52 = !{i64 2152864375, i64 2152864852, i64 2152864412, i64 2152864468, i64 2152864502, i64 2152864526, i64 2152864567, i64 2152864588, i64 2152864616, i64 2152864650}
!53 = !{i64 2152865750}
!54 = !{i64 2152910350}
!55 = !{i64 5130941, i64 5130963, i64 5130971, i64 5131009, i64 5131024, i64 5131049, i64 5131072, i64 5131091, i64 5131132, i64 5131187, i64 5131198, i64 5131216, i64 5131252, i64 5131267, i64 5131286}
!56 = !{i64 2152903830}
!57 = !{i64 2151269738}
!58 = !{i64 2152971838, i64 2152972315, i64 2152971875, i64 2152971931, i64 2152971965, i64 2152971989, i64 2152972030, i64 2152972051, i64 2152972079, i64 2152972113}
!59 = !{i64 2152883656}
!60 = !{i64 2152885274}
!61 = !{i64 2152885116}
!62 = !{i64 2152898544}
!63 = !{i64 2152942112, i64 2152942589, i64 2152942149, i64 2152942205, i64 2152942239, i64 2152942263, i64 2152942304, i64 2152942325, i64 2152942353, i64 2152942387}
!64 = !{i64 2152943122, i64 2152943599, i64 2152943159, i64 2152943215, i64 2152943249, i64 2152943273, i64 2152943314, i64 2152943335, i64 2152943363, i64 2152943397}
!65 = !{i64 2152944406, i64 2152944883, i64 2152944443, i64 2152944499, i64 2152944533, i64 2152944557, i64 2152944598, i64 2152944619, i64 2152944647, i64 2152944681}
!66 = !{i64 2152978295, i64 2152978772, i64 2152978332, i64 2152978388, i64 2152978422, i64 2152978446, i64 2152978487, i64 2152978508, i64 2152978536, i64 2152978570}
!67 = !{i64 2152895652}
!68 = !{i64 690702, i64 690723, i64 690746, i64 690765, i64 690784}
!69 = !{i64 2152896031}
!70 = !{i64 2152896280}
!71 = !{i64 2152896122}
