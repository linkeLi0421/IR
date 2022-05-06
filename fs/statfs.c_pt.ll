; ModuleID = '/llk/IR/fs/statfs.c_pt.bc'
source_filename = "../fs/statfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_get_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_get_fsid\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_get_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfs_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22vfs_statfs\22\09\09\09\09\09"
module asm "__kstrtabns_vfs_statfs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.94, %struct.list_head, %struct.list_head, %union.anon.95 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.92 }
%union.anon.92 = type { i64 }
%union.anon.94 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.95 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.file = type { %union.anon.14, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.14 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.statfs64 = type <{ i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }>
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ustat = type { i32, i32, [6 x i8], [6 x i8] }
%struct.statfs = type { i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }

@__kstrtab_vfs_get_fsid = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_get_fsid = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_get_fsid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_get_fsid to i32), ptr @__kstrtab_vfs_get_fsid, ptr @__kstrtabns_vfs_get_fsid }, section "___ksymtab+vfs_get_fsid", align 4
@__kstrtab_vfs_statfs = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfs_statfs = external dso_local constant [0 x i8], align 1
@__ksymtab_vfs_statfs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfs_statfs to i32), ptr @__kstrtab_vfs_statfs, ptr @__kstrtabns_vfs_statfs }, section "___ksymtab+vfs_statfs", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_vfs_get_fsid, ptr @__ksymtab_vfs_statfs], section "llvm.metadata"

@sys_statfs = dso_local alias i32 (ptr, ptr), ptr @__se_sys_statfs
@sys_statfs64 = dso_local alias i32 (ptr, i32, ptr), ptr @__se_sys_statfs64
@sys_fstatfs = dso_local alias i32 (i32, ptr), ptr @__se_sys_fstatfs
@sys_fstatfs64 = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_fstatfs64
@sys_ustat = dso_local alias i32 (i32, ptr), ptr @__se_sys_ustat

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_get_fsid(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.kstatfs, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.super_operations, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false) #5
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.super_operations, ptr %12, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %0, ptr noundef nonnull %3) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.kstatfs, ptr %3, i32 0, i32 7
  %19 = load i64, ptr %18, align 8
  store i64 %19, ptr %1, align 4
  br label %20

20:                                               ; preds = %17, %11, %2
  %21 = phi i32 [ 0, %17 ], [ -38, %2 ], [ %15, %11 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #5
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vfs_statfs(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.path, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_operations, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false) #5
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_operations, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %4, ptr noundef %1) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %21, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.vfsmount, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 6
  %32 = and i32 %31, 1
  %33 = shl i32 %30, 1
  %34 = and i32 %33, 2
  %35 = and i32 %33, 4
  %36 = and i32 %33, 8
  %37 = shl i32 %30, 7
  %38 = and i32 %37, 1024
  %39 = and i32 %37, 2048
  %40 = and i32 %37, 4096
  %41 = shl i32 %30, 6
  %42 = and i32 %41, 8192
  %43 = getelementptr inbounds %struct.vfsmount, ptr %28, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.super_block, ptr %44, i32 0, i32 10
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 81
  %48 = or i32 %34, %32
  %49 = or i32 %48, %35
  %50 = or i32 %49, %36
  %51 = or i32 %50, %38
  %52 = or i32 %51, %39
  %53 = or i32 %52, %40
  %54 = or i32 %53, %42
  %55 = or i32 %54, %47
  %56 = or i32 %55, 32
  %57 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 10
  store i32 %56, ptr %57, align 8
  br label %58

58:                                               ; preds = %27, %12, %2
  %59 = phi i32 [ 0, %27 ], [ -38, %2 ], [ %18, %12 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @user_statfs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #5
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.path, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 9
  %6 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 10
  %8 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 5, ptr noundef nonnull %3, ptr noundef null) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %122

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dentry, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.super_operations, ptr %15, i32 0, i32 13
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %62, label %19

