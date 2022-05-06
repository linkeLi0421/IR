; ModuleID = '/llk/IR/fs/proc/generic.c_pt.bc'
source_filename = "../fs/proc/generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_symlink\22\09\09\09\09\09"
module asm "__kstrtabns_proc_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__proc_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22_proc_mkdir\22\09\09\09\09\09"
module asm "__kstrtabns__proc_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_mkdir_data:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_mkdir_data\22\09\09\09\09\09"
module asm "__kstrtabns_proc_mkdir_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_mkdir_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_mkdir_mode\22\09\09\09\09\09"
module asm "__kstrtabns_proc_mkdir_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_mkdir\22\09\09\09\09\09"
module asm "__kstrtabns_proc_mkdir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_mount_point\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_data:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_data\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_seq_private:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_seq_private\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_seq_private:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_create_single_data:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_create_single_data\22\09\09\09\09\09"
module asm "__kstrtabns_proc_create_single_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_set_size:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_set_size\22\09\09\09\09\09"
module asm "__kstrtabns_proc_set_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_set_user:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_set_user\22\09\09\09\09\09"
module asm "__kstrtabns_proc_set_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_proc_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_proc_entry\22\09\09\09\09\09"
module asm "__kstrtabns_remove_proc_entry:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remove_proc_subtree:\09\09\09\09\09"
module asm "\09.asciz \09\22remove_proc_subtree\22\09\09\09\09\09"
module asm "__kstrtabns_remove_proc_subtree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_get_parent_data:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_get_parent_data\22\09\09\09\09\09"
module asm "__kstrtabns_proc_get_parent_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_proc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22proc_remove\22\09\09\09\09\09"
module asm "__kstrtabns_proc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.65, ptr, %union.anon.66, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.65 = type { ptr }
%union.anon.66 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.user_namespace = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.61 }
%union.anon.61 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, ptr, %struct.address_space, %struct.list_head, %union.anon.60, i32, i32, ptr, ptr }
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.59 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.60 = type { ptr }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.dir_context = type { ptr, i64 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@proc_dir_entry_cache = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@proc_inum_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@proc_subdir_lock = internal global %struct.rwlock_t zeroinitializer, align 4
@proc_net_dentry_ops = dso_local constant %struct.dentry_operations { ptr @proc_net_d_revalidate, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@.str = private unnamed_addr constant [18 x i8] c"fs/proc/generic.c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"proc_dir_entry '%s/%s' already registered\0A\00", align 1
@proc_link_inode_operations = external dso_local constant %struct.inode_operations, align 64
@__kstrtab_proc_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_symlink to i32), ptr @__kstrtab_proc_symlink, ptr @__kstrtabns_proc_symlink }, section "___ksymtab+proc_symlink", align 4
@proc_dir_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_dir_inode_operations = internal constant %struct.inode_operations { ptr @proc_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_notify_change, ptr @proc_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@__kstrtab__proc_mkdir = external dso_local constant [0 x i8], align 1
@__kstrtabns__proc_mkdir = external dso_local constant [0 x i8], align 1
@__ksymtab__proc_mkdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_proc_mkdir to i32), ptr @__kstrtab__proc_mkdir, ptr @__kstrtabns__proc_mkdir }, section "___ksymtab_gpl+_proc_mkdir", align 4
@__kstrtab_proc_mkdir_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_mkdir_data = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_mkdir_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_mkdir_data to i32), ptr @__kstrtab_proc_mkdir_data, ptr @__kstrtabns_proc_mkdir_data }, section "___ksymtab_gpl+proc_mkdir_data", align 4
@__kstrtab_proc_mkdir_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_mkdir_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_mkdir_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_mkdir_mode to i32), ptr @__kstrtab_proc_mkdir_mode, ptr @__kstrtabns_proc_mkdir_mode }, section "___ksymtab+proc_mkdir_mode", align 4
@__kstrtab_proc_mkdir = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_mkdir = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_mkdir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_mkdir to i32), ptr @__kstrtab_proc_mkdir, ptr @__kstrtabns_proc_mkdir }, section "___ksymtab+proc_mkdir", align 4
@__kstrtab_proc_create_mount_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_mount_point = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_mount_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_mount_point to i32), ptr @__kstrtab_proc_create_mount_point, ptr @__kstrtabns_proc_create_mount_point }, section "___ksymtab+proc_create_mount_point", align 4
@proc_create_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@proc_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_notify_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@__kstrtab_proc_create_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_data = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_data to i32), ptr @__kstrtab_proc_create_data, ptr @__kstrtabns_proc_create_data }, section "___ksymtab+proc_create_data", align 4
@__kstrtab_proc_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create to i32), ptr @__kstrtab_proc_create, ptr @__kstrtabns_proc_create }, section "___ksymtab+proc_create", align 4
@proc_seq_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_seq_open, ptr null, ptr @seq_read_iter, ptr null, ptr @seq_lseek, ptr @proc_seq_release, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_proc_create_seq_private = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_seq_private = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_seq_private = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_seq_private to i32), ptr @__kstrtab_proc_create_seq_private, ptr @__kstrtabns_proc_create_seq_private }, section "___ksymtab+proc_create_seq_private", align 4
@proc_single_ops = internal constant %struct.proc_ops { i32 0, ptr @proc_single_open, ptr null, ptr @seq_read_iter, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_proc_create_single_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_create_single_data = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_create_single_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_create_single_data to i32), ptr @__kstrtab_proc_create_single_data, ptr @__kstrtabns_proc_create_single_data }, section "___ksymtab+proc_create_single_data", align 4
@__kstrtab_proc_set_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_set_size = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_set_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_set_size to i32), ptr @__kstrtab_proc_set_size, ptr @__kstrtabns_proc_set_size }, section "___ksymtab+proc_set_size", align 4
@__kstrtab_proc_set_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_set_user = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_set_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_set_user to i32), ptr @__kstrtab_proc_set_user, ptr @__kstrtabns_proc_set_user }, section "___ksymtab+proc_set_user", align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"removing permanent /proc entry '%s'\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"name '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"%s: removing non-empty directory '%s/%s', leaking at least '%s'\0A\00", align 1
@__func__.remove_proc_entry = private unnamed_addr constant [18 x i8] c"remove_proc_entry\00", align 1
@__kstrtab_remove_proc_entry = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_proc_entry = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_proc_entry = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_proc_entry to i32), ptr @__kstrtab_remove_proc_entry, ptr @__kstrtabns_remove_proc_entry }, section "___ksymtab+remove_proc_entry", align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"removing permanent /proc entry '%s/%s'\00", align 1
@__kstrtab_remove_proc_subtree = external dso_local constant [0 x i8], align 1
@__kstrtabns_remove_proc_subtree = external dso_local constant [0 x i8], align 1
@__ksymtab_remove_proc_subtree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remove_proc_subtree to i32), ptr @__kstrtab_remove_proc_subtree, ptr @__kstrtabns_remove_proc_subtree }, section "___ksymtab+remove_proc_subtree", align 4
@__kstrtab_proc_get_parent_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_get_parent_data = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_get_parent_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_get_parent_data to i32), ptr @__kstrtab_proc_get_parent_data, ptr @__kstrtabns_proc_get_parent_data }, section "___ksymtab_gpl+proc_get_parent_data", align 4
@__kstrtab_proc_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_proc_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_proc_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @proc_remove to i32), ptr @__kstrtab_proc_remove, ptr @__kstrtabns_proc_remove }, section "___ksymtab+proc_remove", align 4
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"name len %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"name '.'\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"name '..'\0A\00", align 1
@proc_root = external dso_local global %struct.proc_dir_entry, align 8
@.str.11 = private unnamed_addr constant [27 x i8] c"create '/proc/%s' by hand\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"attempt to add to permanently empty directory\00", align 1
@proc_misc_dentry_ops = internal constant %struct.dentry_operations { ptr @proc_misc_d_revalidate, ptr null, ptr null, ptr null, ptr @proc_misc_d_delete, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab__proc_mkdir, ptr @__ksymtab_proc_create, ptr @__ksymtab_proc_create_data, ptr @__ksymtab_proc_create_mount_point, ptr @__ksymtab_proc_create_seq_private, ptr @__ksymtab_proc_create_single_data, ptr @__ksymtab_proc_get_parent_data, ptr @__ksymtab_proc_mkdir, ptr @__ksymtab_proc_mkdir_data, ptr @__ksymtab_proc_mkdir_mode, ptr @__ksymtab_proc_remove, ptr @__ksymtab_proc_set_size, ptr @__ksymtab_proc_set_user, ptr @__ksymtab_proc_symlink, ptr @__ksymtab_remove_proc_entry, ptr @__ksymtab_remove_proc_subtree], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pde_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 21
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, -4096
  %5 = icmp eq i16 %4, -24576
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #12
  br label %9

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 24
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @kfree(ptr noundef %11) #12
  br label %15

