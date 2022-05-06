; ModuleID = '/llk/IR/fs/ubifs/xattr.c_pt.bc'
source_filename = "../fs/ubifs/xattr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubifs_budget_req = type { i24, i16, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.fscrypt_name = type { ptr, %struct.fscrypt_str, i32, i32, %struct.fscrypt_str, i8 }
%struct.fscrypt_str = type { ptr, i32 }
%union.ubifs_key = type { [1 x i64] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.68 = type { ptr }
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
%struct.ubifs_inode = type { %struct.inode, i64, i64, i32, i32, i32, i8, %struct.mutex, %struct.rw_semaphore, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.ubifs_info = type { ptr, ptr, i32, i64, i64, %struct.spinlock, i32, i32, [16 x i8], i32, i32, i32, %struct.mutex, i32, i64, %struct.rb_root, i64, %struct.spinlock, i32, ptr, i64, i64, %struct.list_head, i32, %struct.rw_semaphore, i32, %struct.spinlock, %struct.wait_queue_head, %struct.kobject, %struct.completion, i16, %struct.mutex, %struct.ubifs_zbranch, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.rb_root, ptr, ptr, i32, i32, %struct.mutex, %struct.bu_info, %struct.mutex, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.ubifs_lp_stats, %struct.ubifs_budg_info, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, [14 x %struct.ubifs_node_range], ptr, %struct.ubi_device_info, %struct.ubi_volume_info, %struct.rb_root, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, [24 x i8], i32, i32, i32, ptr, %struct.list_head, i32, i32, i32, %struct.list_head, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [3 x %struct.ubifs_lpt_heap], %struct.ubifs_lpt_heap, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i64, i64, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, ptr, ptr, i32, ptr, i8, %struct.list_head, %struct.list_head, i64, %struct.list_head, ptr, %struct.rb_root, %struct.ubifs_mount_opts, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ubifs_zbranch = type { %union.ubifs_key, %union.anon.72, i32, i32, i32, [0 x i8] }
%union.anon.72 = type { ptr }
%struct.bu_info = type { %union.ubifs_key, [32 x %struct.ubifs_zbranch], ptr, i32, i32, i32, i32, i32 }
%struct.ubifs_lp_stats = type { i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.ubifs_budg_info = type { i64, i64, i64, i64, i64, i32, i8, i32, i32, i32 }
%struct.ubifs_node_range = type { %union.anon.73, i32 }
%union.anon.73 = type { i32 }
%struct.ubi_device_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_volume_info = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ubifs_lpt_heap = type { ptr, i32, i32 }
%struct.ubifs_mount_opts = type { i16, [2 x i8] }
%struct.ubifs_dent_node = type { %struct.ubifs_ch, [16 x i8], i64, i8, i8, i16, i32, [0 x i8] }
%struct.ubifs_ch = type { i32, i32, i64, i32, i8, i8, [2 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.63, %struct.list_head, %struct.list_head, %union.anon.64 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.0 }
%union.anon.0 = type { i64 }
%union.anon.63 = type { %struct.list_head }
%union.anon.64 = type { %struct.hlist_node }

@.str = private unnamed_addr constant [22 x i8] c"inode_is_locked(host)\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"fs/ubifs/xattr.c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"inode->i_size == ui->data_len\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"ubifs_inode(host)->xattr_size > ui->data_len\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"cannot find next direntry, error %d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"written <= size\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"inode %lu has too many xattrs, doing a non-atomic deletion\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"dead directory entry '%s', error %d\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ubifs_inode(xino)->xattr\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"cannot remove xattr, error %d\00", align 1
@ubifs_user_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.23, i32 0, ptr null, ptr @xattr_get, ptr @xattr_set }, align 4
@ubifs_trusted_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.19, i32 0, ptr null, ptr @xattr_get, ptr @xattr_set }, align 4
@ubifs_security_xattr_handler = internal constant %struct.xattr_handler { ptr null, ptr @.str.22, i32 0, ptr null, ptr @xattr_get, ptr @xattr_set }, align 4
@ubifs_xattr_handlers = dso_local local_unnamed_addr global [4 x ptr] [ptr @ubifs_user_xattr_handler, ptr @ubifs_trusted_xattr_handler, ptr @ubifs_security_xattr_handler, ptr null], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"!(hash & ~UBIFS_S_KEY_HASH_MASK)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"fs/ubifs/key.h\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"inode %lu already has too many xattrs (%d), cannot create more\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"cannot add one more xattr name to inode %lu, total names length would become %d, max. is %d\00", align 1
@empty_aops = external dso_local constant %struct.address_space_operations, align 4
@empty_iops = internal constant %struct.inode_operations zeroinitializer, align 64
@empty_fops = internal constant %struct.file_operations zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"dead extended attribute entry, error %d\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"corrupt extended attribute entry\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"ui->data_len == inode->i_size\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"trusted.\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"max_xattrs < c->max_orphans\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"fs/ubifs/misc.h\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"user.\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"inode->i_nlink == 1\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_xattr_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = alloca %struct.ubifs_budget_req, align 4
  %8 = alloca %struct.timespec64, align 8
  %9 = alloca %struct.fscrypt_name, align 4
  %10 = alloca %union.ubifs_key, align 8
  %11 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #8
  %15 = getelementptr inbounds %struct.fscrypt_name, ptr %9, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fscrypt_name, ptr %9, i32 0, i32 1, i32 1
  %17 = tail call i32 @strlen(ptr noundef %1)
  store i32 %17, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  br i1 %5, label %18, label %23

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %18
  tail call void @ubifs_assert_failed(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 274) #8
  br label %23

23:                                               ; preds = %22, %18, %6
  %24 = icmp ugt i32 %3, 4096
  br i1 %24, label %191, label %25

25:                                               ; preds = %23
  %26 = icmp ugt i32 %17, 255
  br i1 %26, label %191, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3136, i32 noundef 312) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %191, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 8
  tail call void @down_write(ptr noundef %32) #8
  %33 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.ubifs_info, ptr %14, i32 0, i32 66
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %1, i32 noundef %17) #8
  %38 = icmp ult i32 %37, 536870912
  br i1 %38, label %40, label %39, !prof !9

39:                                               ; preds = %31
  tail call void @ubifs_assert_failed(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 221) #8
  br label %40

40:                                               ; preds = %39, %31
  store i32 %34, ptr %10, align 8
  %41 = or i32 %37, 1610612736
  %42 = getelementptr inbounds [2 x i32], ptr %10, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = call i32 @ubifs_tnc_lookup_nm(ptr noundef %14, ptr noundef nonnull %10, ptr noundef nonnull %29, ptr noundef nonnull %9) #8
  switch i32 %43, label %189 [
    i32 0, label %166
    i32 -2, label %44
  ]

44:                                               ; preds = %40
  %45 = and i32 %4, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %189

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #8
  %48 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 0, ptr %48, align 4, !annotation !10
  %49 = shl nuw nsw i32 %3, 7
  %50 = add nuw nsw i32 %49, 896
  %51 = and i32 %50, 1047552
  %52 = or i32 %51, 1048656
  store i32 %52, ptr %7, align 4
  %53 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 15
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i16
  %56 = add i16 %55, 7
  %57 = and i16 %56, 32760
  store i16 %57, ptr %48, align 4
  %58 = getelementptr inbounds %struct.ubifs_budget_req, ptr %7, i32 0, i32 2
  store i32 0, ptr %58, align 4
  %59 = getelementptr inbounds %struct.ubifs_budget_req, ptr %7, i32 0, i32 3
  store i32 0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.ubifs_budget_req, ptr %7, i32 0, i32 4
  store i32 0, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.ubifs_info, ptr %14, i32 0, i32 75
  %64 = load i32, ptr %63, align 8
  %65 = sdiv i32 %64, 2
  %66 = udiv i32 %65, 160
  %67 = getelementptr inbounds %struct.ubifs_info, ptr %14, i32 0, i32 113
  %68 = load i32, ptr %67, align 8
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %71, label %70, !prof !9

70:                                               ; preds = %47
  call void @ubifs_assert_failed(ptr noundef %14, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 283) #8
  br label %71

71:                                               ; preds = %70, %47
  %72 = icmp ult i32 %62, %66
  br i1 %72, label %76, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %33, align 4
  %75 = load i32, ptr %61, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %14, ptr noundef nonnull @.str.13, i32 noundef %74, i32 noundef %75) #8
  br label %164

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 5
  %78 = load i32, ptr %77, align 8
  %79 = load i32, ptr %61, align 4
  %80 = load i32, ptr %16, align 4
  %81 = add i32 %78, 1
  %82 = add i32 %81, %79
  %83 = add i32 %82, %80
  %84 = icmp sgt i32 %83, 65536
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, ptr %33, align 4
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %14, ptr noundef nonnull @.str.14, i32 noundef %86, i32 noundef %83, i32 noundef 65536) #8
  br label %164

