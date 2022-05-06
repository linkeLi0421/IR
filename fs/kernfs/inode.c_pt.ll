; ModuleID = '/llk/IR/fs/kernfs/inode.c_pt.bc'
source_filename = "../fs/kernfs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.14, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.timespec64 = type { i64, i32 }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.70, %struct.list_head, %struct.list_head, %union.anon.71 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.68 }
%union.anon.68 = type { i64 }
%union.anon.70 = type { %struct.list_head }
%union.anon.71 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr }
%union.anon.62 = type { i32 }
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.67 = type { ptr }
%struct.path = type { ptr, ptr }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kernfs_trusted_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_xattr_set }, align 4
@kernfs_security_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.1, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_xattr_set }, align 4
@kernfs_user_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.2, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_user_xattr_set }, align 4
@kernfs_xattr_handlers = dso_local local_unnamed_addr global [4 x ptr] [ptr @kernfs_trusted_xattr_handler, ptr @kernfs_security_xattr_handler, ptr @kernfs_user_xattr_handler, ptr null], align 4
@__kernfs_iattrs.iattr_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__kernfs_iattrs.iattr_mutex, i64 12), ptr getelementptr (i8, ptr @__kernfs_iattrs.iattr_mutex, i64 12) } }, align 4
@kernfs_iattrs_cache = external dso_local local_unnamed_addr global ptr, align 4
@ram_aops = external dso_local constant %struct.address_space_operations, align 4
@kernfs_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@kernfs_dir_iops = external dso_local constant %struct.inode_operations, align 64
@kernfs_dir_fops = external dso_local constant %struct.file_operations, align 4
@kernfs_file_fops = external dso_local constant %struct.file_operations, align 4
@kernfs_symlink_iops = external dso_local constant %struct.inode_operations, align 64
@.str = private unnamed_addr constant [9 x i8] c"trusted.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"user.\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__kernfs_setattr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  tail call void @mutex_lock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %32

8:                                                ; preds = %2
  %9 = load ptr, ptr @kernfs_iattrs_cache, align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %9, i32 noundef 3520) #4
  store ptr %10, ptr %4, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %71

13:                                               ; preds = %8
  store i32 0, ptr %10, align 8
  %14 = getelementptr inbounds %struct.kernfs_iattrs, ptr %10, i32 0, i32 1
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.kernfs_iattrs, ptr %10, i32 0, i32 2
  tail call void @ktime_get_real_ts64(ptr noundef %15) #4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.kernfs_iattrs, ptr %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.kernfs_iattrs, ptr %16, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false) #4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr inbounds %struct.kernfs_iattrs, ptr %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.kernfs_iattrs, ptr %19, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %20, ptr noundef align 8 dereferenceable(16) %21, i32 16, i1 false) #4
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.kernfs_iattrs, ptr %22, i32 0, i32 5
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.kernfs_iattrs, ptr %22, i32 0, i32 5, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.kernfs_iattrs, ptr %22, i32 0, i32 5, i32 1
  store i32 0, ptr %25, align 4
  %26 = load ptr, ptr %4, align 4
  %27 = getelementptr inbounds %struct.kernfs_iattrs, ptr %26, i32 0, i32 6
  store volatile i32 0, ptr %27, align 4
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.kernfs_iattrs, ptr %28, i32 0, i32 7
  store volatile i32 0, ptr %29, align 4
  %30 = load ptr, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %13, %7
  %33 = phi ptr [ %5, %7 ], [ %30, %13 ]
  %34 = and i32 %3, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  store i32 %38, ptr %33, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = and i32 %3, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.kernfs_iattrs, ptr %33, i32 0, i32 1
  %44 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = and i32 %3, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.kernfs_iattrs, ptr %33, i32 0, i32 2
  %51 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %50, ptr noundef align 8 dereferenceable(16) %51, i32 16, i1 false)
  br label %52

52:                                               ; preds = %49, %46
  %53 = and i32 %3, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.kernfs_iattrs, ptr %33, i32 0, i32 3
  %57 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %56, ptr noundef align 8 dereferenceable(16) %57, i32 16, i1 false)
  br label %58

58:                                               ; preds = %55, %52
  %59 = and i32 %3, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.kernfs_iattrs, ptr %33, i32 0, i32 4
  %63 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %62, ptr noundef align 8 dereferenceable(16) %63, i32 16, i1 false)
  br label %64

