; ModuleID = '/llk/IR/fs/debugfs/inode.c_pt.bc'
source_filename = "../fs/debugfs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_file_unsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_file_unsafe\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_file_unsafe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_file_size:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_file_size\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_file_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_dir\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_automount:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_automount\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_automount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_create_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_create_symlink\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_create_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_remove\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_rename\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_debugfs_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22debugfs_initialized\22\09\09\09\09\09"
module asm "__kstrtabns_debugfs_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.0 }
%union.anon.0 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.11, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.match_token = type { i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { i64 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%union.anon.64 = type { i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.67 = type { ptr }
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
%struct.debugfs_fsdata = type { ptr, %struct.refcount_struct, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.name_snapshot = type { %struct.qstr, [36 x i8] }
%struct.debugfs_mount_opts = type { %struct.kuid_t, %struct.kgid_t, i16 }
%struct.substring_t = type { ptr, ptr }
%struct.path = type { ptr, ptr }

@__UNIQUE_ID_alias240 = internal constant [25 x i8] c"debugfs.alias=fs-debugfs\00", section ".modinfo", align 1
@debugfs_mount = internal global ptr null, align 4
@__kstrtab_debugfs_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_lookup to i32), ptr @__kstrtab_debugfs_lookup, ptr @__kstrtabns_debugfs_lookup }, section "___ksymtab_gpl+debugfs_lookup", align 4
@debugfs_full_proxy_file_operations = external dso_local constant %struct.file_operations, align 4
@debugfs_noop_file_operations = external dso_local constant %struct.file_operations, align 4
@__kstrtab_debugfs_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_file to i32), ptr @__kstrtab_debugfs_create_file, ptr @__kstrtabns_debugfs_create_file }, section "___ksymtab_gpl+debugfs_create_file", align 4
@debugfs_open_proxy_file_operations = external dso_local constant %struct.file_operations, align 4
@__kstrtab_debugfs_create_file_unsafe = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_file_unsafe = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_file_unsafe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_file_unsafe to i32), ptr @__kstrtab_debugfs_create_file_unsafe, ptr @__kstrtabns_debugfs_create_file_unsafe }, section "___ksymtab_gpl+debugfs_create_file_unsafe", align 4
@__kstrtab_debugfs_create_file_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_file_size = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_file_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_file_size to i32), ptr @__kstrtab_debugfs_create_file_size, ptr @__kstrtabns_debugfs_create_file_size }, section "___ksymtab_gpl+debugfs_create_file_size", align 4
@debugfs_allow = internal unnamed_addr global i32 3, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [64 x i8] c"\013debugfs: out of free dentries, can not create directory '%s'\0A\00", align 1
@debugfs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @debugfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@__kstrtab_debugfs_create_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_dir to i32), ptr @__kstrtab_debugfs_create_dir, ptr @__kstrtabns_debugfs_create_dir }, section "___ksymtab_gpl+debugfs_create_dir", align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"\013debugfs: out of free dentries, can not create automount '%s'\0A\00", align 1
@__kstrtab_debugfs_create_automount = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_automount = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_automount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_automount to i32), ptr @__kstrtab_debugfs_create_automount, ptr @__kstrtabns_debugfs_create_automount }, section "___ksymtab+debugfs_create_automount", align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"\013debugfs: out of free dentries, can not create symlink '%s'\0A\00", align 1
@debugfs_symlink_inode_operations = internal constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @debugfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@__kstrtab_debugfs_create_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_create_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_create_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_create_symlink to i32), ptr @__kstrtab_debugfs_create_symlink, ptr @__kstrtabns_debugfs_create_symlink }, section "___ksymtab_gpl+debugfs_create_symlink", align 4
@debug_fs_type = internal global %struct.file_system_type { ptr @.str.7, i32 0, ptr null, ptr null, ptr @debug_mount, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@debugfs_mount_count = internal global i32 0, align 4
@__kstrtab_debugfs_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_remove to i32), ptr @__kstrtab_debugfs_remove, ptr @__kstrtabns_debugfs_remove }, section "___ksymtab_gpl+debugfs_remove", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_debugfs_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_rename to i32), ptr @__kstrtab_debugfs_rename, ptr @__kstrtabns_debugfs_rename }, section "___ksymtab_gpl+debugfs_rename", align 4
@debugfs_registered = internal unnamed_addr global i1 false, align 1
@__kstrtab_debugfs_initialized = external dso_local constant [0 x i8], align 1
@__kstrtabns_debugfs_initialized = external dso_local constant [0 x i8], align 1
@__ksymtab_debugfs_initialized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @debugfs_initialized to i32), ptr @__kstrtab_debugfs_initialized, ptr @__kstrtabns_debugfs_initialized }, section "___ksymtab_gpl+debugfs_initialized", align 4
@__setup_str_debugfs_kernel = internal constant [8 x i8] c"debugfs\00", section ".init.rodata", align 1
@__setup_debugfs_kernel = internal global %struct.obs_kernel_param { ptr @__setup_str_debugfs_kernel, ptr @debugfs_kernel, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_debugfs__242_851_debugfs_init1 = internal global ptr @debugfs_init, section ".initcall1.init", align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"\013debugfs: out of free dentries, can not create file '%s'\0A\00", align 1
@debugfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @debugfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@.str.4 = private unnamed_addr constant [51 x i8] c"\013debugfs: Unable to pin filesystem for file '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"\013debugfs: Directory '%s' with parent '%s' already present!\0A\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\013debugfs: File '%s' in directory '%s' already present!\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"debugfs\00", align 1
@debug_fill_super.debug_files = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.8, ptr null, i32 0 }], align 4
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@debugfs_super_operations = internal constant %struct.super_operations { ptr null, ptr null, ptr @debugfs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @debugfs_remount, ptr null, ptr @debugfs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@debugfs_dops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr @debugfs_release_dentry, ptr null, ptr null, ptr null, ptr @debugfs_automount, ptr null, ptr null, [12 x i8] undef }, align 64
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = internal constant [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.10 }, %struct.match_token { i32 1, ptr @.str.11 }, %struct.match_token { i32 2, ptr @.str.12 }, %struct.match_token { i32 3, ptr null }], align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"mode=%o\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"no-mount\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__initcall__kmod_debugfs__242_851_debugfs_init1, ptr @__ksymtab_debugfs_create_automount, ptr @__ksymtab_debugfs_create_dir, ptr @__ksymtab_debugfs_create_file, ptr @__ksymtab_debugfs_create_file_size, ptr @__ksymtab_debugfs_create_file_unsafe, ptr @__ksymtab_debugfs_create_symlink, ptr @__ksymtab_debugfs_initialized, ptr @__ksymtab_debugfs_lookup, ptr @__ksymtab_debugfs_remove, ptr @__ksymtab_debugfs_rename, ptr @__setup_debugfs_kernel], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_lookup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i1, ptr @debugfs_registered, align 1
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %7 = or i1 %5, %6
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load ptr, ptr @debugfs_mount, align 4
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi ptr [ %1, %10 ], [ %14, %12 ]
  %17 = tail call i32 @strlen(ptr noundef nonnull %0)
  %18 = tail call ptr @lookup_positive_unlocked(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %17) #12
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  %20 = select i1 %19, ptr null, ptr %18
  br label %21

