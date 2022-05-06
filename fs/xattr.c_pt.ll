; ModuleID = '/llk/IR/fs/xattr.c_pt.bc'
source_filename = "../fs/xattr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xattr_supported_namespace:\09\09\09\09\09"
module asm "\09.asciz \09\22xattr_supported_namespace\22\09\09\09\09\09"
module asm "__kstrtabns_xattr_supported_namespace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_setxattr\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_setxattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_setxattr_locked\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_setxattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_setxattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_setxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_getxattr\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_getxattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_getxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_listxattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_removexattr\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vfs_removexattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__vfs_removexattr_locked\22\09\09\09\09\09"
module asm "__kstrtabns___vfs_removexattr_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_removexattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_removexattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_listxattr\22\09\09\09\09\09"
module asm "__kstrtabns_generic_listxattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xattr_full_name:\09\09\09\09\09"
module asm "\09.asciz \09\22xattr_full_name\22\09\09\09\09\09"
module asm "__kstrtabns_xattr_full_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.91, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.92, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.93, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { ptr }
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
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.89, %struct.list_head, %struct.list_head, %union.anon.90 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { i64 }
%union.anon.89 = type { %struct.list_head }
%union.anon.90 = type { %struct.hlist_node }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file = type { %union.anon.18, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.18 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.simple_xattr = type { %struct.list_head, ptr, i32, [0 x i8] }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_xattr_supported_namespace = external dso_local constant [0 x i8], align 1
@__kstrtabns_xattr_supported_namespace = external dso_local constant [0 x i8], align 1
@__ksymtab_xattr_supported_namespace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xattr_supported_namespace to i32), ptr @__kstrtab_xattr_supported_namespace, ptr @__kstrtabns_xattr_supported_namespace }, section "___ksymtab+xattr_supported_namespace", align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab___vfs_setxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_setxattr = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_setxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_setxattr to i32), ptr @__kstrtab___vfs_setxattr, ptr @__kstrtabns___vfs_setxattr }, section "___ksymtab+__vfs_setxattr", align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@__kstrtab___vfs_setxattr_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_setxattr_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_setxattr_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_setxattr_locked to i32), ptr @__kstrtab___vfs_setxattr_locked, ptr @__kstrtabns___vfs_setxattr_locked }, section "___ksymtab_gpl+__vfs_setxattr_locked", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"security.capability\00", align 1
@__kstrtab_vfs_setxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_setxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_setxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_setxattr to i32), ptr @__kstrtab_vfs_setxattr, ptr @__kstrtabns_vfs_setxattr }, section "___ksymtab_gpl+vfs_setxattr", align 4
@__kstrtab___vfs_getxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_getxattr = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_getxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_getxattr to i32), ptr @__kstrtab___vfs_getxattr, ptr @__kstrtabns___vfs_getxattr }, section "___ksymtab+__vfs_getxattr", align 4
@__kstrtab_vfs_getxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_getxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_getxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_getxattr to i32), ptr @__kstrtab_vfs_getxattr, ptr @__kstrtabns_vfs_getxattr }, section "___ksymtab_gpl+vfs_getxattr", align 4
@__kstrtab_vfs_listxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_listxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_listxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_listxattr to i32), ptr @__kstrtab_vfs_listxattr, ptr @__kstrtabns_vfs_listxattr }, section "___ksymtab_gpl+vfs_listxattr", align 4
@__kstrtab___vfs_removexattr = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_removexattr = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_removexattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_removexattr to i32), ptr @__kstrtab___vfs_removexattr, ptr @__kstrtabns___vfs_removexattr }, section "___ksymtab+__vfs_removexattr", align 4
@__kstrtab___vfs_removexattr_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___vfs_removexattr_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___vfs_removexattr_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vfs_removexattr_locked to i32), ptr @__kstrtab___vfs_removexattr_locked, ptr @__kstrtabns___vfs_removexattr_locked }, section "___ksymtab_gpl+__vfs_removexattr_locked", align 4
@__kstrtab_vfs_removexattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_removexattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_removexattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_removexattr to i32), ptr @__kstrtab_vfs_removexattr, ptr @__kstrtabns_vfs_removexattr }, section "___ksymtab_gpl+vfs_removexattr", align 4
@__kstrtab_generic_listxattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_listxattr = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_listxattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_listxattr to i32), ptr @__kstrtab_generic_listxattr, ptr @__kstrtabns_generic_listxattr }, section "___ksymtab+generic_listxattr", align 4
@__kstrtab_xattr_full_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_xattr_full_name = external dso_local constant [0 x i8], align 1
@__ksymtab_xattr_full_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xattr_full_name to i32), ptr @__kstrtab_xattr_full_name, ptr @__kstrtabns_xattr_full_name }, section "___ksymtab+xattr_full_name", align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"system.posix_acl_access\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"system.posix_acl_default\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"system.\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"trusted.\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"user.\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab___vfs_getxattr, ptr @__ksymtab___vfs_removexattr, ptr @__ksymtab___vfs_removexattr_locked, ptr @__ksymtab___vfs_setxattr, ptr @__ksymtab___vfs_setxattr_locked, ptr @__ksymtab_generic_listxattr, ptr @__ksymtab_vfs_getxattr, ptr @__ksymtab_vfs_listxattr, ptr @__ksymtab_vfs_removexattr, ptr @__ksymtab_vfs_setxattr, ptr @__ksymtab_xattr_full_name, ptr @__ksymtab_xattr_supported_namespace], section "llvm.metadata"