64:                                               ; preds = %61, %58
  %65 = and i32 %3, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.iattr, ptr %1, i32 0, i32 1
  %69 = load i16, ptr %68, align 4
  %70 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 11
  store i16 %69, ptr %70, align 2
  br label %71

71:                                               ; preds = %67, %64, %13, %12
  %72 = phi i32 [ -12, %13 ], [ 0, %67 ], [ 0, %64 ], [ -12, %12 ]
  ret i32 %72
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_setattr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %0, ptr %4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 7, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernfs_root, ptr %8, i32 0, i32 8
  tail call void @down_write(ptr noundef %9) #4
  %10 = tail call i32 @__kernfs_setattr(ptr noundef %0, ptr noundef %1)
  tail call void @up_write(ptr noundef %9) #4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_setattr(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr %7, ptr %11
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 7, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.kernfs_root, ptr %15, i32 0, i32 8
  tail call void @down_write(ptr noundef %16) #4
  %17 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %2) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %9
  %20 = tail call i32 @__kernfs_setattr(ptr noundef nonnull %7, ptr noundef %2)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %5, ptr noundef %2) #4
  br label %23

23:                                               ; preds = %22, %19, %9
  %24 = phi i32 [ %17, %9 ], [ %20, %19 ], [ 0, %22 ]
  tail call void @up_write(ptr noundef %16) #4
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ -22, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_listxattr(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ null, %3 ]
  tail call void @mutex_lock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %40

16:                                               ; preds = %10
  %17 = load ptr, ptr @kernfs_iattrs_cache, align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %17, i32 noundef 3520) #4
  store ptr %18, ptr %12, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %45

21:                                               ; preds = %16
  store i32 0, ptr %18, align 8
  %22 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 1
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 2
  tail call void @ktime_get_real_ts64(ptr noundef %23) #4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.kernfs_iattrs, ptr %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kernfs_iattrs, ptr %24, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef align 8 dereferenceable(16) %26, i32 16, i1 false) #4
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr inbounds %struct.kernfs_iattrs, ptr %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.kernfs_iattrs, ptr %27, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %29, i32 16, i1 false) #4
  %30 = load ptr, ptr %12, align 4
  %31 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 5
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 5, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 5, i32 1
  store i32 0, ptr %33, align 4
  %34 = load ptr, ptr %12, align 4
  %35 = getelementptr inbounds %struct.kernfs_iattrs, ptr %34, i32 0, i32 6
  store volatile i32 0, ptr %35, align 4
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.kernfs_iattrs, ptr %36, i32 0, i32 7
  store volatile i32 0, ptr %37, align 4
  %38 = load ptr, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %21, %15
  %41 = phi ptr [ %13, %15 ], [ %38, %21 ]
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.kernfs_iattrs, ptr %41, i32 0, i32 5
  %44 = tail call i32 @simple_xattr_list(ptr noundef %42, ptr noundef %43, ptr noundef %1, i32 noundef %2) #4
  br label %45

45:                                               ; preds = %40, %21, %20
  %46 = phi i32 [ %44, %40 ], [ -12, %21 ], [ -12, %20 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_getattr(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 %3, i32 %4) #0 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %11, ptr %13
  %16 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.kernfs_root, ptr %17, i32 0, i32 8
  tail call void @down_read(ptr noundef %18) #4
  %19 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %19) #4
  %20 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 11
  %23 = load i16, ptr %22, align 2
  store i16 %23, ptr %9, align 8
  %24 = icmp eq ptr %21, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 2
  %27 = load i32, ptr %21, align 8
  store i32 %27, ptr %26, align 4
  %28 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 3
  %29 = getelementptr inbounds %struct.kernfs_iattrs, ptr %21, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr %28, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 14
  %32 = getelementptr inbounds %struct.kernfs_iattrs, ptr %21, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %31, ptr noundef align 8 dereferenceable(16) %32, i32 16, i1 false) #4
  %33 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 15
  %34 = getelementptr inbounds %struct.kernfs_iattrs, ptr %21, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %33, ptr noundef align 8 dereferenceable(16) %34, i32 16, i1 false) #4
  %35 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 16
  %36 = getelementptr inbounds %struct.kernfs_iattrs, ptr %21, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef align 8 dereferenceable(16) %36, i32 16, i1 false) #4
  br label %37

37:                                               ; preds = %25, %5
  %38 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 10
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 15
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 7
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 2
  tail call void @set_nlink(ptr noundef %9, i32 noundef %45) #4
  br label %46

