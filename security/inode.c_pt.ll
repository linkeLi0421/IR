; ModuleID = '/llk/IR/security/inode.c_pt.bc'
source_filename = "../security/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_create_dir\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_create_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_create_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_create_symlink\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_create_symlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_securityfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22securityfs_remove\22\09\09\09\09\09"
module asm "__kstrtabns_securityfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { i64 }
%union.anon.62 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.63 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, ptr, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.56 = type { i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.58 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.59 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }

@__kstrtab_securityfs_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_create_file to i32), ptr @__kstrtab_securityfs_create_file, ptr @__kstrtabns_securityfs_create_file }, section "___ksymtab_gpl+securityfs_create_file", align 4
@__kstrtab_securityfs_create_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_create_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_create_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_create_dir to i32), ptr @__kstrtab_securityfs_create_dir, ptr @__kstrtabns_securityfs_create_dir }, section "___ksymtab_gpl+securityfs_create_dir", align 4
@__kstrtab_securityfs_create_symlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_create_symlink = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_create_symlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_create_symlink to i32), ptr @__kstrtab_securityfs_create_symlink, ptr @__kstrtabns_securityfs_create_symlink }, section "___ksymtab_gpl+securityfs_create_symlink", align 4
@mount = internal global ptr null, align 4
@mount_count = internal global i32 0, align 4
@__kstrtab_securityfs_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_securityfs_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_securityfs_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @securityfs_remove to i32), ptr @__kstrtab_securityfs_remove, ptr @__kstrtabns_securityfs_remove }, section "___ksymtab_gpl+securityfs_remove", align 4
@__initcall__kmod_inode__230_350_securityfs_init1 = internal global ptr @securityfs_init, section ".initcall1.init", align 4
@fs_type = internal global %struct.file_system_type { ptr @.str, i32 0, ptr @securityfs_init_fs_context, ptr null, ptr null, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@simple_symlink_inode_operations = external dso_local constant %struct.inode_operations, align 64
@.str = private unnamed_addr constant [11 x i8] c"securityfs\00", align 1
@securityfs_context_ops = internal constant %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @securityfs_get_tree, ptr null }, align 4
@securityfs_fill_super.files = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.1, ptr null, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@securityfs_super_operations = internal constant %struct.super_operations { ptr null, ptr null, ptr @securityfs_free_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"security\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__initcall__kmod_inode__230_350_securityfs_init1, ptr @__ksymtab_securityfs_create_dir, ptr @__ksymtab_securityfs_create_file, ptr @__ksymtab_securityfs_create_symlink, ptr @__ksymtab_securityfs_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @securityfs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call fastcc ptr @securityfs_create_dentry(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @securityfs_create_dentry(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.timespec64, align 8
  %8 = icmp ult i16 %1, 4096
  %9 = and i16 %1, 4095
  %10 = or i16 %9, -32768
  %11 = select i1 %8, i16 %10, i16 %1
  %12 = tail call i32 @simple_pin_fs(ptr noundef nonnull @fs_type, ptr noundef nonnull @mount, ptr noundef nonnull @mount_count) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = inttoptr i32 %12 to ptr
  br label %65

16:                                               ; preds = %6
  %17 = icmp eq ptr %2, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load ptr, ptr @mount, align 4
  %20 = load ptr, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %2, %16 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.dentry, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 24
  tail call void @down_write(ptr noundef %25) #7
  %26 = tail call i32 @strlen(ptr noundef %0)
  %27 = tail call ptr @lookup_one_len(ptr noundef %0, ptr noundef %22, i32 noundef %26) #7
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %63, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.inode, ptr %24, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @new_inode(ptr noundef %35) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %61, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @get_next_ino() #7
  %40 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 10
  store i32 %39, ptr %40, align 4
  store i16 %11, ptr %36, align 8
  %41 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 14
  %42 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 15
  %43 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef nonnull %36) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %42, ptr noundef align 8 dereferenceable(16) %43, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %41, ptr noundef align 8 dereferenceable(16) %43, i32 16, i1 false)
  %44 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 47
  store ptr %3, ptr %44, align 4
  %45 = and i16 %11, -4096
  switch i16 %45, label %54 [
    i16 16384, label %46
    i16 -24576, label %49
  ]

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 7
  store ptr @simple_dir_inode_operations, ptr %47, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %48, align 8
  call void @inc_nlink(ptr noundef nonnull %36) #7
  call void @inc_nlink(ptr noundef %24) #7
  br label %56

