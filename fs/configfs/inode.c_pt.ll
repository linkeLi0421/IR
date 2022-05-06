; ModuleID = '/llk/IR/fs/configfs/inode.c_pt.bc'
source_filename = "../fs/configfs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { i64 }
%union.anon.65 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, ptr, ptr }
%union.anon.59 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.60 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.62 = type { ptr }
%struct.anon.64 = type { %struct.spinlock, i32 }

@ram_aops = external dso_local constant %struct.address_space_operations, align 4
@configfs_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @configfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@configfs_dirent_lock = external dso_local global %struct.spinlock, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [32 x i8] c"fs/configfs/configfs_internal.h\00", align 1
@configfs_dir_cachep = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @configfs_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %2, align 8
  %10 = icmp eq ptr %8, null
  br i1 %10, label %83, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 80) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 7
  %21 = load i16, ptr %20, align 4
  %22 = getelementptr inbounds %struct.iattr, ptr %17, i32 0, i32 1
  store i16 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.iattr, ptr %17, i32 0, i32 2
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.iattr, ptr %17, i32 0, i32 3
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.iattr, ptr %17, i32 0, i32 5
  %26 = getelementptr inbounds %struct.iattr, ptr %17, i32 0, i32 6
  %27 = getelementptr inbounds %struct.iattr, ptr %17, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %6) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false)
  store ptr %17, ptr %12, align 4
  br label %28

28:                                               ; preds = %19, %11
  %29 = phi ptr [ %13, %11 ], [ %17, %19 ]
  %30 = call i32 @simple_setattr(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %28
  %33 = and i32 %9, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.iattr, ptr %29, i32 0, i32 2
  %37 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  store i32 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = and i32 %9, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.iattr, ptr %29, i32 0, i32 3
  %44 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = and i32 %9, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.iattr, ptr %29, i32 0, i32 5
  %51 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %50, ptr noundef align 8 dereferenceable(16) %51, i32 16, i1 false)
  br label %52

52:                                               ; preds = %49, %46
  %53 = and i32 %9, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.iattr, ptr %29, i32 0, i32 6
  %57 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %56, ptr noundef align 8 dereferenceable(16) %57, i32 16, i1 false)
  br label %58

58:                                               ; preds = %55, %52
  %59 = and i32 %9, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.iattr, ptr %29, i32 0, i32 7
  %63 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %62, ptr noundef align 8 dereferenceable(16) %63, i32 16, i1 false)
  br label %64

64:                                               ; preds = %61, %58
  %65 = and i32 %9, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.iattr, ptr %2, i32 0, i32 1
  %69 = load i16, ptr %68, align 4
  %70 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 3
  %71 = load i32, ptr %70, align 8
  %72 = insertvalue [1 x i32] undef, i32 %71, 0
  %73 = call i32 @in_group_p([1 x i32] %72) #7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = call zeroext i1 @capable(i32 noundef 4) #7
  %77 = and i16 %69, -1025
  %78 = select i1 %76, i16 %69, i16 %77
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi i16 [ %69, %67 ], [ %78, %75 ]
  %81 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 7
  store i16 %80, ptr %81, align 4
  %82 = getelementptr inbounds %struct.iattr, ptr %29, i32 0, i32 1
  store i16 %80, ptr %82, align 4
  br label %83

83:                                               ; preds = %79, %64, %28, %15, %3
  %84 = phi i32 [ -22, %3 ], [ -12, %15 ], [ %30, %28 ], [ 0, %79 ], [ 0, %64 ]
  ret i32 %84
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @configfs_new_inode(i16 noundef zeroext %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = tail call ptr @new_inode(ptr noundef %2) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @get_next_ino() #7
  %9 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 10
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 9
  store ptr @ram_aops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 7
  store ptr @configfs_inode_operations, ptr %13, align 8
  %14 = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 9
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.iattr, ptr %15, i32 0, i32 1
  %19 = load i16, ptr %18, align 4
  store i16 %19, ptr %5, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 2
  %21 = getelementptr inbounds %struct.iattr, ptr %15, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 3
  %24 = getelementptr inbounds %struct.iattr, ptr %15, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %27 = getelementptr inbounds %struct.iattr, ptr %15, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false) #7
  %28 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15
  %29 = getelementptr inbounds %struct.iattr, ptr %15, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %28, ptr noundef align 8 dereferenceable(16) %29, i32 16, i1 false) #7
  %30 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  %31 = getelementptr inbounds %struct.iattr, ptr %15, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %30, ptr noundef align 8 dereferenceable(16) %31, i32 16, i1 false) #7
  br label %36