46:                                               ; preds = %42, %37
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %47 = load i16, ptr %19, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  tail call void @up_read(ptr noundef %18) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_get_inode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 9
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = tail call ptr @iget_locked(ptr noundef %0, i32 noundef %6) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %70, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %70, label %14

14:                                               ; preds = %9
  tail call void @kernfs_get(ptr noundef %1) #4
  %15 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.address_space, ptr %17, i32 0, i32 9
  store ptr @ram_aops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 7
  store ptr @kernfs_iops, ptr %19, align 8
  %20 = load i64, ptr %4, align 8
  %21 = lshr i64 %20, 32
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 44
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %25 = load i16, ptr %24, align 2
  store i16 %25, ptr %7, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %27 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %28 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %7) #4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef align 8 dereferenceable(16) %28, i32 16, i1 false) #4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 8 dereferenceable(16) %28, i32 16, i1 false) #4
  %29 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 12
  %30 = load ptr, ptr %29, align 4
  %31 = load i16, ptr %24, align 2
  store i16 %31, ptr %7, align 8
  %32 = icmp eq ptr %30, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %14
  %34 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  %35 = load i32, ptr %30, align 8
  store i32 %35, ptr %34, align 4
  %36 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 3
  %37 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %36, align 8
  %39 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 8 dereferenceable(16) %39, i32 16, i1 false) #4
  %40 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef align 8 dereferenceable(16) %40, i32 16, i1 false) #4
  %41 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %41, i32 16, i1 false) #4
  br label %42

42:                                               ; preds = %33, %14
  %43 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 10
  %44 = load i16, ptr %43, align 8
  %45 = and i16 %44, 15
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 7
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, 2
  call void @set_nlink(ptr noundef nonnull %7, i32 noundef %50) #4
  %51 = load i16, ptr %43, align 8
  %52 = and i16 %51, 15
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi i16 [ %45, %42 ], [ %52, %47 ]
  %55 = zext i16 %54 to i32
  switch i32 %55, label %68 [
    i32 1, label %56
    i32 2, label %62
    i32 4, label %67
  ]

56:                                               ; preds = %53
  store ptr @kernfs_dir_iops, ptr %19, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39
  store ptr @kernfs_dir_fops, ptr %57, align 8
  %58 = load i16, ptr %43, align 8
  %59 = and i16 %58, 4096
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  call void @make_empty_dir_inode(ptr noundef nonnull %7) #4
  br label %69

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 7, i32 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 13
  store i64 %64, ptr %65, align 8
  %66 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39
  store ptr @kernfs_file_fops, ptr %66, align 8
  br label %69

67:                                               ; preds = %53
  store ptr @kernfs_symlink_iops, ptr %19, align 8
  br label %69

68:                                               ; preds = %53
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/kernfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #4, !srcloc !12
  unreachable

69:                                               ; preds = %67, %62, %61, %56
  call void @unlock_new_inode(ptr noundef nonnull %7) #4
  br label %70

70:                                               ; preds = %69, %9, %2
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_evict_inode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %4) #4
  tail call void @clear_inode(ptr noundef %0) #4
  tail call void @kernfs_put(ptr noundef %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_permission(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr %8, ptr %10
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.kernfs_root, ptr %14, i32 0, i32 8
  tail call void @down_read(ptr noundef %15) #4
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %16) #4
  %17 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 11
  %20 = load i16, ptr %19, align 2
  store i16 %20, ptr %1, align 8
  %21 = icmp eq ptr %18, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %18, align 8
  store i32 %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %26 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 14
  %29 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %29, i32 16, i1 false) #4
  %30 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 15
  %31 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef align 8 dereferenceable(16) %31, i32 16, i1 false) #4
  %32 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  %33 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %32, ptr noundef align 8 dereferenceable(16) %33, i32 16, i1 false) #4
  br label %34

34:                                               ; preds = %22, %6
  %35 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 10
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 15
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 7
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, 2
  tail call void @set_nlink(ptr noundef %1, i32 noundef %42) #4
  br label %43

43:                                               ; preds = %39, %34
  %44 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %1, i32 noundef %2) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %45 = load i16, ptr %16, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  tail call void @up_read(ptr noundef %15) #4
  br label %47

