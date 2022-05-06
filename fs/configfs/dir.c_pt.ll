; ModuleID = '/llk/IR/fs/configfs/dir.c_pt.bc'
source_filename = "../fs/configfs/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_remove_default_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_remove_default_groups\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_remove_default_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_depend_item:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_depend_item\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_depend_item:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_undepend_item:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_undepend_item\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_undepend_item:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_depend_item_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_depend_item_unlocked\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_depend_item_unlocked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_register_group:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_register_group\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_register_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_unregister_group:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_unregister_group\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_unregister_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_register_default_group:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_register_default_group\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_register_default_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_unregister_default_group:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_unregister_default_group\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_unregister_default_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_register_subsystem:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_register_subsystem\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_register_subsystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_configfs_unregister_subsystem:\09\09\09\09\09"
module asm "\09.asciz \09\22configfs_unregister_subsystem\22\09\09\09\09\09"
module asm "__kstrtabns_configfs_unregister_subsystem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { i64 }
%union.anon.68 = type { %struct.list_head }
%union.anon.69 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.65 = type { ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon = type { i32, i32 }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.configfs_fragment = type { %struct.atomic_t, %struct.rw_semaphore, i8 }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }
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

@configfs_dirent_lock = dso_local global %struct.spinlock zeroinitializer, align 4
@configfs_dentry_ops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr null, ptr null, ptr null, ptr null, ptr @always_delete_dentry, ptr null, ptr null, ptr null, ptr @configfs_d_iput, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@configfs_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@__kstrtab_configfs_remove_default_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_remove_default_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_remove_default_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_remove_default_groups to i32), ptr @__kstrtab_configfs_remove_default_groups, ptr @__kstrtabns_configfs_remove_default_groups }, section "___ksymtab+configfs_remove_default_groups", align 4
@__kstrtab_configfs_depend_item = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_depend_item = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_depend_item = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_depend_item to i32), ptr @__kstrtab_configfs_depend_item, ptr @__kstrtabns_configfs_depend_item }, section "___ksymtab+configfs_depend_item", align 4
@__kstrtab_configfs_undepend_item = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_undepend_item = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_undepend_item = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_undepend_item to i32), ptr @__kstrtab_configfs_undepend_item, ptr @__kstrtabns_configfs_undepend_item }, section "___ksymtab+configfs_undepend_item", align 4
@__kstrtab_configfs_depend_item_unlocked = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_depend_item_unlocked = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_depend_item_unlocked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_depend_item_unlocked to i32), ptr @__kstrtab_configfs_depend_item_unlocked, ptr @__kstrtabns_configfs_depend_item_unlocked }, section "___ksymtab+configfs_depend_item_unlocked", align 4
@configfs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @configfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @configfs_unlink, ptr @configfs_symlink, ptr @configfs_mkdir, ptr @configfs_rmdir, ptr null, ptr null, ptr @configfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@configfs_root_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @configfs_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @configfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@configfs_dir_operations = dso_local constant %struct.file_operations { ptr null, ptr @configfs_dir_lseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @configfs_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @configfs_dir_open, ptr null, ptr @configfs_dir_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_configfs_register_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_register_group = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_register_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_register_group to i32), ptr @__kstrtab_configfs_register_group, ptr @__kstrtabns_configfs_register_group }, section "___ksymtab+configfs_register_group", align 4
@__kstrtab_configfs_unregister_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_unregister_group = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_unregister_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_unregister_group to i32), ptr @__kstrtab_configfs_unregister_group, ptr @__kstrtabns_configfs_unregister_group }, section "___ksymtab+configfs_unregister_group", align 4
@__kstrtab_configfs_register_default_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_register_default_group = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_register_default_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_register_default_group to i32), ptr @__kstrtab_configfs_register_default_group, ptr @__kstrtabns_configfs_register_default_group }, section "___ksymtab+configfs_register_default_group", align 4
@__kstrtab_configfs_unregister_default_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_unregister_default_group = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_unregister_default_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_unregister_default_group to i32), ptr @__kstrtab_configfs_unregister_default_group, ptr @__kstrtabns_configfs_unregister_default_group }, section "___ksymtab+configfs_unregister_default_group", align 4
@configfs_subsystem_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @configfs_subsystem_mutex, i64 12), ptr getelementptr (i8, ptr @configfs_subsystem_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [48 x i8] c"\013configfs: Tried to unregister non-subsystem!\0A\00", align 1
@configfs_symlink_mutex = external dso_local global %struct.mutex, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"\013configfs: Tried to unregister non-empty subsystem!\0A\00", align 1
@__kstrtab_configfs_register_subsystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_register_subsystem = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_register_subsystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_register_subsystem to i32), ptr @__kstrtab_configfs_register_subsystem, ptr @__kstrtabns_configfs_register_subsystem }, section "___ksymtab+configfs_register_subsystem", align 4
@__kstrtab_configfs_unregister_subsystem = external dso_local constant [0 x i8], align 1
@__kstrtabns_configfs_unregister_subsystem = external dso_local constant [0 x i8], align 1
@__ksymtab_configfs_unregister_subsystem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @configfs_unregister_subsystem to i32), ptr @__kstrtab_configfs_unregister_subsystem, ptr @__kstrtabns_configfs_unregister_subsystem }, section "___ksymtab+configfs_unregister_subsystem", align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"fs/configfs/configfs_internal.h\00", align 1
@configfs_dir_cachep = external dso_local local_unnamed_addr global ptr, align 4
@configfs_bin_file_operations = external dso_local constant %struct.file_operations, align 4
@configfs_file_operations = external dso_local constant %struct.file_operations, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@new_fragment.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"&p->frag_sem\00", align 1
@fsnotify_rmdir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"include/linux/fsnotify.h\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_configfs_depend_item, ptr @__ksymtab_configfs_depend_item_unlocked, ptr @__ksymtab_configfs_register_default_group, ptr @__ksymtab_configfs_register_group, ptr @__ksymtab_configfs_register_subsystem, ptr @__ksymtab_configfs_remove_default_groups, ptr @__ksymtab_configfs_undepend_item, ptr @__ksymtab_configfs_unregister_default_group, ptr @__ksymtab_configfs_unregister_group, ptr @__ksymtab_configfs_unregister_subsystem], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @configfs_d_iput(ptr noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %7 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store ptr null, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %12 = load i16, ptr @configfs_dirent_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %14 = load volatile i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !12

16:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #9
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #9, !srcloc !14
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #9, !srcloc !15
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %30) #9, !srcloc !14
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %30, ptr nonnull %30, i32 1, ptr nonnull elementtype(i32) %30) #9, !srcloc !15
  %34 = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @kfree(ptr noundef nonnull %30) #9
  br label %37

37:                                               ; preds = %36, %32, %26
  %38 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef nonnull %4) #9
  br label %39