87:                                               ; preds = %76
  %88 = call i32 @ubifs_budget_space(ptr noundef %14, ptr noundef nonnull %7) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %164

90:                                               ; preds = %87
  %91 = call ptr @ubifs_new_inode(ptr noundef %14, ptr noundef %0, i16 noundef zeroext -32257) #8
  %92 = icmp ugt ptr %91, inttoptr (i32 -4096 to ptr)
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = ptrtoint ptr %91 to i32
  br label %162

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 9
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.address_space, ptr %97, i32 0, i32 9
  store ptr @empty_aops, ptr %98, align 4
  %99 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 7
  store ptr @empty_iops, ptr %99, align 8
  %100 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 39
  store ptr @empty_fops, ptr %100, align 8
  %101 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %102, 131
  store i32 %103, ptr %101, align 4
  %104 = getelementptr inbounds %struct.ubifs_inode, ptr %91, i32 0, i32 6
  %105 = load i8, ptr %104, align 4
  %106 = or i8 %105, 2
  store i8 %106, ptr %104, align 4
  %107 = getelementptr inbounds %struct.ubifs_inode, ptr %91, i32 0, i32 12
  %108 = load i32, ptr %107, align 8
  %109 = or i32 %108, 32
  store i32 %109, ptr %107, align 8
  %110 = call ptr @kmemdup(ptr noundef %2, i32 noundef %3, i32 noundef 3136) #8
  %111 = getelementptr inbounds %struct.ubifs_inode, ptr %91, i32 0, i32 16
  store ptr %110, ptr %111, align 8
  %112 = icmp eq ptr %110, null
  br i1 %112, label %160, label %113