21:                                               ; preds = %15, %4, %2
  %22 = phi ptr [ null, %4 ], [ null, %2 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @debugfs_initialized() #2 {
  %1 = load i1, ptr @debugfs_registered, align 1
  ret i1 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_positive_unlocked(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %4, null
  %7 = select i1 %6, ptr @debugfs_noop_file_operations, ptr @debugfs_full_proxy_file_operations
  %8 = tail call fastcc ptr @__debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %4)
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.timespec64, align 8
  %8 = icmp ult i16 %1, 4096
  %9 = or i16 %1, -32768
  %10 = select i1 %8, i16 %9, i16 %1
  %11 = and i16 %10, -4096
  %12 = icmp eq i16 %11, -32768
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/debugfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 396, 0\0A.popsection", ""() #12, !srcloc !9
  unreachable

14:                                               ; preds = %6
  %15 = tail call fastcc ptr @start_creating(ptr noundef %0, ptr noundef %2)
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %66, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @debugfs_allow, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 24
  tail call void @up_write(ptr noundef %26) #12
  tail call void @dput(ptr noundef %15) #12
  tail call void @simple_release_fs(ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  br label %66

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr @new_inode(ptr noundef %29) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %0) #13
  %34 = tail call fastcc ptr @failed_creating(ptr noundef %15)
  br label %66

35:                                               ; preds = %27
  %36 = tail call i32 @get_next_ino() #12
  %37 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 10
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 14
  %39 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 15
  %40 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef nonnull %30) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %39, ptr noundef align 8 dereferenceable(16) %40, i32 16, i1 false) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %38, ptr noundef align 8 dereferenceable(16) %40, i32 16, i1 false) #12
  store i16 %10, ptr %30, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 47
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 7
  store ptr @debugfs_file_inode_operations, ptr %42, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 39
  store ptr %4, ptr %43, align 8
  %44 = ptrtoint ptr %5 to i32
  %45 = or i32 %44, 1
  %46 = inttoptr i32 %45 to ptr
  %47 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 11
  store ptr %46, ptr %47, align 4
  call void @d_instantiate(ptr noundef %15, ptr noundef nonnull %30) #12
  %48 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.dentry, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.super_block, ptr %53, i32 0, i32 42
  %55 = load volatile i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %35
  %58 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 4
  %59 = call i32 @fsnotify(i32 noundef 256, ptr noundef %15, i32 noundef 3, ptr noundef %51, ptr noundef %58, ptr noundef null, i32 noundef 0) #12
  %60 = load ptr, ptr %48, align 8
  %61 = getelementptr inbounds %struct.dentry, ptr %60, i32 0, i32 5
  %62 = load ptr, ptr %61, align 8
  br label %63