32:                                               ; preds = %7
  store i16 %0, ptr %5, align 8
  %33 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14
  %34 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 15
  %35 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef align 8 dereferenceable(16) %35, i32 16, i1 false) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %33, ptr noundef align 8 dereferenceable(16) %35, i32 16, i1 false) #7
  br label %36

36:                                               ; preds = %32, %17, %3
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @configfs_create(ptr noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timespec64, align 8
  %4 = alloca %struct.timespec64, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @new_inode(ptr noundef %14) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %10
  %18 = tail call i32 @get_next_ino() #7
  %19 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 10
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 9
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.address_space, ptr %21, i32 0, i32 9
  store ptr @ram_aops, ptr %22, align 4
  %23 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 7
  store ptr @configfs_inode_operations, ptr %23, align 8
  %24 = getelementptr inbounds %struct.configfs_dirent, ptr %12, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.iattr, ptr %25, i32 0, i32 1
  %29 = load i16, ptr %28, align 4
  store i16 %29, ptr %15, align 8
  %30 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 2
  %31 = getelementptr inbounds %struct.iattr, ptr %25, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 3
  %34 = getelementptr inbounds %struct.iattr, ptr %25, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 14
  %37 = getelementptr inbounds %struct.iattr, ptr %25, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %36, ptr noundef align 8 dereferenceable(16) %37, i32 16, i1 false) #7
  %38 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 15
  %39 = getelementptr inbounds %struct.iattr, ptr %25, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %38, ptr noundef align 8 dereferenceable(16) %39, i32 16, i1 false) #7
  %40 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 16
  %41 = getelementptr inbounds %struct.iattr, ptr %25, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %40, ptr noundef align 8 dereferenceable(16) %41, i32 16, i1 false) #7
  br label %46

42:                                               ; preds = %17
  store i16 %1, ptr %15, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 14
  %44 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 15
  %45 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %3, ptr noundef nonnull %15) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 16, i1 false) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %44, ptr noundef align 8 dereferenceable(16) %45, i32 16, i1 false) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %43, ptr noundef align 8 dereferenceable(16) %45, i32 16, i1 false) #7
  br label %46

46:                                               ; preds = %42, %27
  %47 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef %50) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %51, ptr noundef align 8 dereferenceable(16) %52, i32 16, i1 false)
  br label %53