15:                                               ; preds = %14, %9
  %16 = load ptr, ptr @proc_dir_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %16, ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_alloc_inum(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @ida_alloc_range(ptr noundef nonnull @proc_inum_ida, i32 noundef 0, i32 noundef 268435455, i32 noundef 3264) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = add nsw i32 %2, -268435456
  store i32 %5, ptr %0, align 4
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ 0, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_free_inum(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, 268435456
  tail call void @ida_free(ptr noundef nonnull @proc_inum_ida, i32 noundef %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_lookup_de(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @_raw_read_lock(ptr noundef nonnull @proc_subdir_lock) #12
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %2, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %31, %3
  %13 = phi ptr [ %33, %31 ], [ %10, %3 ]
  %14 = getelementptr i8, ptr %13, i32 19
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ult i32 %8, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = icmp ugt i32 %8, %16
  br i1 %19, label %29, label %20

20:                                               ; preds = %18
  %21 = getelementptr i8, ptr %13, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @memcmp(ptr noundef %6, ptr noundef %22, i32 noundef %8) #12
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %12
  %26 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2
  br label %31

27:                                               ; preds = %20
  %28 = icmp eq i32 %23, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %27, %18
  %30 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %26, %25 ], [ %30, %29 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %63, label %12

35:                                               ; preds = %27
  %36 = getelementptr i8, ptr %13, i32 -88
  %37 = icmp eq ptr %36, null
  br i1 %37, label %63, label %38

38:                                               ; preds = %35
  %39 = getelementptr i8, ptr %13, i32 -84
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %39) #12, !srcloc !8
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %39, ptr %39, i32 1, ptr elementtype(i32) %39) #12, !srcloc !9
  %41 = extractvalue { i32, i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43, !prof !10

43:                                               ; preds = %38
  %44 = add i32 %41, 1
  %45 = or i32 %44, %41
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %49, label %47, !prof !11

47:                                               ; preds = %43, %38
  %48 = phi i32 [ 2, %38 ], [ 1, %43 ]
  tail call void @refcount_warn_saturate(ptr noundef %39, i32 noundef %48) #12
  br label %49

49:                                               ; preds = %47, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_subdir_lock) #12, !srcloc !8
  %50 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @proc_subdir_lock) #12, !srcloc !13
  %51 = extractvalue { i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  br label %54

54:                                               ; preds = %53, %49
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %55 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = tail call ptr @proc_get_inode(ptr noundef %56, ptr noundef nonnull %36) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = getelementptr i8, ptr %13, i32 -56
  %61 = load ptr, ptr %60, align 8
  tail call void @d_set_d_op(ptr noundef %1, ptr noundef %61) #12
  %62 = tail call ptr @d_splice_alias(ptr noundef nonnull %57, ptr noundef %1) #12
  br label %69

63:                                               ; preds = %35, %31, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_subdir_lock) #12, !srcloc !8
  %64 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @proc_subdir_lock) #12, !srcloc !13
  %65 = extractvalue { i32, i32 } %64, 0
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  br label %68

68:                                               ; preds = %67, %63
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %69