63:                                               ; preds = %57, %35
  %64 = phi ptr [ %51, %35 ], [ %62, %57 ]
  %65 = getelementptr inbounds %struct.inode, ptr %64, i32 0, i32 24
  call void @up_write(ptr noundef %65) #12
  br label %66

66:                                               ; preds = %63, %32, %21, %14
  %67 = phi ptr [ %34, %32 ], [ %15, %63 ], [ inttoptr (i32 -1 to ptr), %21 ], [ %15, %14 ]
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_create_file_unsafe(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = icmp eq ptr %4, null
  %7 = select i1 %6, ptr @debugfs_noop_file_operations, ptr @debugfs_open_proxy_file_operations
  %8 = tail call fastcc ptr @__debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %7, ptr noundef %4)
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_create_file_size(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) #0 {
  %7 = icmp eq ptr %4, null
  %8 = select i1 %7, ptr @debugfs_noop_file_operations, ptr @debugfs_full_proxy_file_operations
  %9 = tail call fastcc ptr @__debugfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %8, ptr noundef %4) #12
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 13
  store i64 %5, ptr %14, align 8
  br label %15

15:                                               ; preds = %11, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_create_dir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = tail call fastcc ptr @start_creating(ptr noundef %0, ptr noundef %1)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %53, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @debugfs_allow, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 24
  tail call void @up_write(ptr noundef %15) #12
  tail call void @dput(ptr noundef %4) #12
  tail call void @simple_release_fs(ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  br label %53

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @new_inode(ptr noundef %18) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #13
  %23 = tail call fastcc ptr @failed_creating(ptr noundef %4)
  br label %53

24:                                               ; preds = %16
  %25 = tail call i32 @get_next_ino() #12
  %26 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 10
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 14
  %28 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 15
  %29 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %19) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %29, i32 16, i1 false) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef align 8 dereferenceable(16) %29, i32 16, i1 false) #12
  store i16 16877, ptr %19, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 7
  store ptr @debugfs_dir_inode_operations, ptr %30, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %31, align 8
  call void @inc_nlink(ptr noundef nonnull %19) #12
  call void @d_instantiate(ptr noundef %4, ptr noundef nonnull %19) #12
  %32 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 8
  call void @inc_nlink(ptr noundef %35) #12
  %36 = load ptr, ptr %32, align 8
  %37 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %38, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.super_block, ptr %40, i32 0, i32 42
  %42 = load volatile i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %24
  %45 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %46 = call i32 @fsnotify(i32 noundef 1073742080, ptr noundef %4, i32 noundef 3, ptr noundef %38, ptr noundef %45, ptr noundef null, i32 noundef 0) #12
  %47 = load ptr, ptr %32, align 8
  %48 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 8
  br label %50

50:                                               ; preds = %44, %24
  %51 = phi ptr [ %38, %24 ], [ %49, %44 ]
  %52 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 24
  call void @up_write(ptr noundef %52) #12
  br label %53