113:                                              ; preds = %95
  %114 = zext i32 %3 to i64
  %115 = getelementptr inbounds %struct.ubifs_inode, ptr %91, i32 0, i32 11
  store i64 %114, ptr %115, align 8
  %116 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 13
  store i64 %114, ptr %116, align 8
  %117 = getelementptr inbounds %struct.ubifs_inode, ptr %91, i32 0, i32 15
  store i32 %3, ptr %117, align 4
  %118 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 7
  call void @mutex_lock(ptr noundef %118) #8
  %119 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %8, ptr noundef %0) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %119, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 16, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8
  %120 = load i32, ptr %61, align 4
  %121 = add i32 %120, 1
  store i32 %121, ptr %61, align 4
  %122 = load i32, ptr %16, align 4
  %123 = add i32 %122, 64
  %124 = and i32 %123, -8
  %125 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 3
  %126 = load i32, ptr %125, align 8
  %127 = add nuw nsw i32 %3, 168
  %128 = and i32 %127, -8
  %129 = add i32 %126, %128
  %130 = add i32 %129, %124
  store i32 %130, ptr %125, align 8
  %131 = load i32, ptr %77, align 8
  %132 = add i32 %131, %122
  store i32 %132, ptr %77, align 8
  %133 = load ptr, ptr %15, align 4
  %134 = call i32 @strcmp(ptr noundef %133, ptr noundef nonnull dereferenceable(2) @.str.15) #8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %113
  %137 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 12
  %138 = load i32, ptr %137, align 8
  %139 = or i32 %138, 64
  store i32 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %136, %113
  %141 = call i32 @ubifs_jnl_update(ptr noundef %14, ptr noundef %0, ptr noundef nonnull %9, ptr noundef %91, i32 noundef 0, i32 noundef 1) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  call void @ubifs_set_inode_flags(ptr noundef %0) #8
  call void @mutex_unlock(ptr noundef %118) #8
  call void @ubifs_release_budget(ptr noundef %14, ptr noundef nonnull %7) #8
  %144 = getelementptr inbounds %struct.inode, ptr %91, i32 0, i32 10
  %145 = load i32, ptr %144, align 4
  call void @__insert_inode_hash(ptr noundef %91, i32 noundef %145) #8
  call void @iput(ptr noundef %91) #8
  br label %164

146:                                              ; preds = %140
  %147 = load i32, ptr %61, align 4
  %148 = add i32 %147, -1
  store i32 %148, ptr %61, align 4
  %149 = load i32, ptr %16, align 4
  %150 = add i32 %149, 64
  %151 = and i32 %150, -8
  %152 = load i32, ptr %125, align 8
  %153 = add i32 %128, %151
  %154 = sub i32 %152, %153
  store i32 %154, ptr %125, align 8
  %155 = load i32, ptr %77, align 8
  %156 = sub i32 %155, %149
  store i32 %156, ptr %77, align 8
  %157 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 12
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, -65
  store i32 %159, ptr %157, align 8
  call void @mutex_unlock(ptr noundef %118) #8
  br label %160

160:                                              ; preds = %146, %95
  %161 = phi i32 [ %141, %146 ], [ -12, %95 ]
  call void @make_bad_inode(ptr noundef %91) #8
  call void @iput(ptr noundef %91) #8
  br label %162

162:                                              ; preds = %160, %93
  %163 = phi i32 [ %94, %93 ], [ %161, %160 ]
  call void @ubifs_release_budget(ptr noundef %14, ptr noundef nonnull %7) #8
  br label %164