69:                                               ; preds = %68, %59, %54
  %70 = phi ptr [ %62, %59 ], [ inttoptr (i32 -2 to ptr), %68 ], [ inttoptr (i32 -12 to ptr), %54 ]
  ret ptr %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_set_d_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 -28
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @proc_lookup_de(ptr noundef %0, ptr noundef %1, ptr noundef %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi ptr [ %14, %11 ], [ inttoptr (i32 -2 to ptr), %3 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_readdir_de(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  switch i64 %5, label %36 [
    i64 0, label %7
    i64 1, label %19
  ]

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = zext i32 %14 to i64
  %16 = tail call i32 %8(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef 0, i64 noundef %15, i32 noundef 4) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %114

18:                                               ; preds = %7
  store i64 1, ptr %4, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load ptr, ptr %1, align 8
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %23) #12
  %24 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !17
  %30 = load i16, ptr %23, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %32 = zext i32 %29 to i64
  %33 = tail call i32 %20(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef 2, i64 noundef 1, i64 noundef %32, i32 noundef 4) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %114

35:                                               ; preds = %19
  store i64 2, ptr %4, align 8
  br label %36

36:                                               ; preds = %35, %3
  %37 = phi i32 [ 2, %35 ], [ %6, %3 ]
  tail call void @_raw_read_lock(ptr noundef nonnull @proc_subdir_lock) #12
  %38 = getelementptr inbounds %struct.proc_dir_entry, ptr %2, i32 0, i32 18
  %39 = tail call ptr @rb_first(ptr noundef %38) #12
  %40 = icmp eq ptr %39, null
  %41 = getelementptr i8, ptr %39, i32 -88
  %42 = icmp eq ptr %41, null
  %43 = or i1 %40, %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = add i32 %37, -2
  br label %52

46:                                               ; preds = %56, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_subdir_lock) #12, !srcloc !8
  %47 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @proc_subdir_lock) #12, !srcloc !13
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  br label %51

51:                                               ; preds = %50, %46
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %114

52:                                               ; preds = %56, %44
  %53 = phi i32 [ %61, %56 ], [ %45, %44 ]
  %54 = phi ptr [ %60, %56 ], [ %41, %44 ]
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.proc_dir_entry, ptr %54, i32 0, i32 19
  %58 = tail call ptr @rb_next(ptr noundef %57) #12
  %59 = icmp eq ptr %58, null
  %60 = getelementptr i8, ptr %58, i32 -88
  %61 = add i32 %53, -1
  %62 = icmp eq ptr %60, null
  %63 = or i1 %59, %62
  br i1 %63, label %46, label %52

64:                                               ; preds = %99, %52
  %65 = phi ptr [ %105, %99 ], [ %54, %52 ]
  %66 = getelementptr inbounds %struct.proc_dir_entry, ptr %65, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #12, !srcloc !8
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #12, !srcloc !9
  %68 = extractvalue { i32, i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70, !prof !10

70:                                               ; preds = %64
  %71 = add i32 %68, 1
  %72 = or i32 %71, %68
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %76, label %74, !prof !11

74:                                               ; preds = %70, %64
  %75 = phi i32 [ 2, %64 ], [ 1, %70 ]
  tail call void @refcount_warn_saturate(ptr noundef %66, i32 noundef %75) #12
  br label %76

76:                                               ; preds = %74, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_subdir_lock) #12, !srcloc !8
  %77 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @proc_subdir_lock) #12, !srcloc !13
  %78 = extractvalue { i32, i32 } %77, 0
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  br label %81

81:                                               ; preds = %80, %76
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %82 = getelementptr inbounds %struct.proc_dir_entry, ptr %65, i32 0, i32 20
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.proc_dir_entry, ptr %65, i32 0, i32 23
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.proc_dir_entry, ptr %65, i32 0, i32 12
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.proc_dir_entry, ptr %65, i32 0, i32 21
  %91 = load i16, ptr %90, align 8
  %92 = lshr i16 %91, 12
  %93 = zext i16 %92 to i32
  %94 = load ptr, ptr %1, align 8
  %95 = load i64, ptr %4, align 8
  %96 = tail call i32 %94(ptr noundef %1, ptr noundef %83, i32 noundef %86, i64 noundef %95, i64 noundef %89, i32 noundef %93) #12
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %81
  tail call void @pde_put(ptr noundef %65)
  br label %114

99:                                               ; preds = %81
  %100 = load i64, ptr %4, align 8
  %101 = add i64 %100, 1
  store i64 %101, ptr %4, align 8
  tail call void @_raw_read_lock(ptr noundef nonnull @proc_subdir_lock) #12
  %102 = getelementptr inbounds %struct.proc_dir_entry, ptr %65, i32 0, i32 19
  %103 = tail call ptr @rb_next(ptr noundef %102) #12
  %104 = icmp eq ptr %103, null
  %105 = getelementptr i8, ptr %103, i32 -88
  tail call void @pde_put(ptr noundef %65)
  %106 = icmp eq ptr %105, null
  %107 = or i1 %104, %106
  br i1 %107, label %108, label %64

108:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_subdir_lock) #12, !srcloc !8
  %109 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @proc_subdir_lock) #12, !srcloc !13
  %110 = extractvalue { i32, i32 } %109, 0
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  br label %113

113:                                              ; preds = %112, %108
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %114

114:                                              ; preds = %113, %98, %51, %19, %7
  %115 = phi i32 [ 1, %113 ], [ 0, %98 ], [ 0, %51 ], [ 0, %7 ], [ 0, %19 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pde_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #12, !srcloc !8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #12, !srcloc !20
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %28, label %8, !prof !11

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #12
  br label %28

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 12
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 268435456
  tail call void @ida_free(ptr noundef nonnull @proc_inum_ida, i32 noundef %12) #12
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 21
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, -4096
  %16 = icmp eq i16 %15, -24576
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #12
  br label %20

20:                                               ; preds = %17, %9
  %21 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 24
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  tail call void @kfree(ptr noundef %22) #12
  br label %26

26:                                               ; preds = %25, %20
  %27 = load ptr, ptr @proc_dir_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef %0) #12
  br label %28