53:                                               ; preds = %46, %10, %6, %2
  %54 = phi ptr [ %15, %46 ], [ inttoptr (i32 -2 to ptr), %2 ], [ inttoptr (i32 -17 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %10 ]
  ret ptr %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @configfs_get_name(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %3, %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 4, i32 1
  %17 = load ptr, ptr %16, align 8
  br label %23

18:                                               ; preds = %8
  %19 = and i32 %10, 12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 4
  br label %23

23:                                               ; preds = %21, %18, %13
  %24 = phi ptr [ %17, %13 ], [ %22, %21 ], [ null, %18 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_drop_dentry(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.configfs_dirent, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %7) #7
  %8 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.anon.64, ptr %7, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  tail call void @__d_drop(ptr noundef nonnull %4) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %19 = load i16, ptr %7, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %21 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @simple_unlink(ptr noundef %22, ptr noundef nonnull %4) #7
  br label %27

24:                                               ; preds = %11, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %25 = load i16, ptr %7, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %27

27:                                               ; preds = %24, %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_drop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @configfs_hash_and_remove(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 24
  tail call void @down_write(ptr noundef %9) #7
  %10 = getelementptr inbounds %struct.configfs_dirent, ptr %8, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %93, label %13

13:                                               ; preds = %90, %6
  %14 = phi ptr [ %91, %90 ], [ %11, %6 ]
  %15 = getelementptr i8, ptr %14, i32 -8
  %16 = getelementptr i8, ptr %14, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %90, label %19

19:                                               ; preds = %13
  %20 = icmp eq ptr %15, null
  br i1 %20, label %21, label %22, !prof !8

21:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #7, !srcloc !9
  unreachable

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %14, i32 24
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 34
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %14, i32 32
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 4, i32 1
  %31 = load ptr, ptr %30, align 8
  br label %37

32:                                               ; preds = %22
  %33 = and i32 %24, 12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %17, align 4
  br label %37

37:                                               ; preds = %35, %32, %27
  %38 = phi ptr [ %31, %27 ], [ %36, %35 ], [ null, %32 ]
  %39 = tail call i32 @strcmp(ptr noundef %38, ptr noundef %1)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %90

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %14, i32 24
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #7
  %43 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %43, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %47 = load i16, ptr @configfs_dirent_lock, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr @configfs_dirent_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %49 = getelementptr i8, ptr %14, i32 32
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %53) #7
  %54 = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 5
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.dentry, ptr %50, i32 0, i32 2, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.anon.64, ptr %53, i32 0, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  tail call void @__d_drop(ptr noundef nonnull %50) #7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %65 = load i16, ptr %53, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  %67 = load ptr, ptr %3, align 8
  %68 = tail call i32 @simple_unlink(ptr noundef %67, ptr noundef nonnull %50) #7
  br label %72

69:                                               ; preds = %57, %52
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !10
  %70 = load i16, ptr %53, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #7, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #7, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !13
  br label %72

72:                                               ; preds = %69, %61, %41
  %73 = load volatile i32, ptr %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76, !prof !8

75:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #7
  br label %76

76:                                               ; preds = %75, %72
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %15) #7, !srcloc !15
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %15, ptr nonnull %15, i32 1, ptr nonnull elementtype(i32) %15) #7, !srcloc !16
  %78 = extractvalue { i32, i32 } %77, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i32, ptr %42, align 4
  %82 = and i32 %81, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = getelementptr i8, ptr %14, i32 36
  %86 = load ptr, ptr %85, align 4
  tail call void @kfree(ptr noundef %86) #7
  %87 = getelementptr i8, ptr %14, i32 40
  %88 = load ptr, ptr %87, align 4
  tail call void @put_fragment(ptr noundef %88) #7
  %89 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %89, ptr noundef nonnull %15) #7
  br label %93

90:                                               ; preds = %37, %13
  %91 = load ptr, ptr %14, align 4
  %92 = icmp eq ptr %91, %10
  br i1 %92, label %93, label %13

93:                                               ; preds = %90, %84, %80, %76, %6
  %94 = load ptr, ptr %3, align 8
  %95 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 24
  tail call void @up_write(ptr noundef %95) #7
  br label %96

96:                                               ; preds = %93, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fragment(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152912264, i64 2152912748, i64 2152912301, i64 2152912357, i64 2152912391, i64 2152912415, i64 2152912456, i64 2152912477, i64 2152912505, i64 2152912539}
!10 = !{i64 2149050398}
!11 = !{i64 2149046222}
!12 = !{i64 2149046297, i64 2149046324, i64 2149046371, i64 2149046393, i64 2149046421, i64 2149046441}
!13 = !{i64 2149073401}
!14 = !{i64 2148485397}
!15 = !{i64 883332, i64 2148373303, i64 2148373329, i64 2148373376, i64 2148373398, i64 2148373426, i64 2148373446}
!16 = !{i64 2148387759, i64 2148387791, i64 2148387820, i64 2148387854, i64 2148387885, i64 2148387908}
!17 = !{i64 2148485600}