53:                                               ; preds = %50, %21, %10, %2
  %54 = phi ptr [ %23, %21 ], [ %4, %50 ], [ inttoptr (i32 -1 to ptr), %10 ], [ %4, %2 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @start_creating(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @debugfs_allow, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = load i1, ptr @debugfs_registered, align 1
  br i1 %7, label %8, label %51

8:                                                ; preds = %6
  %9 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %51, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @simple_pin_fs(ptr noundef nonnull @debug_fs_type, ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0) #13
  %15 = inttoptr i32 %11 to ptr
  br label %51

16:                                               ; preds = %10
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load ptr, ptr @debugfs_mount, align 4
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %1, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 24
  tail call void @down_write(ptr noundef %25) #12
  %26 = load ptr, ptr %23, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %47, !prof !8

31:                                               ; preds = %21
  %32 = tail call i32 @strlen(ptr noundef %0)
  %33 = tail call ptr @lookup_one_len(ptr noundef %0, ptr noundef %22, i32 noundef %32) #12
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 5
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %33, align 8
  %41 = and i32 %40, 6291456
  %42 = icmp eq i32 %41, 2097152
  %43 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 4, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = select i1 %42, ptr @.str.5, ptr @.str.6
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %45, ptr noundef %0, ptr noundef %44) #13
  tail call void @dput(ptr noundef %33) #12
  br label %47

47:                                               ; preds = %39, %31, %21
  %48 = phi ptr [ inttoptr (i32 -17 to ptr), %39 ], [ inttoptr (i32 -2 to ptr), %21 ], [ %33, %31 ]
  %49 = load ptr, ptr %23, align 8
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 24
  tail call void @up_write(ptr noundef %50) #12
  tail call void @simple_release_fs(ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  br label %51

51:                                               ; preds = %47, %35, %13, %8, %6, %2
  %52 = phi ptr [ %15, %13 ], [ %1, %8 ], [ %48, %47 ], [ inttoptr (i32 -1 to ptr), %2 ], [ inttoptr (i32 -2 to ptr), %6 ], [ %33, %35 ]
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc nonnull ptr @failed_creating(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @up_write(ptr noundef %6) #12
  tail call void @dput(ptr noundef %0) #12
  tail call void @simple_release_fs(ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  ret ptr inttoptr (i32 -12 to ptr)
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_create_automount(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.timespec64, align 8
  %6 = tail call fastcc ptr @start_creating(ptr noundef %0, ptr noundef %1)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr @debugfs_allow, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 24
  tail call void @up_write(ptr noundef %17) #12
  tail call void @dput(ptr noundef %6) #12
  tail call void @simple_release_fs(ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  br label %58

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr @new_inode(ptr noundef %20) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #13
  %25 = tail call fastcc ptr @failed_creating(ptr noundef %6)
  br label %58

26:                                               ; preds = %18
  %27 = tail call i32 @get_next_ino() #12
  %28 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 10
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 14
  %30 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 15
  %31 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %5, ptr noundef nonnull %21) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef align 8 dereferenceable(16) %31, i32 16, i1 false) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %29, ptr noundef align 8 dereferenceable(16) %31, i32 16, i1 false) #12
  call void @make_empty_dir_inode(ptr noundef nonnull %21) #12
  %32 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 2048
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 47
  store ptr %3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  store ptr %2, ptr %36, align 4
  call void @inc_nlink(ptr noundef nonnull %21) #12
  call void @d_instantiate(ptr noundef %6, ptr noundef nonnull %21) #12
  %37 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  call void @inc_nlink(ptr noundef %40) #12
  %41 = load ptr, ptr %37, align 8
  %42 = getelementptr inbounds %struct.dentry, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 42
  %47 = load volatile i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %26
  %50 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 4
  %51 = call i32 @fsnotify(i32 noundef 1073742080, ptr noundef %6, i32 noundef 3, ptr noundef %43, ptr noundef %50, ptr noundef null, i32 noundef 0) #12
  %52 = load ptr, ptr %37, align 8
  %53 = getelementptr inbounds %struct.dentry, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 8
  br label %55

55:                                               ; preds = %49, %26
  %56 = phi ptr [ %43, %26 ], [ %54, %49 ]
  %57 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 24
  call void @up_write(ptr noundef %57) #12
  br label %58

58:                                               ; preds = %55, %23, %12, %4
  %59 = phi ptr [ %25, %23 ], [ %6, %55 ], [ inttoptr (i32 -1 to ptr), %12 ], [ %6, %4 ]
  ret ptr %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_create_symlink(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = tail call noalias ptr @kstrdup(ptr noundef %2, i32 noundef 3264) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @start_creating(ptr noundef %0, ptr noundef %1)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #12
  br label %32

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @new_inode(ptr noundef %13) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0) #13
  tail call void @kfree(ptr noundef nonnull %5) #12
  %18 = tail call fastcc ptr @failed_creating(ptr noundef %8)
  br label %32

19:                                               ; preds = %11
  %20 = tail call i32 @get_next_ino() #12
  %21 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 10
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 14
  %23 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 15
  %24 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %14) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %23, ptr noundef align 8 dereferenceable(16) %24, i32 16, i1 false) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %24, i32 16, i1 false) #12
  store i16 -24065, ptr %14, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 7
  store ptr @debugfs_symlink_inode_operations, ptr %25, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 43
  store ptr %5, ptr %26, align 4
  call void @d_instantiate(ptr noundef %8, ptr noundef nonnull %14) #12
  %27 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.dentry, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 24
  call void @up_write(ptr noundef %31) #12
  br label %32