47:                                               ; preds = %43, %3
  %48 = phi i32 [ %44, %43 ], [ -10, %3 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_xattr_get(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kernfs_iattrs, ptr %6, i32 0, i32 5
  %10 = tail call i32 @simple_xattr_get(ptr noundef %9, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %10, %8 ], [ -61, %4 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_xattr_set(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %34

10:                                               ; preds = %5
  %11 = load ptr, ptr @kernfs_iattrs_cache, align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef 3520) #4
  store ptr %12, ptr %6, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %38

15:                                               ; preds = %10
  store i32 0, ptr %12, align 8
  %16 = getelementptr inbounds %struct.kernfs_iattrs, ptr %12, i32 0, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.kernfs_iattrs, ptr %12, i32 0, i32 2
  tail call void @ktime_get_real_ts64(ptr noundef %17) #4
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 8 dereferenceable(16) %20, i32 16, i1 false) #4
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.kernfs_iattrs, ptr %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.kernfs_iattrs, ptr %21, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %22, ptr noundef align 8 dereferenceable(16) %23, i32 16, i1 false) #4
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.kernfs_iattrs, ptr %24, i32 0, i32 5
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.kernfs_iattrs, ptr %24, i32 0, i32 5, i32 0, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.kernfs_iattrs, ptr %24, i32 0, i32 5, i32 1
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.kernfs_iattrs, ptr %28, i32 0, i32 6
  store volatile i32 0, ptr %29, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.kernfs_iattrs, ptr %30, i32 0, i32 7
  store volatile i32 0, ptr %31, align 4
  %32 = load ptr, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %15, %9
  %35 = phi ptr [ %7, %9 ], [ %32, %15 ]
  %36 = getelementptr inbounds %struct.kernfs_iattrs, ptr %35, i32 0, i32 5
  %37 = tail call i32 @simple_xattr_set(ptr noundef %36, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null) #4
  br label %38

38:                                               ; preds = %34, %15, %14
  %39 = phi i32 [ %37, %34 ], [ -12, %15 ], [ -12, %14 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_vfs_xattr_get(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @xattr_full_name(ptr noundef %0, ptr noundef %3) #4
  %8 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  tail call void @mutex_lock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 5
  %15 = tail call i32 @simple_xattr_get(ptr noundef %14, ptr noundef %7, ptr noundef %4, i32 noundef %5) #4
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %15, %13 ], [ -61, %6 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_vfs_xattr_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = tail call ptr @xattr_full_name(ptr noundef %0, ptr noundef %4) #4
  %10 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 47
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @kernfs_xattr_set(ptr noundef %11, ptr noundef %9, ptr noundef %5, i32 noundef %6, i32 noundef %7)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_vfs_user_xattr_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = tail call ptr @xattr_full_name(ptr noundef %0, ptr noundef %4) #4
  %12 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr %13, ptr %15
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 7, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.kernfs_root, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %97, label %24

24:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %25 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 12
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %53

29:                                               ; preds = %24
  %30 = load ptr, ptr @kernfs_iattrs_cache, align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef 3520) #4
  store ptr %31, ptr %25, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  br label %97

34:                                               ; preds = %29
  store i32 0, ptr %31, align 8
  %35 = getelementptr inbounds %struct.kernfs_iattrs, ptr %31, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.kernfs_iattrs, ptr %31, i32 0, i32 2
  tail call void @ktime_get_real_ts64(ptr noundef %36) #4
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr inbounds %struct.kernfs_iattrs, ptr %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.kernfs_iattrs, ptr %37, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %38, ptr noundef align 8 dereferenceable(16) %39, i32 16, i1 false) #4
  %40 = load ptr, ptr %25, align 4
  %41 = getelementptr inbounds %struct.kernfs_iattrs, ptr %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.kernfs_iattrs, ptr %40, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %41, ptr noundef align 8 dereferenceable(16) %42, i32 16, i1 false) #4
  %43 = load ptr, ptr %25, align 4
  %44 = getelementptr inbounds %struct.kernfs_iattrs, ptr %43, i32 0, i32 5
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.kernfs_iattrs, ptr %43, i32 0, i32 5, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.kernfs_iattrs, ptr %43, i32 0, i32 5, i32 1
  store i32 0, ptr %46, align 4
  %47 = load ptr, ptr %25, align 4
  %48 = getelementptr inbounds %struct.kernfs_iattrs, ptr %47, i32 0, i32 6
  store volatile i32 0, ptr %48, align 4
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr inbounds %struct.kernfs_iattrs, ptr %49, i32 0, i32 7
  store volatile i32 0, ptr %50, align 4
  %51 = load ptr, ptr %25, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %97, label %53

