; ModuleID = '/llk/IR/fs/stat.c_pt.bc'
source_filename = "../fs/stat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fillattr:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fillattr\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fillattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_generic_fill_statx_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22generic_fill_statx_attr\22\09\09\09\09\09"
module asm "__kstrtabns_generic_fill_statx_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_getattr_nosec:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_getattr_nosec\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_getattr_nosec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_getattr\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_getattr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22__inode_add_bytes\22\09\09\09\09\09"
module asm "__kstrtabns___inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_add_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_add_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22__inode_sub_bytes\22\09\09\09\09\09"
module asm "__kstrtabns___inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_sub_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_sub_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_get_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_get_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_get_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inode_set_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22inode_set_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_inode_set_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.92, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.93, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.94, ptr, %struct.address_space, %struct.list_head, %union.anon.95, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.93 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.94 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.95 = type { ptr }
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
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.90, %struct.list_head, %struct.list_head, %union.anon.91 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%union.anon.90 = type { %struct.list_head }
%union.anon.91 = type { %struct.hlist_node }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file = type { %union.anon.29, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.29 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.statx = type { i32, i32, i64, i32, i32, i32, i16, [1 x i16], i64, i64, i64, i64, %struct.statx_timestamp, %struct.statx_timestamp, %struct.statx_timestamp, %struct.statx_timestamp, i32, i32, i32, i32, i64, i64, [12 x i64] }
%struct.statx_timestamp = type { i64, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.stat = type { i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stat64 = type { i64, [4 x i8], i32, i32, i32, i32, i32, i64, [4 x i8], i64, i32, i64, i32, i32, i32, i32, i32, i32, i64 }

@__kstrtab_generic_fillattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fillattr = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fillattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fillattr to i32), ptr @__kstrtab_generic_fillattr, ptr @__kstrtabns_generic_fillattr }, section "___ksymtab+generic_fillattr", align 4
@__kstrtab_generic_fill_statx_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_generic_fill_statx_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_generic_fill_statx_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @generic_fill_statx_attr to i32), ptr @__kstrtab_generic_fill_statx_attr, ptr @__kstrtabns_generic_fill_statx_attr }, section "___ksymtab+generic_fill_statx_attr", align 4
@__kstrtab_vfs_getattr_nosec = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_getattr_nosec = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_getattr_nosec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_getattr_nosec to i32), ptr @__kstrtab_vfs_getattr_nosec, ptr @__kstrtabns_vfs_getattr_nosec }, section "___ksymtab+vfs_getattr_nosec", align 4
@__kstrtab_vfs_getattr = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_getattr = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_getattr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_getattr to i32), ptr @__kstrtab_vfs_getattr, ptr @__kstrtabns_vfs_getattr }, section "___ksymtab+vfs_getattr", align 4
@__kstrtab___inode_add_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns___inode_add_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab___inode_add_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inode_add_bytes to i32), ptr @__kstrtab___inode_add_bytes, ptr @__kstrtabns___inode_add_bytes }, section "___ksymtab+__inode_add_bytes", align 4
@__kstrtab_inode_add_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_add_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_add_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_add_bytes to i32), ptr @__kstrtab_inode_add_bytes, ptr @__kstrtabns_inode_add_bytes }, section "___ksymtab+inode_add_bytes", align 4
@__kstrtab___inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns___inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab___inode_sub_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__inode_sub_bytes to i32), ptr @__kstrtab___inode_sub_bytes, ptr @__kstrtabns___inode_sub_bytes }, section "___ksymtab+__inode_sub_bytes", align 4
@__kstrtab_inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_sub_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_sub_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_sub_bytes to i32), ptr @__kstrtab_inode_sub_bytes, ptr @__kstrtabns_inode_sub_bytes }, section "___ksymtab+inode_sub_bytes", align 4
@__kstrtab_inode_get_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_get_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_get_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_get_bytes to i32), ptr @__kstrtab_inode_get_bytes, ptr @__kstrtabns_inode_get_bytes }, section "___ksymtab+inode_get_bytes", align 4
@__kstrtab_inode_set_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_inode_set_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_inode_set_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inode_set_bytes to i32), ptr @__kstrtab_inode_set_bytes, ptr @__kstrtabns_inode_set_bytes }, section "___ksymtab+inode_set_bytes", align 4
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab___inode_add_bytes, ptr @__ksymtab___inode_sub_bytes, ptr @__ksymtab_generic_fill_statx_attr, ptr @__ksymtab_generic_fillattr, ptr @__ksymtab_inode_add_bytes, ptr @__ksymtab_inode_get_bytes, ptr @__ksymtab_inode_set_bytes, ptr @__ksymtab_inode_sub_bytes, ptr @__ksymtab_vfs_getattr, ptr @__ksymtab_vfs_getattr_nosec], section "llvm.metadata"