39:                                               ; preds = %37, %21, %17, %2
  tail call void @iput(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_fragment(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !15
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @kfree(ptr noundef nonnull %0) #9
  br label %8

8:                                                ; preds = %7, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_fragment(ptr noundef returned %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !12

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #9, !srcloc !14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #9, !srcloc !17
  br label %5

5:                                                ; preds = %3, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_make_dirent(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = tail call fastcc ptr @configfs_new_dirent(ptr noundef %0, ptr noundef %2, i32 noundef %4, ptr noundef %5)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %25

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.configfs_dirent, ptr %7, i32 0, i32 7
  store i16 %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.configfs_dirent, ptr %7, i32 0, i32 8
  store ptr %1, ptr %13, align 4
  %14 = icmp eq ptr %1, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %7, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load volatile i32, ptr %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #9
  br label %21

21:                                               ; preds = %20, %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #9, !srcloc !14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #9, !srcloc !17
  br label %23

23:                                               ; preds = %21, %15
  %24 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  store ptr %7, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %11, %9
  %26 = phi i32 [ %10, %9 ], [ 0, %23 ], [ 0, %11 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @configfs_new_dirent(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = load ptr, ptr @configfs_dir_cachep, align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %5, i32 noundef 3520) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  store volatile i32 1, ptr %6, align 8
  %9 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 3
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 5
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 6
  store i32 %2, ptr %12, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %13 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %18 = load i16, ptr @configfs_dirent_lock, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %20 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %20, ptr noundef nonnull %6) #9
  br label %34

21:                                               ; preds = %8
  %22 = icmp eq ptr %3, null
  br i1 %22, label %25, label %23, !prof !12

23:                                               ; preds = %21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #9, !srcloc !14
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #9, !srcloc !17
  br label %25

25:                                               ; preds = %23, %21
  %26 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 10
  store ptr %3, ptr %26, align 8
  %27 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 2
  %28 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %27, ptr %30, align 4
  store ptr %29, ptr %27, align 8
  %31 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 2, i32 1
  store ptr %28, ptr %31, align 4
  store volatile ptr %27, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %32 = load i16, ptr @configfs_dirent_lock, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %34

34:                                               ; preds = %25, %17, %4
  %35 = phi ptr [ inttoptr (i32 -2 to ptr), %17 ], [ %6, %25 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_dirent_is_ready(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %2 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 10
  %5 = and i32 %4, 1
  %6 = xor i32 %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %7 = load i16, ptr @configfs_dirent_lock, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_create_link(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc ptr @configfs_new_dirent(ptr noundef %6, ptr noundef %0, i32 noundef 32, ptr noundef %8) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %25, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.configfs_dirent, ptr %9, i32 0, i32 7
  store i16 -24065, ptr %12, align 4
  %13 = getelementptr inbounds %struct.configfs_dirent, ptr %9, i32 0, i32 8
  store ptr %2, ptr %13, align 4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %9, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load volatile i32, ptr %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !12

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #9
  br label %21

21:                                               ; preds = %20, %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %9) #9, !srcloc !14
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %9, ptr nonnull %9, i32 1, ptr nonnull elementtype(i32) %9) #9, !srcloc !17
  br label %23

23:                                               ; preds = %21, %15
  %24 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 11
  store ptr %9, ptr %24, align 4
  br label %27

25:                                               ; preds = %4
  %26 = ptrtoint ptr %9 to i32
  br label %37

27:                                               ; preds = %23, %11
  %28 = tail call ptr @configfs_create(ptr noundef %2, i16 noundef zeroext -24065) #9
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 43
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 7
  store ptr @configfs_symlink_inode_operations, ptr %32, align 8
  tail call void @d_instantiate(ptr noundef %2, ptr noundef %28) #9
  br i1 %14, label %37, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %34) #9
  br label %37

35:                                               ; preds = %27
  tail call fastcc void @configfs_remove_dirent(ptr noundef %2)
  %36 = ptrtoint ptr %28 to i32
  br label %37

37:                                               ; preds = %35, %33, %30, %25
  %38 = phi i32 [ %36, %35 ], [ %26, %25 ], [ 0, %30 ], [ 0, %33 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @configfs_remove_dirent(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %6 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %11 = load i16, ptr @configfs_dirent_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %13 = load volatile i32, ptr %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !12

15:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #9
  br label %16

16:                                               ; preds = %15, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #9, !srcloc !14
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #9, !srcloc !15
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %29) #9, !srcloc !14
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %29, ptr nonnull %29, i32 1, ptr nonnull elementtype(i32) %29) #9, !srcloc !15
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @kfree(ptr noundef nonnull %29) #9
  br label %36

36:                                               ; preds = %35, %31, %25
  %37 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef nonnull %3) #9
  br label %38

38:                                               ; preds = %36, %20, %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_remove_default_groups(ptr noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -72
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @config_item_put(ptr noundef %7) #9
  %12 = icmp eq ptr %8, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_depend_item(ptr noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call ptr @configfs_pin_fs() #9
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i32
  br label %52

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  tail call void @down_write(ptr noundef %10) #9
  %11 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.configfs_dirent, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %48, label %16

16:                                               ; preds = %26, %7
  %17 = phi ptr [ %27, %26 ], [ %14, %7 ]
  %18 = getelementptr i8, ptr %17, i32 24
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %17, i32 20
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, %13
  br i1 %28, label %48, label %16

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %17, i32 -8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %17, i32 32
  %34 = load ptr, ptr %33, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %35 = tail call fastcc i32 @configfs_depend_prep(ptr noundef %34, ptr noundef %1) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 11
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.configfs_dirent, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %37, %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %46 = load i16, ptr @configfs_dirent_lock, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %48

48:                                               ; preds = %45, %29, %26, %7
  %49 = phi i32 [ %35, %45 ], [ -2, %29 ], [ -2, %7 ], [ -2, %26 ]
  %50 = load ptr, ptr %8, align 8
  %51 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 24
  tail call void @up_write(ptr noundef %51) #9
  tail call void @configfs_release_fs() #9
  br label %52

52:                                               ; preds = %48, %5
  %53 = phi i32 [ %6, %5 ], [ %49, %48 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_pin_fs() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_release_fs() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_undepend_item(ptr nocapture noundef readonly %0) #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %2 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1167, 0\0A.popsection", ""() #9, !srcloc !18
  unreachable

10:                                               ; preds = %1
  %11 = add nsw i32 %7, -1
  store i32 %11, ptr %6, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %12 = load i16, ptr @configfs_dirent_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_depend_item_unlocked(ptr noundef readnone %0, ptr noundef %1) #1 {
  %3 = tail call i32 @configfs_is_root(ptr noundef %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %84

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @configfs_is_root(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.config_group, ptr %7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @configfs_is_root(ptr noundef %7) #9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %15, %10
  %16 = phi ptr [ %18, %15 ], [ %7, %10 ]
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @configfs_is_root(ptr noundef %18) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %15, label %21

21:                                               ; preds = %15, %10, %5
  %22 = phi ptr [ %1, %5 ], [ %12, %10 ], [ %12, %15 ]
  %23 = phi ptr [ %7, %5 ], [ %7, %10 ], [ %18, %15 ]
  %24 = icmp eq ptr %22, %0
  br i1 %24, label %53, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.config_item, ptr %23, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %29, i32 0, i32 24
  tail call void @down_write(ptr noundef %30) #9
  %31 = load ptr, ptr %26, align 4
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.configfs_dirent, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %78, label %37

37:                                               ; preds = %47, %25
  %38 = phi ptr [ %48, %47 ], [ %35, %25 ]
  %39 = getelementptr i8, ptr %38, i32 24
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %38, i32 20
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %22
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %37
  %48 = load ptr, ptr %38, align 4
  %49 = icmp eq ptr %48, %34
  br i1 %49, label %78, label %37

50:                                               ; preds = %43
  %51 = getelementptr i8, ptr %38, i32 -8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %58

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 11
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi ptr [ %51, %50 ], [ %57, %53 ]
  %60 = getelementptr inbounds %struct.configfs_dirent, ptr %59, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %62 = tail call fastcc i32 @configfs_depend_prep(ptr noundef %61, ptr noundef %1) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 7
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.dentry, ptr %66, i32 0, i32 11
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.configfs_dirent, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  br label %72

72:                                               ; preds = %64, %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %73 = load i16, ptr @configfs_dirent_lock, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br i1 %24, label %84, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.config_item, ptr %23, i32 0, i32 7
  %77 = load ptr, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %50, %47, %25
  %79 = phi ptr [ %77, %75 ], [ %31, %50 ], [ %31, %25 ], [ %31, %47 ]
  %80 = phi i32 [ %62, %75 ], [ -2, %50 ], [ -2, %25 ], [ -2, %47 ]
  %81 = getelementptr inbounds %struct.dentry, ptr %79, i32 0, i32 5
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.inode, ptr %82, i32 0, i32 24
  tail call void @up_write(ptr noundef %83) #9
  br label %84

84:                                               ; preds = %78, %72, %2
  %85 = phi i32 [ -22, %2 ], [ %80, %78 ], [ %62, %72 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_is_root(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @configfs_lookup(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 255
  br i1 %11, label %101, label %12

12:                                               ; preds = %3
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %13 = getelementptr inbounds %struct.configfs_dirent, ptr %7, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %15 = load i16, ptr @configfs_dirent_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %17 = and i32 %14, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %101

19:                                               ; preds = %12
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %20 = getelementptr inbounds %struct.configfs_dirent, ptr %7, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %96, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  br label %25

25:                                               ; preds = %93, %23
  %26 = phi ptr [ %21, %23 ], [ %94, %93 ]
  %27 = getelementptr i8, ptr %26, i32 24
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 12
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %93, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %26, i32 -8
  %33 = tail call ptr @configfs_get_name(ptr noundef %32) #9
  %34 = load ptr, ptr %24, align 8
  %35 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %26, i32 24
  %39 = getelementptr i8, ptr %26, i32 20
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.configfs_attribute, ptr %40, i32 0, i32 2
  %42 = load i16, ptr %41, align 4
  %43 = and i16 %42, 4095
  %44 = or i16 %43, -32768
  %45 = icmp eq ptr %32, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load volatile i32, ptr %32, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50, !prof !12

49:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #9
  br label %50

50:                                               ; preds = %49, %46
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %32) #9, !srcloc !14
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %32, ptr nonnull %32, i32 1, ptr nonnull elementtype(i32) %32) #9, !srcloc !17
  br label %52

52:                                               ; preds = %50, %37
  %53 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  store ptr %32, ptr %53, align 4
  %54 = getelementptr i8, ptr %26, i32 32
  store ptr %1, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %55 = load i16, ptr @configfs_dirent_lock, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %57 = tail call ptr @configfs_create(ptr noundef %1, i16 noundef zeroext %44) #9
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %84

59:                                               ; preds = %52
  %60 = load volatile i32, ptr %32, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !12

62:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #9
  br label %63

63:                                               ; preds = %62, %59
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %32) #9, !srcloc !14
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %32, ptr %32, i32 1, ptr elementtype(i32) %32) #9, !srcloc !15
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %63
  %68 = load i32, ptr %38, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %67
  %72 = getelementptr i8, ptr %26, i32 36
  %73 = load ptr, ptr %72, align 4
  tail call void @kfree(ptr noundef %73) #9
  %74 = getelementptr i8, ptr %26, i32 40
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %75) #9, !srcloc !14
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %75, ptr nonnull %75, i32 1, ptr nonnull elementtype(i32) %75) #9, !srcloc !15
  %79 = extractvalue { i32, i32 } %78, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  tail call void @kfree(ptr noundef nonnull %75) #9
  br label %82

82:                                               ; preds = %81, %77, %71
  %83 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %83, ptr noundef %32) #9
  br label %101

84:                                               ; preds = %52
  %85 = load i32, ptr %38, align 4
  %86 = and i32 %85, 8
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 13
  br i1 %87, label %91, label %89

89:                                               ; preds = %84
  store i64 0, ptr %88, align 8
  %90 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 39
  store ptr @configfs_bin_file_operations, ptr %90, align 8
  br label %99

91:                                               ; preds = %84
  store i64 4096, ptr %88, align 8
  %92 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 39
  store ptr @configfs_file_operations, ptr %92, align 8
  br label %99

93:                                               ; preds = %31, %25
  %94 = load ptr, ptr %26, align 4
  %95 = icmp eq ptr %94, %20
  br i1 %95, label %96, label %25

96:                                               ; preds = %93, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %97 = load i16, ptr @configfs_dirent_lock, align 4
  %98 = add i16 %97, 1
  store i16 %98, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %99

99:                                               ; preds = %96, %91, %89
  %100 = phi ptr [ null, %96 ], [ %57, %89 ], [ %57, %91 ]
  tail call void @d_add(ptr noundef %1, ptr noundef %100) #9
  br label %101

101:                                              ; preds = %99, %82, %67, %63, %12, %3
  %102 = phi ptr [ null, %99 ], [ inttoptr (i32 -36 to ptr), %3 ], [ inttoptr (i32 -2 to ptr), %12 ], [ %57, %82 ], [ %57, %67 ], [ %57, %63 ]
  ret ptr %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_unlink(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_symlink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_mkdir(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2, i16 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %9 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %11 = load i16, ptr @configfs_dirent_lock, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %13 = and i32 %10, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %169

15:                                               ; preds = %4
  %16 = load i32, ptr %9, align 4
  %17 = and i32 %16, 64
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %169, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 32) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %169, label %23

23:                                               ; preds = %19
  store volatile i32 1, ptr %21, align 8
  %24 = getelementptr inbounds %struct.configfs_fragment, ptr %21, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %24, ptr noundef nonnull @.str.6, ptr noundef nonnull @new_fragment.__key) #9
  %25 = getelementptr inbounds %struct.configfs_fragment, ptr %21, i32 0, i32 2
  store i8 0, ptr %25, align 4
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %27) #9
  %28 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 11
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.configfs_dirent, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @config_item_get(ptr noundef %35) #9
  br label %37

37:                                               ; preds = %31, %23
  %38 = phi ptr [ null, %23 ], [ %36, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %39 = load i16, ptr %27, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %41 = getelementptr inbounds %struct.config_item, ptr %38, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.config_group, ptr %38, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47, !prof !12

46:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1293, 0\0A.popsection", ""() #9, !srcloc !19
  unreachable

47:                                               ; preds = %37
  %48 = icmp eq ptr %42, null
  br i1 %48, label %163, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.config_item_type, ptr %42, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %163, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.configfs_group_operations, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load ptr, ptr %51, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %163, label %60

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds %struct.config_item, ptr %44, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %163, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 4
  %66 = tail call zeroext i1 @try_module_get(ptr noundef %65) #9
  br i1 %66, label %67, label %163

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %69 = getelementptr inbounds %struct.anon, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  %72 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %71, i32 noundef 3264) #11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %161, label %74

74:                                               ; preds = %67
  %75 = load i32, ptr %69, align 4
  %76 = add i32 %75, 1
  %77 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %72, i32 noundef %76, ptr noundef nonnull @.str.3, ptr noundef %78)
  %80 = getelementptr inbounds %struct.configfs_subsystem, ptr %44, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %80) #9
  %81 = load ptr, ptr %50, align 4
  %82 = getelementptr inbounds %struct.configfs_group_operations, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %74
  %86 = tail call ptr %83(ptr noundef %38, ptr noundef nonnull %72) #9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  tail call fastcc void @link_group(ptr noundef %38, ptr noundef nonnull %86)
  br label %104

91:                                               ; preds = %88, %85
  %92 = phi ptr [ %86, %88 ], [ inttoptr (i32 -12 to ptr), %85 ]
  %93 = ptrtoint ptr %92 to i32
  br label %104

94:                                               ; preds = %74
  %95 = load ptr, ptr %81, align 4
  %96 = tail call ptr %95(ptr noundef %38, ptr noundef nonnull %72) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %99, label %101, label %100

100:                                              ; preds = %98
  tail call fastcc void @link_obj(ptr noundef %38, ptr noundef nonnull %96)
  br label %104

101:                                              ; preds = %98, %94
  %102 = phi ptr [ %96, %98 ], [ inttoptr (i32 -12 to ptr), %94 ]
  %103 = ptrtoint ptr %102 to i32
  br label %104

104:                                              ; preds = %101, %100, %91, %90
  %105 = phi i32 [ %93, %91 ], [ 0, %90 ], [ %103, %101 ], [ 0, %100 ]
  %106 = phi ptr [ %92, %91 ], [ %86, %90 ], [ null, %101 ], [ null, %100 ]
  %107 = phi ptr [ null, %91 ], [ %86, %90 ], [ %102, %101 ], [ %96, %100 ]
  tail call void @mutex_unlock(ptr noundef %80) #9
  tail call void @kfree(ptr noundef nonnull %72) #9
  %108 = icmp eq i32 %105, 0
  br i1 %108, label %109, label %161

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.config_item, ptr %107, i32 0, i32 6
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %139, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %111, align 4
  %115 = tail call zeroext i1 @try_module_get(ptr noundef %114) #9
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %117 = load i32, ptr %9, align 4
  %118 = or i32 %117, 512
  store i32 %118, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %119 = load i16, ptr @configfs_dirent_lock, align 4
  %120 = add i16 %119, 1
  store i16 %120, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %121 = icmp eq ptr %106, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %116
  %123 = tail call fastcc i32 @configfs_attach_group(ptr noundef %107, ptr noundef %2, ptr noundef nonnull %21)
  br label %126

124:                                              ; preds = %116
  %125 = tail call fastcc i32 @configfs_attach_item(ptr noundef %107, ptr noundef %2, ptr noundef nonnull %21)
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %128 = load i32, ptr %9, align 4
  %129 = and i32 %128, -513
  store i32 %129, ptr %9, align 4
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 11
  %133 = load ptr, ptr %132, align 4
  tail call fastcc void @configfs_dir_set_ready(ptr noundef %133)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %134 = load i16, ptr @configfs_dirent_lock, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %163

136:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %137 = load i16, ptr @configfs_dirent_lock, align 4
  %138 = add i16 %137, 1
  store i16 %138, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %139

139:                                              ; preds = %136, %113, %109
  %140 = phi ptr [ %114, %113 ], [ null, %109 ], [ %114, %136 ]
  %141 = phi i1 [ true, %113 ], [ true, %109 ], [ false, %136 ]
  %142 = phi i32 [ -22, %113 ], [ -22, %109 ], [ %127, %136 ]
  tail call void @mutex_lock(ptr noundef %80) #9
  %143 = load ptr, ptr %41, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %146, !prof !12

145:                                              ; preds = %139
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 905, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.config_item_type, ptr %143, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.configfs_group_operations, ptr %148, i32 0, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  tail call void %152(ptr noundef %38, ptr noundef %107) #9
  br label %155

155:                                              ; preds = %154, %150, %146
  %156 = icmp eq ptr %106, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %155
  tail call fastcc void @unlink_group(ptr noundef nonnull %106)
  br label %159

158:                                              ; preds = %155
  tail call fastcc void @unlink_obj(ptr noundef %107)
  br label %159

159:                                              ; preds = %158, %157
  tail call fastcc void @client_drop_item(ptr noundef %38, ptr noundef %107)
  tail call void @mutex_unlock(ptr noundef %80) #9
  br i1 %141, label %161, label %160

160:                                              ; preds = %159
  tail call void @module_put(ptr noundef %140) #9
  br label %161

161:                                              ; preds = %160, %159, %104, %67
  %162 = phi i32 [ -12, %67 ], [ %142, %159 ], [ %142, %160 ], [ %105, %104 ]
  tail call void @module_put(ptr noundef %65) #9
  br label %163

163:                                              ; preds = %161, %131, %64, %60, %57, %49, %47
  %164 = phi i32 [ %162, %161 ], [ -1, %57 ], [ -1, %49 ], [ -1, %47 ], [ -22, %60 ], [ -22, %64 ], [ 0, %131 ]
  tail call void @config_item_put(ptr noundef %38) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %21) #9, !srcloc !14
  %165 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #9, !srcloc !15
  %166 = extractvalue { i32, i32 } %165, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  tail call void @kfree(ptr noundef nonnull %21) #9
  br label %169