164:                                              ; preds = %162, %143, %87, %85, %73
  %165 = phi i32 [ -28, %73 ], [ -28, %85 ], [ %163, %162 ], [ 0, %143 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #8
  br label %189

166:                                              ; preds = %40
  %167 = and i32 %4, 1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.ubifs_dent_node, ptr %29, i32 0, i32 2
  %171 = load i64, ptr %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load ptr, ptr %14, align 8
  %174 = call ptr @ubifs_iget(ptr noundef %173, i32 noundef %172) #8
  %175 = icmp ugt ptr %174, inttoptr (i32 -4096 to ptr)
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = ptrtoint ptr %174 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %14, ptr noundef nonnull @.str.16, i32 noundef %177) #8
  br label %184

178:                                              ; preds = %169
  %179 = getelementptr inbounds %struct.ubifs_inode, ptr %174, i32 0, i32 6
  %180 = load i8, ptr %179, align 4
  %181 = and i8 %180, 2
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %14, ptr noundef nonnull @.str.17) #8
  call void @iput(ptr noundef %174) #8
  br label %184

184:                                              ; preds = %183, %176
  %185 = phi ptr [ inttoptr (i32 -22 to ptr), %183 ], [ %174, %176 ]
  %186 = ptrtoint ptr %185 to i32
  br label %189

187:                                              ; preds = %178
  %188 = call fastcc i32 @change_xattr(ptr noundef %14, ptr noundef %0, ptr noundef %174, ptr noundef %2, i32 noundef %3)
  call void @iput(ptr noundef %174) #8
  br label %189

189:                                              ; preds = %187, %184, %166, %164, %44, %40
  %190 = phi i32 [ %165, %164 ], [ %186, %184 ], [ %188, %187 ], [ %43, %40 ], [ -61, %44 ], [ -17, %166 ]
  call void @up_write(ptr noundef %32) #8
  call void @kfree(ptr noundef nonnull %29) #8
  br label %191

191:                                              ; preds = %189, %27, %25, %23
  %192 = phi i32 [ %190, %189 ], [ -34, %23 ], [ -36, %25 ], [ -12, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #8
  ret i32 %192
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_assert_failed(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_tnc_lookup_nm(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @change_xattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ubifs_budget_req, align 4
  %7 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #8
  %8 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %8, align 4, !annotation !10
  store i32 2097152, ptr %6, align 4
  %9 = getelementptr inbounds %struct.ubifs_budget_req, ptr %6, i32 0, i32 1
  %10 = add i32 %4, 7
  %11 = and i32 %10, 32760
  %12 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 7
  %15 = and i32 %14, 32760
  %16 = add nuw nsw i32 %15, %11
  %17 = trunc i32 %16 to i16
  %18 = and i16 %17, 32760
  store i16 %18, ptr %9, align 4
  %19 = getelementptr inbounds %struct.ubifs_budget_req, ptr %6, i32 0, i32 2
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ubifs_budget_req, ptr %6, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ubifs_budget_req, ptr %6, i32 0, i32 4
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 15
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 13
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, %24
  br i1 %27, label %29, label %28, !prof !9

28:                                               ; preds = %5
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 201) #8
  br label %29

29:                                               ; preds = %28, %5
  %30 = call i32 @ubifs_budget_space(ptr noundef %0, ptr noundef nonnull %6) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = call ptr @kmemdup(ptr noundef %3, i32 noundef %4, i32 noundef 3136) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 16
  %37 = load ptr, ptr %36, align 8
  call void @kfree(ptr noundef %37) #8
  store ptr %33, ptr %36, align 8
  %38 = sext i32 %4 to i64
  %39 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 11
  store i64 %38, ptr %39, align 8
  store i64 %38, ptr %25, align 8
  %40 = load i32, ptr %22, align 4
  store i32 %4, ptr %22, align 4
  %41 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %41) #8
  %42 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %7, ptr noundef %1) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8
  %43 = add i32 %40, 168
  %44 = and i32 %43, -8
  %45 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = add i32 %4, 168
  %48 = and i32 %47, -8
  %49 = sub i32 %48, %44
  %50 = add i32 %49, %46
  store i32 %50, ptr %45, align 8
  %51 = call i32 @ubifs_jnl_change_xattr(ptr noundef %0, ptr noundef %2, ptr noundef %1) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  call void @mutex_unlock(ptr noundef %41) #8
  br label %58

54:                                               ; preds = %35
  %55 = load i32, ptr %45, align 8
  %56 = sub i32 %44, %48
  %57 = add i32 %56, %55
  store i32 %57, ptr %45, align 8
  call void @mutex_unlock(ptr noundef %41) #8
  call void @make_bad_inode(ptr noundef %2) #8
  br label %58

58:                                               ; preds = %54, %53, %32
  %59 = phi i32 [ 0, %53 ], [ %51, %54 ], [ -12, %32 ]
  call void @ubifs_release_budget(ptr noundef %0, ptr noundef nonnull %6) #8
  br label %60