@sys_newstat = dso_local alias i32 (ptr, ptr), ptr @__se_sys_newstat
@sys_newlstat = dso_local alias i32 (ptr, ptr), ptr @__se_sys_newlstat
@sys_newfstat = dso_local alias i32 (i32, ptr), ptr @__se_sys_newfstat
@sys_readlinkat = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_readlinkat
@sys_readlink = dso_local alias i32 (ptr, ptr, i32), ptr @__se_sys_readlink
@sys_stat64 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_stat64
@sys_lstat64 = dso_local alias i32 (ptr, ptr), ptr @__se_sys_lstat64
@sys_fstat64 = dso_local alias i32 (i32, ptr), ptr @__se_sys_fstat64
@sys_fstatat64 = dso_local alias i32 (i32, ptr, ptr, i32), ptr @__se_sys_fstatat64
@sys_statx = dso_local alias i32 (i32, ptr, i32, i32, ptr), ptr @__se_sys_statx

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_fillattr(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 7
  store i32 %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 6
  store i64 %11, ptr %12, align 8
  %13 = load i16, ptr %1, align 8
  %14 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 1
  store i16 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 11
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 2
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 9
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  store i32 %20, ptr %18, align 8
  %21 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 10
  %22 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 8
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %29

29:                                               ; preds = %37, %3
  %30 = load volatile i32, ptr %27, align 4
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %33, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !9
  %34 = load volatile i32, ptr %27, align 4
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %33

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %30, %29 ], [ %34, %33 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %39 = load i64, ptr %28, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %40 = load volatile i32, ptr %27, align 4
  %41 = icmp eq i32 %40, %38
  br i1 %41, label %42, label %29

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 11
  store i64 %39, ptr %43, align 8
  %44 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 12
  %45 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %44, ptr noundef align 8 dereferenceable(16) %45, i32 16, i1 false)
  %46 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 13
  %47 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %46, ptr noundef align 8 dereferenceable(16) %47, i32 16, i1 false)
  %48 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 14
  %49 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %48, ptr noundef align 8 dereferenceable(16) %49, i32 16, i1 false)
  %50 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 19
  %51 = load i8, ptr %50, align 2
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 1, %52
  %54 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 21
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 16
  store i64 %56, ptr %57, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @generic_fill_statx_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 4
  %9 = load i64, ptr %8, align 8
  %10 = or i64 %9, 16
  store i64 %10, ptr %8, align 8
  %11 = load i32, ptr %3, align 4
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ %4, %2 ]
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 4
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 32
  store i64 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 5
  %22 = load i64, ptr %21, align 8
  %23 = or i64 %22, 48
  store i64 %23, ptr %21, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_getattr_nosec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dentry, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(144) %1, i8 0, i32 144, i1 false)
  store i32 2047, ptr %1, align 8
  %9 = and i32 %3, 24576
  %10 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1024
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 2047, i32 2015
  store i32 %16, ptr %1, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 4
  store i64 4096, ptr %22, align 8
  br label %23