28:                                               ; preds = %26, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.proc_fs_info, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %4, i32 -28
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @proc_readdir_de(ptr noundef %0, ptr noundef %1, ptr noundef %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ 1, %2 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @proc_net_d_revalidate(ptr nocapture noundef readnone %0, i32 noundef %1) #3 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 12
  %4 = tail call i32 @ida_alloc_range(ptr noundef nonnull @proc_inum_ida, i32 noundef 0, i32 noundef 268435455, i32 noundef 3264) #12
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %2
  %7 = add nsw i32 %4, -268435456
  store i32 %7, ptr %3, align 4
  tail call void @_raw_write_lock(ptr noundef nonnull @proc_subdir_lock) #12
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 17
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 18
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 23
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  br label %28

18:                                               ; preds = %37
  %19 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  %20 = select i1 %42, ptr %30, ptr %19
  br label %21

21:                                               ; preds = %34, %18
  %22 = phi i1 [ %35, %34 ], [ %41, %18 ]
  %23 = phi ptr [ %36, %34 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  %25 = select i1 %22, ptr %24, ptr %23
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %21, %12
  %29 = phi ptr [ %10, %12 ], [ %26, %21 ]
  %30 = phi ptr [ %9, %12 ], [ %25, %21 ]
  %31 = getelementptr i8, ptr %29, i32 19
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, %16
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = icmp ugt i8 %32, %16
  %36 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %21

37:                                               ; preds = %28
  %38 = getelementptr i8, ptr %29, i32 12
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @memcmp(ptr noundef %14, ptr noundef %39, i32 noundef %17) #12
  %41 = icmp slt i32 %40, 0
  %42 = icmp eq i32 %40, 0
  %43 = xor i1 %42, true
  %44 = or i1 %41, %43
  br i1 %44, label %18, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 20
  %47 = load ptr, ptr %46, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 377, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %47, ptr noundef %14) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %48 = load i32, ptr %3, align 4
  %49 = add i32 %48, 268435456
  tail call void @ida_free(ptr noundef nonnull @proc_inum_ida, i32 noundef %49) #12
  br label %60

50:                                               ; preds = %21, %6
  %51 = phi ptr [ null, %6 ], [ %29, %21 ]
  %52 = phi ptr [ %9, %6 ], [ %25, %21 ]
  %53 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 19
  %54 = ptrtoint ptr %51 to i32
  store i32 %54, ptr %53, align 4
  %55 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 19, i32 1
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 19, i32 2
  store ptr null, ptr %56, align 4
  store ptr %53, ptr %52, align 4
  tail call void @rb_insert_color(ptr noundef %53, ptr noundef %9) #12
  %57 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 13
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %76

60:                                               ; preds = %45, %2
  %61 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 21
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, -4096
  %64 = icmp eq i16 %63, -24576
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  tail call void @kfree(ptr noundef %67) #12
  br label %68

68:                                               ; preds = %65, %60
  %69 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 20
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.proc_dir_entry, ptr %1, i32 0, i32 24
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @kfree(ptr noundef %70) #12
  br label %74

74:                                               ; preds = %73, %68
  %75 = load ptr, ptr @proc_dir_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %75, ptr noundef %1) #12
  br label %76

76:                                               ; preds = %74, %50
  %77 = phi ptr [ null, %74 ], [ %1, %50 ]
  ret ptr %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_symlink(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  store ptr %1, ptr %4, align 4
  %5 = call fastcc ptr @__proc_create(ptr noundef nonnull %4, ptr noundef %0, i16 noundef zeroext -24065, i32 noundef 1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @strlen(ptr noundef %2)
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 16
  store i64 %9, ptr %10, align 8
  %11 = add i32 %8, 1
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #13
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 10
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = tail call ptr @strcpy(ptr noundef nonnull %12, ptr noundef %2)
  %17 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 5
  store ptr @proc_link_inode_operations, ptr %17, align 8
  %18 = load ptr, ptr %4, align 4
  %19 = tail call ptr @proc_register(ptr noundef %18, ptr noundef nonnull %5)
  br label %34

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 21
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, -4096
  %24 = icmp eq i16 %23, -24576
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @kfree(ptr noundef null) #12
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 20
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 24
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  tail call void @kfree(ptr noundef %28) #12
  br label %32

32:                                               ; preds = %31, %26
  %33 = load ptr, ptr @proc_dir_entry_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %33, ptr noundef nonnull %5) #12
  br label %34

34:                                               ; preds = %32, %15, %3
  %35 = phi ptr [ %19, %15 ], [ null, %32 ], [ null, %3 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__proc_create(ptr nocapture noundef %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.qstr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !25
  tail call void @_raw_read_lock(ptr noundef nonnull @proc_subdir_lock) #12
  %7 = call fastcc i32 @__xlate_proc_name(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %5) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @proc_subdir_lock) #12, !srcloc !8
  %8 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @proc_subdir_lock) #12, !srcloc !13
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  br label %12

12:                                               ; preds = %11, %4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr inbounds %struct.qstr, ptr %6, i32 0, i32 1
  store ptr %15, ptr %16, align 8
  %17 = tail call i32 @strlen(ptr noundef %15)
  %18 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = add i32 %17, -256
  %20 = icmp ult i32 %19, -255
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %17) #12
  br label %96

22:                                               ; preds = %14
  switch i32 %17, label %35 [
    i32 1, label %23
    i32 2, label %27
  ]

23:                                               ; preds = %22
  %24 = load i8, ptr %15, align 1
  %25 = icmp eq i8 %24, 46
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 410, i32 noundef 9, ptr noundef nonnull @.str.9) #12
  br label %96

27:                                               ; preds = %22
  %28 = load i8, ptr %15, align 1
  %29 = icmp eq i8 %28, 46
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %15, i32 1
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 46
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 414, i32 noundef 9, ptr noundef nonnull @.str.10) #12
  br label %96

35:                                               ; preds = %30, %27, %23, %22
  %36 = load ptr, ptr %0, align 4
  %37 = icmp eq ptr %36, @proc_root
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = call i32 @name_to_int(ptr noundef nonnull %6) #12
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load ptr, ptr %16, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 418, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %44) #12
  br label %96

45:                                               ; preds = %41, %35
  %46 = phi ptr [ %42, %41 ], [ %36, %35 ]
  %47 = getelementptr inbounds %struct.proc_dir_entry, ptr %46, i32 0, i32 21
  %48 = load i16, ptr %47, align 8
  %49 = and i16 %48, -4096
  %50 = icmp eq i16 %49, 16384
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.proc_dir_entry, ptr %46, i32 0, i32 5
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 422, i32 noundef 9, ptr noundef nonnull @.str.12) #12
  br label %96

56:                                               ; preds = %51, %45
  %57 = load ptr, ptr @proc_dir_entry_cache, align 4
  %58 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %57, i32 noundef 3520) #12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %96, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %18, align 4
  %62 = add i32 %61, 1
  %63 = icmp ult i32 %62, 17
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 24
  %66 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 20
  store ptr %65, ptr %66, align 4
  br label %75

