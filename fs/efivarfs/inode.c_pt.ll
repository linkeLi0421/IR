; ModuleID = '/llk/IR/fs/efivarfs/inode.c_pt.bc'
source_filename = "../fs/efivarfs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.56, %struct.list_head, %struct.list_head, %union.anon.57 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.56 = type { %struct.list_head }
%union.anon.57 = type { %struct.hlist_node }
%struct.anon = type { i32, i32 }
%struct.efi_variable = type { [512 x i16], %struct.guid_t, i32, [1024 x i8], i32, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.fileattr = type { i32, i32, i32, i32, i32, i32, i8 }

@efivarfs_file_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efivarfs_fileattr_set, ptr @efivarfs_fileattr_get, [36 x i8] undef }, align 64
@efivarfs_file_operations = external dso_local constant %struct.file_operations, align 4
@efivarfs_dir_inode_operations = dso_local constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr @efivarfs_create, ptr null, ptr @efivarfs_unlink, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@efivarfs_list = external dso_local global %struct.list_head, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @efivarfs_get_inode(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2, i32 %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = tail call ptr @new_inode(ptr noundef %0) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @get_next_ino() #5
  %11 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  store i32 %10, ptr %11, align 4
  %12 = trunc i32 %2 to i16
  store i16 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 14
  %14 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 15
  %15 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %14, ptr noundef align 8 dereferenceable(16) %15, i32 16, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %13, ptr noundef align 8 dereferenceable(16) %15, i32 16, i1 false)
  %16 = select i1 %4, i32 0, i32 8
  %17 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  %18 = and i16 %12, -4096
  switch i16 %18, label %25 [
    i16 -32768, label %19
    i16 16384, label %22
  ]

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 7
  store ptr @efivarfs_file_inode_operations, ptr %20, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39
  store ptr @efivarfs_file_operations, ptr %21, align 8
  br label %25

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 7
  store ptr @efivarfs_dir_inode_operations, ptr %23, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %24, align 8
  call void @inc_nlink(ptr noundef nonnull %7) #5
  br label %25

25:                                               ; preds = %22, %19, %9, %5
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @efivarfs_valid_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 %1
  %4 = getelementptr i8, ptr %3, i32 -36
  %5 = icmp slt i32 %1, 38
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call zeroext i1 @uuid_is_valid(ptr noundef %4) #5
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi i1 [ %11, %10 ], [ false, %2 ], [ false, %6 ]
  ret i1 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uuid_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_create(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i16 noundef zeroext %3, i1 noundef zeroext %4) #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %8 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = getelementptr i8, ptr %12, i32 -36
  %14 = icmp slt i32 %11, 38
  br i1 %14, label %92, label %15

15:                                               ; preds = %5
  %16 = getelementptr i8, ptr %13, i32 -1
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 45
  br i1 %18, label %19, label %92

19:                                               ; preds = %15
  %20 = tail call zeroext i1 @uuid_is_valid(ptr noundef %13) #5
  br i1 %20, label %21, label %92

21:                                               ; preds = %19
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 2124) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %92, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %10, align 4
  %27 = add i32 %26, -37
  %28 = load ptr, ptr %8, align 8
  %29 = getelementptr i8, ptr %28, i32 %27
  %30 = getelementptr i8, ptr %29, i32 1
  %31 = getelementptr inbounds %struct.efi_variable, ptr %23, i32 0, i32 1
  %32 = tail call i32 @guid_parse(ptr noundef %30, ptr noundef %31) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %25
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %31, align 8
  %37 = insertvalue [4 x i32] undef, i32 %36, 0
  %38 = getelementptr inbounds %struct.efi_variable, ptr %23, i32 0, i32 1, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = insertvalue [4 x i32] %37, i32 %39, 1
  %41 = getelementptr inbounds %struct.efi_variable, ptr %23, i32 0, i32 1, i32 0, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = insertvalue [4 x i32] %40, i32 %42, 2
  %44 = getelementptr inbounds %struct.efi_variable, ptr %23, i32 0, i32 1, i32 0, i32 12
  %45 = load i32, ptr %44, align 4
  %46 = insertvalue [4 x i32] %43, i32 %45, 3
  %47 = tail call zeroext i1 @efivar_variable_is_removable([4 x i32] %46, ptr noundef %35, i32 noundef %27) #5
  %48 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = tail call ptr @new_inode(ptr noundef %49) #5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %89, label %52