23:                                               ; preds = %21, %4
  %24 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 5
  store i64 2101248, ptr %24, align 8
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.vfsmount, ptr %25, i32 0, i32 3
  %27 = load volatile ptr, ptr %26, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %28 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 7
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.inode_operations, ptr %29, i32 0, i32 14
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = tail call i32 %31(ptr noundef %27, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %9) #9
  br label %89

35:                                               ; preds = %23
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 7
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 6
  store i64 %42, ptr %43, align 8
  %44 = load i16, ptr %8, align 8
  %45 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 1
  store i16 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 11
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 2
  store i32 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 9
  %50 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %49, align 8
  %52 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 10
  %53 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 3
  %54 = load i32, ptr %53, align 8
  store i32 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 8
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 22
  %59 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 13
  br label %60

60:                                               ; preds = %68, %35
  %61 = load volatile i32, ptr %58, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %64, %60
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !9
  %65 = load volatile i32, ptr %58, align 4
  %66 = and i32 %65, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %64

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %61, %60 ], [ %65, %64 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !10
  %70 = load i64, ptr %59, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  %71 = load volatile i32, ptr %58, align 4
  %72 = icmp eq i32 %71, %69
  br i1 %72, label %73, label %60

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 11
  store i64 %70, ptr %74, align 8
  %75 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 12
  %76 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %75, ptr noundef align 8 dereferenceable(16) %76, i32 16, i1 false) #9
  %77 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 13
  %78 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 15
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %77, ptr noundef align 8 dereferenceable(16) %78, i32 16, i1 false) #9
  %79 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 14
  %80 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %79, ptr noundef align 8 dereferenceable(16) %80, i32 16, i1 false) #9
  %81 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 19
  %82 = load i8, ptr %81, align 2
  %83 = zext i8 %82 to i32
  %84 = shl nuw i32 1, %83
  %85 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 3
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 21
  %87 = load i64, ptr %86, align 8
  %88 = getelementptr inbounds %struct.kstat, ptr %1, i32 0, i32 16
  store i64 %87, ptr %88, align 8
  br label %89