67:                                               ; preds = %60
  %68 = call noalias align 64 ptr @__kmalloc(i32 noundef %62, i32 noundef 3264) #13
  %69 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 20
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, ptr %18, align 4
  %73 = add i32 %72, 1
  br label %75

74:                                               ; preds = %67
  call void @pde_free(ptr noundef nonnull %58)
  br label %96

75:                                               ; preds = %71, %64
  %76 = phi i32 [ %73, %71 ], [ %62, %64 ]
  %77 = phi ptr [ %68, %71 ], [ %65, %64 ]
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %77, ptr align 1 %15, i32 %76, i1 false)
  %78 = load i32, ptr %18, align 4
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 23
  store i8 %79, ptr %80, align 1
  %81 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 21
  store i16 %2, ptr %81, align 8
  %82 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 13
  store i32 %3, ptr %82, align 8
  %83 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 18
  store ptr null, ptr %83, align 4
  %84 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 1
  store volatile i32 1, ptr %84, align 4
  %85 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 3
  store i32 0, ptr %85, align 8
  %86 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 2
  store volatile ptr %86, ptr %86, align 8
  %87 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 2, i32 1
  store ptr %86, ptr %87, align 4
  %88 = load ptr, ptr %0, align 4
  %89 = getelementptr inbounds %struct.proc_dir_entry, ptr %88, i32 0, i32 14
  %90 = getelementptr inbounds %struct.proc_dir_entry, ptr %88, i32 0, i32 15
  %91 = load i32, ptr %89, align 4
  %92 = load i32, ptr %90, align 8
  %93 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 14
  store i32 %91, ptr %93, align 4
  %94 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 15
  store i32 %92, ptr %94, align 8
  %95 = getelementptr inbounds %struct.proc_dir_entry, ptr %58, i32 0, i32 7
  store ptr @proc_misc_dentry_ops, ptr %95, align 8
  br label %96