19:                                               ; preds = %10
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false) #5
  %20 = load ptr, ptr %12, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.super_operations, ptr %22, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %11, ptr noundef %1) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %19
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, ptr %6, align 4
  store i32 %31, ptr %5, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.vfsmount, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 6
  %37 = and i32 %36, 1
  %38 = shl i32 %35, 1
  %39 = and i32 %38, 2
  %40 = and i32 %38, 4
  %41 = and i32 %38, 8
  %42 = shl i32 %35, 7
  %43 = and i32 %42, 1024
  %44 = and i32 %42, 2048
  %45 = and i32 %42, 4096
  %46 = shl i32 %35, 6
  %47 = and i32 %46, 8192
  %48 = getelementptr inbounds %struct.vfsmount, ptr %33, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 81
  %53 = or i32 %37, %39
  %54 = or i32 %53, %40
  %55 = or i32 %54, %41
  %56 = or i32 %55, %43
  %57 = or i32 %56, %44
  %58 = or i32 %57, %45
  %59 = or i32 %58, %47
  %60 = or i32 %59, %52
  %61 = or i32 %60, 32
  store i32 %61, ptr %7, align 8
  br label %62

62:                                               ; preds = %32, %19, %10
  %63 = phi i32 [ 0, %32 ], [ -38, %10 ], [ %25, %19 ]
  call void @path_put(ptr noundef nonnull %3) #5
  %64 = icmp eq i32 %63, -116
  br i1 %64, label %65, label %122

65:                                               ; preds = %62
  %66 = call i32 @user_path_at_empty(i32 noundef -100, ptr noundef %0, i32 noundef 37, ptr noundef nonnull %3, ptr noundef null) #5
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %122

68:                                               ; preds = %65
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.dentry, ptr %69, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.super_block, ptr %71, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.super_operations, ptr %73, i32 0, i32 13
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %120, label %77

77:                                               ; preds = %68
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false) #5
  %78 = load ptr, ptr %70, align 4
  %79 = getelementptr inbounds %struct.super_block, ptr %78, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.super_operations, ptr %80, i32 0, i32 13
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %69, ptr noundef %1) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %77
  %86 = load i32, ptr %5, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, ptr %6, align 4
  store i32 %89, ptr %5, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = load ptr, ptr %3, align 8
  %92 = getelementptr inbounds %struct.vfsmount, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 6
  %95 = and i32 %94, 1
  %96 = shl i32 %93, 1
  %97 = and i32 %96, 2
  %98 = and i32 %96, 4
  %99 = and i32 %96, 8
  %100 = shl i32 %93, 7
  %101 = and i32 %100, 1024
  %102 = and i32 %100, 2048
  %103 = and i32 %100, 4096
  %104 = shl i32 %93, 6
  %105 = and i32 %104, 8192
  %106 = getelementptr inbounds %struct.vfsmount, ptr %91, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.super_block, ptr %107, i32 0, i32 10
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 81
  %111 = or i32 %95, %97
  %112 = or i32 %111, %98
  %113 = or i32 %112, %99
  %114 = or i32 %113, %101
  %115 = or i32 %114, %102
  %116 = or i32 %115, %103
  %117 = or i32 %116, %105
  %118 = or i32 %117, %110
  %119 = or i32 %118, 32
  store i32 %119, ptr %7, align 8
  br label %120

120:                                              ; preds = %90, %77, %68
  %121 = phi i32 [ 0, %90 ], [ -38, %68 ], [ %83, %77 ]
  call void @path_put(ptr noundef nonnull %3) #5
  br label %122

122:                                              ; preds = %120, %65, %62, %2
  %123 = phi i32 [ %8, %2 ], [ %63, %62 ], [ %66, %65 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #5
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fd_statfs(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @__fdget_raw(i32 noundef %0) #5, !noalias !9
  %4 = and i32 %3, -4
  %5 = inttoptr i32 %4 to ptr
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %69, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dentry, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_operations, ptr %14, i32 0, i32 13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %7
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(88) %1, i8 0, i32 88, i1 false) #5
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_operations, ptr %21, i32 0, i32 13
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %10, ptr noundef %1) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  store i32 %32, ptr %27, align 4
  br label %33

33:                                               ; preds = %30, %26
  %34 = load ptr, ptr %8, align 4
  %35 = getelementptr inbounds %struct.vfsmount, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 6
  %38 = and i32 %37, 1
  %39 = shl i32 %36, 1
  %40 = and i32 %39, 2
  %41 = and i32 %39, 4
  %42 = and i32 %39, 8
  %43 = shl i32 %36, 7
  %44 = and i32 %43, 1024
  %45 = and i32 %43, 2048
  %46 = and i32 %43, 4096
  %47 = shl i32 %36, 6
  %48 = and i32 %47, 8192
  %49 = getelementptr inbounds %struct.vfsmount, ptr %34, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %50, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 81
  %54 = or i32 %38, %40
  %55 = or i32 %54, %41
  %56 = or i32 %55, %42
  %57 = or i32 %56, %44
  %58 = or i32 %57, %45
  %59 = or i32 %58, %46
  %60 = or i32 %59, %48
  %61 = or i32 %60, %53
  %62 = or i32 %61, 32
  %63 = getelementptr inbounds %struct.kstatfs, ptr %1, i32 0, i32 10
  store i32 %62, ptr %63, align 8
  br label %64