53:                                               ; preds = %34, %28
  %54 = phi ptr [ %26, %28 ], [ %51, %34 ]
  %55 = icmp eq ptr %5, null
  %56 = getelementptr inbounds %struct.kernfs_iattrs, ptr %54, i32 0, i32 5
  %57 = load ptr, ptr %25, align 4
  br i1 %55, label %87, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.kernfs_iattrs, ptr %57, i32 0, i32 7
  %60 = getelementptr inbounds %struct.kernfs_iattrs, ptr %57, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #4
  store i32 0, ptr %10, align 4, !annotation !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #4, !srcloc !15
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #4, !srcloc !16
  %62 = extractvalue { i32, i32 } %61, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  %63 = icmp sgt i32 %62, 128
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #4, !srcloc !15
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 %6, ptr elementtype(i32) %59) #4, !srcloc !16
  %66 = extractvalue { i32, i32 } %65, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  %67 = icmp sgt i32 %66, 131072
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = call i32 @simple_xattr_set(ptr noundef %56, ptr noundef %11, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %10) #4
  %70 = icmp eq i32 %69, 0
  %71 = load i32, ptr %10, align 4
  %72 = icmp sgt i32 %71, -1
  %73 = select i1 %70, i1 %72, i1 false
  %74 = xor i1 %70, true
  %75 = or i1 %73, %74
  %76 = select i1 %73, i32 %71, i32 %6
  %77 = select i1 %73, i32 0, i32 %69
  br i1 %75, label %78, label %85

78:                                               ; preds = %68, %64
  %79 = phi i32 [ %6, %64 ], [ %76, %68 ]
  %80 = phi i32 [ -28, %64 ], [ %77, %68 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %59) #4, !srcloc !15
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %59, ptr %59, i32 %79, ptr elementtype(i32) %59) #4, !srcloc !18
  br label %82

82:                                               ; preds = %78, %58
  %83 = phi i32 [ %80, %78 ], [ -28, %58 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #4, !srcloc !15
  %84 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #4, !srcloc !18
  br label %85

85:                                               ; preds = %82, %68
  %86 = phi i32 [ %83, %82 ], [ 0, %68 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #4
  br label %97

87:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  store i32 0, ptr %9, align 4, !annotation !13
  %88 = call i32 @simple_xattr_set(ptr noundef %56, ptr noundef %11, ptr noundef null, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %9) #4
  %89 = load i32, ptr %9, align 4
  %90 = icmp sgt i32 %89, -1
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.kernfs_iattrs, ptr %57, i32 0, i32 6
  %93 = getelementptr inbounds %struct.kernfs_iattrs, ptr %57, i32 0, i32 7
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #4, !srcloc !15
  %94 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 %89, ptr elementtype(i32) %93) #4, !srcloc !18
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %92) #4, !srcloc !15
  %95 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %92, ptr %92, i32 1, ptr elementtype(i32) %92) #4, !srcloc !18
  br label %96

96:                                               ; preds = %91, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  br label %97

97:                                               ; preds = %96, %85, %34, %33, %8
  %98 = phi i32 [ %86, %85 ], [ %88, %96 ], [ -95, %8 ], [ -12, %34 ], [ -12, %33 ]
  ret i32 %98
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!8 = !{i64 2149055403}
!9 = !{i64 2149051227}
!10 = !{i64 2149051302, i64 2149051329, i64 2149051376, i64 2149051398, i64 2149051426, i64 2149051446}
!11 = !{i64 2149078406}
!12 = !{i64 2153043383, i64 2153043865, i64 2153043420, i64 2153043476, i64 2153043510, i64 2153043534, i64 2153043575, i64 2153043596, i64 2153043624, i64 2153043658}
!13 = !{!"auto-init"}
!14 = !{i64 2148487569}
!15 = !{i64 888337, i64 2148378308, i64 2148378334, i64 2148378381, i64 2148378403, i64 2148378431, i64 2148378451}
!16 = !{i64 2148390407, i64 2148390439, i64 2148390468, i64 2148390502, i64 2148390533, i64 2148390556}
!17 = !{i64 2148487772}
!18 = !{i64 2148392080, i64 2148392106, i64 2148392135, i64 2148392169, i64 2148392200, i64 2148392223}