60:                                               ; preds = %58, %29
  %61 = phi i32 [ %30, %29 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #8
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_xattr_get(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.fscrypt_name, align 4
  %6 = alloca %union.ubifs_key, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  %11 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1, i32 1
  %13 = tail call i32 @strlen(ptr noundef %1)
  store i32 %13, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %14 = icmp ugt i32 %13, 255
  br i1 %14, label %83, label %15

15:                                               ; preds = %4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3136, i32 noundef 312) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %83, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 8
  tail call void @down_read(ptr noundef %20) #8
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ubifs_info, ptr %10, i32 0, i32 66
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %1, i32 noundef %13) #8
  %26 = icmp ult i32 %25, 536870912
  br i1 %26, label %28, label %27, !prof !9

27:                                               ; preds = %19
  tail call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 221) #8
  br label %28

28:                                               ; preds = %27, %19
  store i32 %22, ptr %6, align 8
  %29 = or i32 %25, 1610612736
  %30 = getelementptr inbounds [2 x i32], ptr %6, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = call i32 @ubifs_tnc_lookup_nm(ptr noundef %10, ptr noundef nonnull %6, ptr noundef nonnull %17, ptr noundef nonnull %5) #8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = icmp eq i32 %31, -2
  %35 = select i1 %34, i32 -61, i32 %31
  br label %81

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ubifs_dent_node, ptr %17, i32 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load ptr, ptr %10, align 8
  %41 = call ptr @ubifs_iget(ptr noundef %40, i32 noundef %39) #8
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = ptrtoint ptr %41 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %10, ptr noundef nonnull @.str.16, i32 noundef %44) #8
  br label %51

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.ubifs_inode, ptr %41, i32 0, i32 6
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 2
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %10, ptr noundef nonnull @.str.17) #8
  call void @iput(ptr noundef %41) #8
  br label %51

51:                                               ; preds = %50, %43
  %52 = phi ptr [ inttoptr (i32 -22 to ptr), %50 ], [ %41, %43 ]
  %53 = ptrtoint ptr %52 to i32
  br label %81

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 13
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.ubifs_inode, ptr %41, i32 0, i32 15
  %58 = load i32, ptr %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %63, label %61, !prof !9

61:                                               ; preds = %54
  call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 360) #8
  %62 = load i32, ptr %57, align 4
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi i32 [ %58, %54 ], [ %62, %61 ]
  %65 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 3
  %66 = load i32, ptr %65, align 8
  %67 = icmp ugt i32 %66, %64
  br i1 %67, label %69, label %68, !prof !9

68:                                               ; preds = %63
  call void @ubifs_assert_failed(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 361) #8
  br label %69

69:                                               ; preds = %68, %63
  %70 = icmp eq ptr %2, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %57, align 4
  %73 = icmp ugt i32 %72, %3
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.ubifs_inode, ptr %41, i32 0, i32 16
  %76 = load ptr, ptr %75, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %2, ptr align 1 %76, i32 %72, i1 false)
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, ptr %57, align 4
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi i32 [ %78, %77 ], [ -34, %71 ]
  call void @iput(ptr noundef %41) #8
  br label %81

81:                                               ; preds = %79, %51, %33
  %82 = phi i32 [ %35, %33 ], [ %53, %51 ], [ %80, %79 ]
  call void @up_read(ptr noundef %20) #8
  call void @kfree(ptr noundef nonnull %17) #8
  br label %83