32:                                               ; preds = %19, %16, %10, %3
  %33 = phi ptr [ %8, %10 ], [ %18, %16 ], [ %8, %19 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @debugfs_remove(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @simple_pin_fs(ptr noundef nonnull @debug_fs_type, ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  tail call void @simple_recursive_removal(ptr noundef nonnull %0, ptr noundef nonnull @remove_one) #12
  tail call void @simple_release_fs(ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_recursive_removal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @remove_one(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 7340032
  %4 = icmp eq i32 %3, 4194304
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.debugfs_fsdata, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #12, !srcloc !12
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #12, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %20, label %18, !prof !8

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #12
  br label %20

19:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  br label %22

20:                                               ; preds = %18, %16
  %21 = getelementptr inbounds %struct.debugfs_fsdata, ptr %7, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %21) #12
  br label %22

22:                                               ; preds = %20, %19, %5, %1
  tail call void @simple_release_fs(ptr noundef nonnull @debugfs_mount, ptr noundef nonnull @debugfs_mount_count) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @debugfs_rename(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.name_snapshot, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false), !annotation !15
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %61, label %7

7:                                                ; preds = %4
  %8 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %61, label %9

9:                                                ; preds = %7
  %10 = icmp eq ptr %1, null
  %11 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %61, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @lock_rename(ptr noundef %2, ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = icmp eq ptr %14, %1
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %59, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %1, align 8
  %30 = and i32 %29, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = tail call i32 @strlen(ptr noundef %3)
  %34 = tail call ptr @lookup_one_len(ptr noundef %3, ptr noundef %2, i32 noundef %33) #12
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  %36 = icmp eq ptr %34, %14
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %55, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  call void @take_dentry_name_snapshot(ptr noundef nonnull %5, ptr noundef nonnull %1) #12
  %43 = load ptr, ptr %15, align 8
  %44 = load ptr, ptr %19, align 8
  %45 = call i32 @simple_rename(ptr noundef nonnull @init_user_ns, ptr noundef %43, ptr noundef nonnull %1, ptr noundef %44, ptr noundef %34, i32 noundef 0) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  call void @release_dentry_name_snapshot(ptr noundef nonnull %5) #12
  br label %55

48:                                               ; preds = %42
  call void @d_move(ptr noundef nonnull %1, ptr noundef %34) #12
  %49 = load ptr, ptr %15, align 8
  %50 = load ptr, ptr %19, align 8
  %51 = load i32, ptr %1, align 8
  %52 = and i32 %51, 6291456
  %53 = icmp eq i32 %52, 2097152
  %54 = zext i1 %53 to i32
  call fastcc void @fsnotify_move(ptr noundef %49, ptr noundef %50, ptr noundef nonnull %5, i32 noundef %54, ptr noundef nonnull %1)
  call void @release_dentry_name_snapshot(ptr noundef nonnull %5) #12
  call void @unlock_rename(ptr noundef %2, ptr noundef %0) #12
  call void @dput(ptr noundef %34) #12
  br label %61

55:                                               ; preds = %47, %38, %32
  %56 = icmp eq ptr %34, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  br i1 %35, label %58, label %60

58:                                               ; preds = %57
  call void @unlock_rename(ptr noundef %2, ptr noundef %0) #12
  br label %61

59:                                               ; preds = %55, %28, %22, %18, %13
  call void @unlock_rename(ptr noundef %2, ptr noundef %0) #12
  br label %61

60:                                               ; preds = %57
  call void @dput(ptr noundef nonnull %34) #12
  call void @unlock_rename(ptr noundef %2, ptr noundef %0) #12
  br label %61

61:                                               ; preds = %60, %59, %58, %48, %9, %7, %4
  %62 = phi ptr [ %1, %48 ], [ %0, %4 ], [ %2, %7 ], [ %1, %9 ], [ %34, %58 ], [ inttoptr (i32 -22 to ptr), %60 ], [ inttoptr (i32 -22 to ptr), %59 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #12
  ret ptr %62
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lock_rename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @take_dentry_name_snapshot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rename(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_dentry_name_snapshot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_move(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsnotify_move(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #7 {
  %6 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @fsnotify_get_cookie() #12
  %9 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4
  %10 = icmp eq i32 %3, 0
  %11 = select i1 %10, i32 64, i32 1073741888
  %12 = select i1 %10, i32 128, i32 1073741952
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 42
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = select i1 %10, i32 268435456, i32 1342177280
  %20 = tail call i32 @fsnotify(i32 noundef %19, ptr noundef %4, i32 noundef 3, ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef 0) #12
  %21 = load ptr, ptr %13, align 4
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi ptr [ %14, %5 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 42
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @fsnotify(i32 noundef %11, ptr noundef %7, i32 noundef 2, ptr noundef %0, ptr noundef %2, ptr noundef null, i32 noundef %8) #12
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.super_block, ptr %31, i32 0, i32 42
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = tail call i32 @fsnotify(i32 noundef %12, ptr noundef %7, i32 noundef 2, ptr noundef %1, ptr noundef %9, ptr noundef null, i32 noundef %8) #12
  br label %37

37:                                               ; preds = %35, %29
  %38 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.super_block, ptr %39, i32 0, i32 42
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i16, ptr %7, align 8
  %45 = and i16 %44, -4096
  %46 = icmp eq i16 %45, 16384
  %47 = select i1 %46, i32 1073743872, i32 2048
  %48 = tail call i32 @fsnotify(i32 noundef %47, ptr noundef %7, i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef %7, i32 noundef 0) #12
  br label %49

49:                                               ; preds = %43, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_rename(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @debugfs_kernel(ptr noundef readonly %0) #8 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(3) @.str.16)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(9) @.str.17)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.18)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %6, %3
  %13 = phi i32 [ 3, %3 ], [ 1, %6 ], [ 0, %9 ]
  store i32 %13, ptr @debugfs_allow, align 4
  br label %14

14:                                               ; preds = %12, %9, %1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @debugfs_init() #9 section ".init.text" {
  %1 = load i32, ptr @debugfs_allow, align 4
  %2 = and i32 %1, 2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @kernel_kobj, align 4
  %6 = tail call i32 @sysfs_create_mount_point(ptr noundef %5, ptr noundef nonnull @.str.19) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call i32 @register_filesystem(ptr noundef nonnull @debug_fs_type) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %12, ptr noundef nonnull @.str.19) #12
  br label %14

13:                                               ; preds = %8
  store i1 true, ptr @debugfs_registered, align 1
  br label %14

14:                                               ; preds = %13, %11, %4, %0
  %15 = phi i32 [ -1, %0 ], [ %6, %4 ], [ 0, %13 ], [ %9, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_setattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @simple_setattr(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #12
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @debug_mount(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = load i32, ptr @debugfs_allow, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @mount_single(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @debug_fill_super) #12
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ inttoptr (i32 -1 to ptr), %4 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_single(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debug_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #14
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @debugfs_parse_options(ptr noundef %1, ptr noundef nonnull %5)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = tail call i32 @simple_fill_super(ptr noundef %0, i32 noundef 1684170528, ptr noundef nonnull @debug_fill_super.debug_files) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @debugfs_super_operations, ptr %15, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr @debugfs_dops, ptr %16, align 16
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %19 = load ptr, ptr %18, align 64
  %20 = getelementptr inbounds %struct.dentry, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, -4096
  store i16 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %17, i32 0, i32 2
  %25 = load i16, ptr %24, align 4
  %26 = or i16 %25, %23
  store i16 %26, ptr %21, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 2
  %28 = load i32, ptr %17, align 4
  store i32 %28, ptr %27, align 4
  %29 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 3
  %30 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %17, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 8
  br label %34

32:                                               ; preds = %11, %8, %3
  %33 = phi i32 [ %9, %8 ], [ %12, %11 ], [ -12, %3 ]
  tail call void @kfree(ptr noundef %5) #12
  store ptr null, ptr %6, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi i32 [ %33, %32 ], [ 0, %14 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @debugfs_parse_options(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca [3 x %struct.substring_t], align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !annotation !15
  %6 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %1, i32 0, i32 2
  store i16 448, ptr %6, align 4
  %7 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.9) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %1, i32 0, i32 1
  br label %11

11:                                               ; preds = %38, %9
  %12 = phi ptr [ %7, %9 ], [ %39, %38 ]
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = call i32 @match_token(ptr noundef nonnull %12, ptr noundef nonnull @tokens, ptr noundef nonnull %4) #12
  switch i32 %16, label %38 [
    i32 0, label %17
    i32 1, label %24
    i32 2, label %31
  ]

17:                                               ; preds = %15
  %18 = call i32 @match_int(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  store i32 %21, ptr %1, align 4
  br label %38

24:                                               ; preds = %15
  %25 = call i32 @match_int(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  store i32 %28, ptr %10, align 4
  br label %38

31:                                               ; preds = %15
  %32 = call i32 @match_octal(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, ptr %5, align 4
  %36 = trunc i32 %35 to i16
  %37 = and i16 %36, 4095
  store i16 %37, ptr %6, align 4
  br label %38

38:                                               ; preds = %34, %30, %23, %15, %11
  %39 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.9) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %11

41:                                               ; preds = %38, %31, %27, %24, %20, %17, %2
  %42 = phi i32 [ 0, %2 ], [ 0, %38 ], [ -22, %31 ], [ -22, %27 ], [ -22, %24 ], [ -22, %20 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @debugfs_free_inode(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, -4096
  %4 = icmp eq i16 %3, -24576
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #12
  br label %8

8:                                                ; preds = %5, %1
  tail call void @free_inode_nonrcu(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_remount(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @sync_filesystem(ptr noundef %0) #12
  %7 = tail call fastcc i32 @debugfs_parse_options(ptr noundef %2, ptr noundef %5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, -4096
  store i16 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %10, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = or i16 %18, %16
  store i16 %19, ptr %14, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 2
  %21 = load i32, ptr %10, align 4
  store i32 %21, ptr %20, align 4
  %22 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 3
  %23 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %10, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %22, align 8
  br label %25

25:                                               ; preds = %9, %3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @debugfs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %7, -1
  %11 = load i32, ptr @overflowuid, align 4
  %12 = select i1 %10, i32 %11, i32 %7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %12) #12
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, -1
  %19 = load i32, ptr @overflowgid, align 4
  %20 = select i1 %18, i32 %19, i32 %15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %20) #12
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.debugfs_mount_opts, ptr %6, i32 0, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 448
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %26) #12
  br label %27

27:                                               ; preds = %25, %21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @debugfs_release_dentry(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @kfree(ptr noundef %3) #12
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @debugfs_automount(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %5(ptr noundef %3, ptr noundef %9) #12
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify_get_cookie() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152993597, i64 2152994080, i64 2152993634, i64 2152993690, i64 2152993724, i64 2152993748, i64 2152993789, i64 2152993810, i64 2152993838, i64 2152993872}
!10 = !{i64 2153005935}
!11 = !{i64 2148167712}
!12 = !{i64 564646, i64 2148054617, i64 2148054643, i64 2148054690, i64 2148054712, i64 2148054740, i64 2148054760}
!13 = !{i64 2148069847, i64 2148069879, i64 2148069908, i64 2148069942, i64 2148069973, i64 2148069996}
!14 = !{i64 2149017159}
!15 = !{!"auto-init"}