96:                                               ; preds = %75, %74, %56, %55, %43, %34, %26, %21, %12
  %97 = phi ptr [ null, %21 ], [ null, %26 ], [ null, %34 ], [ null, %43 ], [ null, %55 ], [ null, %74 ], [ null, %12 ], [ %58, %75 ], [ null, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret ptr %97
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @_proc_mkdir(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #0 {
  %6 = alloca ptr, align 4
  store ptr %2, ptr %6, align 4
  %7 = icmp eq i16 %1, 0
  %8 = or i16 %1, 16384
  %9 = select i1 %7, i16 16749, i16 %8
  %10 = call fastcc ptr @__proc_create(ptr noundef nonnull %6, ptr noundef %0, i16 noundef zeroext %9, i32 noundef 2)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 10
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 6
  store ptr @proc_dir_operations, ptr %14, align 4
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 5
  store ptr @proc_dir_inode_operations, ptr %15, align 8
  br i1 %4, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.proc_dir_entry, ptr %10, i32 0, i32 7
  store ptr @proc_net_dentry_ops, ptr %17, align 8
  br label %18

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr %6, align 4
  %20 = tail call ptr @proc_register(ptr noundef %19, ptr noundef nonnull %10)
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi ptr [ %20, %18 ], [ null, %5 ]
  ret ptr %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_mkdir_data(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store ptr %2, ptr %5, align 4
  %6 = icmp eq i16 %1, 0
  %7 = or i16 %1, 16384
  %8 = select i1 %6, i16 16749, i16 %7
  %9 = call fastcc ptr @__proc_create(ptr noundef nonnull %5, ptr noundef %0, i16 noundef zeroext %8, i32 noundef 2) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 10
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 6
  store ptr @proc_dir_operations, ptr %13, align 4
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %9, i32 0, i32 5
  store ptr @proc_dir_inode_operations, ptr %14, align 8
  %15 = load ptr, ptr %5, align 4
  %16 = tail call ptr @proc_register(ptr noundef %15, ptr noundef nonnull %9) #12
  br label %17

17:                                               ; preds = %11, %4
  %18 = phi ptr [ %16, %11 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_mkdir_mode(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr %2, ptr %4, align 4
  %5 = icmp eq i16 %1, 0
  %6 = or i16 %1, 16384
  %7 = select i1 %5, i16 16749, i16 %6
  %8 = call fastcc ptr @__proc_create(ptr noundef nonnull %4, ptr noundef %0, i16 noundef zeroext %7, i32 noundef 2) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 10
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 6
  store ptr @proc_dir_operations, ptr %12, align 4
  %13 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 5
  store ptr @proc_dir_inode_operations, ptr %13, align 8
  %14 = load ptr, ptr %4, align 4
  %15 = tail call ptr @proc_register(ptr noundef %14, ptr noundef nonnull %8) #12
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi ptr [ %15, %10 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_mkdir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store ptr %1, ptr %3, align 4
  %4 = call fastcc ptr @__proc_create(ptr noundef nonnull %3, ptr noundef %0, i16 noundef zeroext 16749, i32 noundef 2) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 10
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 6
  store ptr @proc_dir_operations, ptr %8, align 4
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 5
  store ptr @proc_dir_inode_operations, ptr %9, align 8
  %10 = load ptr, ptr %3, align 4
  %11 = tail call ptr @proc_register(ptr noundef %10, ptr noundef nonnull %4) #12
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ %11, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_mount_point(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store ptr null, ptr %2, align 4
  %3 = call fastcc ptr @__proc_create(ptr noundef nonnull %2, ptr noundef %0, i16 noundef zeroext 16749, i32 noundef 2)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 10
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 6
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 5
  store ptr null, ptr %8, align 8
  %9 = load ptr, ptr %2, align 4
  %10 = tail call ptr @proc_register(ptr noundef %9, ptr noundef nonnull %3)
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ %10, %5 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_reg(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = icmp ult i16 %1, 4096
  %6 = or i16 %1, -32768
  %7 = select i1 %5, i16 %6, i16 %1
  %8 = and i16 %7, 4095
  %9 = icmp eq i16 %8, 0
  %10 = or i16 %7, 292
  %11 = select i1 %9, i16 %10, i16 %7
  %12 = and i16 %11, -4096
  %13 = icmp ne i16 %12, -32768
  %14 = load i1, ptr @proc_create_reg.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !10

17:                                               ; preds = %4
  store i1 true, ptr @proc_create_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #12
  br label %18

18:                                               ; preds = %17, %4
  br i1 %13, label %25, label %19

19:                                               ; preds = %18
  %20 = tail call fastcc ptr @__proc_create(ptr noundef %2, ptr noundef %0, i16 noundef zeroext %11, i32 noundef 1)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.proc_dir_entry, ptr %20, i32 0, i32 5
  store ptr @proc_file_inode_operations, ptr %23, align 8
  %24 = getelementptr inbounds %struct.proc_dir_entry, ptr %20, i32 0, i32 10
  store ptr %3, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %19, %18
  %26 = phi ptr [ null, %18 ], [ %20, %22 ], [ null, %19 ]
  ret ptr %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_data(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  store ptr %2, ptr %6, align 4
  %7 = icmp ult i16 %1, 4096
  %8 = or i16 %1, -32768
  %9 = select i1 %7, i16 %8, i16 %1
  %10 = and i16 %9, 4095
  %11 = icmp eq i16 %10, 0
  %12 = or i16 %9, 292
  %13 = select i1 %11, i16 %12, i16 %9
  %14 = and i16 %13, -4096
  %15 = icmp ne i16 %14, -32768
  %16 = load i1, ptr @proc_create_reg.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %5
  store i1 true, ptr @proc_create_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #12
  br label %20

20:                                               ; preds = %19, %5
  br i1 %15, label %38, label %21

21:                                               ; preds = %20
  %22 = call fastcc ptr @__proc_create(ptr noundef nonnull %6, ptr noundef %0, i16 noundef zeroext %13, i32 noundef 1) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 5
  store ptr @proc_file_inode_operations, ptr %25, align 8
  %26 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 10
  store ptr %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 6
  store ptr %3, ptr %27, align 4
  %28 = load i32, ptr %3, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 22
  %33 = load i8, ptr %32, align 2
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 2
  br label %35

35:                                               ; preds = %31, %24
  %36 = load ptr, ptr %6, align 4
  %37 = tail call ptr @proc_register(ptr noundef %36, ptr noundef nonnull %22)
  br label %38

38:                                               ; preds = %35, %21, %20
  %39 = phi ptr [ %37, %35 ], [ null, %20 ], [ null, %21 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call ptr @proc_create_data(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef null)
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_seq_private(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  store ptr %2, ptr %7, align 4
  %8 = icmp ult i16 %1, 4096
  %9 = or i16 %1, -32768
  %10 = select i1 %8, i16 %9, i16 %1
  %11 = and i16 %10, 4095
  %12 = icmp eq i16 %11, 0
  %13 = or i16 %10, 292
  %14 = select i1 %12, i16 %13, i16 %10
  %15 = and i16 %14, -4096
  %16 = icmp ne i16 %15, -32768
  %17 = load i1, ptr @proc_create_reg.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !10

20:                                               ; preds = %6
  store i1 true, ptr @proc_create_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #12
  br label %21

21:                                               ; preds = %20, %6
  br i1 %16, label %33, label %22

22:                                               ; preds = %21
  %23 = call fastcc ptr @__proc_create(ptr noundef nonnull %7, ptr noundef %0, i16 noundef zeroext %14, i32 noundef 1) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.proc_dir_entry, ptr %23, i32 0, i32 5
  store ptr @proc_file_inode_operations, ptr %26, align 8
  %27 = getelementptr inbounds %struct.proc_dir_entry, ptr %23, i32 0, i32 10
  store ptr %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.proc_dir_entry, ptr %23, i32 0, i32 6
  store ptr @proc_seq_ops, ptr %28, align 4
  %29 = getelementptr inbounds %struct.proc_dir_entry, ptr %23, i32 0, i32 8
  store ptr %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.proc_dir_entry, ptr %23, i32 0, i32 11
  store i32 %4, ptr %30, align 8
  %31 = load ptr, ptr %7, align 4
  %32 = tail call ptr @proc_register(ptr noundef %31, ptr noundef nonnull %23)
  br label %33

33:                                               ; preds = %25, %22, %21
  %34 = phi ptr [ %32, %25 ], [ null, %21 ], [ null, %22 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @proc_create_single_data(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 4
  store ptr %2, ptr %6, align 4
  %7 = icmp ult i16 %1, 4096
  %8 = or i16 %1, -32768
  %9 = select i1 %7, i16 %8, i16 %1
  %10 = and i16 %9, 4095
  %11 = icmp eq i16 %10, 0
  %12 = or i16 %9, 292
  %13 = select i1 %11, i16 %12, i16 %9
  %14 = and i16 %13, -4096
  %15 = icmp ne i16 %14, -32768
  %16 = load i1, ptr @proc_create_reg.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %5
  store i1 true, ptr @proc_create_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 547, i32 noundef 9, ptr noundef null) #12
  br label %20

20:                                               ; preds = %19, %5
  br i1 %15, label %31, label %21

21:                                               ; preds = %20
  %22 = call fastcc ptr @__proc_create(ptr noundef nonnull %6, ptr noundef %0, i16 noundef zeroext %13, i32 noundef 1) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 5
  store ptr @proc_file_inode_operations, ptr %25, align 8
  %26 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 10
  store ptr %4, ptr %26, align 4
  %27 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 6
  store ptr @proc_single_ops, ptr %27, align 4
  %28 = getelementptr inbounds %struct.proc_dir_entry, ptr %22, i32 0, i32 8
  store ptr %3, ptr %28, align 4
  %29 = load ptr, ptr %6, align 4
  %30 = tail call ptr @proc_register(ptr noundef %29, ptr noundef nonnull %22)
  br label %31

31:                                               ; preds = %24, %21, %20
  %32 = phi ptr [ %30, %24 ], [ null, %20 ], [ null, %21 ]
  ret ptr %32
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @proc_set_size(ptr nocapture noundef writeonly %0, i64 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 16
  store i64 %1, ptr %3, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @proc_set_user(ptr nocapture noundef writeonly %0, [1 x i32] %1, [1 x i32] %2) #6 {
  %4 = extractvalue [1 x i32] %1, 0
  %5 = extractvalue [1 x i32] %2, 0
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 14
  store i32 %4, ptr %6, align 4
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 15
  store i32 %5, ptr %7, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @remove_proc_entry(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr %0, ptr %4, align 4
  tail call void @_raw_write_lock(ptr noundef nonnull @proc_subdir_lock) #12
  %5 = call fastcc i32 @__xlate_proc_name(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %81

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @strlen(ptr noundef %9)
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %34, %8
  %16 = phi ptr [ %36, %34 ], [ %13, %8 ]
  %17 = getelementptr i8, ptr %16, i32 19
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ult i32 %10, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = icmp ugt i32 %10, %19
  br i1 %22, label %32, label %23

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %16, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @memcmp(ptr noundef %9, ptr noundef %25, i32 noundef %10) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %15
  %29 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  br label %34

30:                                               ; preds = %23
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %30, %21
  %33 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %29, %28 ], [ %33, %32 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %15

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %16, i32 -88
  %40 = icmp eq ptr %39, null
  br i1 %40, label %56, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %16, i32 18
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46, !prof !11

46:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 699, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %25) #12
  br label %56

47:                                               ; preds = %41
  tail call void @rb_erase(ptr noundef nonnull %16, ptr noundef %12) #12
  %48 = getelementptr i8, ptr %16, i32 16
  %49 = load i16, ptr %48, align 8
  %50 = and i16 %49, -4096
  %51 = icmp eq i16 %50, 16384
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 13
  %54 = load i32, ptr %53, align 8
  %55 = add i32 %54, -1
  store i32 %55, ptr %53, align 8
  br label %56

56:                                               ; preds = %52, %47, %46, %38, %34, %8
  %57 = phi ptr [ null, %46 ], [ %39, %52 ], [ %39, %47 ], [ null, %38 ], [ null, %8 ], [ null, %34 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 709, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %0) #12
  br label %81

60:                                               ; preds = %56
  tail call void @proc_entry_rundown(ptr noundef nonnull %57) #12
  %61 = getelementptr inbounds %struct.proc_dir_entry, ptr %57, i32 0, i32 18
  %62 = tail call ptr @rb_first(ptr noundef %61) #12
  %63 = icmp eq ptr %62, null
  %64 = getelementptr i8, ptr %62, i32 -88
  %65 = icmp eq ptr %64, null
  %66 = or i1 %63, %65
  br i1 %66, label %80, label %67, !prof !11

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.proc_dir_entry, ptr %57, i32 0, i32 17
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.proc_dir_entry, ptr %69, i32 0, i32 20
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.proc_dir_entry, ptr %57, i32 0, i32 20
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr @rb_first(ptr noundef %61) #12
  %75 = icmp eq ptr %74, null
  %76 = getelementptr i8, ptr %74, i32 -88
  %77 = select i1 %75, ptr null, ptr %76
  %78 = getelementptr inbounds %struct.proc_dir_entry, ptr %77, i32 0, i32 20
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.remove_proc_entry, ptr noundef %71, ptr noundef %73, ptr noundef %79) #12
  br label %80

80:                                               ; preds = %67, %60
  tail call void @pde_put(ptr noundef nonnull %57)
  br label %81

81:                                               ; preds = %80, %59, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__xlate_proc_name(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @proc_root, ptr %4
  %7 = tail call ptr @strchr(ptr noundef %0, i32 noundef 47)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %13

9:                                                ; preds = %46
  %10 = getelementptr i8, ptr %14, i32 1
  %11 = tail call ptr @strchr(ptr noundef %10, i32 noundef 47)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ %11, %9 ], [ %7, %3 ]
  %15 = phi ptr [ %47, %9 ], [ %6, %3 ]
  %16 = phi ptr [ %10, %9 ], [ %0, %3 ]
  %17 = ptrtoint ptr %14 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = getelementptr inbounds %struct.proc_dir_entry, ptr %15, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %42, %13
  %24 = phi ptr [ %44, %42 ], [ %21, %13 ]
  %25 = getelementptr i8, ptr %24, i32 19
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ult i32 %19, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = icmp ugt i32 %19, %27
  br i1 %30, label %40, label %31

31:                                               ; preds = %29
  %32 = getelementptr i8, ptr %24, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @memcmp(ptr noundef %16, ptr noundef %33, i32 noundef %19) #12
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %23
  %37 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2
  br label %42

38:                                               ; preds = %31
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %38, %29
  %41 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %37, %36 ], [ %41, %40 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %23

46:                                               ; preds = %38
  %47 = getelementptr i8, ptr %24, i32 -88
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %9

49:                                               ; preds = %46, %42, %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %0) #12
  br label %53

50:                                               ; preds = %9, %3
  %51 = phi ptr [ %0, %3 ], [ %10, %9 ]
  %52 = phi ptr [ %6, %3 ], [ %47, %9 ]
  store ptr %51, ptr %2, align 4
  store ptr %52, ptr %1, align 4
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi i32 [ -2, %49 ], [ 0, %50 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_entry_rundown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remove_proc_subtree(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %1, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr %0, ptr %4, align 4
  tail call void @_raw_write_lock(ptr noundef nonnull @proc_subdir_lock) #12
  %5 = call fastcc i32 @__xlate_proc_name(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %93

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = tail call i32 @strlen(ptr noundef %9)
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 18
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %34, %8
  %16 = phi ptr [ %36, %34 ], [ %13, %8 ]
  %17 = getelementptr i8, ptr %16, i32 19
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ult i32 %10, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = icmp ugt i32 %10, %19
  br i1 %22, label %32, label %23

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %16, i32 12
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @memcmp(ptr noundef %9, ptr noundef %25, i32 noundef %10) #12
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %15
  %29 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  br label %34

30:                                               ; preds = %23
  %31 = icmp eq i32 %26, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %30, %21
  %33 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %29, %28 ], [ %33, %32 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %15

38:                                               ; preds = %30
  %39 = getelementptr i8, ptr %16, i32 12
  %40 = getelementptr i8, ptr %16, i32 -88
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  br label %93

43:                                               ; preds = %38
  %44 = getelementptr i8, ptr %16, i32 18
  %45 = load i8, ptr %44, align 2
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %54, label %48, !prof !11

48:                                               ; preds = %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %49 = getelementptr i8, ptr %16, i32 -8
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.proc_dir_entry, ptr %50, i32 0, i32 20
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %39, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 743, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %52, ptr noundef %53) #12
  br label %93

54:                                               ; preds = %43
  tail call void @rb_erase(ptr noundef nonnull %16, ptr noundef %12) #12
  br label %55

55:                                               ; preds = %76, %54
  %56 = phi ptr [ %40, %54 ], [ %77, %76 ]
  %57 = getelementptr inbounds %struct.proc_dir_entry, ptr %56, i32 0, i32 18
  %58 = tail call ptr @rb_first(ptr noundef %57) #12
  %59 = icmp eq ptr %58, null
  %60 = getelementptr i8, ptr %58, i32 -88
  %61 = icmp eq ptr %60, null
  %62 = or i1 %59, %61
  br i1 %62, label %78, label %63

63:                                               ; preds = %55
  %64 = getelementptr i8, ptr %58, i32 18
  %65 = load i8, ptr %64, align 2
  %66 = and i8 %65, 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %75, label %68, !prof !11

68:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  %69 = getelementptr i8, ptr %58, i32 -8
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.proc_dir_entry, ptr %70, i32 0, i32 20
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %58, i32 12
  %74 = load ptr, ptr %73, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 755, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %72, ptr noundef %74) #12
  br label %93

75:                                               ; preds = %63
  tail call void @rb_erase(ptr noundef nonnull %58, ptr noundef %57) #12
  br label %76

76:                                               ; preds = %91, %75
  %77 = phi ptr [ %60, %75 ], [ %80, %91 ]
  br label %55

78:                                               ; preds = %55
  %79 = getelementptr inbounds %struct.proc_dir_entry, ptr %56, i32 0, i32 17
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.proc_dir_entry, ptr %56, i32 0, i32 21
  %82 = load i16, ptr %81, align 8
  %83 = and i16 %82, -4096
  %84 = icmp eq i16 %83, 16384
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.proc_dir_entry, ptr %80, i32 0, i32 13
  %87 = load i32, ptr %86, align 8
  %88 = add i32 %87, -1
  store i32 %88, ptr %86, align 8
  br label %89

89:                                               ; preds = %85, %78
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !22
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr nonnull @proc_subdir_lock, i32 0) #12, !srcloc !23
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !24
  tail call void @proc_entry_rundown(ptr noundef %56) #12
  %90 = icmp eq ptr %56, %40
  br i1 %90, label %92, label %91

91:                                               ; preds = %89
  tail call void @pde_put(ptr noundef %56)
  tail call void @_raw_write_lock(ptr noundef nonnull @proc_subdir_lock) #12
  br label %76

92:                                               ; preds = %89
  tail call void @pde_put(ptr noundef nonnull %40)
  br label %93

93:                                               ; preds = %92, %68, %48, %42, %7
  %94 = phi i32 [ -2, %7 ], [ -22, %48 ], [ -22, %68 ], [ 0, %92 ], [ -2, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %94
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @proc_get_parent_data(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr i8, ptr %0, i32 -28
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.proc_dir_entry, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @proc_remove(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.proc_dir_entry, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @remove_proc_subtree(ptr noundef %5, ptr noundef %7)
  br label %9

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @proc_simple_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 -28
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.proc_dir_entry, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %4
  %13 = add i32 %2, -4096
  %14 = icmp ult i32 %13, -4095
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %2) #12
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %25

20:                                               ; preds = %15
  %21 = load ptr, ptr %9, align 8
  %22 = tail call i32 %21(ptr noundef %0, ptr noundef %16, i32 noundef %2) #12
  tail call void @kfree(ptr noundef %16) #12
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %2, i32 %22
  br label %25

25:                                               ; preds = %20, %18, %12, %4
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ], [ -13, %4 ], [ -22, %12 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @name_to_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @proc_misc_d_revalidate(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = and i32 %1, 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -28
  %9 = load ptr, ptr %8, align 4
  %10 = load volatile i32, ptr %9, align 4
  %11 = xor i32 %10, -1
  %12 = lshr i32 %11, 31
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ -10, %2 ], [ %12, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @proc_misc_d_delete(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -28
  %5 = load ptr, ptr %4, align 4
  %6 = load volatile i32, ptr %5, align 4
  %7 = lshr i32 %6, 31
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_notify_change(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 -28
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %2) #12
  tail call void @__mark_inode_dirty(ptr noundef %5, i32 noundef 7) #12
  %11 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %11, align 4
  %14 = load i32, ptr %12, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 14
  store i32 %13, ptr %15, align 4
  %16 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 15
  store i32 %14, ptr %16, align 8
  %17 = load i16, ptr %5, align 8
  %18 = getelementptr inbounds %struct.proc_dir_entry, ptr %7, i32 0, i32 21
  store i16 %17, ptr %18, align 8
  br label %19

19:                                               ; preds = %10, %3
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %9, i32 -28
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.proc_dir_entry, ptr %11, i32 0, i32 13
  %15 = load volatile i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @set_nlink(ptr noundef %9, i32 noundef %15) #12
  br label %18

18:                                               ; preds = %17, %13, %5
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_seq_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  br i1 %7, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @seq_open_private(ptr noundef %1, ptr noundef %9, i32 noundef %6) #12
  br label %14

12:                                               ; preds = %2
  %13 = tail call i32 @seq_open(ptr noundef %1, ptr noundef %9) #12
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read_iter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_seq_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 11
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @seq_release_private(ptr noundef %0, ptr noundef %1) #12
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #12
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open_private(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release_private(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_single_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.proc_dir_entry, ptr %4, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @single_open(ptr noundef %1, ptr noundef %6, ptr noundef %8) #12
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{i64 427568, i64 2147917539, i64 2147917565, i64 2147917612, i64 2147917634, i64 2147917662, i64 2147917682}
!9 = !{i64 2147930412, i64 2147930444, i64 2147930473, i64 2147930507, i64 2147930538, i64 2147930561}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149053818}
!13 = !{i64 1557242, i64 1557265, i64 1557285, i64 1557309, i64 1557325}
!14 = !{i64 2149041760}
!15 = !{i64 2149041835, i64 2149041862, i64 2149041909, i64 2149041931, i64 2149041959, i64 2149041979}
!16 = !{i64 2149091421}
!17 = !{i64 2149045936}
!18 = !{i64 2149068939}
!19 = !{i64 2148030610}
!20 = !{i64 2147932769, i64 2147932801, i64 2147932830, i64 2147932864, i64 2147932895, i64 2147932918}
!21 = !{i64 2149782261}
!22 = !{i64 2149053013}
!23 = !{i64 1556227}
!24 = !{i64 2149090982}
!25 = !{!"auto-init"}