52:                                               ; preds = %34
  %53 = tail call i32 @get_next_ino() #5
  %54 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 10
  store i32 %53, ptr %54, align 4
  store i16 %3, ptr %50, align 8
  %55 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 14
  %56 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 15
  %57 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef nonnull %50) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %56, ptr noundef align 8 dereferenceable(16) %57, i32 16, i1 false) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %55, ptr noundef align 8 dereferenceable(16) %57, i32 16, i1 false) #5
  %58 = select i1 %47, i32 0, i32 8
  %59 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 4
  store i32 %58, ptr %59, align 4
  %60 = and i16 %3, -4096
  switch i16 %60, label %67 [
    i16 -32768, label %61
    i16 16384, label %64
  ]

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 7
  store ptr @efivarfs_file_inode_operations, ptr %62, align 8
  %63 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 39
  store ptr @efivarfs_file_operations, ptr %63, align 8
  br label %67

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 7
  store ptr @efivarfs_dir_inode_operations, ptr %65, align 8
  %66 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %66, align 8
  call void @inc_nlink(ptr noundef nonnull %50) #5
  br label %67

67:                                               ; preds = %64, %61, %52
  %68 = icmp sgt i32 %27, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %67
  %70 = load ptr, ptr %8, align 8
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i32 [ 0, %69 ], [ %77, %71 ]
  %73 = getelementptr i8, ptr %70, i32 %72
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i16
  %76 = getelementptr [512 x i16], ptr %23, i32 0, i32 %72
  store i16 %75, ptr %76, align 2
  %77 = add nuw nsw i32 %72, 1
  %78 = icmp eq i32 %77, %27
  br i1 %78, label %79, label %71

79:                                               ; preds = %71, %67
  %80 = phi i32 [ 0, %67 ], [ %27, %71 ]
  %81 = getelementptr [512 x i16], ptr %23, i32 0, i32 %80
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.inode, ptr %50, i32 0, i32 47
  store ptr %23, ptr %82, align 4
  %83 = call i32 @efivar_entry_add(ptr noundef nonnull %23, ptr noundef nonnull @efivarfs_list) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  call void @d_instantiate(ptr noundef %2, ptr noundef nonnull %50) #5
  %86 = icmp eq ptr %2, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 7
  call void @lockref_get(ptr noundef %88) #5
  br label %92

89:                                               ; preds = %34, %25
  %90 = phi i32 [ %32, %25 ], [ -12, %34 ]
  tail call void @kfree(ptr noundef nonnull %23) #5
  br label %92

91:                                               ; preds = %79
  call void @kfree(ptr noundef nonnull %23) #5
  call void @iput(ptr noundef nonnull %50) #5
  br label %92

92:                                               ; preds = %91, %89, %87, %85, %21, %19, %15, %5
  %93 = phi i32 [ -22, %19 ], [ -12, %21 ], [ %83, %91 ], [ 0, %85 ], [ 0, %87 ], [ %90, %89 ], [ -22, %5 ], [ -22, %15 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_unlink(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @efivar_entry_delete(ptr noundef %6) #5
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  tail call void @drop_nlink(ptr noundef %10) #5
  tail call void @dput(ptr noundef %1) #5
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ 0, %9 ], [ -22, %2 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @guid_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efivar_variable_is_removable([4 x i32], ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drop_nlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_fileattr_set(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 6
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -33529
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.fileattr, ptr %2, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21, %3
  %26 = load i32, ptr %2, align 4
  %27 = and i32 %26, -17
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = lshr i32 %26, 1
  %31 = and i32 %30, 8
  %32 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  tail call void @inode_set_flags(ptr noundef %33, i32 noundef %31, i32 noundef 8) #5
  br label %34

34:                                               ; preds = %29, %25, %21, %17, %13, %8
  %35 = phi i32 [ 0, %29 ], [ -95, %21 ], [ -95, %25 ], [ -95, %17 ], [ -95, %13 ], [ -95, %8 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_fileattr_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 1
  %8 = and i32 %7, 16
  tail call void @fileattr_fill_flags(ptr noundef %1, i32 noundef %8) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inode_set_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fileattr_fill_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