83:                                               ; preds = %81, %15, %4
  %84 = phi i32 [ %82, %81 ], [ -36, %4 ], [ -12, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  ret i32 %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_listxattr(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %union.ubifs_key, align 8
  %5 = alloca %struct.fscrypt_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  %12 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 8
  tail call void @down_read(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 5
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.ubifs_inode, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = icmp eq ptr %1, null
  br i1 %18, label %72, label %19

19:                                               ; preds = %3
  %20 = icmp ugt i32 %17, %2
  br i1 %20, label %72, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %4, align 8
  %24 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  store i32 1610612736, ptr %24, align 4
  %25 = call ptr @ubifs_tnc_next_ent(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.fscrypt_name, ptr %5, i32 0, i32 1, i32 1
  br label %35

30:                                               ; preds = %59, %21
  %31 = phi ptr [ null, %21 ], [ %36, %59 ]
  %32 = phi i32 [ 0, %21 ], [ %60, %59 ]
  %33 = phi ptr [ %25, %21 ], [ %65, %59 ]
  call void @kfree(ptr noundef %31) #8
  call void @up_read(ptr noundef %12) #8
  %34 = icmp eq ptr %33, inttoptr (i32 -2 to ptr)
  br i1 %34, label %69, label %67

35:                                               ; preds = %59, %27
  %36 = phi ptr [ %25, %27 ], [ %65, %59 ]
  %37 = phi i32 [ 0, %27 ], [ %60, %59 ]
  %38 = phi ptr [ null, %27 ], [ %36, %59 ]
  %39 = getelementptr inbounds %struct.ubifs_dent_node, ptr %36, i32 0, i32 7
  store ptr %39, ptr %28, align 4
  %40 = getelementptr inbounds %struct.ubifs_dent_node, ptr %36, i32 0, i32 5
  %41 = load i16, ptr %40, align 1
  %42 = zext i16 %41 to i32
  store i32 %42, ptr %29, align 4
  %43 = call i32 @strcmp(ptr noundef %39, ptr noundef nonnull dereferenceable(2) @.str.15) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %35
  %46 = call i32 @strncmp(ptr noundef %39, ptr noundef nonnull dereferenceable(9) @.str.19, i32 noundef 8) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = call zeroext i1 @capable(i32 noundef 21) #8
  br i1 %49, label %50, label %59

50:                                               ; preds = %48
  %51 = load ptr, ptr %28, align 4
  %52 = load i32, ptr %29, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = phi i32 [ %52, %50 ], [ %42, %45 ]
  %55 = phi ptr [ %51, %50 ], [ %39, %45 ]
  %56 = getelementptr i8, ptr %1, i32 %37
  %57 = add i32 %54, 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %56, ptr align 1 %55, i32 %57, i1 false)
  %58 = add i32 %57, %37
  br label %59

59:                                               ; preds = %53, %48, %35
  %60 = phi i32 [ %58, %53 ], [ %37, %35 ], [ %37, %48 ]
  call void @kfree(ptr noundef %38) #8
  %61 = getelementptr inbounds %struct.ubifs_dent_node, ptr %36, i32 0, i32 1
  %62 = load i32, ptr %61, align 8
  store i32 %62, ptr %4, align 8
  %63 = getelementptr %struct.ubifs_dent_node, ptr %36, i32 0, i32 1, i32 4
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %24, align 4
  %65 = call ptr @ubifs_tnc_next_ent(ptr noundef %11, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %30, label %35

67:                                               ; preds = %30
  %68 = ptrtoint ptr %33 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %68) #8
  br label %74

69:                                               ; preds = %30
  %70 = icmp ugt i32 %32, %2
  br i1 %70, label %71, label %74, !prof !8

71:                                               ; preds = %69
  call void @ubifs_assert_failed(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 453) #8
  br label %74

72:                                               ; preds = %19, %3
  %73 = phi i32 [ %17, %3 ], [ -34, %19 ]
  tail call void @up_read(ptr noundef %12) #8
  br label %74

74:                                               ; preds = %72, %71, %69, %67
  %75 = phi i32 [ %73, %72 ], [ %68, %67 ], [ %32, %71 ], [ %32, %69 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_tnc_next_ent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubifs_purge_xattrs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %union.ubifs_key, align 8
  %3 = alloca %struct.fscrypt_name, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %8 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 75
  %11 = load i32, ptr %10, align 8
  %12 = sdiv i32 %11, 2
  %13 = udiv i32 %12, 160
  %14 = getelementptr inbounds %struct.ubifs_info, ptr %7, i32 0, i32 113
  %15 = load i32, ptr %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %1
  tail call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 283) #8
  br label %18

18:                                               ; preds = %17, %1
  %19 = icmp ugt i32 %9, %13
  br i1 %19, label %20, label %71

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @ubifs_warn(ptr noundef %7, ptr noundef nonnull @.str.6, i32 noundef %22) #8
  %23 = getelementptr inbounds %struct.ubifs_inode, ptr %0, i32 0, i32 8
  tail call void @down_write(ptr noundef %23) #8
  %24 = load i32, ptr %21, align 4
  store i32 %24, ptr %2, align 8
  %25 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  store i32 1610612736, ptr %25, align 4
  %26 = call ptr @ubifs_tnc_next_ent(ptr noundef %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  br label %35

31:                                               ; preds = %60, %20
  %32 = phi ptr [ null, %20 ], [ %36, %60 ]
  %33 = phi ptr [ %26, %20 ], [ %65, %60 ]
  call void @kfree(ptr noundef %32) #8
  call void @up_write(ptr noundef %23) #8
  %34 = icmp eq ptr %33, inttoptr (i32 -2 to ptr)
  br i1 %34, label %71, label %67

35:                                               ; preds = %60, %28
  %36 = phi ptr [ %26, %28 ], [ %65, %60 ]
  %37 = phi ptr [ null, %28 ], [ %36, %60 ]
  %38 = getelementptr inbounds %struct.ubifs_dent_node, ptr %36, i32 0, i32 7
  store ptr %38, ptr %29, align 4
  %39 = getelementptr inbounds %struct.ubifs_dent_node, ptr %36, i32 0, i32 5
  %40 = load i16, ptr %39, align 1
  %41 = zext i16 %40 to i32
  store i32 %41, ptr %30, align 4
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_dent_node, ptr %36, i32 0, i32 2
  %44 = load i64, ptr %43, align 1
  %45 = trunc i64 %44 to i32
  %46 = call ptr @ubifs_iget(ptr noundef %42, i32 noundef %45) #8
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = ptrtoint ptr %46 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef %38, i32 noundef %49) #8
  call void @ubifs_ro_mode(ptr noundef %7, i32 noundef %49) #8
  call void @kfree(ptr noundef %37) #8
  call void @kfree(ptr noundef %36) #8
  br label %69

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.ubifs_inode, ptr %46, i32 0, i32 6
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %50
  call void @ubifs_assert_failed(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 540) #8
  br label %56

56:                                               ; preds = %55, %50
  call void @clear_nlink(ptr noundef %46) #8
  %57 = call fastcc i32 @remove_xattr(ptr noundef %7, ptr noundef %0, ptr noundef %46, ptr noundef nonnull %3)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  call void @kfree(ptr noundef %37) #8
  call void @kfree(ptr noundef %36) #8
  call void @iput(ptr noundef %46) #8
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %57) #8
  br label %69

60:                                               ; preds = %56
  call void @iput(ptr noundef %46) #8
  call void @kfree(ptr noundef %37) #8
  %61 = getelementptr inbounds %struct.ubifs_dent_node, ptr %36, i32 0, i32 1
  %62 = load i32, ptr %61, align 8
  store i32 %62, ptr %2, align 8
  %63 = getelementptr %struct.ubifs_dent_node, ptr %36, i32 0, i32 1, i32 4
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %25, align 4
  %65 = call ptr @ubifs_tnc_next_ent(ptr noundef %7, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %31, label %35

67:                                               ; preds = %31
  %68 = ptrtoint ptr %33 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %68) #8
  br label %71

69:                                               ; preds = %59, %48
  %70 = phi i32 [ %49, %48 ], [ %57, %59 ]
  call void @up_write(ptr noundef %23) #8
  br label %71

71:                                               ; preds = %69, %67, %31, %18
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ], [ 0, %18 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_iget(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_ro_mode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_nlink(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @remove_xattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.ubifs_budget_req, align 4
  %6 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #8
  %7 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %7, align 4, !annotation !10
  store i32 2097184, ptr %5, align 4
  %8 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i16
  %12 = add i16 %11, 7
  %13 = and i16 %12, 32760
  store i16 %13, ptr %8, align 4
  %14 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ubifs_budget_req, ptr %5, i32 0, i32 4
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ubifs_inode, ptr %2, i32 0, i32 15
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.inode, ptr %2, i32 0, i32 13
  %21 = load i64, ptr %20, align 8
  %22 = icmp eq i64 %21, %19
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %4
  tail call void @ubifs_assert_failed(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 470) #8
  br label %24

24:                                               ; preds = %23, %4
  %25 = call i32 @ubifs_budget_space(ptr noundef %0, ptr noundef nonnull %5) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 7
  call void @mutex_lock(ptr noundef %28) #8
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef %1) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  %30 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.fscrypt_name, ptr %3, i32 0, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 64
  %36 = and i32 %35, -8
  %37 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 3
  %38 = load i32, ptr %37, align 8
  %39 = sub i32 %38, %36
  store i32 %39, ptr %37, align 8
  %40 = load i32, ptr %17, align 4
  %41 = add i32 %40, 168
  %42 = and i32 %41, -8
  %43 = sub i32 %39, %42
  store i32 %43, ptr %37, align 8
  %44 = load i32, ptr %33, align 4
  %45 = getelementptr inbounds %struct.ubifs_inode, ptr %1, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = sub i32 %46, %44
  store i32 %47, ptr %45, align 8
  %48 = call i32 @ubifs_jnl_delete_xattr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %27
  call void @mutex_unlock(ptr noundef %28) #8
  call void @ubifs_release_budget(ptr noundef %0, ptr noundef nonnull %5) #8
  br label %66

51:                                               ; preds = %27
  %52 = load i32, ptr %30, align 4
  %53 = add i32 %52, 1
  store i32 %53, ptr %30, align 4
  %54 = load i32, ptr %33, align 4
  %55 = add i32 %54, 64
  %56 = and i32 %55, -8
  %57 = load i32, ptr %37, align 8
  %58 = add i32 %56, %57
  store i32 %58, ptr %37, align 8
  %59 = load i32, ptr %17, align 4
  %60 = add i32 %59, 168
  %61 = and i32 %60, -8
  %62 = add i32 %61, %58
  store i32 %62, ptr %37, align 8
  %63 = load i32, ptr %33, align 4
  %64 = load i32, ptr %45, align 8
  %65 = add i32 %64, %63
  store i32 %65, ptr %45, align 8
  call void @mutex_unlock(ptr noundef %28) #8
  call void @ubifs_release_budget(ptr noundef %0, ptr noundef nonnull %5) #8
  call void @make_bad_inode(ptr noundef %2) #8
  br label %66

66:                                               ; preds = %51, %50, %24
  %67 = phi i32 [ %48, %51 ], [ 0, %50 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #8
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubifs_evict_xattr_inode(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call ptr @ilookup(ptr noundef %3, i32 noundef %1) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @clear_nlink(ptr noundef nonnull %4) #8
  tail call void @iput(ptr noundef nonnull %4) #8
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ilookup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ubifs_init_security(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_budget_space(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ubifs_new_inode(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_update(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_set_inode_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubifs_release_budget(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_bad_inode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__insert_inode_hash(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_change_xattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubifs_jnl_delete_xattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xattr_get(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = tail call ptr @xattr_full_name(ptr noundef %0, ptr noundef %3) #8
  %8 = tail call i32 @ubifs_xattr_get(ptr noundef %2, ptr noundef %7, ptr noundef %4, i32 noundef %5)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xattr_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.fscrypt_name, align 4
  %10 = alloca %union.ubifs_key, align 8
  %11 = tail call ptr @xattr_full_name(ptr noundef %0, ptr noundef %4) #8
  %12 = icmp eq ptr %5, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @ubifs_xattr_set(ptr noundef %3, ptr noundef %11, ptr noundef nonnull %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext true)
  br label %82

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #8
  %20 = getelementptr inbounds %struct.fscrypt_name, ptr %9, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, i8 0, i64 32, i1 false) #8
  store ptr %11, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fscrypt_name, ptr %9, i32 0, i32 1, i32 1
  %22 = tail call i32 @strlen(ptr noundef %11) #8
  store i32 %22, ptr %21, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #8
  %23 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 24
  %24 = load volatile i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %15
  tail call void @ubifs_assert_failed(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 604) #8
  br label %27

27:                                               ; preds = %26, %15
  %28 = icmp ugt i32 %22, 255
  br i1 %28, label %80, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3136, i32 noundef 312) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %80, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubifs_inode, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %34) #8
  %35 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.ubifs_info, ptr %19, i32 0, i32 66
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %11, i32 noundef %22) #8
  %40 = icmp ult i32 %39, 536870912
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %33
  tail call void @ubifs_assert_failed(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 221) #8
  br label %42

42:                                               ; preds = %41, %33
  store i32 %36, ptr %10, align 8
  %43 = or i32 %39, 1610612736
  %44 = getelementptr inbounds [2 x i32], ptr %10, i32 0, i32 1
  store i32 %43, ptr %44, align 4
  %45 = call i32 @ubifs_tnc_lookup_nm(ptr noundef %19, ptr noundef nonnull %10, ptr noundef nonnull %31, ptr noundef nonnull %9) #8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = icmp eq i32 %45, -2
  %49 = select i1 %48, i32 -61, i32 %45
  br label %78

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.ubifs_dent_node, ptr %31, i32 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load ptr, ptr %19, align 8
  %55 = call ptr @ubifs_iget(ptr noundef %54, i32 noundef %53) #8
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = ptrtoint ptr %55 to i32
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %19, ptr noundef nonnull @.str.16, i32 noundef %58) #8
  br label %65

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.ubifs_inode, ptr %55, i32 0, i32 6
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  call void (ptr, ptr, ...) @ubifs_err(ptr noundef %19, ptr noundef nonnull @.str.17) #8
  call void @iput(ptr noundef %55) #8
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi ptr [ inttoptr (i32 -22 to ptr), %64 ], [ %55, %57 ]
  %67 = ptrtoint ptr %66 to i32
  br label %78

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 11
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %68
  call void @ubifs_assert_failed(ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 628) #8
  br label %73

73:                                               ; preds = %72, %68
  call void @clear_nlink(ptr noundef %55) #8
  %74 = call fastcc i32 @remove_xattr(ptr noundef %19, ptr noundef %3, ptr noundef %55, ptr noundef nonnull %9) #8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void @set_nlink(ptr noundef %55, i32 noundef 1) #8
  br label %77

77:                                               ; preds = %76, %73
  call void @iput(ptr noundef %55) #8
  br label %78

78:                                               ; preds = %77, %65, %47
  %79 = phi i32 [ %49, %47 ], [ %67, %65 ], [ %74, %77 ]
  call void @up_write(ptr noundef %34) #8
  call void @kfree(ptr noundef nonnull %31) #8
  br label %80

80:                                               ; preds = %78, %29, %27
  %81 = phi i32 [ %79, %78 ], [ -36, %27 ], [ -12, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #8
  br label %82

82:                                               ; preds = %80, %13
  %83 = phi i32 [ %14, %13 ], [ %81, %80 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