49:                                               ; preds = %38
  %50 = icmp eq ptr %5, null
  %51 = select i1 %50, ptr @simple_symlink_inode_operations, ptr %5
  %52 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 7
  store ptr %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 43
  store ptr %3, ptr %53, align 4
  br label %56

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 39
  store ptr %4, ptr %55, align 8
  br label %56

56:                                               ; preds = %54, %49, %46
  call void @d_instantiate(ptr noundef %27, ptr noundef nonnull %36) #7
  %57 = icmp eq ptr %27, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 7
  call void @lockref_get(ptr noundef %59) #7
  br label %60

60:                                               ; preds = %58, %56
  call void @up_write(ptr noundef %25) #7
  br label %65

61:                                               ; preds = %33, %29
  %62 = phi ptr [ inttoptr (i32 -17 to ptr), %29 ], [ inttoptr (i32 -12 to ptr), %33 ]
  tail call void @dput(ptr noundef %27) #7
  br label %63

63:                                               ; preds = %61, %21
  %64 = phi ptr [ %27, %21 ], [ %62, %61 ]
  tail call void @up_write(ptr noundef %25) #7
  tail call void @simple_release_fs(ptr noundef nonnull @mount, ptr noundef nonnull @mount_count) #7
  br label %65

65:                                               ; preds = %63, %60, %14
  %66 = phi ptr [ %15, %14 ], [ %64, %63 ], [ %27, %60 ]
  ret ptr %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @securityfs_create_dir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @securityfs_create_dentry(ptr noundef %0, i16 noundef zeroext 16877, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #7
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @securityfs_create_symlink(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call noalias ptr @kstrdup(ptr noundef nonnull %2, i32 noundef 3264) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %6, %4
  %10 = phi ptr [ %7, %6 ], [ null, %4 ]
  %11 = tail call fastcc ptr @securityfs_create_dentry(ptr noundef %0, i16 noundef zeroext -24284, ptr noundef %1, ptr noundef %10, ptr noundef null, ptr noundef %3)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @kfree(ptr noundef %10) #7
  br label %14

14:                                               ; preds = %13, %9, %6
  %15 = phi ptr [ %11, %13 ], [ %11, %9 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @securityfs_remove(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  tail call void @down_write(ptr noundef %10) #7
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %0, align 8
  %20 = and i32 %19, 6291456
  %21 = icmp eq i32 %20, 2097152
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call i32 @simple_rmdir(ptr noundef %9, ptr noundef nonnull %0) #7
  br label %26

24:                                               ; preds = %18
  %25 = tail call i32 @simple_unlink(ptr noundef %9, ptr noundef nonnull %0) #7
  br label %26

26:                                               ; preds = %24, %22
  tail call void @dput(ptr noundef nonnull %0) #7
  br label %27

27:                                               ; preds = %26, %14, %5
  tail call void @up_write(ptr noundef %10) #7
  tail call void @simple_release_fs(ptr noundef nonnull @mount, ptr noundef nonnull @mount_count) #7
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_rmdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @securityfs_init() #3 section ".init.text" {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call i32 @sysfs_create_mount_point(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = tail call i32 @register_filesystem(ptr noundef nonnull @fs_type) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @kernel_kobj, align 4
  tail call void @sysfs_remove_mount_point(ptr noundef %8, ptr noundef nonnull @.str.2) #7
  br label %9

9:                                                ; preds = %7, %4, %0
  %10 = phi i32 [ %5, %7 ], [ %2, %0 ], [ 0, %4 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @securityfs_init_fs_context(ptr nocapture noundef writeonly %0) #6 {
  store ptr @securityfs_context_ops, ptr %0, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @securityfs_get_tree(ptr noundef %0) #0 {
  %2 = tail call i32 @get_tree_single(ptr noundef %0, ptr noundef nonnull @securityfs_fill_super) #7
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @securityfs_fill_super(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 @simple_fill_super(ptr noundef %0, i32 noundef 1935894131, ptr noundef nonnull @securityfs_fill_super.files) #7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @securityfs_super_operations, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @securityfs_free_inode(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8
  %3 = and i16 %2, -4096
  %4 = icmp eq i16 %3, -24576
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %1
  tail call void @free_inode_nonrcu(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_inode_nonrcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }

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