89:                                               ; preds = %73, %33
  %90 = phi i32 [ %34, %33 ], [ 0, %73 ]
  ret i32 %90
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_getattr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @vfs_getattr_nosec(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fstat(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__fdget_raw(i32 noundef %0) #9, !noalias !13
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1
  %9 = tail call i32 @vfs_getattr_nosec(ptr noundef %8, ptr noundef %1, i32 noundef 2047, i32 noundef 0) #9
  %10 = and i32 %3, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @fput(ptr noundef nonnull %5) #9
  br label %13

13:                                               ; preds = %12, %7, %2
  %14 = phi i32 [ -9, %2 ], [ %9, %7 ], [ %9, %12 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_fstatat(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = or i32 %3, 2048
  %6 = tail call fastcc i32 @vfs_statx(i32 noundef %0, ptr noundef %1, i32 noundef %5, ptr noundef %2, i32 noundef 2047)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vfs_statx(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !16
  %7 = and i32 %2, -30977
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %5
  %10 = lshr i32 %2, 8
  %11 = and i32 %10, 1
  %12 = lshr i32 %2, 9
  %13 = and i32 %12, 4
  %14 = or i32 %11, %13
  %15 = shl nuw nsw i32 %2, 2
  %16 = and i32 %15, 16384
  %17 = or i32 %14, %16
  %18 = xor i32 %17, 5
  %19 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %18, ptr noundef nonnull %6, ptr noundef null) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 17
  %23 = getelementptr inbounds %struct.path, ptr %6, i32 0, i32 1
  %24 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 4
  %25 = getelementptr inbounds %struct.kstat, ptr %3, i32 0, i32 5
  %26 = or i32 %18, 32
  br label %30

27:                                               ; preds = %45
  %28 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef %26, ptr noundef nonnull %6, ptr noundef null) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %18, %21 ], [ %26, %27 ]
  %32 = call i32 @vfs_getattr_nosec(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4, i32 noundef %2) #9
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr i8, ptr %33, i32 132
  %35 = load i32, ptr %34, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, ptr %22, align 8
  %37 = load i32, ptr %3, align 8
  %38 = or i32 %37, 4096
  store i32 %38, ptr %3, align 8
  %39 = load ptr, ptr %33, align 4
  %40 = load ptr, ptr %23, align 4
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i64, ptr %24, align 8
  %44 = or i64 %43, 8192
  store i64 %44, ptr %24, align 8
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i64, ptr %25, align 8
  %47 = or i64 %46, 8192
  store i64 %47, ptr %25, align 8
  call void @path_put(ptr noundef nonnull %6) #9
  %48 = icmp eq i32 %32, -116
  %49 = and i32 %31, 32
  %50 = icmp eq i32 %49, 0
  %51 = and i1 %50, %48
  br i1 %51, label %27, label %52

52:                                               ; preds = %45, %27, %9, %5
  %53 = phi i32 [ -22, %5 ], [ %19, %9 ], [ %32, %45 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newstat(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstat, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false) #9, !annotation !16
  %5 = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %4, i32 noundef 2048, ptr noundef nonnull %3, i32 noundef 2047) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = inttoptr i32 %1 to ptr
  %9 = call fastcc i32 @cp_new_stat(ptr noundef nonnull %3, ptr noundef %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newlstat(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstat, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false) #9, !annotation !16
  %5 = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %4, i32 noundef 2304, ptr noundef nonnull %3, i32 noundef 2047) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = inttoptr i32 %1 to ptr
  %9 = call fastcc i32 @cp_new_stat(ptr noundef nonnull %3, ptr noundef %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_newfstat(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstat, align 8
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false) #9, !annotation !16
  %5 = tail call i32 @__fdget_raw(i32 noundef %0) #9, !noalias !17
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1
  %11 = call i32 @vfs_getattr_nosec(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 2047, i32 noundef 0) #9
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @fput(ptr noundef nonnull %7) #9
  br label %15

15:                                               ; preds = %14, %9
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call fastcc i32 @cp_new_stat(ptr noundef nonnull %3, ptr noundef %4) #9
  br label %19

19:                                               ; preds = %17, %15, %2
  %20 = phi i32 [ %11, %15 ], [ %18, %17 ], [ -9, %2 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readlinkat(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = inttoptr i32 %1 to ptr
  %6 = inttoptr i32 %2 to ptr
  %7 = tail call fastcc i32 @do_readlinkat(i32 noundef %0, ptr noundef %5, ptr noundef %6, i32 noundef %3) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_readlink(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = inttoptr i32 %1 to ptr
  %6 = tail call fastcc i32 @do_readlinkat(i32 noundef -100, ptr noundef %4, ptr noundef %5, i32 noundef %2) #9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_stat64(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstat, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false) #9, !annotation !16
  %5 = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %4, i32 noundef 2048, ptr noundef nonnull %3, i32 noundef 2047) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = inttoptr i32 %1 to ptr
  %9 = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %3, ptr noundef %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %5, %2 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_lstat64(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstat, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false) #9, !annotation !16
  %5 = call fastcc i32 @vfs_statx(i32 noundef -100, ptr noundef %4, i32 noundef 2304, ptr noundef nonnull %3, i32 noundef 2047) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = inttoptr i32 %1 to ptr
  %9 = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %3, ptr noundef %8) #9
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %5, %2 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstat64(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstat, align 8
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i32 144, i1 false) #9, !annotation !16
  %5 = tail call i32 @__fdget_raw(i32 noundef %0) #9, !noalias !20
  %6 = and i32 %5, -4
  %7 = inttoptr i32 %6 to ptr
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 1
  %11 = call i32 @vfs_getattr_nosec(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 2047, i32 noundef 0) #9
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  call void @fput(ptr noundef nonnull %7) #9
  br label %15

15:                                               ; preds = %14, %9
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %3, ptr noundef %4) #9
  br label %19

19:                                               ; preds = %17, %15, %2
  %20 = phi i32 [ %11, %15 ], [ %18, %17 ], [ -9, %2 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #9
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstatat64(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.kstat, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %5, i8 0, i32 144, i1 false) #9, !annotation !16
  %7 = or i32 %3, 2048
  %8 = call fastcc i32 @vfs_statx(i32 noundef %0, ptr noundef %6, i32 noundef %7, ptr noundef nonnull %5, i32 noundef 2047) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = inttoptr i32 %2 to ptr
  %12 = call fastcc i32 @cp_new_stat64(ptr noundef nonnull %5, ptr noundef %11) #9
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %12, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_statx(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.kstat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %6, i8 0, i32 144, i1 false), !annotation !16
  %7 = icmp slt i32 %3, 0
  %8 = and i32 %2, 24576
  %9 = icmp eq i32 %8, 24576
  %10 = or i1 %7, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = call fastcc i32 @vfs_statx(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, i32 noundef %3)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call fastcc i32 @cp_statx(ptr noundef nonnull %6, ptr noundef %4)
  br label %16

16:                                               ; preds = %14, %11, %5
  %17 = phi i32 [ %15, %14 ], [ -22, %5 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #9
  ret i32 %17
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cp_statx(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.statx, align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #9
  %4 = getelementptr inbounds i8, ptr %3, i32 24
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(232) %4, i8 0, i64 232, i1 false)
  %5 = load i32, ptr %0, align 8
  store i32 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 2
  store i64 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 3
  store i32 %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, -1
  %18 = load i32, ptr @overflowuid, align 4
  %19 = select i1 %17, i32 %18, i32 %16
  %20 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  %24 = load i32, ptr @overflowgid, align 4
  %25 = select i1 %23, i32 %24, i32 %22
  %26 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 5
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 6
  store i16 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 6
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 8
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 11
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 9
  store i64 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 16
  %37 = load i64, ptr %36, align 8
  %38 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 10
  store i64 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 5
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 11
  store i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 12
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 12
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 12, i32 1
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 12, i32 1
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 15
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 13
  store i64 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 15, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 13, i32 1
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 14
  %55 = load i64, ptr %54, align 8
  %56 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 14
  store i64 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 14, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 14, i32 1
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 13
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 15
  store i64 %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 13, i32 1
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 15, i32 1
  store i32 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 8
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 20
  %69 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 16
  store i32 %68, ptr %69, align 8
  %70 = and i32 %67, 1048575
  %71 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 17
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 7
  %73 = load i32, ptr %72, align 8
  %74 = lshr i32 %73, 20
  %75 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 18
  store i32 %74, ptr %75, align 8
  %76 = and i32 %73, 1048575
  %77 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 19
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 17
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds %struct.statx, ptr %3, i32 0, i32 20
  store i64 %79, ptr %80, align 8
  %81 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 256, i32 -1090519040) #10, !srcloc !23
  %82 = extractvalue { i32, i32 } %81, 0
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %2
  %85 = tail call ptr @llvm.thread.pointer() #9
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 3
  %87 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %86) #11, !srcloc !24
  %88 = and i32 %87, -13
  %89 = or i32 %88, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #9, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !26
  %90 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 256) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #9, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !26
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 0, i32 -14
  br label %93

93:                                               ; preds = %84, %2
  %94 = phi i32 [ -14, %2 ], [ %92, %84 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #9
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_statx(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.kstat, align 8
  %7 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %6, i8 0, i32 144, i1 false) #9, !annotation !16
  %8 = icmp slt i32 %3, 0
  %9 = and i32 %2, 24576
  %10 = icmp eq i32 %9, 24576
  %11 = or i1 %8, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = inttoptr i32 %1 to ptr
  %14 = call fastcc i32 @vfs_statx(i32 noundef %0, ptr noundef %13, i32 noundef %2, ptr noundef nonnull %6, i32 noundef %3) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call fastcc i32 @cp_statx(ptr noundef nonnull %6, ptr noundef %7) #9
  br label %18

18:                                               ; preds = %16, %12, %5
  %19 = phi i32 [ %17, %16 ], [ -22, %5 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #9
  ret i32 %19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__inode_add_bytes(ptr nocapture noundef %0, i64 noundef %1) #3 {
  %3 = ashr i64 %1, 9
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %5, %3
  store i64 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = trunc i64 %1 to i16
  %10 = and i16 %9, 511
  %11 = add i16 %8, %10
  store i16 %11, ptr %7, align 4
  %12 = icmp ugt i16 %11, 511
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = add i64 %6, 1
  store i64 %14, ptr %4, align 8
  %15 = add i16 %11, -512
  store i16 %15, ptr %7, align 4
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_add_bytes(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = ashr i64 %1, 9
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %6 = load i64, ptr %5, align 8
  %7 = add i64 %6, %4
  store i64 %7, ptr %5, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = trunc i64 %1 to i16
  %11 = and i16 %10, 511
  %12 = add i16 %9, %11
  store i16 %12, ptr %8, align 4
  %13 = icmp ugt i16 %12, 511
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = add i64 %7, 1
  store i64 %15, ptr %5, align 8
  %16 = add i16 %12, -512
  store i16 %16, ptr %8, align 4
  br label %17

17:                                               ; preds = %14, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  %18 = load i16, ptr %3, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__inode_sub_bytes(ptr nocapture noundef %0, i64 noundef %1) #3 {
  %3 = ashr i64 %1, 9
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %5, %3
  store i64 %6, ptr %4, align 8
  %7 = and i64 %1, 511
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i64
  %11 = icmp ugt i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = add i64 %6, -1
  store i64 %13, ptr %4, align 8
  %14 = add i16 %9, 512
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i16 [ %14, %12 ], [ %9, %2 ]
  %17 = trunc i64 %7 to i16
  %18 = sub i16 %16, %17
  store i16 %18, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @inode_sub_bytes(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %3) #9
  %4 = ashr i64 %1, 9
  %5 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %6 = load i64, ptr %5, align 8
  %7 = sub i64 %6, %4
  store i64 %7, ptr %5, align 8
  %8 = and i64 %1, 511
  %9 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i64
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = add i64 %7, -1
  store i64 %14, ptr %5, align 8
  %15 = add i16 %10, 512
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i16 [ %15, %13 ], [ %10, %2 ]
  %18 = trunc i64 %8 to i16
  %19 = sub i16 %17, %18
  store i16 %19, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @inode_get_bytes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  %4 = load i64, ptr %3, align 8
  %5 = shl i64 %4, 9
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 18
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i64
  %9 = add i64 %5, %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !27
  %10 = load i16, ptr %2, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !30
  ret i64 %9
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @inode_set_bytes(ptr nocapture noundef writeonly %0, i64 noundef %1) #6 {
  %3 = ashr i64 %1, 9
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 21
  store i64 %3, ptr %4, align 8
  %5 = trunc i64 %1 to i16
  %6 = and i16 %5, 511
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 18
  store i16 %6, ptr %7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cp_new_stat(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.stat, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, -267387136
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %103

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -267387136
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %103

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 11
  %15 = load i64, ptr %14, align 8
  %16 = icmp sgt i64 %15, 2147483647
  br i1 %16, label %103, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %3, i32 56
  store i64 0, ptr %18, align 4
  %19 = lshr i32 %5, 12
  %20 = and i32 %19, 65280
  %21 = and i32 %5, 65535
  %22 = or i32 %20, %21
  store i32 %22, ptr %3, align 4
  %23 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 6
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = icmp ult i64 %24, 4294967296
  br i1 %27, label %28, label %103

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  %31 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 2
  store i16 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = trunc i32 %33 to i16
  %35 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 3
  store i16 %34, ptr %35, align 2
  %36 = icmp ult i32 %33, 65536
  br i1 %36, label %37, label %103

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, -1
  %41 = load i32, ptr @overflowuid, align 4
  %42 = select i1 %40, i32 %41, i32 %39
  %43 = icmp ult i32 %42, 65536
  %44 = select i1 %43, i32 %42, i32 %41
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 4
  store i16 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, -1
  %50 = load i32, ptr @overflowgid, align 4
  %51 = select i1 %49, i32 %50, i32 %48
  %52 = icmp ult i32 %51, 65536
  %53 = select i1 %52, i32 %51, i32 %50
  %54 = trunc i32 %53 to i16
  %55 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 5
  store i16 %54, ptr %55, align 2
  %56 = lshr i32 %10, 12
  %57 = and i32 %56, 65280
  %58 = and i32 %10, 65535
  %59 = or i32 %57, %58
  %60 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = trunc i64 %15 to i32
  %62 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 7
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 12
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 10
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 13
  %68 = load i64, ptr %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 12
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 14
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 14
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 12, i32 1
  %76 = load i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 11
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 13, i32 1
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 13
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 14, i32 1
  %82 = load i32, ptr %81, align 8
  %83 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 15
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 16
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 9
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.stat, ptr %3, i32 0, i32 8
  store i32 %89, ptr %90, align 4
  %91 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 64, i32 -1090519040) #10, !srcloc !23
  %92 = extractvalue { i32, i32 } %91, 0
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %37
  %95 = tail call ptr @llvm.thread.pointer() #9
  %96 = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 3
  %97 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %96) #11, !srcloc !24
  %98 = and i32 %97, -13
  %99 = or i32 %98, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %99) #9, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !26
  %100 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 64) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %97) #9, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !26
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 0, i32 -14
  br label %103

103:                                              ; preds = %94, %37, %28, %17, %13, %8, %2
  %104 = phi i32 [ -75, %8 ], [ -75, %2 ], [ -75, %13 ], [ -75, %17 ], [ -75, %28 ], [ -14, %37 ], [ %102, %94 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_readlinkat(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.path, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  store i64 0, ptr %5, align 8, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %58, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.path, ptr %5, i32 0, i32 1
  %10 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef 16384, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load ptr, ptr %9, align 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 7340032
  %16 = icmp eq i32 %15, 6291456
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %6, align 4
  %19 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq i32 %18, 0
  %22 = select i1 %21, i32 -22, i32 -2
  %23 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode_operations, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17, %12
  call void @touch_atime(ptr noundef nonnull %5) #9
  %29 = load ptr, ptr %9, align 4
  %30 = call i32 @vfs_readlink(ptr noundef %29, ptr noundef %2, i32 noundef %3) #9
  br label %31

31:                                               ; preds = %28, %17
  %32 = phi i32 [ %30, %28 ], [ %22, %17 ]
  call void @path_put(ptr noundef nonnull %5) #9
  %33 = icmp eq i32 %32, -116
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = call i32 @user_path_at_empty(i32 noundef %0, ptr noundef %1, i32 noundef 16416, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load ptr, ptr %9, align 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 7340032
  %41 = icmp eq i32 %40, 6291456
  br i1 %41, label %53, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %6, align 4
  %44 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq i32 %43, 0
  %47 = select i1 %46, i32 -22, i32 -2
  %48 = getelementptr inbounds %struct.inode, ptr %45, i32 0, i32 7
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.inode_operations, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %50, align 16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %42, %37
  call void @touch_atime(ptr noundef nonnull %5) #9
  %54 = load ptr, ptr %9, align 4
  %55 = call i32 @vfs_readlink(ptr noundef %54, ptr noundef %2, i32 noundef %3) #9
  br label %56

56:                                               ; preds = %53, %42
  %57 = phi i32 [ %55, %53 ], [ %47, %42 ]
  call void @path_put(ptr noundef nonnull %5) #9
  br label %58

58:                                               ; preds = %56, %34, %31, %8, %4
  %59 = phi i32 [ -22, %4 ], [ %32, %31 ], [ %10, %8 ], [ %35, %34 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_atime(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_readlink(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @cp_new_stat64(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.stat64, align 8
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %3) #9
  %4 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %6 = load i32, ptr %4, align 8
  %7 = and i32 %6, 255
  %8 = lshr i32 %6, 12
  %9 = and i32 %8, 1048320
  %10 = or i32 %9, %7
  %11 = shl i32 %6, 12
  %12 = and i32 %11, -1048576
  %13 = or i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, ptr %3, align 8
  %15 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 255
  %18 = lshr i32 %16, 12
  %19 = and i32 %18, 1048320
  %20 = or i32 %19, %17
  %21 = shl i32 %16, 12
  %22 = and i32 %21, -1048576
  %23 = or i32 %20, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 7
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 6
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 18
  store i64 %27, ptr %28, align 8
  %29 = trunc i64 %27 to i32
  %30 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 3
  store i32 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 9
  %39 = load i32, ptr %38, align 8
  %40 = icmp eq i32 %39, -1
  %41 = load i32, ptr @overflowuid, align 4
  %42 = select i1 %40, i32 %41, i32 %39
  %43 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 5
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 10
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, -1
  %47 = load i32, ptr @overflowgid, align 4
  %48 = select i1 %46, i32 %47, i32 %45
  %49 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 6
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 12
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 12
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 12, i32 1
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 13
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 13
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 14
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 13, i32 1
  %62 = load i32, ptr %61, align 8
  %63 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 15
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 14
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 16
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 14, i32 1
  %69 = load i32, ptr %68, align 8
  %70 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 17
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 11
  %72 = load i64, ptr %71, align 8
  %73 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 9
  store i64 %72, ptr %73, align 8
  %74 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 16
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 11
  store i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds %struct.kstat, ptr %0, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.stat64, ptr %3, i32 0, i32 10
  store i32 %78, ptr %79, align 8
  %80 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 104, i32 -1090519040) #10, !srcloc !23
  %81 = extractvalue { i32, i32 } %80, 0
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %2
  %84 = tail call ptr @llvm.thread.pointer() #9
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 3
  %86 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %85) #11, !srcloc !24
  %87 = and i32 %86, -13
  %88 = or i32 %87, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #9, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !26
  %89 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 104) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %86) #9, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !26
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 0, i32 -14
  br label %92

92:                                               ; preds = %83, %2
  %93 = phi i32 [ -14, %2 ], [ %91, %83 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %3) #9
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #7 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readonly }

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
!8 = !{i64 2151836313}
!9 = !{i64 2151836155}
!10 = !{i64 2151836457}
!11 = !{i64 2149270034}
!12 = !{i64 2151749028}
!13 = !{!14}
!14 = distinct !{!14, !15, !"fdget_raw: argument 0"}
!15 = distinct !{!15, !"fdget_raw"}
!16 = !{!"auto-init"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"fdget_raw: argument 0"}
!19 = distinct !{!19, !"fdget_raw"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"fdget_raw: argument 0"}
!22 = distinct !{!22, !"fdget_raw"}
!23 = !{i64 2151521970, i64 2151521995}
!24 = !{i64 4017504}
!25 = !{i64 4017701}
!26 = !{i64 2151502980}
!27 = !{i64 2149027229}
!28 = !{i64 2149023053}
!29 = !{i64 2149023128, i64 2149023155, i64 2149023202, i64 2149023224, i64 2149023252, i64 2149023272}
!30 = !{i64 2149050232}