169:                                              ; preds = %168, %163, %19, %15, %4
  %170 = phi i32 [ -2, %4 ], [ -1, %15 ], [ %164, %163 ], [ %164, %168 ], [ -12, %19 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_rmdir(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %156

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %13) #9
  %14 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.configfs_dirent, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @config_item_get(ptr noundef %21) #9
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi ptr [ null, %10 ], [ %22, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %25 = load i16, ptr %13, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %27 = getelementptr inbounds %struct.config_group, ptr %24, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !12

30:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1453, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.config_item, ptr %24, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @config_item_put(ptr noundef %24) #9
  br label %156

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.config_item, ptr %28, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !12

40:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1461, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

41:                                               ; preds = %36
  %42 = load ptr, ptr %38, align 4
  %43 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 1
  br label %44

44:                                               ; preds = %56, %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !23
  call void @mutex_lock(ptr noundef nonnull @configfs_symlink_mutex) #9
  call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %45 = load i32, ptr %43, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = call fastcc i32 @configfs_detach_prep(ptr noundef %1, ptr noundef nonnull %3)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call fastcc void @configfs_detach_rollback(ptr noundef %1)
  br label %51

51:                                               ; preds = %50, %47, %44
  %52 = phi i32 [ -16, %44 ], [ %48, %50 ], [ 0, %47 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %53 = load i16, ptr @configfs_dirent_lock, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr @configfs_dirent_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  call void @mutex_unlock(ptr noundef nonnull @configfs_symlink_mutex) #9
  switch i32 %52, label %55 [
    i32 0, label %66
    i32 -11, label %56
  ]

55:                                               ; preds = %51
  call void @config_item_put(ptr noundef %24) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %156

56:                                               ; preds = %51
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr inbounds %struct.dentry, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.inode, ptr %59, i32 0, i32 24
  call void @down_write(ptr noundef %60) #9
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.inode, ptr %63, i32 0, i32 24
  call void @up_write(ptr noundef %64) #9
  %65 = load ptr, ptr %3, align 4
  call void @dput(ptr noundef %65) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %44

66:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %67 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.configfs_fragment, ptr %68, i32 0, i32 1
  %70 = call i32 @down_write_killable(ptr noundef %69) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  call fastcc void @configfs_detach_rollback(ptr noundef %1)
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %73 = load i16, ptr @configfs_dirent_lock, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr @configfs_dirent_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  call void @config_item_put(ptr noundef %24) #9
  br label %156

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.configfs_fragment, ptr %68, i32 0, i32 2
  store i8 1, ptr %76, align 4
  call void @up_write(ptr noundef %69) #9
  %77 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %77) #9
  %78 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds %struct.configfs_dirent, ptr %82, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = call ptr @config_item_get(ptr noundef %84) #9
  br label %86

86:                                               ; preds = %81, %75
  %87 = phi ptr [ null, %75 ], [ %85, %81 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %88 = load i16, ptr %77, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %77, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  call void @config_item_put(ptr noundef %24) #9
  %90 = getelementptr inbounds %struct.config_item, ptr %87, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %91, align 4
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi ptr [ %94, %93 ], [ null, %86 ]
  %97 = load i32, ptr %6, align 4
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %95
  call fastcc void @detach_groups(ptr noundef %87) #9
  call fastcc void @detach_attrs(ptr noundef %87) #9
  call fastcc void @configfs_remove_dir(ptr noundef %87) #9
  %101 = getelementptr inbounds %struct.configfs_subsystem, ptr %28, i32 0, i32 1
  call void @mutex_lock(ptr noundef %101) #9
  %102 = load ptr, ptr %32, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105, !prof !12

104:                                              ; preds = %100
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 905, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.config_item_type, ptr %102, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.configfs_group_operations, ptr %107, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  call void %111(ptr noundef %24, ptr noundef %87) #9
  br label %114

114:                                              ; preds = %113, %109, %105
  call fastcc void @unlink_group(ptr noundef %87)
  br label %140

115:                                              ; preds = %95
  call fastcc void @detach_attrs(ptr noundef %87) #9
  call fastcc void @configfs_remove_dir(ptr noundef %87) #9
  %116 = getelementptr inbounds %struct.configfs_subsystem, ptr %28, i32 0, i32 1
  call void @mutex_lock(ptr noundef %116) #9
  %117 = load ptr, ptr %32, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %120, !prof !12

119:                                              ; preds = %115
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 905, 0\0A.popsection", ""() #9, !srcloc !20
  unreachable

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.config_item_type, ptr %117, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.configfs_group_operations, ptr %122, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void %126(ptr noundef %24, ptr noundef %87) #9
  br label %129

129:                                              ; preds = %128, %124, %120
  %130 = getelementptr inbounds %struct.config_item, ptr %87, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %140, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.config_item, ptr %87, i32 0, i32 3
  %135 = getelementptr inbounds %struct.config_item, ptr %87, i32 0, i32 3, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = load ptr, ptr %134, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  store ptr %136, ptr %138, align 4
  store volatile ptr %137, ptr %136, align 4
  store volatile ptr %134, ptr %134, align 4
  store ptr %134, ptr %135, align 4
  store ptr null, ptr %130, align 4
  %139 = getelementptr inbounds %struct.config_item, ptr %87, i32 0, i32 4
  store ptr null, ptr %139, align 4
  call void @config_item_put(ptr noundef %87) #9
  call void @config_item_put(ptr noundef nonnull %131) #9
  br label %140

140:                                              ; preds = %133, %129, %114
  %141 = load ptr, ptr %32, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %144, !prof !12

143:                                              ; preds = %140
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 924, 0\0A.popsection", ""() #9, !srcloc !24
  unreachable

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.config_item_type, ptr %141, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.configfs_group_operations, ptr %146, i32 0, i32 4
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  call void %150(ptr noundef %24, ptr noundef %87) #9
  br label %154

153:                                              ; preds = %148, %144
  call void @config_item_put(ptr noundef %87) #9
  br label %154

154:                                              ; preds = %153, %152
  %155 = getelementptr inbounds %struct.configfs_subsystem, ptr %28, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %155) #9
  call void @config_item_put(ptr noundef %87) #9
  call void @module_put(ptr noundef %96) #9
  call void @module_put(ptr noundef %42) #9
  br label %156

156:                                              ; preds = %154, %72, %55, %35, %2
  %157 = phi i32 [ -4, %72 ], [ 0, %154 ], [ %52, %55 ], [ -22, %35 ], [ -1, %2 ]
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_setattr(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @configfs_dir_lseek(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  switch i32 %2, label %53 [
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
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 10
  %15 = load i64, ptr %14, align 8
  %16 = icmp eq i64 %11, %15
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  store i64 %11, ptr %14, align 8
  %18 = icmp ugt i64 %11, 1
  br i1 %18, label %19, label %53

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = add nsw i64 %11, -2
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %25 = getelementptr inbounds %struct.configfs_dirent, ptr %23, i32 0, i32 2
  %26 = getelementptr inbounds %struct.configfs_dirent, ptr %23, i32 0, i32 2, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = getelementptr inbounds %struct.configfs_dirent, ptr %21, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp ne i64 %24, 0
  %33 = icmp ne ptr %31, %30
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %47

35:                                               ; preds = %35, %19
  %36 = phi ptr [ %43, %35 ], [ %31, %19 ]
  %37 = phi i64 [ %42, %35 ], [ %24, %19 ]
  %38 = getelementptr i8, ptr %36, i32 20
  %39 = load ptr, ptr %38, align 4
  %40 = icmp ne ptr %39, null
  %41 = sext i1 %40 to i64
  %42 = add i64 %37, %41
  %43 = load ptr, ptr %36, align 4
  %44 = icmp ne i64 %42, 0
  %45 = icmp ne ptr %43, %30
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %35, label %47

47:                                               ; preds = %35, %19
  %48 = phi ptr [ %31, %19 ], [ %43, %35 ]
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  store ptr %25, ptr %49, align 4
  store ptr %48, ptr %25, align 4
  store ptr %50, ptr %26, align 4
  store volatile ptr %25, ptr %50, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %51 = load i16, ptr @configfs_dirent_lock, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %53

53:                                               ; preds = %47, %17, %13, %10, %3
  %54 = phi i64 [ -22, %10 ], [ -22, %3 ], [ %11, %17 ], [ %11, %47 ], [ %11, %13 ]
  ret i64 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_readdir(ptr nocapture noundef readonly %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.configfs_dirent, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  switch i64 %13, label %41 [
    i64 0, label %14
    i64 1, label %25
  ]

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8
  %16 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = tail call i32 %15(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 1, i64 noundef 0, i64 noundef %20, i32 noundef 4) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %112

23:                                               ; preds = %14
  store i64 1, ptr %12, align 8
  %24 = load ptr, ptr %3, align 4
  br label %25

25:                                               ; preds = %23, %2
  %26 = phi ptr [ %24, %23 ], [ %4, %2 ]
  %27 = load ptr, ptr %1, align 8
  %28 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %28) #9
  %29 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %35 = load i16, ptr %28, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %37 = zext i32 %34 to i64
  %38 = tail call i32 %27(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef 2, i64 noundef 1, i64 noundef %37, i32 noundef 4) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %112

40:                                               ; preds = %25
  store i64 2, ptr %12, align 8
  br label %41

41:                                               ; preds = %40, %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %42 = load i64, ptr %12, align 8
  %43 = icmp eq i64 %42, 2
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 3
  %46 = getelementptr inbounds %struct.configfs_dirent, ptr %10, i32 0, i32 2, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  %50 = load ptr, ptr %45, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %11, ptr %51, align 4
  store ptr %50, ptr %11, align 4
  store ptr %45, ptr %46, align 4
  store volatile ptr %11, ptr %45, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 3
  %54 = load ptr, ptr %11, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %109, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.configfs_dirent, ptr %10, i32 0, i32 2, i32 1
  br label %58

58:                                               ; preds = %104, %56
  %59 = phi ptr [ %54, %56 ], [ %107, %104 ]
  %60 = phi i32 [ 0, %56 ], [ %106, %104 ]
  %61 = getelementptr i8, ptr %59, i32 -8
  %62 = getelementptr i8, ptr %59, i32 20
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %104, label %65

65:                                               ; preds = %58
  %66 = getelementptr i8, ptr %59, i32 32
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.dentry, ptr %67, i32 0, i32 5
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.inode, ptr %71, i32 0, i32 10
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %69, %65
  %77 = phi i1 [ false, %73 ], [ true, %69 ], [ true, %65 ]
  %78 = phi i32 [ %75, %73 ], [ %60, %69 ], [ %60, %65 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %79 = load i16, ptr @configfs_dirent_lock, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br i1 %77, label %81, label %83

81:                                               ; preds = %76
  %82 = tail call i32 @iunique(ptr noundef %6, i32 noundef 2) #9
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i32 [ %78, %76 ], [ %82, %81 ]
  %85 = tail call ptr @configfs_get_name(ptr noundef %61) #9
  %86 = tail call i32 @strlen(ptr noundef %85)
  %87 = zext i32 %84 to i64
  %88 = getelementptr i8, ptr %59, i32 28
  %89 = load i16, ptr %88, align 4
  %90 = lshr i16 %89, 12
  %91 = zext i16 %90 to i32
  %92 = load ptr, ptr %1, align 8
  %93 = load i64, ptr %12, align 8
  %94 = tail call i32 %92(ptr noundef %1, ptr noundef %85, i32 noundef %86, i64 noundef %93, i64 noundef %87, i32 noundef %91) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %83
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %97 = load ptr, ptr %57, align 4
  %98 = load ptr, ptr %11, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %98, i32 0, i32 1
  store ptr %97, ptr %99, align 4
  store volatile ptr %98, ptr %97, align 4
  %100 = load ptr, ptr %59, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %11, ptr %101, align 4
  store ptr %100, ptr %11, align 4
  store ptr %59, ptr %57, align 4
  store volatile ptr %11, ptr %59, align 4
  %102 = load i64, ptr %12, align 8
  %103 = add i64 %102, 1
  store i64 %103, ptr %12, align 8
  br label %104

104:                                              ; preds = %96, %58
  %105 = phi ptr [ %59, %58 ], [ %11, %96 ]
  %106 = phi i32 [ %60, %58 ], [ %84, %96 ]
  %107 = load ptr, ptr %105, align 4
  %108 = icmp eq ptr %107, %53
  br i1 %108, label %109, label %58

109:                                              ; preds = %104, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %110 = load i16, ptr @configfs_dirent_lock, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %112

112:                                              ; preds = %109, %83, %25, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_dir_open(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24
  tail call void @down_write(ptr noundef %9) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %10 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %12 = load i16, ptr @configfs_dirent_lock, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %14 = and i32 %11, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = tail call fastcc ptr @configfs_new_dirent(ptr noundef %6, ptr noundef null, i32 noundef 0, ptr noundef null)
  %18 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %17, ptr %18, align 8
  %19 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %17 to i32
  %21 = select i1 %19, i32 %20, i32 0
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i32 [ -2, %2 ], [ %21, %16 ]
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 24
  tail call void @up_write(ptr noundef %25) #9
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @configfs_dir_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 24
  tail call void @down_write(ptr noundef %9) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %10 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 2
  %11 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %10, ptr %10, align 4
  store ptr %10, ptr %11, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %15 = load i16, ptr @configfs_dirent_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 24
  tail call void @up_write(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  tail call void @kfree(ptr noundef %25) #9
  %26 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %27) #9, !srcloc !14
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %27, ptr nonnull %27, i32 1, ptr nonnull elementtype(i32) %27) #9, !srcloc !15
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @kfree(ptr noundef nonnull %27) #9
  br label %34

34:                                               ; preds = %33, %29, %23
  %35 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef %6) #9
  br label %36

36:                                               ; preds = %34, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_register_group(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 32) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  store volatile i32 1, ptr %6, align 8
  %9 = getelementptr inbounds %struct.configfs_fragment, ptr %6, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @new_fragment.__key) #9
  %10 = getelementptr inbounds %struct.configfs_fragment, ptr %6, i32 0, i32 2
  store i8 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #9
  tail call fastcc void @link_group(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 24
  tail call void @down_write(ptr noundef %16) #9
  %17 = tail call fastcc i32 @create_default_group(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %8
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %20 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dentry, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @configfs_dir_set_ready(ptr noundef %23)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %24 = load i16, ptr @configfs_dirent_lock, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr inbounds %struct.inode, ptr %26, i32 0, i32 24
  tail call void @up_write(ptr noundef %27) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #9, !srcloc !14
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #9, !srcloc !15
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %39

31:                                               ; preds = %8
  %32 = load ptr, ptr %14, align 8
  %33 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 24
  tail call void @up_write(ptr noundef %33) #9
  tail call void @mutex_lock(ptr noundef %11) #9
  tail call fastcc void @unlink_group(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %11) #9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %6) #9, !srcloc !14
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #9, !srcloc !15
  %35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %19
  %38 = phi i32 [ 0, %19 ], [ %17, %31 ]
  tail call void @kfree(ptr noundef nonnull %6) #9
  br label %39

39:                                               ; preds = %37, %31, %19, %2
  %40 = phi i32 [ 0, %19 ], [ %17, %31 ], [ -12, %2 ], [ %38, %37 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @link_group(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  store ptr %0, ptr %3, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @config_item_get(ptr noundef nonnull %0) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 5
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 3
  %11 = getelementptr inbounds %struct.config_group, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.config_group, ptr %8, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %10, ptr %12, align 4
  store ptr %11, ptr %10, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %10, ptr %13, align 4
  %15 = tail call ptr @config_item_get(ptr noundef %1) #9
  %16 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %7
  %20 = tail call i32 @configfs_is_root(ptr noundef %0) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 787, 0\0A.popsection", ""() #9, !srcloc !25
  unreachable

23:                                               ; preds = %19, %7
  %24 = phi ptr [ %17, %7 ], [ %1, %19 ]
  %25 = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 2
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %34, label %29

29:                                               ; preds = %29, %23
  %30 = phi ptr [ %32, %29 ], [ %27, %23 ]
  %31 = getelementptr i8, ptr %30, i32 -72
  tail call fastcc void @link_group(ptr noundef %1, ptr noundef %31)
  %32 = load ptr, ptr %30, align 4
  %33 = icmp eq ptr %32, %26
  br i1 %33, label %34, label %29

34:                                               ; preds = %29, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_default_group(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 1
  store ptr %9, ptr %1, align 4
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = tail call ptr @d_alloc_name(ptr noundef %5, ptr noundef %11) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  tail call void @d_add(ptr noundef nonnull %12, ptr noundef null) #9
  %15 = tail call fastcc i32 @configfs_attach_group(ptr noundef %1, ptr noundef nonnull %12, ptr noundef %2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.configfs_dirent, ptr %19, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 128
  store i32 %22, ptr %20, align 4
  br label %29

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !26

27:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 681, 0\0A.popsection", ""() #9, !srcloc !27
  unreachable

28:                                               ; preds = %23
  tail call void @d_drop(ptr noundef nonnull %12) #9
  tail call void @dput(ptr noundef nonnull %12) #9
  br label %29

29:                                               ; preds = %28, %17, %10
  %30 = phi i32 [ %15, %28 ], [ 0, %17 ], [ -12, %10 ]
  ret i32 %30
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @configfs_dir_set_ready(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -1025
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %19, label %8

8:                                                ; preds = %16, %1
  %9 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %10 = getelementptr i8, ptr %9, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %9, i32 -8
  tail call fastcc void @configfs_dir_set_ready(ptr noundef %15)
  br label %16

16:                                               ; preds = %14, %8
  %17 = load ptr, ptr %9, align 4
  %18 = icmp eq ptr %17, %5
  br i1 %18, label %19, label %8

19:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unlink_group(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -72
  tail call fastcc void @unlink_group(ptr noundef %7)
  %8 = load ptr, ptr %6, align 4
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  store ptr null, ptr %11, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3
  %17 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %17, align 4
  store ptr null, ptr %12, align 4
  %21 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  store ptr null, ptr %21, align 4
  tail call void @config_item_put(ptr noundef %0) #9
  tail call void @config_item_put(ptr noundef nonnull %13) #9
  br label %22

22:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_unregister_group(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.configfs_dirent, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.configfs_fragment, ptr %13, i32 0, i32 1
  tail call void @down_write(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.configfs_fragment, ptr %13, i32 0, i32 2
  store i8 1, ptr %15, align 4
  tail call void @up_write(ptr noundef %14) #9
  %16 = getelementptr inbounds %struct.dentry, ptr %9, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 24
  tail call void @down_write(ptr noundef %18) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %19 = tail call fastcc i32 @configfs_detach_prep(ptr noundef %5, ptr noundef null)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %20 = load i16, ptr @configfs_dirent_lock, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  tail call fastcc void @detach_groups(ptr noundef %0) #9
  tail call fastcc void @detach_attrs(ptr noundef %0) #9
  tail call fastcc void @configfs_remove_dir(ptr noundef %0) #9
  %22 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = or i32 %25, 16
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %27) #9
  %28 = load i32, ptr %5, align 8
  %29 = or i32 %28, 256
  store i32 %29, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %30 = load i16, ptr %27, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  tail call void @d_drop(ptr noundef %5) #9
  %32 = load ptr, ptr %16, align 8
  %33 = load i32, ptr %5, align 8
  %34 = and i32 %33, 7340032
  %35 = icmp eq i32 %34, 0
  %36 = load i1, ptr @fsnotify_rmdir.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !12

39:                                               ; preds = %1
  store i1 true, ptr @fsnotify_rmdir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef null) #9
  br label %40

40:                                               ; preds = %39, %1
  br i1 %35, label %55, label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %22, align 8
  %43 = load i16, ptr %42, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %45, i32 0, i32 42
  %47 = load volatile i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4
  %51 = and i16 %43, -4096
  %52 = icmp eq i16 %51, 16384
  %53 = select i1 %52, i32 1073742336, i32 512
  %54 = tail call i32 @fsnotify(i32 noundef %53, ptr noundef %42, i32 noundef 2, ptr noundef %32, ptr noundef %50, ptr noundef null, i32 noundef 0) #9
  br label %55

55:                                               ; preds = %49, %41, %40
  %56 = load ptr, ptr %16, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 24
  tail call void @up_write(ptr noundef %57) #9
  tail call void @dput(ptr noundef %5) #9
  %58 = getelementptr inbounds %struct.configfs_subsystem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %58) #9
  tail call fastcc void @unlink_group(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %58) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configfs_detach_prep(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 256
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.configfs_dirent, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %48, label %15

15:                                               ; preds = %45, %11
  %16 = phi ptr [ %46, %45 ], [ %13, %11 ]
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %16, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = and i32 %22, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = and i32 %22, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = icmp eq ptr %1, null
  br i1 %32, label %48, label %33

33:                                               ; preds = %31
  %34 = getelementptr i8, ptr %16, i32 32
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dentry, ptr %35, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %38) #9
  br label %39

39:                                               ; preds = %37, %33
  store ptr %35, ptr %1, align 4
  br label %48

40:                                               ; preds = %28
  %41 = getelementptr i8, ptr %16, i32 32
  %42 = load ptr, ptr %41, align 4
  %43 = tail call fastcc i32 @configfs_detach_prep(ptr noundef %42, ptr noundef %1)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %20, %15
  %46 = load ptr, ptr %16, align 4
  %47 = icmp eq ptr %46, %12
  br i1 %47, label %48, label %15

48:                                               ; preds = %45, %40, %39, %31, %25, %11, %2
  %49 = phi i32 [ -11, %39 ], [ -11, %31 ], [ -16, %2 ], [ 0, %11 ], [ -39, %25 ], [ 0, %45 ], [ %43, %40 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @configfs_register_default_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 80) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  tail call void @config_group_init_type_name(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #9
  %8 = tail call i32 @configfs_register_group(ptr noundef %0, ptr noundef nonnull %5)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #9
  %11 = inttoptr i32 %8 to ptr
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi ptr [ %11, %10 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_unregister_default_group(ptr noundef %0) #1 {
  tail call void @configfs_unregister_group(ptr noundef %0)
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_register_subsystem(ptr noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  store volatile i32 1, ptr %3, align 8
  %6 = getelementptr inbounds %struct.configfs_fragment, ptr %3, i32 0, i32 1
  tail call void @__init_rwsem(ptr noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull @new_fragment.__key) #9
  %7 = getelementptr inbounds %struct.configfs_fragment, ptr %3, i32 0, i32 2
  store i8 0, ptr %7, align 4
  %8 = tail call ptr @configfs_pin_fs() #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #9, !srcloc !14
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #9, !srcloc !15
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %15

15:                                               ; preds = %14, %10
  %16 = ptrtoint ptr %8 to i32
  br label %58

17:                                               ; preds = %5
  %18 = load ptr, ptr %0, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 1
  store ptr %21, ptr %0, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  tail call void @mutex_lock(ptr noundef nonnull @configfs_subsystem_mutex) #9
  %25 = getelementptr inbounds %struct.configfs_dirent, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call fastcc void @link_group(ptr noundef %26, ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @configfs_subsystem_mutex) #9
  %27 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 24
  tail call void @down_write(ptr noundef %29) #9
  %30 = load ptr, ptr %0, align 4
  %31 = tail call ptr @d_alloc_name(ptr noundef %8, ptr noundef %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %22
  tail call void @d_add(ptr noundef nonnull %31, ptr noundef null) #9
  %34 = tail call fastcc i32 @configfs_attach_group(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull %3)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40, !prof !26

40:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1884, 0\0A.popsection", ""() #9, !srcloc !28
  unreachable

41:                                               ; preds = %36
  tail call void @d_drop(ptr noundef nonnull %31) #9
  tail call void @dput(ptr noundef nonnull %31) #9
  br label %47

42:                                               ; preds = %33
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %43 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  tail call fastcc void @configfs_dir_set_ready(ptr noundef %44)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %45 = load i16, ptr @configfs_dirent_lock, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  br label %47

47:                                               ; preds = %42, %41, %22
  %48 = phi i32 [ %34, %41 ], [ 0, %42 ], [ -12, %22 ]
  %49 = load ptr, ptr %27, align 8
  %50 = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 24
  tail call void @up_write(ptr noundef %50) #9
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @mutex_lock(ptr noundef nonnull @configfs_subsystem_mutex) #9
  tail call fastcc void @unlink_group(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @configfs_subsystem_mutex) #9
  tail call void @configfs_release_fs() #9
  br label %53

53:                                               ; preds = %52, %47
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %3) #9, !srcloc !14
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #9, !srcloc !15
  %55 = extractvalue { i32, i32 } %54, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %58

58:                                               ; preds = %57, %53, %15, %1
  %59 = phi i32 [ %16, %15 ], [ %48, %53 ], [ %48, %57 ], [ -12, %1 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc_name(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configfs_attach_group(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call fastcc i32 @configfs_attach_item(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 64
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 24
  tail call void @down_write(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  br label %16

16:                                               ; preds = %20, %6
  %17 = phi ptr [ %15, %6 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 -72
  %22 = tail call fastcc i32 @create_default_group(ptr noundef %0, ptr noundef %21, ptr noundef %2) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %24

24:                                               ; preds = %20
  tail call fastcc void @detach_groups(ptr noundef %0) #9
  tail call fastcc void @detach_attrs(ptr noundef %0) #9
  tail call fastcc void @configfs_remove_dir(ptr noundef %0) #9
  %25 = load ptr, ptr %12, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 16
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %29) #9
  %30 = load i32, ptr %1, align 8
  %31 = or i32 %30, 256
  store i32 %31, ptr %1, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %32 = load i16, ptr %29, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %34 = load ptr, ptr %12, align 8
  %35 = getelementptr inbounds %struct.inode, ptr %34, i32 0, i32 24
  tail call void @up_write(ptr noundef %35) #9
  tail call void @d_delete(ptr noundef %1) #9
  br label %39

36:                                               ; preds = %16
  %37 = load ptr, ptr %12, align 8
  %38 = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 24
  tail call void @up_write(ptr noundef %38) #9
  br label %39

39:                                               ; preds = %36, %24, %3
  %40 = phi i32 [ %4, %3 ], [ %22, %24 ], [ 0, %36 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_unregister_subsystem(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %70

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.configfs_dirent, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.configfs_fragment, ptr %17, i32 0, i32 1
  tail call void @down_write(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.configfs_fragment, ptr %17, i32 0, i32 2
  store i8 1, ptr %19, align 4
  tail call void @up_write(ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 24
  tail call void @down_write(ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 24
  tail call void @down_write(ptr noundef %25) #9
  tail call void @mutex_lock(ptr noundef nonnull @configfs_symlink_mutex) #9
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %26 = tail call fastcc i32 @configfs_detach_prep(ptr noundef %3, ptr noundef null)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %13
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %30

30:                                               ; preds = %28, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %31 = load i16, ptr @configfs_dirent_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  tail call void @mutex_unlock(ptr noundef nonnull @configfs_symlink_mutex) #9
  tail call fastcc void @detach_groups(ptr noundef %0) #9
  tail call fastcc void @detach_attrs(ptr noundef %0) #9
  tail call fastcc void @configfs_remove_dir(ptr noundef %0) #9
  %33 = load ptr, ptr %23, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 16
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %37) #9
  %38 = load i32, ptr %3, align 8
  %39 = or i32 %38, 256
  store i32 %39, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %40 = load i16, ptr %37, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %37, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %42 = load ptr, ptr %23, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 24
  tail call void @up_write(ptr noundef %43) #9
  tail call void @d_drop(ptr noundef %3) #9
  %44 = load ptr, ptr %20, align 8
  %45 = load i32, ptr %3, align 8
  %46 = and i32 %45, 7340032
  %47 = icmp eq i32 %46, 0
  %48 = load i1, ptr @fsnotify_rmdir.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !12

51:                                               ; preds = %30
  store i1 true, ptr @fsnotify_rmdir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 298, i32 noundef 9, ptr noundef null) #9
  br label %52

52:                                               ; preds = %51, %30
  br i1 %47, label %67, label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %23, align 8
  %55 = load i16, ptr %54, align 8
  %56 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 8
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.super_block, ptr %57, i32 0, i32 42
  %59 = load volatile i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 4
  %63 = and i16 %55, -4096
  %64 = icmp eq i16 %63, 16384
  %65 = select i1 %64, i32 1073742336, i32 512
  %66 = tail call i32 @fsnotify(i32 noundef %65, ptr noundef %54, i32 noundef 2, ptr noundef %44, ptr noundef %62, ptr noundef null, i32 noundef 0) #9
  br label %67

67:                                               ; preds = %61, %53, %52
  %68 = load ptr, ptr %20, align 8
  %69 = getelementptr inbounds %struct.inode, ptr %68, i32 0, i32 24
  tail call void @up_write(ptr noundef %69) #9
  tail call void @dput(ptr noundef %3) #9
  tail call void @mutex_lock(ptr noundef nonnull @configfs_subsystem_mutex) #9
  tail call fastcc void @unlink_group(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @configfs_subsystem_mutex) #9
  tail call void @configfs_release_fs() #9
  br label %70

70:                                               ; preds = %67, %11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configfs_depend_prep(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !12

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %4, %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1038, 0\0A.popsection", ""() #9, !srcloc !29
  unreachable

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.configfs_dirent, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %31, label %17

17:                                               ; preds = %28, %13
  %18 = phi ptr [ %29, %28 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 24
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 1282
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %18, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = tail call fastcc i32 @configfs_depend_prep(ptr noundef %25, ptr noundef %1)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %17
  %29 = load ptr, ptr %18, align 4
  %30 = icmp eq ptr %29, %14
  br i1 %30, label %31, label %17

31:                                               ; preds = %28, %23, %13, %9
  %32 = phi i32 [ 0, %9 ], [ -2, %13 ], [ 0, %23 ], [ -2, %28 ]
  ret i32 %32
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @configfs_get_name(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @link_obj(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  store ptr %0, ptr %3, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @config_item_get(ptr noundef nonnull %0) #9
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 5
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 3
  %11 = getelementptr inbounds %struct.config_group, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.config_group, ptr %8, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %10, ptr %12, align 4
  store ptr %11, ptr %10, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %10, ptr %13, align 4
  %15 = tail call ptr @config_item_get(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configfs_attach_item(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8, !prof !12

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 290, 0\0A.popsection", ""() #9, !srcloc !30
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.configfs_dirent, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %31, label %16

16:                                               ; preds = %26, %8
  %17 = phi ptr [ %27, %26 ], [ %14, %8 ]
  %18 = getelementptr i8, ptr %17, i32 20
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %17, i32 -8
  %23 = tail call ptr @configfs_get_name(ptr noundef %22) #9
  %24 = tail call i32 @strcmp(ptr noundef %23, ptr noundef %12) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %125, label %26

26:                                               ; preds = %21, %16
  %27 = load ptr, ptr %17, align 4
  %28 = icmp eq ptr %27, %13
  br i1 %28, label %29, label %16

29:                                               ; preds = %26
  %30 = load ptr, ptr %9, align 4
  br label %31

31:                                               ; preds = %29, %8
  %32 = phi ptr [ %30, %29 ], [ %10, %8 ]
  %33 = tail call fastcc ptr @configfs_new_dirent(ptr noundef %32, ptr noundef nonnull %0, i32 noundef 1026, ptr noundef %2) #9
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %65, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.configfs_dirent, ptr %33, i32 0, i32 7
  store i16 16877, ptr %36, align 4
  %37 = getelementptr inbounds %struct.configfs_dirent, ptr %33, i32 0, i32 8
  store ptr %1, ptr %37, align 4
  %38 = icmp eq ptr %1, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = icmp eq ptr %33, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %39
  %42 = load volatile i32, ptr %33, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45, !prof !12

44:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #9
  br label %45

45:                                               ; preds = %44, %41
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %33) #9, !srcloc !14
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %33, ptr nonnull %33, i32 1, ptr nonnull elementtype(i32) %33) #9, !srcloc !17
  br label %47

47:                                               ; preds = %45, %39
  %48 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  store ptr %33, ptr %48, align 4
  br label %49

49:                                               ; preds = %47, %35
  %50 = tail call ptr @configfs_create(ptr noundef %1, i16 noundef zeroext 16877) #9
  %51 = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %64, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 7
  store ptr @configfs_dir_inode_operations, ptr %53, align 8
  %54 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 39
  store ptr @configfs_dir_operations, ptr %54, align 8
  tail call void @inc_nlink(ptr noundef %50) #9
  tail call void @d_instantiate(ptr noundef %1, ptr noundef %50) #9
  br i1 %38, label %57, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %56) #9
  br label %57

57:                                               ; preds = %55, %52
  %58 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %59 = load ptr, ptr %58, align 8
  tail call void @inc_nlink(ptr noundef %59) #9
  %60 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  store ptr %1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 6
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %109, label %68

64:                                               ; preds = %49
  tail call fastcc void @configfs_remove_dirent(ptr noundef %1) #9
  br label %65

65:                                               ; preds = %64, %31
  %66 = phi ptr [ %50, %64 ], [ %33, %31 ]
  %67 = ptrtoint ptr %66 to i32
  br label %125

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.config_item_type, ptr %62, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %70, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %86, label %81

75:                                               ; preds = %81
  %76 = add i32 %83, 1
  %77 = load ptr, ptr %69, align 4
  %78 = getelementptr ptr, ptr %77, i32 %76
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %75, %72
  %82 = phi ptr [ %79, %75 ], [ %73, %72 ]
  %83 = phi i32 [ %76, %75 ], [ 0, %72 ]
  %84 = tail call i32 @configfs_create_file(ptr noundef nonnull %0, ptr noundef nonnull %82) #9
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %75, label %86

86:                                               ; preds = %81, %75, %72, %68
  %87 = phi i32 [ 0, %68 ], [ 0, %72 ], [ 0, %75 ], [ %84, %81 ]
  %88 = getelementptr inbounds %struct.config_item_type, ptr %62, i32 0, i32 4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %105, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %89, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %105, label %100

94:                                               ; preds = %100
  %95 = add i32 %102, 1
  %96 = load ptr, ptr %88, align 4
  %97 = getelementptr ptr, ptr %96, i32 %95
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %125, label %100

100:                                              ; preds = %94, %91
  %101 = phi ptr [ %98, %94 ], [ %92, %91 ]
  %102 = phi i32 [ %95, %94 ], [ 0, %91 ]
  %103 = tail call i32 @configfs_create_bin_file(ptr noundef nonnull %0, ptr noundef nonnull %101) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %94, label %107

105:                                              ; preds = %91, %86
  %106 = icmp eq i32 %87, 0
  br i1 %106, label %125, label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %87, %105 ], [ %103, %100 ]
  tail call fastcc void @detach_attrs(ptr noundef nonnull %0) #9
  br label %109

109:                                              ; preds = %107, %57
  %110 = phi i32 [ -22, %57 ], [ %108, %107 ]
  %111 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.inode, ptr %112, i32 0, i32 24
  tail call void @down_write(ptr noundef %113) #9
  tail call fastcc void @configfs_remove_dir(ptr noundef nonnull %0)
  %114 = load ptr, ptr %111, align 8
  %115 = getelementptr inbounds %struct.inode, ptr %114, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, 16
  store i32 %117, ptr %115, align 4
  %118 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %118) #9
  %119 = load i32, ptr %1, align 8
  %120 = or i32 %119, 256
  store i32 %120, ptr %1, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %121 = load i16, ptr %118, align 4
  %122 = add i16 %121, 1
  store i16 %122, ptr %118, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %123 = load ptr, ptr %111, align 8
  %124 = getelementptr inbounds %struct.inode, ptr %123, i32 0, i32 24
  tail call void @up_write(ptr noundef %124) #9
  tail call void @d_delete(ptr noundef %1) #9
  br label %125

125:                                              ; preds = %109, %105, %94, %65, %21
  %126 = phi i32 [ %67, %65 ], [ %110, %109 ], [ 0, %105 ], [ 0, %94 ], [ -17, %21 ]
  ret i32 %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unlink_obj(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  store ptr null, ptr %2, align 4
  %11 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  store ptr null, ptr %11, align 4
  tail call void @config_item_put(ptr noundef %0) #9
  tail call void @config_item_put(ptr noundef nonnull %3) #9
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @client_drop_item(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !12

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/dir.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 924, 0\0A.popsection", ""() #9, !srcloc !24
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.config_item_type, ptr %4, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.configfs_group_operations, ptr %9, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void %13(ptr noundef %0, ptr noundef %1) #9
  br label %17

16:                                               ; preds = %11, %7
  tail call void @config_item_put(ptr noundef %1) #9
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_item_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @configfs_remove_dir(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %11) #9
  br label %12

12:                                               ; preds = %10, %5
  tail call fastcc void @configfs_remove_dirent(ptr noundef nonnull %3) #9
  %13 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @simple_rmdir(ptr noundef %18, ptr noundef nonnull %3) #9
  br label %20

20:                                               ; preds = %16, %12
  tail call void @dput(ptr noundef %8) #9
  tail call void @dput(ptr noundef nonnull %3) #9
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_delete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_create_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @detach_attrs(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %57, label %12

12:                                               ; preds = %55, %5
  %13 = phi ptr [ %15, %55 ], [ %10, %5 ]
  %14 = getelementptr i8, ptr %13, i32 -8
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %13, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %13, i32 24
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #9
  %25 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %13, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %29 = load i16, ptr @configfs_dirent_lock, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  tail call void @configfs_drop_dentry(ptr noundef %14, ptr noundef nonnull %3) #9
  %31 = load volatile i32, ptr %14, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !12

33:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #9
  br label %34

34:                                               ; preds = %33, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #9, !srcloc !14
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #9, !srcloc !15
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32, ptr %20, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %13, i32 36
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %44) #9
  %45 = getelementptr i8, ptr %13, i32 40
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %46) #9, !srcloc !14
  %49 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %46, ptr nonnull %46, i32 1, ptr nonnull elementtype(i32) %46) #9, !srcloc !15
  %50 = extractvalue { i32, i32 } %49, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @kfree(ptr noundef nonnull %46) #9
  br label %53

53:                                               ; preds = %52, %48, %42
  %54 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %54, ptr noundef %14) #9
  br label %55

55:                                               ; preds = %53, %38, %34, %19, %12
  %56 = icmp eq ptr %15, %9
  br i1 %56, label %57, label %12

57:                                               ; preds = %55, %5
  tail call void @dput(ptr noundef nonnull %3) #9
  br label %58

58:                                               ; preds = %57, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_drop_dentry(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @configfs_detach_rollback(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -257
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %22, label %10

10:                                               ; preds = %19, %1
  %11 = phi ptr [ %20, %19 ], [ %8, %1 ]
  %12 = getelementptr i8, ptr %11, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %11, i32 32
  %18 = load ptr, ptr %17, align 4
  tail call fastcc void @configfs_detach_rollback(ptr noundef %18)
  br label %19

19:                                               ; preds = %16, %10
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %7
  br i1 %21, label %22, label %10

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iunique(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @detach_groups(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %43, label %12

12:                                               ; preds = %41, %5
  %13 = phi ptr [ %14, %41 ], [ %10, %5 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %13, i32 20
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %12
  %19 = getelementptr i8, ptr %13, i32 24
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %13, i32 32
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %27, i32 0, i32 24
  tail call void @down_write(ptr noundef %28) #9
  %29 = load ptr, ptr %15, align 4
  tail call fastcc void @detach_groups(ptr noundef %29) #9
  tail call fastcc void @detach_attrs(ptr noundef %29) #9
  tail call fastcc void @configfs_remove_dir(ptr noundef %29) #9
  %30 = load ptr, ptr %26, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %30, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 16
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.dentry, ptr %25, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %34) #9
  %35 = load i32, ptr %25, align 8
  %36 = or i32 %35, 256
  store i32 %36, ptr %25, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  %37 = load i16, ptr %34, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %39 = load ptr, ptr %26, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 24
  tail call void @up_write(ptr noundef %40) #9
  tail call void @d_delete(ptr noundef %25) #9
  tail call void @dput(ptr noundef %25) #9
  br label %41

41:                                               ; preds = %23, %18, %12
  %42 = icmp eq ptr %14, %9
  br i1 %42, label %43, label %12

43:                                               ; preds = %41, %5
  tail call void @dput(ptr noundef nonnull %3) #9
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!8 = !{i64 2149045104}
!9 = !{i64 2149040928}
!10 = !{i64 2149041003, i64 2149041030, i64 2149041077, i64 2149041099, i64 2149041127, i64 2149041147}
!11 = !{i64 2149068107}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2148478565}
!14 = !{i64 876500, i64 2148366471, i64 2148366497, i64 2148366544, i64 2148366566, i64 2148366594, i64 2148366614}
!15 = !{i64 2148380927, i64 2148380959, i64 2148380988, i64 2148381022, i64 2148381053, i64 2148381076}
!16 = !{i64 2148478768}
!17 = !{i64 2148377886, i64 2148377912, i64 2148377941, i64 2148377975, i64 2148378006, i64 2148378029}
!18 = !{i64 2152591489, i64 2152591972, i64 2152591526, i64 2152591582, i64 2152591616, i64 2152591640, i64 2152591681, i64 2152591702, i64 2152591730, i64 2152591764}
!19 = !{i64 2152595423, i64 2152595906, i64 2152595460, i64 2152595516, i64 2152595550, i64 2152595574, i64 2152595615, i64 2152595636, i64 2152595664, i64 2152595698}
!20 = !{i64 2152579839, i64 2152580321, i64 2152579876, i64 2152579932, i64 2152579966, i64 2152579990, i64 2152580031, i64 2152580052, i64 2152580080, i64 2152580114}
!21 = !{i64 2152596677, i64 2152597160, i64 2152596714, i64 2152596770, i64 2152596804, i64 2152596828, i64 2152596869, i64 2152596890, i64 2152596918, i64 2152596952}
!22 = !{i64 2152597735, i64 2152598218, i64 2152597772, i64 2152597828, i64 2152597862, i64 2152597886, i64 2152597927, i64 2152597948, i64 2152597976, i64 2152598010}
!23 = !{!"auto-init"}
!24 = !{i64 2152580835, i64 2152581317, i64 2152580872, i64 2152580928, i64 2152580962, i64 2152580986, i64 2152581027, i64 2152581048, i64 2152581076, i64 2152581110}
!25 = !{i64 2152574964, i64 2152575446, i64 2152575001, i64 2152575057, i64 2152575091, i64 2152575115, i64 2152575156, i64 2152575177, i64 2152575205, i64 2152575239}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2152555541, i64 2152556023, i64 2152555578, i64 2152555634, i64 2152555668, i64 2152555692, i64 2152555733, i64 2152555754, i64 2152555782, i64 2152555816}
!28 = !{i64 2152611835, i64 2152612318, i64 2152611872, i64 2152611928, i64 2152611962, i64 2152611986, i64 2152612027, i64 2152612048, i64 2152612076, i64 2152612110}
!29 = !{i64 2152581879, i64 2152582362, i64 2152581916, i64 2152581972, i64 2152582006, i64 2152582030, i64 2152582071, i64 2152582092, i64 2152582120, i64 2152582154}
!30 = !{i64 2152528002, i64 2152528484, i64 2152528039, i64 2152528095, i64 2152528129, i64 2152528153, i64 2152528194, i64 2152528215, i64 2152528243, i64 2152528277}