64:                                               ; preds = %33, %18, %7
  %65 = phi i32 [ 0, %33 ], [ -38, %7 ], [ %24, %18 ]
  %66 = and i32 %3, 1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @fput(ptr noundef nonnull %5) #5
  br label %69

69:                                               ; preds = %68, %64, %2
  %70 = phi i32 [ -9, %2 ], [ %65, %64 ], [ %65, %68 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_statfs(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstatfs, align 8
  %4 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false) #5, !annotation !8
  %5 = call i32 @user_statfs(ptr noundef %4, ptr noundef nonnull %3) #5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = inttoptr i32 %1 to ptr
  %9 = call fastcc i32 @do_statfs_native(ptr noundef nonnull %3, ptr noundef %8) #5
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %5, %2 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #5
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_statfs64(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.statfs64, align 4
  %5 = alloca %struct.kstatfs, align 8
  %6 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false) #5, !annotation !8
  %7 = icmp eq i32 %1, 84
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  %9 = inttoptr i32 %0 to ptr
  %10 = call i32 @user_statfs(ptr noundef %9, ptr noundef nonnull %5) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #5
  %13 = load i32, ptr %5, align 8
  store i32 %13, ptr %4, align 4
  %14 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 2
  store i64 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 3
  store i64 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 4
  store i64 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 5
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 5
  store i64 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 6
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 6
  store i64 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 7
  %33 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 7
  %34 = load i64, ptr %33, align 8
  store i64 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 8
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 8
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 9
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 9
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 10
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 10
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 11
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %44, i8 0, i32 16, i1 false) #5
  %45 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 84, i32 -1090519040) #6, !srcloc !12
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %12
  %49 = tail call ptr @llvm.thread.pointer() #5
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %51 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %50) #7, !srcloc !13
  %52 = and i32 %51, -13
  %53 = or i32 %52, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #5, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %54 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 84) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %51) #5, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 -14
  br label %57

57:                                               ; preds = %48, %12
  %58 = phi i32 [ -14, %12 ], [ %56, %48 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #5
  br label %59

59:                                               ; preds = %57, %8, %3
  %60 = phi i32 [ -22, %3 ], [ %10, %8 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #5
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstatfs(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.kstatfs, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %3, i8 0, i32 88, i1 false) #5, !annotation !8
  %4 = call i32 @fd_statfs(i32 noundef %0, ptr noundef nonnull %3) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = inttoptr i32 %1 to ptr
  %8 = call fastcc i32 @do_statfs_native(ptr noundef nonnull %3, ptr noundef %7) #5
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %4, %2 ], [ %8, %6 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #5
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_fstatfs64(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.statfs64, align 4
  %5 = alloca %struct.kstatfs, align 8
  %6 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i32 88, i1 false) #5, !annotation !8
  %7 = icmp eq i32 %1, 84
  br i1 %7, label %8, label %58

8:                                                ; preds = %3
  %9 = call i32 @fd_statfs(i32 noundef %0, ptr noundef nonnull %5) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #5
  %12 = load i32, ptr %5, align 8
  store i32 %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 2
  store i64 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 3
  store i64 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 4
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 4
  store i64 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 5
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 5
  store i64 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 6
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 6
  store i64 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 7
  %32 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 7
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 8
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 8
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.kstatfs, ptr %5, i32 0, i32 10
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 10
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.statfs64, ptr %4, i32 0, i32 11
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %43, i8 0, i32 16, i1 false) #5
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 84, i32 -1090519040) #6, !srcloc !12
  %45 = extractvalue { i32, i32 } %44, 0
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %11
  %48 = tail call ptr @llvm.thread.pointer() #5
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %49) #7, !srcloc !13
  %51 = and i32 %50, -13
  %52 = or i32 %51, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #5, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %53 = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 84) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #5, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 0, i32 -14
  br label %56