@sys_setxattr = dso_local alias i32 (ptr, ptr, ptr, i32, i32), ptr @__se_sys_setxattr
@sys_lsetxattr = dso_local alias i32 (ptr, ptr, ptr, i32, i32), ptr @__se_sys_lsetxattr
@sys_fsetxattr = dso_local alias i32 (i32, ptr, ptr, i32, i32), ptr @__se_sys_fsetxattr
@sys_getxattr = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_getxattr
@sys_lgetxattr = dso_local alias i32 (ptr, ptr, ptr, i32), ptr @__se_sys_lgetxattr
@sys_fgetxattr = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_fgetxattr
@sys_listxattr = dso_local alias i32 (ptr, ptr, i32), ptr @__se_sys_listxattr
@sys_llistxattr = dso_local alias i32 (ptr, ptr, i32), ptr @__se_sys_llistxattr
@sys_flistxattr = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_flistxattr
@sys_removexattr = dso_local alias i32 (ptr, ptr), ptr @__se_sys_removexattr
@sys_lremovexattr = dso_local alias i32 (ptr, ptr), ptr @__se_sys_lremovexattr
@sys_fremovexattr = dso_local alias i32 (i32, ptr), ptr @__se_sys_fremovexattr

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xattr_supported_namespace(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call zeroext i1 @is_bad_inode(ptr noundef %0) #12
  %9 = select i1 %8, i32 -5, i32 -95, !prof !8
  br label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strlen(ptr noundef %1)
  %16 = icmp eq ptr %14, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %28, %10
  %18 = phi ptr [ %20, %28 ], [ %14, %10 ]
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr ptr, ptr %18, i32 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.xattr_handler, ptr %19, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %19, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi ptr [ %27, %26 ], [ %24, %22 ]
  %30 = tail call i32 @strncmp(ptr noundef %29, ptr noundef %1, i32 noundef %15)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %17

32:                                               ; preds = %28, %17, %10, %7
  %33 = phi i32 [ %9, %7 ], [ -95, %10 ], [ -95, %17 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_bad_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vfs_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 8
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = tail call zeroext i1 @is_bad_inode(ptr noundef %2) #12
  %14 = select i1 %13, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !8
  br label %61

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %61, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %61, label %24

24:                                               ; preds = %56, %21
  %25 = phi ptr [ %27, %56 ], [ %19, %21 ]
  %26 = phi ptr [ %57, %56 ], [ %22, %21 ]
  %27 = getelementptr ptr, ptr %25, i32 1
  %28 = getelementptr inbounds %struct.xattr_handler, ptr %26, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load ptr, ptr %26, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi ptr [ %32, %31 ], [ %29, %24 ]
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %43, %33
  %38 = phi i8 [ %46, %43 ], [ %35, %33 ]
  %39 = phi ptr [ %45, %43 ], [ %34, %33 ]
  %40 = phi ptr [ %44, %43 ], [ %3, %33 ]
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, %38
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = getelementptr i8, ptr %40, i32 1
  %45 = getelementptr i8, ptr %39, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %37

48:                                               ; preds = %43, %33
  %49 = phi ptr [ %3, %33 ], [ %44, %43 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = load i8, ptr %49, align 1
  %53 = icmp eq i8 %52, 0
  %54 = xor i1 %30, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  br i1 %53, label %61, label %56

56:                                               ; preds = %55, %48, %37
  %57 = load ptr, ptr %27, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %24

59:                                               ; preds = %51
  %60 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %64

61:                                               ; preds = %59, %56, %55, %21, %15, %12
  %62 = phi ptr [ %26, %59 ], [ inttoptr (i32 -95 to ptr), %21 ], [ %14, %12 ], [ inttoptr (i32 -95 to ptr), %15 ], [ inttoptr (i32 -95 to ptr), %56 ], [ inttoptr (i32 -22 to ptr), %55 ]
  %63 = ptrtoint ptr %62 to i32
  br label %72

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.xattr_handler, ptr %26, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = icmp eq i32 %5, 0
  %70 = select i1 %69, ptr @.str, ptr %4
  %71 = tail call i32 %66(ptr noundef %26, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %49, ptr noundef %70, i32 noundef %5, i32 noundef %6) #12
  br label %72

72:                                               ; preds = %68, %64, %61
  %73 = phi i32 [ %63, %61 ], [ %71, %68 ], [ -95, %64 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vfs_setxattr_noperm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.1, i32 noundef 9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -4097
  store i32 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 1
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @__vfs_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %8, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  switch i32 %21, label %50 [
    i32 0, label %22
    i32 -11, label %49
  ]

22:                                               ; preds = %20
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 42
  %27 = load volatile i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %22
  %30 = load i16, ptr %23, align 8
  %31 = and i16 %30, -4096
  %32 = icmp eq i16 %31, 16384
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, ptr %1, align 8
  %35 = and i32 %34, 16384
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ 1073741828, %33 ], [ 4, %29 ]
  %39 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @__fsnotify_parent(ptr noundef %1, i32 noundef %38, ptr noundef %1, i32 noundef 3) #12
  br label %50

44:                                               ; preds = %37, %33
  %45 = phi i32 [ %38, %37 ], [ 1073741828, %33 ]
  %46 = tail call i32 @fsnotify(i32 noundef %45, ptr noundef %1, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %23, i32 noundef 0) #12
  br label %50

47:                                               ; preds = %15
  %48 = tail call zeroext i1 @is_bad_inode(ptr noundef %8) #12
  br i1 %48, label %50, label %49, !prof !8

49:                                               ; preds = %47, %20
  br label %50

50:                                               ; preds = %49, %47, %44, %42, %22, %20
  %51 = phi i32 [ -5, %47 ], [ 0, %22 ], [ 0, %42 ], [ 0, %44 ], [ -95, %49 ], [ %21, %20 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vfs_setxattr_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef writeonly %6) #0 {
  %8 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call fastcc i32 @xattr_permission(ptr noundef %0, ptr noundef %9, ptr noundef %2, i32 noundef 2)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %7
  %13 = tail call i32 @cap_inode_setxattr(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %16 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 40
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.file_lock_context, ptr %17, i32 0, i32 3
  %21 = load volatile ptr, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.file_lock_context, ptr %17, i32 0, i32 3, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %20
  br i1 %26, label %35, label %27

27:                                               ; preds = %23, %19
  %28 = tail call i32 @__break_lease(ptr noundef %9, i32 noundef 2049, i32 noundef 4) #12
  %29 = icmp eq i32 %28, -11
  %30 = icmp ne ptr %6, null
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store ptr %9, ptr %6, align 4
  tail call void @ihold(ptr noundef %9) #12
  br label %37

33:                                               ; preds = %27
  %34 = icmp eq i32 %28, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %33, %23, %15
  %36 = tail call i32 @__vfs_setxattr_noperm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5)
  br label %37

37:                                               ; preds = %35, %33, %32, %12, %7
  %38 = phi i32 [ %10, %7 ], [ %13, %12 ], [ %28, %33 ], [ %36, %35 ], [ -11, %32 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @xattr_permission(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %49, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %49, label %20

20:                                               ; preds = %16, %4
  %21 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.1, i32 noundef 9)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(8) @.str.5, i32 noundef 7)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(9) @.str.6, i32 noundef 8)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = tail call zeroext i1 @capable(i32 noundef 21) #12
  %31 = select i1 %6, i32 -61, i32 -1
  %32 = select i1 %30, i32 0, i32 %31
  br label %49

33:                                               ; preds = %26
  %34 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.7, i32 noundef 5)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i16, ptr %1, align 8
  %38 = and i16 %37, -4096
  switch i16 %38, label %39 [
    i16 -32768, label %41
    i16 16384, label %41
  ]

39:                                               ; preds = %36
  %40 = select i1 %6, i32 -61, i32 -1
  br label %49

41:                                               ; preds = %36, %36
  %42 = and i16 %37, -3584
  %43 = icmp ne i16 %42, 16896
  %44 = or i1 %6, %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call zeroext i1 @inode_owner_or_capable(ptr noundef %0, ptr noundef %1) #12
  br i1 %46, label %47, label %49

47:                                               ; preds = %45, %41, %33
  %48 = tail call i32 @inode_permission(ptr noundef %0, ptr noundef %1, i32 noundef %3) #12
  br label %49

49:                                               ; preds = %47, %45, %39, %29, %23, %20, %16, %12, %7
  %50 = phi i32 [ %48, %47 ], [ %40, %39 ], [ -1, %7 ], [ -1, %16 ], [ 0, %23 ], [ 0, %20 ], [ -1, %45 ], [ %32, %29 ], [ -1, %12 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %3, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store ptr null, ptr %8, align 4
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(20) @.str.2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call i32 @cap_convert_nscap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %4) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %15, %12, %6
  %19 = phi i32 [ %4, %12 ], [ 0, %6 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 24
  br label %21

21:                                               ; preds = %40, %18
  call void @down_write(ptr noundef %20) #12
  %22 = load ptr, ptr %7, align 4
  %23 = call i32 @__vfs_setxattr_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %22, i32 noundef %19, i32 noundef %5, ptr noundef nonnull %8)
  call void @up_write(ptr noundef %20) #12
  %24 = load ptr, ptr %8, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %21
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %27 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 40
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.file_lock_context, ptr %28, i32 0, i32 3
  %32 = load volatile ptr, ptr %31, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.file_lock_context, ptr %28, i32 0, i32 3, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %31
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %30
  %39 = call i32 @__break_lease(ptr noundef nonnull %24, i32 noundef 1, i32 noundef 4) #12
  br label %40

40:                                               ; preds = %38, %34, %26
  %41 = phi i32 [ %39, %38 ], [ 0, %34 ], [ 0, %26 ]
  %42 = load ptr, ptr %8, align 4
  call void @iput(ptr noundef %42) #12
  store ptr null, ptr %8, align 4
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %21, label %44

44:                                               ; preds = %40, %21
  %45 = phi i32 [ %41, %40 ], [ %23, %21 ]
  %46 = load ptr, ptr %7, align 4
  %47 = icmp eq ptr %46, %3
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @kfree(ptr noundef %46) #12
  br label %49

49:                                               ; preds = %48, %44, %15
  %50 = phi i32 [ %16, %15 ], [ %45, %48 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret i32 %50
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_convert_nscap(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_getxattr_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %3, align 4
  %10 = tail call fastcc i32 @xattr_permission(ptr noundef %0, ptr noundef %8, ptr noundef %2, i32 noundef 4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call zeroext i1 @is_bad_inode(ptr noundef %8) #12
  %19 = select i1 %18, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !8
  br label %66

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %24, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %61, %26
  %30 = phi ptr [ %32, %61 ], [ %24, %26 ]
  %31 = phi ptr [ %62, %61 ], [ %27, %26 ]
  %32 = getelementptr ptr, ptr %30, i32 1
  %33 = getelementptr inbounds %struct.xattr_handler, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load ptr, ptr %31, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = phi ptr [ %37, %36 ], [ %34, %29 ]
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %48, %38
  %43 = phi i8 [ %51, %48 ], [ %40, %38 ]
  %44 = phi ptr [ %50, %48 ], [ %39, %38 ]
  %45 = phi ptr [ %49, %48 ], [ %2, %38 ]
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, %43
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %45, i32 1
  %50 = getelementptr i8, ptr %44, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %42

53:                                               ; preds = %48, %38
  %54 = phi ptr [ %2, %38 ], [ %49, %48 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i8, ptr %54, align 1
  %58 = icmp eq i8 %57, 0
  %59 = xor i1 %35, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  br i1 %58, label %66, label %61

61:                                               ; preds = %60, %53, %42
  %62 = load ptr, ptr %32, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %29

64:                                               ; preds = %56
  %65 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %69

66:                                               ; preds = %64, %61, %60, %26, %20, %17
  %67 = phi ptr [ %31, %64 ], [ inttoptr (i32 -95 to ptr), %26 ], [ %19, %17 ], [ inttoptr (i32 -95 to ptr), %20 ], [ inttoptr (i32 -95 to ptr), %61 ], [ inttoptr (i32 -22 to ptr), %60 ]
  %68 = ptrtoint ptr %67 to i32
  br label %90

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.xattr_handler, ptr %31, i32 0, i32 4
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %90, label %73

73:                                               ; preds = %69
  %74 = tail call i32 %71(ptr noundef %31, ptr noundef %1, ptr noundef %8, ptr noundef nonnull %54, ptr noundef null, i32 noundef 0) #12
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = icmp eq ptr %9, null
  %78 = icmp ugt i32 %74, %4
  %79 = select i1 %77, i1 true, i1 %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load ptr, ptr %3, align 4
  %82 = add nuw i32 %74, 1
  %83 = tail call noalias ptr @krealloc(ptr noundef %81, i32 noundef %82, i32 noundef %5) #13
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  tail call void @llvm.memset.p0.i32(ptr nonnull align 1 %83, i8 0, i32 %82, i1 false)
  br label %86

86:                                               ; preds = %85, %76
  %87 = phi ptr [ %83, %85 ], [ %9, %76 ]
  %88 = load ptr, ptr %70, align 4
  %89 = tail call i32 %88(ptr noundef %31, ptr noundef %1, ptr noundef %8, ptr noundef nonnull %54, ptr noundef nonnull %87, i32 noundef %74) #12
  store ptr %87, ptr %3, align 4
  br label %90

90:                                               ; preds = %86, %80, %73, %69, %66, %6
  %91 = phi i32 [ %68, %66 ], [ %89, %86 ], [ %10, %6 ], [ -95, %69 ], [ %74, %73 ], [ -12, %80 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vfs_getxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = tail call zeroext i1 @is_bad_inode(ptr noundef %1) #12
  %12 = select i1 %11, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !8
  br label %59

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %54, %19
  %23 = phi ptr [ %25, %54 ], [ %17, %19 ]
  %24 = phi ptr [ %55, %54 ], [ %20, %19 ]
  %25 = getelementptr ptr, ptr %23, i32 1
  %26 = getelementptr inbounds %struct.xattr_handler, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load ptr, ptr %24, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %30, %29 ], [ %27, %22 ]
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %41, %31
  %36 = phi i8 [ %44, %41 ], [ %33, %31 ]
  %37 = phi ptr [ %43, %41 ], [ %32, %31 ]
  %38 = phi ptr [ %42, %41 ], [ %2, %31 ]
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, %36
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %38, i32 1
  %43 = getelementptr i8, ptr %37, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %35

46:                                               ; preds = %41, %31
  %47 = phi ptr [ %2, %31 ], [ %42, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i8, ptr %47, align 1
  %51 = icmp eq i8 %50, 0
  %52 = xor i1 %28, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  br i1 %51, label %59, label %54

54:                                               ; preds = %53, %46, %35
  %55 = load ptr, ptr %25, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %22

57:                                               ; preds = %49
  %58 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %57, %54, %53, %19, %13, %10
  %60 = phi ptr [ %24, %57 ], [ inttoptr (i32 -95 to ptr), %19 ], [ %12, %10 ], [ inttoptr (i32 -95 to ptr), %13 ], [ inttoptr (i32 -95 to ptr), %54 ], [ inttoptr (i32 -22 to ptr), %53 ]
  %61 = ptrtoint ptr %60 to i32
  br label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.xattr_handler, ptr %24, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call i32 %64(ptr noundef %24, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %47, ptr noundef %3, i32 noundef %4) #12
  br label %68

68:                                               ; preds = %66, %62, %59
  %69 = phi i32 [ %61, %59 ], [ %67, %66 ], [ -95, %62 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_getxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @xattr_permission(ptr noundef %0, ptr noundef %8, ptr noundef %2, i32 noundef 4)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %96

11:                                               ; preds = %5
  %12 = tail call i32 @strncmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.1, i32 noundef 9)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %2, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4
  %16 = icmp ne ptr %3, null
  %17 = icmp ne i32 %4, 0
  %18 = and i1 %16, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @cap_inode_getsecurity(ptr noundef %0, ptr noundef %8, ptr noundef %15, ptr noundef nonnull %6, i1 noundef zeroext false) #12
  br label %30

21:                                               ; preds = %14
  %22 = call i32 @cap_inode_getsecurity(ptr noundef %0, ptr noundef %8, ptr noundef %15, ptr noundef nonnull %6, i1 noundef zeroext true) #12
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = icmp ugt i32 %22, %4
  %26 = load ptr, ptr %6, align 4
  br i1 %25, label %28, label %27

27:                                               ; preds = %24
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %3, ptr align 1 %26, i32 %22, i1 false) #12
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %22, %27 ], [ -34, %24 ]
  call void @kfree(ptr noundef %26) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %96

30:                                               ; preds = %21, %19
  %31 = phi i32 [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %32 = icmp eq i32 %31, -95
  br i1 %32, label %33, label %96

33:                                               ; preds = %30, %11
  %34 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = and i16 %35, 8
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call zeroext i1 @is_bad_inode(ptr noundef %8) #12
  %40 = select i1 %39, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !8
  br label %87

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %43, i32 0, i32 17
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %87, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %45, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %87, label %50

50:                                               ; preds = %82, %47
  %51 = phi ptr [ %53, %82 ], [ %45, %47 ]
  %52 = phi ptr [ %83, %82 ], [ %48, %47 ]
  %53 = getelementptr ptr, ptr %51, i32 1
  %54 = getelementptr inbounds %struct.xattr_handler, ptr %52, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load ptr, ptr %52, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = phi ptr [ %58, %57 ], [ %55, %50 ]
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %69, %59
  %64 = phi i8 [ %72, %69 ], [ %61, %59 ]
  %65 = phi ptr [ %71, %69 ], [ %60, %59 ]
  %66 = phi ptr [ %70, %69 ], [ %2, %59 ]
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, %64
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = getelementptr i8, ptr %66, i32 1
  %71 = getelementptr i8, ptr %65, i32 1
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %63

74:                                               ; preds = %69, %59
  %75 = phi ptr [ %2, %59 ], [ %70, %69 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i8, ptr %75, align 1
  %79 = icmp eq i8 %78, 0
  %80 = xor i1 %56, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  br i1 %79, label %87, label %82

82:                                               ; preds = %81, %74, %63
  %83 = load ptr, ptr %53, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %50

85:                                               ; preds = %77
  %86 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %90

87:                                               ; preds = %85, %82, %81, %47, %41, %38
  %88 = phi ptr [ %52, %85 ], [ inttoptr (i32 -95 to ptr), %47 ], [ %40, %38 ], [ inttoptr (i32 -95 to ptr), %41 ], [ inttoptr (i32 -22 to ptr), %81 ], [ inttoptr (i32 -95 to ptr), %82 ]
  %89 = ptrtoint ptr %88 to i32
  br label %96

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.xattr_handler, ptr %52, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = call i32 %92(ptr noundef %52, ptr noundef %1, ptr noundef %8, ptr noundef nonnull %75, ptr noundef %3, i32 noundef %4) #12
  br label %96

96:                                               ; preds = %94, %90, %87, %30, %28, %5
  %97 = phi i32 [ %31, %30 ], [ %9, %5 ], [ %29, %28 ], [ %89, %87 ], [ %95, %94 ], [ -95, %90 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_listxattr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode_operations, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = and i16 %13, 8
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 %9(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  br label %18

18:                                               ; preds = %16, %11, %3
  %19 = phi i32 [ %17, %16 ], [ 0, %11 ], [ 0, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vfs_removexattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call zeroext i1 @is_bad_inode(ptr noundef %5) #12
  %12 = select i1 %11, ptr inttoptr (i32 -5 to ptr), ptr inttoptr (i32 -95 to ptr), !prof !8
  br label %59

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_block, ptr %15, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %54, %19
  %23 = phi ptr [ %25, %54 ], [ %17, %19 ]
  %24 = phi ptr [ %55, %54 ], [ %20, %19 ]
  %25 = getelementptr ptr, ptr %23, i32 1
  %26 = getelementptr inbounds %struct.xattr_handler, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load ptr, ptr %24, align 4
  br label %31

31:                                               ; preds = %29, %22
  %32 = phi ptr [ %30, %29 ], [ %27, %22 ]
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %41, %31
  %36 = phi i8 [ %44, %41 ], [ %33, %31 ]
  %37 = phi ptr [ %43, %41 ], [ %32, %31 ]
  %38 = phi ptr [ %42, %41 ], [ %2, %31 ]
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, %36
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %38, i32 1
  %43 = getelementptr i8, ptr %37, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %35

46:                                               ; preds = %41, %31
  %47 = phi ptr [ %2, %31 ], [ %42, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i8, ptr %47, align 1
  %51 = icmp eq i8 %50, 0
  %52 = xor i1 %28, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  br i1 %51, label %59, label %54

54:                                               ; preds = %53, %46, %35
  %55 = load ptr, ptr %25, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %22

57:                                               ; preds = %49
  %58 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %62

59:                                               ; preds = %57, %54, %53, %19, %13, %10
  %60 = phi ptr [ %24, %57 ], [ inttoptr (i32 -95 to ptr), %19 ], [ %12, %10 ], [ inttoptr (i32 -95 to ptr), %13 ], [ inttoptr (i32 -95 to ptr), %54 ], [ inttoptr (i32 -22 to ptr), %53 ]
  %61 = ptrtoint ptr %60 to i32
  br label %68

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.xattr_handler, ptr %24, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call i32 %64(ptr noundef %24, ptr noundef %0, ptr noundef %1, ptr noundef %5, ptr noundef nonnull %47, ptr noundef null, i32 noundef 0, i32 noundef 2) #12
  br label %68

68:                                               ; preds = %66, %62, %59
  %69 = phi i32 [ %61, %59 ], [ %67, %66 ], [ -95, %62 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vfs_removexattr_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @xattr_permission(ptr noundef %0, ptr noundef %6, ptr noundef %2, i32 noundef 2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %60

9:                                                ; preds = %4
  %10 = tail call i32 @cap_inode_removexattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %13 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 40
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.file_lock_context, ptr %14, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.file_lock_context, ptr %14, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %17
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %16
  %25 = tail call i32 @__break_lease(ptr noundef %6, i32 noundef 2049, i32 noundef 4) #12
  %26 = icmp eq i32 %25, -11
  %27 = icmp ne ptr %3, null
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr %6, ptr %3, align 4
  tail call void @ihold(ptr noundef %6) #12
  br label %60

30:                                               ; preds = %24
  %31 = icmp eq i32 %25, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %30, %20, %12
  %33 = tail call i32 @__vfs_removexattr(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 8
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.super_block, ptr %38, i32 0, i32 42
  %40 = load volatile i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %35
  %43 = load i16, ptr %36, align 8
  %44 = and i16 %43, -4096
  %45 = icmp eq i16 %44, 16384
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, ptr %1, align 8
  %48 = and i32 %47, 16384
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46, %42
  %51 = phi i32 [ 1073741828, %46 ], [ 4, %42 ]
  %52 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, %1
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call i32 @__fsnotify_parent(ptr noundef %1, i32 noundef %51, ptr noundef %1, i32 noundef 3) #12
  br label %60

57:                                               ; preds = %50, %46
  %58 = phi i32 [ %51, %50 ], [ 1073741828, %46 ]
  %59 = tail call i32 @fsnotify(i32 noundef %58, ptr noundef %1, i32 noundef 3, ptr noundef null, ptr noundef null, ptr noundef %36, i32 noundef 0) #12
  br label %60

60:                                               ; preds = %57, %55, %35, %32, %30, %29, %9, %4
  %61 = phi i32 [ %7, %4 ], [ %10, %9 ], [ %25, %30 ], [ %33, %32 ], [ -11, %29 ], [ 0, %35 ], [ 0, %55 ], [ 0, %57 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_removexattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 24
  br label %8

8:                                                ; preds = %26, %3
  call void @down_write(ptr noundef %7) #12
  %9 = call i32 @__vfs_removexattr_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4)
  call void @up_write(ptr noundef %7) #12
  %10 = load ptr, ptr %4, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  %13 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 40
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.file_lock_context, ptr %14, i32 0, i32 3
  %18 = load volatile ptr, ptr %17, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.file_lock_context, ptr %14, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %17
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %16
  %25 = call i32 @__break_lease(ptr noundef nonnull %10, i32 noundef 1, i32 noundef 4) #12
  br label %26

26:                                               ; preds = %24, %20, %12
  %27 = phi i32 [ %25, %24 ], [ 0, %20 ], [ 0, %12 ]
  %28 = load ptr, ptr %4, align 4
  call void @iput(ptr noundef %28) #12
  store ptr null, ptr %4, align 4
  %29 = icmp eq i32 %27, 0
  br i1 %29, label %8, label %30

30:                                               ; preds = %26, %8
  %31 = phi i32 [ %27, %26 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_setxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %0 to ptr
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  %9 = tail call fastcc i32 @path_setxattr(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %3, i32 noundef %4, i32 noundef 1) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lsetxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %0 to ptr
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  %9 = tail call fastcc i32 @path_setxattr(ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %3, i32 noundef %4, i32 noundef 0) #12
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fsetxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = inttoptr i32 %1 to ptr
  %7 = inttoptr i32 %2 to ptr
  %8 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !11
  %9 = and i32 %8, -4
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @mnt_want_write_file(ptr noundef nonnull %10) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.vfsmount, ptr %17, i32 0, i32 3
  %19 = load volatile ptr, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %20 = getelementptr inbounds %struct.file, ptr %10, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = tail call fastcc i32 @setxattr(ptr noundef %19, ptr noundef %21, ptr noundef %6, ptr noundef %7, i32 noundef %3, i32 noundef %4) #12
  tail call void @mnt_drop_write_file(ptr noundef nonnull %10) #12
  br label %23

23:                                               ; preds = %15, %12
  %24 = phi i32 [ %13, %12 ], [ %22, %15 ]
  %25 = and i32 %8, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @fput(ptr noundef nonnull %10) #12
  br label %28

28:                                               ; preds = %27, %23, %5
  %29 = phi i32 [ -9, %5 ], [ %24, %23 ], [ %24, %27 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.path, align 8
  %6 = inttoptr i32 %0 to ptr
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !15
  %9 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %6, i32 noundef 1, ptr noundef nonnull %5, ptr noundef null) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.vfsmount, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %16 = load ptr, ptr %12, align 4
  %17 = call fastcc i32 @getxattr(ptr noundef %15, ptr noundef %16, ptr noundef %7, ptr noundef %8, i32 noundef %3) #12
  call void @path_put(ptr noundef nonnull %5) #12
  %18 = icmp eq i32 %17, -116
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %6, i32 noundef 33, ptr noundef nonnull %5, ptr noundef null) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.vfsmount, ptr %23, i32 0, i32 3
  %25 = load volatile ptr, ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %26 = load ptr, ptr %12, align 4
  %27 = call fastcc i32 @getxattr(ptr noundef %25, ptr noundef %26, ptr noundef %7, ptr noundef %8, i32 noundef %3) #12
  call void @path_put(ptr noundef nonnull %5) #12
  br label %28

28:                                               ; preds = %22, %19, %11, %4
  %29 = phi i32 [ %9, %4 ], [ %17, %11 ], [ %20, %19 ], [ %27, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lgetxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.path, align 8
  %6 = inttoptr i32 %0 to ptr
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !15
  %9 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.vfsmount, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %16 = load ptr, ptr %12, align 4
  %17 = call fastcc i32 @getxattr(ptr noundef %15, ptr noundef %16, ptr noundef %7, ptr noundef %8, i32 noundef %3) #12
  call void @path_put(ptr noundef nonnull %5) #12
  %18 = icmp eq i32 %17, -116
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %6, i32 noundef 32, ptr noundef nonnull %5, ptr noundef null) #12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.vfsmount, ptr %23, i32 0, i32 3
  %25 = load volatile ptr, ptr %24, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %26 = load ptr, ptr %12, align 4
  %27 = call fastcc i32 @getxattr(ptr noundef %25, ptr noundef %26, ptr noundef %7, ptr noundef %8, i32 noundef %3) #12
  call void @path_put(ptr noundef nonnull %5) #12
  br label %28

28:                                               ; preds = %22, %19, %11, %4
  %29 = phi i32 [ %9, %4 ], [ %17, %11 ], [ %20, %19 ], [ %27, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fgetxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !16
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %4
  %10 = inttoptr i32 %2 to ptr
  %11 = inttoptr i32 %1 to ptr
  %12 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.vfsmount, ptr %13, i32 0, i32 3
  %15 = load volatile ptr, ptr %14, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %16 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call fastcc i32 @getxattr(ptr noundef %15, ptr noundef %17, ptr noundef %11, ptr noundef %10, i32 noundef %3) #12
  %19 = and i32 %5, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  tail call void @fput(ptr noundef nonnull %7) #12
  br label %22

22:                                               ; preds = %21, %9, %4
  %23 = phi i32 [ -9, %4 ], [ %18, %9 ], [ %18, %21 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_listxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.path, align 8
  %5 = inttoptr i32 %0 to ptr
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !15
  %7 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %5, i32 noundef 1, ptr noundef nonnull %4, ptr noundef null) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call fastcc i32 @listxattr(ptr noundef %11, ptr noundef %6, i32 noundef %2) #12
  call void @path_put(ptr noundef nonnull %4) #12
  %13 = icmp eq i32 %12, -116
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %5, i32 noundef 33, ptr noundef nonnull %4, ptr noundef null) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr %10, align 4
  %19 = call fastcc i32 @listxattr(ptr noundef %18, ptr noundef %6, i32 noundef %2) #12
  call void @path_put(ptr noundef nonnull %4) #12
  br label %20

20:                                               ; preds = %17, %14, %9, %3
  %21 = phi i32 [ %7, %3 ], [ %12, %9 ], [ %15, %14 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_llistxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.path, align 8
  %5 = inttoptr i32 %0 to ptr
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !15
  %7 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4, ptr noundef null) #12
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.path, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = call fastcc i32 @listxattr(ptr noundef %11, ptr noundef %6, i32 noundef %2) #12
  call void @path_put(ptr noundef nonnull %4) #12
  %13 = icmp eq i32 %12, -116
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %5, i32 noundef 32, ptr noundef nonnull %4, ptr noundef null) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr %10, align 4
  %19 = call fastcc i32 @listxattr(ptr noundef %18, ptr noundef %6, i32 noundef %2) #12
  call void @path_put(ptr noundef nonnull %4) #12
  br label %20

20:                                               ; preds = %17, %14, %9, %3
  %21 = phi i32 [ %7, %3 ], [ %12, %9 ], [ %15, %14 ], [ %19, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_flistxattr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !19
  %5 = and i32 %4, -4
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = inttoptr i32 %1 to ptr
  %10 = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call fastcc i32 @listxattr(ptr noundef %11, ptr noundef %9, i32 noundef %2) #12
  %13 = and i32 %4, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @fput(ptr noundef nonnull %6) #12
  br label %16

16:                                               ; preds = %15, %8, %3
  %17 = phi i32 [ -9, %3 ], [ %12, %8 ], [ %12, %15 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_removexattr(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @path_removexattr(ptr noundef %3, ptr noundef %4, i32 noundef 1) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lremovexattr(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %0 to ptr
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call fastcc i32 @path_removexattr(ptr noundef %3, ptr noundef %4, i32 noundef 0) #12
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fremovexattr(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca [256 x i8], align 1
  %4 = inttoptr i32 %1 to ptr
  %5 = tail call i32 @__fdget(i32 noundef %0) #12, !noalias !22
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @mnt_want_write_file(ptr noundef nonnull %7) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.vfsmount, ptr %14, i32 0, i32 3
  %16 = load volatile ptr, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %17 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %3, i8 0, i32 256, i1 false) #12, !annotation !15
  %19 = call i32 @strncpy_from_user(ptr noundef nonnull %3, ptr noundef %4, i32 noundef 256) #12
  %20 = and i32 %19, -257
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 -34, i32 %19
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %12
  %25 = call i32 @vfs_removexattr(ptr noundef %16, ptr noundef %18, ptr noundef nonnull %3) #12
  br label %26

26:                                               ; preds = %24, %12
  %27 = phi i32 [ %25, %24 ], [ %22, %12 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #12
  call void @mnt_drop_write_file(ptr noundef nonnull %7) #12
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ %10, %9 ], [ %27, %26 ]
  %30 = and i32 %5, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void @fput(ptr noundef nonnull %7) #12
  br label %33

33:                                               ; preds = %32, %28, %2
  %34 = phi i32 [ -9, %2 ], [ %29, %28 ], [ %29, %32 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @generic_listxattr(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %1, null
  %9 = icmp eq ptr %7, null
  br i1 %8, label %10, label %38

10:                                               ; preds = %3
  br i1 %9, label %76, label %11

11:                                               ; preds = %10
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %76, label %14

14:                                               ; preds = %34, %11
  %15 = phi ptr [ %36, %34 ], [ %12, %11 ]
  %16 = phi ptr [ %18, %34 ], [ %7, %11 ]
  %17 = phi i32 [ %35, %34 ], [ 0, %11 ]
  %18 = getelementptr ptr, ptr %16, i32 1
  %19 = load ptr, ptr %15, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.xattr_handler, ptr %15, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call zeroext i1 %23(ptr noundef %0) #12
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load ptr, ptr %15, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %28, %27 ], [ %19, %21 ]
  %31 = tail call i32 @strlen(ptr noundef %30)
  %32 = add i32 %17, 1
  %33 = add i32 %32, %31
  br label %34

34:                                               ; preds = %29, %25, %14
  %35 = phi i32 [ %33, %29 ], [ %17, %25 ], [ %17, %14 ]
  %36 = load ptr, ptr %18, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %76, label %14

38:                                               ; preds = %3
  br i1 %9, label %71, label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %7, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %66, %39
  %43 = phi ptr [ %69, %66 ], [ %40, %39 ]
  %44 = phi ptr [ %47, %66 ], [ %7, %39 ]
  %45 = phi ptr [ %68, %66 ], [ %1, %39 ]
  %46 = phi i32 [ %67, %66 ], [ %2, %39 ]
  %47 = getelementptr ptr, ptr %44, i32 1
  %48 = load ptr, ptr %43, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %66, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.xattr_handler, ptr %43, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = tail call zeroext i1 %52(ptr noundef %0) #12
  br i1 %55, label %56, label %66

56:                                               ; preds = %54
  %57 = load ptr, ptr %43, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi ptr [ %57, %56 ], [ %48, %50 ]
  %60 = tail call i32 @strlen(ptr noundef %59)
  %61 = add i32 %60, 1
  %62 = icmp ult i32 %46, %61
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %45, ptr align 1 %59, i32 %61, i1 false)
  %64 = getelementptr i8, ptr %45, i32 %61
  %65 = sub i32 %46, %61
  br label %66

66:                                               ; preds = %63, %54, %42
  %67 = phi i32 [ %65, %63 ], [ %46, %54 ], [ %46, %42 ]
  %68 = phi ptr [ %64, %63 ], [ %45, %54 ], [ %45, %42 ]
  %69 = load ptr, ptr %47, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %42

71:                                               ; preds = %66, %39, %38
  %72 = phi ptr [ %1, %38 ], [ %1, %39 ], [ %68, %66 ]
  %73 = ptrtoint ptr %72 to i32
  %74 = ptrtoint ptr %1 to i32
  %75 = sub i32 %73, %74
  br label %76

76:                                               ; preds = %71, %58, %34, %11, %10
  %77 = phi i32 [ 0, %10 ], [ %75, %71 ], [ 0, %11 ], [ %35, %34 ], [ -34, %58 ]
  ret i32 %77
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @xattr_full_name(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #7 {
  %3 = getelementptr inbounds %struct.xattr_handler, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call i32 @strlen(ptr noundef %9)
  %11 = sub i32 0, %10
  %12 = getelementptr i8, ptr %1, i32 %11
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @simple_xattr_alloc(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, -17
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = add nuw i32 %1, 16
  %6 = tail call noalias ptr @kvmalloc_node(i32 noundef %5, i32 noundef 3264, i32 noundef -1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.simple_xattr, ptr %6, i32 0, i32 2
  store i32 %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.simple_xattr, ptr %6, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %10, ptr align 1 %0, i32 %1, i1 false)
  br label %11

11:                                               ; preds = %8, %4, %2
  %12 = phi ptr [ %6, %8 ], [ null, %2 ], [ null, %4 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_xattr_get(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.simple_xattrs, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi ptr [ %0, %4 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.simple_xattr, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.simple_xattr, ptr %8, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq ptr %2, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = icmp ugt i32 %17, %3
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.simple_xattr, ptr %8, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %2, ptr align 4 %22, i32 %17, i1 false)
  br label %23

23:                                               ; preds = %21, %19, %15, %6
  %24 = phi i32 [ %17, %21 ], [ %17, %15 ], [ -34, %19 ], [ -61, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %25 = load i16, ptr %5, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_xattr_set(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i32 -1, ptr %5, align 4
  br label %9

9:                                                ; preds = %8, %6
  %10 = icmp eq ptr %2, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = icmp ugt i32 %3, -17
  br i1 %12, label %76, label %13

13:                                               ; preds = %11
  %14 = add nuw i32 %3, 16
  %15 = tail call noalias ptr @kvmalloc_node(i32 noundef %14, i32 noundef 3264, i32 noundef -1) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.simple_xattr, ptr %15, i32 0, i32 2
  store i32 %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.simple_xattr, ptr %15, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr nonnull align 1 %2, i32 %3, i1 false) #12
  %20 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #12
  %21 = getelementptr inbounds %struct.simple_xattr, ptr %15, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %73, label %23

23:                                               ; preds = %17, %9
  %24 = phi ptr [ %15, %17 ], [ null, %9 ]
  %25 = getelementptr inbounds %struct.simple_xattrs, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %25) #12
  br label %26

26:                                               ; preds = %30, %23
  %27 = phi ptr [ %0, %23 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.simple_xattr, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %30
  %36 = and i32 %4, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = icmp eq ptr %24, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %28, align 4
  store ptr %41, ptr %24, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %24, ptr %42, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  store ptr %24, ptr %44, align 4
  br i1 %7, label %64, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.simple_xattr, ptr %28, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  store i32 %48, ptr %5, align 4
  br label %64

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %28, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  br i1 %7, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.simple_xattr, ptr %28, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %5, align 4
  br label %64

57:                                               ; preds = %26
  %58 = and i32 %4, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %24, ptr %62, align 4
  store ptr %61, ptr %24, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %0, ptr %63, align 4
  store volatile ptr %24, ptr %0, align 4
  br label %64

64:                                               ; preds = %60, %57, %54, %49, %46, %40, %35
  %65 = phi i32 [ 0, %46 ], [ 0, %40 ], [ 0, %54 ], [ 0, %49 ], [ 0, %60 ], [ -17, %35 ], [ -61, %57 ]
  %66 = phi ptr [ %28, %46 ], [ %28, %40 ], [ %28, %54 ], [ %28, %49 ], [ null, %60 ], [ %24, %35 ], [ %24, %57 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %67 = load i16, ptr %25, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %69 = icmp eq ptr %66, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.simple_xattr, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void @kfree(ptr noundef %72) #12
  br label %73

73:                                               ; preds = %70, %17
  %74 = phi ptr [ %66, %70 ], [ %15, %17 ]
  %75 = phi i32 [ %65, %70 ], [ -12, %17 ]
  tail call void @kvfree(ptr noundef nonnull %74) #12
  br label %76

76:                                               ; preds = %73, %64, %13, %11
  %77 = phi i32 [ %65, %64 ], [ -12, %11 ], [ -12, %13 ], [ %75, %73 ]
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @simple_xattr_list(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call zeroext i1 @capable(i32 noundef 21) #12
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %7, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 65536
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %2, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = icmp ult i32 %3, 24
  br i1 %19, label %79, label %20

20:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.3, i32 24, i1 false) #12
  %21 = getelementptr i8, ptr %2, i32 24
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ null, %16 ], [ %21, %20 ]
  %24 = add i32 %3, -24
  br label %25

25:                                               ; preds = %22, %12
  %26 = phi ptr [ %2, %12 ], [ %23, %22 ]
  %27 = phi i32 [ %3, %12 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = icmp eq ptr %26, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = icmp ult i32 %27, 25
  br i1 %34, label %79, label %35

35:                                               ; preds = %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(25) %26, ptr noundef nonnull align 1 dereferenceable(25) @.str.4, i32 25, i1 false) #12
  %36 = getelementptr i8, ptr %26, i32 25
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi ptr [ null, %31 ], [ %36, %35 ]
  %39 = add i32 %27, -25
  br label %40

40:                                               ; preds = %37, %25, %4
  %41 = phi ptr [ %2, %4 ], [ %26, %25 ], [ %38, %37 ]
  %42 = phi i32 [ %3, %4 ], [ %27, %25 ], [ %39, %37 ]
  %43 = getelementptr inbounds %struct.simple_xattrs, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %43) #12
  %44 = load ptr, ptr %1, align 4
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %71, label %46

46:                                               ; preds = %66, %40
  %47 = phi ptr [ %69, %66 ], [ %44, %40 ]
  %48 = phi i32 [ %68, %66 ], [ %42, %40 ]
  %49 = phi ptr [ %67, %66 ], [ %41, %40 ]
  %50 = getelementptr inbounds %struct.simple_xattr, ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  br i1 %5, label %55, label %52

52:                                               ; preds = %46
  %53 = tail call i32 @strncmp(ptr noundef %51, ptr noundef nonnull dereferenceable(9) @.str.6, i32 noundef 8) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %52, %46
  %56 = tail call i32 @strlen(ptr noundef %51) #12
  %57 = add i32 %56, 1
  %58 = icmp eq ptr %49, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = icmp ult i32 %48, %57
  br i1 %60, label %71, label %61

61:                                               ; preds = %59
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %49, ptr align 1 %51, i32 %57, i1 false) #12
  %62 = getelementptr i8, ptr %49, i32 %57
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi ptr [ null, %55 ], [ %62, %61 ]
  %65 = sub i32 %48, %57
  br label %66

66:                                               ; preds = %63, %52
  %67 = phi ptr [ %49, %52 ], [ %64, %63 ]
  %68 = phi i32 [ %48, %52 ], [ %65, %63 ]
  %69 = load ptr, ptr %47, align 4
  %70 = icmp eq ptr %69, %1
  br i1 %70, label %71, label %46

71:                                               ; preds = %66, %59, %40
  %72 = phi i32 [ %42, %40 ], [ %48, %59 ], [ %68, %66 ]
  %73 = phi i1 [ true, %40 ], [ false, %59 ], [ true, %66 ]
  %74 = phi i32 [ 0, %40 ], [ -34, %59 ], [ 0, %66 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %75 = load i16, ptr %43, align 4
  %76 = add i16 %75, 1
  store i16 %76, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  %77 = sub i32 %3, %72
  %78 = select i1 %73, i32 %77, i32 %74
  br label %79

79:                                               ; preds = %71, %33, %18
  %80 = phi i32 [ -34, %18 ], [ -34, %33 ], [ %78, %71 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @simple_xattr_list_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.simple_xattrs, ptr %0, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %1, ptr %5, align 4
  store ptr %4, ptr %1, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %0, ptr %6, align 4
  store volatile ptr %1, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  %7 = load i16, ptr %3, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !26
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !27
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsnotify_parent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inode_owner_or_capable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ihold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__break_lease(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_getsecurity(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_inode_removexattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @path_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store i64 0, ptr %7, align 8, !annotation !15
  %8 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef %5, ptr noundef nonnull %7, ptr noundef null) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.path, ptr %7, i32 0, i32 1
  %12 = or i32 %5, 32
  br label %16

13:                                               ; preds = %28
  %14 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef %12, ptr noundef nonnull %7, ptr noundef null) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %5, %10 ], [ %12, %13 ]
  %18 = load ptr, ptr %7, align 8
  %19 = call i32 @mnt_want_write(ptr noundef %18) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load ptr, ptr %7, align 8
  %23 = getelementptr inbounds %struct.vfsmount, ptr %22, i32 0, i32 3
  %24 = load volatile ptr, ptr %23, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %25 = load ptr, ptr %11, align 4
  %26 = call fastcc i32 @setxattr(ptr noundef %24, ptr noundef %25, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  %27 = load ptr, ptr %7, align 8
  call void @mnt_drop_write(ptr noundef %27) #12
  br label %28

28:                                               ; preds = %21, %16
  %29 = phi i32 [ %19, %16 ], [ %26, %21 ]
  call void @path_put(ptr noundef nonnull %7) #12
  %30 = icmp eq i32 %29, -116
  %31 = and i32 %17, 32
  %32 = icmp eq i32 %31, 0
  %33 = and i1 %32, %30
  br i1 %33, label %13, label %34

34:                                               ; preds = %28, %13, %6
  %35 = phi i32 [ %8, %6 ], [ %29, %28 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @setxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %7, i8 0, i32 256, i1 false), !annotation !15
  %8 = icmp ult i32 %5, 4
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = call i32 @strncpy_from_user(ptr noundef nonnull %7, ptr noundef %2, i32 noundef 256) #12
  %11 = and i32 %10, -257
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 -34, i32 %10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %51, label %15

15:                                               ; preds = %9
  %16 = icmp eq i32 %4, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %15
  %18 = icmp ugt i32 %4, 65536
  br i1 %18, label %51, label %19

19:                                               ; preds = %17
  %20 = call noalias ptr @kvmalloc_node(i32 noundef %4, i32 noundef 3264, i32 noundef -1) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %4, i32 -1090519040) #15, !srcloc !29
  %24 = extractvalue { i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34, !prof !30

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %29 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %28) #16, !srcloc !31
  %30 = and i32 %29, -13
  %31 = or i32 %30, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %32 = call i32 @arm_copy_from_user(ptr noundef nonnull %20, ptr noundef %3, i32 noundef %4) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !30

34:                                               ; preds = %26, %22
  %35 = phi i32 [ %32, %26 ], [ %4, %22 ]
  %36 = sub i32 %4, %35
  %37 = getelementptr i8, ptr %20, i32 %36
  call void @llvm.memset.p0.i32(ptr align 1 %37, i8 0, i32 %35, i1 false) #12
  br label %48

38:                                               ; preds = %26
  %39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %7, ptr noundef nonnull dereferenceable(24) @.str.3, i32 24)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %7, ptr noundef nonnull dereferenceable(25) @.str.4, i32 25)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %38
  call void @posix_acl_fix_xattr_from_user(ptr noundef %0, ptr noundef nonnull %20, i32 noundef %4) #12
  br label %45

45:                                               ; preds = %44, %41, %15
  %46 = phi ptr [ %20, %44 ], [ %20, %41 ], [ null, %15 ]
  %47 = call i32 @vfs_setxattr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %46, i32 noundef %4, i32 noundef %5)
  br label %48

48:                                               ; preds = %45, %34
  %49 = phi i32 [ %47, %45 ], [ -14, %34 ]
  %50 = phi ptr [ %46, %45 ], [ %20, %34 ]
  call void @kvfree(ptr noundef %50) #12
  br label %51

51:                                               ; preds = %48, %19, %17, %9, %6
  %52 = phi i32 [ %49, %48 ], [ -22, %6 ], [ %13, %9 ], [ -7, %17 ], [ -12, %19 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #12
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_acl_fix_xattr_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mnt_want_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mnt_drop_write_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @getxattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca [256 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %6, i8 0, i32 256, i1 false), !annotation !15
  %7 = call i32 @strncpy_from_user(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 256) #12
  %8 = and i32 %7, -257
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -34, i32 %7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %5
  %13 = icmp eq i32 %4, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = call i32 @llvm.umin.i32(i32 %4, i32 65536)
  %16 = call noalias ptr @kvmalloc_node(i32 noundef %15, i32 noundef 3520, i32 noundef -1) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %14, %12
  %19 = phi i32 [ %15, %14 ], [ 0, %12 ]
  %20 = phi ptr [ %16, %14 ], [ null, %12 ]
  %21 = call i32 @vfs_getxattr(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef %20, i32 noundef %19)
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %18
  %24 = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) %6, ptr noundef nonnull dereferenceable(24) @.str.3, i32 24)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %6, ptr noundef nonnull dereferenceable(25) @.str.4, i32 25)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  call void @posix_acl_fix_xattr_to_user(ptr noundef %0, ptr noundef %20, i32 noundef %21) #12
  br label %30

30:                                               ; preds = %29, %26
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %30
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 %21, i32 -1090519040) #15, !srcloc !34
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #12
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #16, !srcloc !31
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %42 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef %20, i32 noundef %21) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #12, !srcloc !32
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %21, i32 -14
  br label %50

45:                                               ; preds = %18
  %46 = icmp eq i32 %21, -34
  %47 = icmp ugt i32 %19, 65535
  %48 = and i1 %47, %46
  %49 = select i1 %48, i32 -7, i32 %21
  br label %50

50:                                               ; preds = %45, %36, %32, %30
  %51 = phi i32 [ %21, %30 ], [ %49, %45 ], [ %44, %36 ], [ -14, %32 ]
  call void @kvfree(ptr noundef %20) #12
  br label %52

52:                                               ; preds = %50, %14, %5
  %53 = phi i32 [ %51, %50 ], [ %10, %5 ], [ -12, %14 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #12
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_acl_fix_xattr_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @listxattr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @llvm.umin.i32(i32 %2, i32 65536)
  %7 = tail call noalias ptr @kvmalloc_node(i32 noundef %6, i32 noundef 3264, i32 noundef -1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %6, %5 ], [ 0, %3 ]
  %11 = phi ptr [ %7, %5 ], [ null, %3 ]
  %12 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode_operations, ptr %15, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = tail call i32 %17(ptr noundef %0, ptr noundef %11, i32 noundef %10) #12
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = icmp eq i32 %10, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %27
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %25, i32 -1090519040) #15, !srcloc !34
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = tail call ptr @llvm.thread.pointer() #12
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #16, !srcloc !31
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %39 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %11, i32 noundef %25) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #12, !srcloc !32
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !33
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 %25, i32 -14
  br label %48

42:                                               ; preds = %24, %19, %9
  %43 = phi i32 [ %25, %24 ], [ 0, %19 ], [ 0, %9 ]
  %44 = icmp eq i32 %43, -34
  %45 = icmp ugt i32 %10, 65535
  %46 = and i1 %45, %44
  %47 = select i1 %46, i32 -7, i32 %43
  br label %48

48:                                               ; preds = %42, %33, %29, %27
  %49 = phi i32 [ %25, %27 ], [ %47, %42 ], [ %41, %33 ], [ -14, %29 ]
  tail call void @kvfree(ptr noundef %11) #12
  br label %50

50:                                               ; preds = %48, %5
  %51 = phi i32 [ %49, %48 ], [ -12, %5 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @path_removexattr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [256 x i8], align 1
  %5 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !15
  %6 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5, ptr noundef null) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %10 = or i32 %2, 32
  br label %14

11:                                               ; preds = %34
  %12 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef %10, ptr noundef nonnull %5, ptr noundef null) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %2, %8 ], [ %10, %11 ]
  %16 = load ptr, ptr %5, align 8
  %17 = call i32 @mnt_want_write(ptr noundef %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.vfsmount, ptr %20, i32 0, i32 3
  %22 = load volatile ptr, ptr %21, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !14
  %23 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(256) %4, i8 0, i32 256, i1 false) #12, !annotation !15
  %24 = call i32 @strncpy_from_user(ptr noundef nonnull %4, ptr noundef %1, i32 noundef 256) #12
  %25 = and i32 %24, -257
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 -34, i32 %24
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = call i32 @vfs_removexattr(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %4) #12
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi i32 [ %30, %29 ], [ %27, %19 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #12
  %33 = load ptr, ptr %5, align 8
  call void @mnt_drop_write(ptr noundef %33) #12
  br label %34

34:                                               ; preds = %31, %14
  %35 = phi i32 [ %17, %14 ], [ %32, %31 ]
  call void @path_put(ptr noundef nonnull %5) #12
  %36 = icmp eq i32 %35, -116
  %37 = and i32 %15, 32
  %38 = icmp eq i32 %37, 0
  %39 = and i1 %38, %36
  br i1 %39, label %11, label %40

40:                                               ; preds = %34, %11, %3
  %41 = phi i32 [ %6, %3 ], [ %35, %34 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind readonly }

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
!9 = !{i64 2151325578}
!10 = !{i64 2148009924}
!11 = !{!12}
!12 = distinct !{!12, !13, !"fdget: argument 0"}
!13 = distinct !{!13, !"fdget"}
!14 = !{i64 2151214832}
!15 = !{!"auto-init"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"fdget: argument 0"}
!18 = distinct !{!18, !"fdget"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"fdget: argument 0"}
!21 = distinct !{!21, !"fdget"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"fdget: argument 0"}
!24 = distinct !{!24, !"fdget"}
!25 = !{i64 2149022141}
!26 = !{i64 2149017965}
!27 = !{i64 2149018040, i64 2149018067, i64 2149018114, i64 2149018136, i64 2149018164, i64 2149018184}
!28 = !{i64 2149045144}
!29 = !{i64 2150987196, i64 2150987221}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 3483308}
!32 = !{i64 3483505}
!33 = !{i64 2150968784}
!34 = !{i64 2150987774, i64 2150987799}