56:                                               ; preds = %47, %11
  %57 = phi i32 [ -14, %11 ], [ %55, %47 ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #5
  br label %58

58:                                               ; preds = %56, %8, %3
  %59 = phi i32 [ -22, %3 ], [ %9, %8 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #5
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_ustat(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ustat, align 4
  %4 = alloca %struct.kstatfs, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false) #5, !annotation !8
  %6 = and i32 %0, 255
  %7 = lshr i32 %0, 12
  %8 = and i32 %7, 1048320
  %9 = or i32 %8, %6
  %10 = shl i32 %0, 12
  %11 = and i32 %10, -1048576
  %12 = or i32 %9, %11
  %13 = tail call ptr @user_get_super(i32 noundef %12, i1 noundef zeroext false) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.super_block, ptr %13, i32 0, i32 13
  %17 = load ptr, ptr %16, align 64
  %18 = getelementptr inbounds %struct.dentry, ptr %17, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 6
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_operations, ptr %21, i32 0, i32 13
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i32 88, i1 false) #5
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.super_operations, ptr %26, i32 0, i32 13
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %17, ptr noundef nonnull %4) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.kstatfs, ptr %4, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.kstatfs, ptr %4, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %32, align 4
  br label %40

38:                                               ; preds = %25, %15
  %39 = phi i32 [ -38, %15 ], [ %29, %25 ]
  call void @drop_super(ptr noundef nonnull %13) #5
  br label %61

40:                                               ; preds = %35, %31
  call void @drop_super(ptr noundef nonnull %13) #5
  %41 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %41, i8 0, i32 12, i1 false) #5
  %42 = getelementptr inbounds %struct.kstatfs, ptr %4, i32 0, i32 3
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, ptr %3, align 4
  %45 = getelementptr inbounds %struct.kstatfs, ptr %4, i32 0, i32 6
  %46 = load i64, ptr %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.ustat, ptr %3, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 20, i32 -1090519040) #6, !srcloc !12
  %50 = extractvalue { i32, i32 } %49, 0
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = tail call ptr @llvm.thread.pointer() #5
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %55 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %54) #7, !srcloc !13
  %56 = and i32 %55, -13
  %57 = or i32 %56, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %57) #5, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %58 = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 20) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #5, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 -14
  br label %61

61:                                               ; preds = %52, %40, %38, %2
  %62 = phi i32 [ %39, %38 ], [ -22, %2 ], [ -14, %40 ], [ %60, %52 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #5
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @user_path_at_empty(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget_raw(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_statfs_native(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.statfs, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  %4 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = or i64 %7, %5
  %9 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = or i64 %8, %10
  %12 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = or i64 %11, %14
  %16 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = or i64 %15, %18
  %20 = icmp ult i64 %19, 4294967296
  br i1 %20, label %21, label %67

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 5
  %23 = load i64, ptr %22, align 8
  %24 = add i64 %23, 1
  %25 = icmp ult i64 %24, 4294967297
  br i1 %25, label %26, label %67

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 6
  %28 = load i64, ptr %27, align 8
  %29 = add i64 %28, 1
  %30 = icmp ult i64 %29, 4294967297
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i32, ptr %0, align 8
  store i32 %32, ptr %3, align 4
  %33 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 1
  store i32 %13, ptr %33, align 4
  %34 = trunc i64 %5 to i32
  %35 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = trunc i64 %7 to i32
  %37 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = trunc i64 %10 to i32
  %39 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = trunc i64 %23 to i32
  %41 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = trunc i64 %28 to i32
  %43 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 6
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 7
  %45 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 7
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %44, align 4
  %47 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 8
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 9
  store i32 %17, ptr %50, align 4
  %51 = getelementptr inbounds %struct.kstatfs, ptr %0, i32 0, i32 10
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 10
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.statfs, ptr %3, i32 0, i32 11
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %54, i8 0, i32 16, i1 false)
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 64, i32 -1090519040) #6, !srcloc !12
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %31
  %59 = tail call ptr @llvm.thread.pointer() #5
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #7, !srcloc !13
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #5, !srcloc !14
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %64 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 64) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #5, !srcloc !14
  call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !15
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 0, i32 -14
  br label %67

67:                                               ; preds = %58, %31, %26, %21, %2
  %68 = phi i32 [ -75, %2 ], [ -75, %21 ], [ -75, %26 ], [ -14, %31 ], [ %66, %58 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @user_get_super(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_super(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

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
!8 = !{!"auto-init"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"fdget_raw: argument 0"}
!11 = distinct !{!11, !"fdget_raw"}
!12 = !{i64 2151030047, i64 2151030072}
!13 = !{i64 3525581}
!14 = !{i64 3525778}
!15 = !{i64 2151011057}
