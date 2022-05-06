; ModuleID = '/llk/IR/fs/efivarfs/super.c_pt.bc'
source_filename = "../fs/efivarfs/super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_bl_head = type { ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.efi_variable = type { [512 x i16], %struct.guid_t, i32, [1024 x i8], i32, i32 }
%struct.guid_t = type { [16 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.53, %struct.list_head, %struct.list_head, %union.anon.54 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { i64 }
%union.anon.53 = type { %struct.list_head }
%union.anon.54 = type { %struct.hlist_node }
%struct.anon.15 = type { i32, i32 }

@efivarfs_list = dso_local global %struct.list_head { ptr @efivarfs_list, ptr @efivarfs_list }, align 4
@__UNIQUE_ID_author238 = internal constant [36 x i8] c"author=Matthew Garrett, Jeremy Kerr\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [36 x i8] c"description=EFI Variable Filesystem\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [18 x i8] c"alias=fs-efivarfs\00", section ".modinfo", align 1
@efivarfs_type = internal global %struct.file_system_type { ptr @.str, i32 0, ptr @efivarfs_init_fs_context, ptr null, ptr null, ptr @efivarfs_kill_sb, ptr @__this_module, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@.str = private unnamed_addr constant [9 x i8] c"efivarfs\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@efivarfs_context_ops = internal constant %struct.fs_context_operations { ptr null, ptr null, ptr null, ptr null, ptr @efivarfs_get_tree, ptr null }, align 4
@efivarfs_ops = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @generic_delete_inode, ptr @efivarfs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@efivarfs_d_ops = internal constant %struct.dentry_operations { ptr null, ptr null, ptr @efivarfs_d_hash, ptr @efivarfs_d_compare, ptr @always_delete_dentry, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@efivarfs_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_license240], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @efivars_kobject() #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @register_filesystem(ptr noundef nonnull @efivarfs_type) #13
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ -19, %0 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  %1 = tail call i32 @unregister_filesystem(ptr noundef nonnull @efivarfs_type) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efivars_kobject() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @efivarfs_init_fs_context(ptr nocapture noundef writeonly %0) #2 {
  store ptr @efivarfs_context_ops, ptr %0, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @efivarfs_kill_sb(ptr noundef %0) #3 {
  tail call void @kill_litter_super(ptr noundef %0) #13
  %2 = tail call i32 @__efivar_entry_iter(ptr noundef nonnull @efivarfs_destroy, ptr noundef nonnull @efivarfs_list, ptr noundef null, ptr noundef null) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_get_tree(ptr noundef %0) #3 {
  %2 = tail call i32 @get_tree_single(ptr noundef %0, ptr noundef nonnull @efivarfs_fill_super) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_single(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_fill_super(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 4
  store i64 17592186040320, ptr %3, align 8
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 4096, ptr %4, align 16
  %5 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 12, ptr %5, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 -564231708, ptr %6, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @efivarfs_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 39
  store ptr @efivarfs_d_ops, ptr %8, align 16
  %9 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %9, align 32
  %10 = tail call i32 @efivar_supports_writes() #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = tail call ptr @efivarfs_get_inode(ptr noundef %0, ptr noundef null, i32 noundef 16877, i32 noundef 0, i1 noundef zeroext true) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 7
  store ptr @efivarfs_dir_inode_operations, ptr %20, align 8
  %21 = tail call ptr @d_make_root(ptr noundef nonnull %17) #13
  %22 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %21, ptr %22, align 64
  %23 = icmp eq ptr %21, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  store volatile ptr @efivarfs_list, ptr @efivarfs_list, align 4
  store ptr @efivarfs_list, ptr getelementptr inbounds (%struct.list_head, ptr @efivarfs_list, i32 0, i32 1), align 4
  %25 = tail call i32 @efivar_init(ptr noundef nonnull @efivarfs_callback, ptr noundef %0, i1 noundef zeroext true, ptr noundef nonnull @efivarfs_list) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @__efivar_entry_iter(ptr noundef nonnull @efivarfs_destroy, ptr noundef nonnull @efivarfs_list, ptr noundef null, ptr noundef null) #13
  br label %29

29:                                               ; preds = %27, %24, %19, %16
  %30 = phi i32 [ -12, %16 ], [ -12, %19 ], [ %25, %27 ], [ 0, %24 ]
  ret i32 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_supports_writes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efivarfs_get_inode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_callback(ptr nocapture noundef readonly %0, [4 x i32] %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = alloca %struct.qstr, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 13
  %8 = load ptr, ptr %7, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 2124) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %133, label %12

12:                                               ; preds = %4
  %13 = extractvalue [4 x i32] %1, 3
  %14 = extractvalue [4 x i32] %1, 2
  %15 = extractvalue [4 x i32] %1, 1
  %16 = extractvalue [4 x i32] %1, 0
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %10, ptr align 2 %0, i32 %2, i1 false)
  %17 = getelementptr inbounds %struct.efi_variable, ptr %10, i32 0, i32 1
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.efi_variable, ptr %10, i32 0, i32 1, i32 0, i32 4
  store i32 %15, ptr %18, align 4
  %19 = getelementptr inbounds %struct.efi_variable, ptr %10, i32 0, i32 1, i32 0, i32 8
  store i32 %14, ptr %19, align 8
  %20 = getelementptr inbounds %struct.efi_variable, ptr %10, i32 0, i32 1, i32 0, i32 12
  store i32 %13, ptr %20, align 4
  %21 = tail call i32 @ucs2_utf8size(ptr noundef nonnull %10) #13
  %22 = add i32 %21, 38
  %23 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #15
  %24 = icmp eq ptr %23, null
  br i1 %24, label %131, label %25

25:                                               ; preds = %12
  %26 = tail call i32 @ucs2_as_utf8(ptr noundef nonnull %23, ptr noundef nonnull %10, i32 noundef %21) #13
  %27 = load i32, ptr %17, align 8
  %28 = insertvalue [4 x i32] undef, i32 %27, 0
  %29 = load i32, ptr %18, align 4
  %30 = insertvalue [4 x i32] %28, i32 %29, 1
  %31 = load i32, ptr %19, align 8
  %32 = insertvalue [4 x i32] %30, i32 %31, 2
  %33 = load i32, ptr %20, align 4
  %34 = insertvalue [4 x i32] %32, i32 %33, 3
  %35 = tail call zeroext i1 @efivar_variable_is_removable([4 x i32] %34, ptr noundef nonnull %23, i32 noundef %21) #13
  %36 = getelementptr i8, ptr %23, i32 %21
  store i8 45, ptr %36, align 1
  %37 = getelementptr i8, ptr %36, i32 1
  %38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %37, ptr noundef nonnull @.str.1, ptr noundef %17) #13
  %39 = add i32 %21, 37
  %40 = getelementptr i8, ptr %23, i32 %39
  store i8 0, ptr %40, align 1
  %41 = tail call ptr @strreplace(ptr noundef nonnull %23, i8 noundef zeroext 47, i8 noundef zeroext 33) #13
  %42 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = tail call ptr @efivarfs_get_inode(ptr noundef %3, ptr noundef %43, i32 noundef 33188, i32 noundef 0, i1 noundef zeroext %35) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %129, label %46

46:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %47 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %47, align 8, !annotation !8
  store ptr %23, ptr %47, align 8
  %48 = tail call i32 @strlen(ptr noundef nonnull %23) #13
  %49 = getelementptr inbounds %struct.anon.15, ptr %5, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = tail call zeroext i1 @efivarfs_valid_name(ptr noundef nonnull %23, i32 noundef %48) #13
  br i1 %50, label %51, label %104

51:                                               ; preds = %46
  %52 = ptrtoint ptr %8 to i32
  %53 = add i32 %48, -1
  %54 = icmp ugt i32 %48, 36
  br i1 %54, label %64, label %62

55:                                               ; preds = %64
  %56 = add i32 %48, -36
  %57 = getelementptr i8, ptr %23, i32 %56
  br label %58

58:                                               ; preds = %62, %55
  %59 = phi i32 [ %53, %62 ], [ 35, %55 ]
  %60 = phi ptr [ %23, %62 ], [ %57, %55 ]
  %61 = phi i32 [ %52, %62 ], [ %75, %55 ]
  br label %78

62:                                               ; preds = %51
  %63 = icmp eq i32 %53, 0
  br i1 %63, label %99, label %58

64:                                               ; preds = %64, %51
  %65 = phi i32 [ %76, %64 ], [ %53, %51 ]
  %66 = phi ptr [ %68, %64 ], [ %23, %51 ]
  %67 = phi i32 [ %75, %64 ], [ %52, %51 ]
  %68 = getelementptr i8, ptr %66, i32 1
  %69 = load i8, ptr %66, align 1
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 4
  %72 = add i32 %71, %67
  %73 = lshr i32 %70, 4
  %74 = add i32 %72, %73
  %75 = mul i32 %74, 11
  %76 = add i32 %65, -1
  %77 = icmp ugt i32 %65, 36
  br i1 %77, label %64, label %55

78:                                               ; preds = %78, %58
  %79 = phi i32 [ %82, %78 ], [ %59, %58 ]
  %80 = phi ptr [ %83, %78 ], [ %60, %58 ]
  %81 = phi i32 [ %97, %78 ], [ %61, %58 ]
  %82 = add i32 %79, -1
  %83 = getelementptr i8, ptr %80, i32 1
  %84 = load i8, ptr %80, align 1
  %85 = zext i8 %84 to i32
  %86 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %85
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, 1
  %89 = icmp eq i8 %88, 0
  %90 = add i8 %84, 32
  %91 = select i1 %89, i8 %84, i8 %90
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 4
  %94 = add i32 %93, %81
  %95 = lshr i32 %92, 4
  %96 = add i32 %94, %95
  %97 = mul i32 %96, 11
  %98 = icmp eq i32 %82, 0
  br i1 %98, label %99, label %78

99:                                               ; preds = %78, %62
  %100 = phi i32 [ %52, %62 ], [ %97, %78 ]
  %101 = mul i32 %100, 1640531527
  store i32 %101, ptr %5, align 8
  %102 = call ptr @d_alloc(ptr noundef %8, ptr noundef nonnull %5) #13
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %99, %46
  %105 = phi ptr [ inttoptr (i32 -22 to ptr), %46 ], [ inttoptr (i32 -12 to ptr), %99 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %108

106:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  %107 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %107, label %108, label %111

108:                                              ; preds = %106, %104
  %109 = phi ptr [ %105, %104 ], [ %102, %106 ]
  %110 = ptrtoint ptr %109 to i32
  br label %127

111:                                              ; preds = %106
  %112 = call i32 @efivar_entry_size(ptr noundef nonnull %10, ptr noundef nonnull %6) #13
  %113 = call i32 @efivar_entry_add(ptr noundef nonnull %10, ptr noundef nonnull @efivarfs_list) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  call void @kfree(ptr noundef nonnull %23) #13
  %116 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 24
  call void @down_write(ptr noundef %116) #13
  %117 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 47
  store ptr %10, ptr %117, align 4
  %118 = load i32, ptr %6, align 4
  %119 = add i32 %118, 4
  %120 = zext i32 %119 to i64
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !9
  %121 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 22
  %122 = load i32, ptr %121, align 4
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 4
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !10
  %124 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 13
  store i64 %120, ptr %124, align 8
  call void asm sideeffect "dmb ishst", "~{memory}"() #13, !srcloc !11
  %125 = load i32, ptr %121, align 4
  %126 = add i32 %125, 1
  store i32 %126, ptr %121, align 4
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  call void @up_write(ptr noundef %116) #13
  call void @d_add(ptr noundef nonnull %102, ptr noundef nonnull %44) #13
  br label %133

127:                                              ; preds = %111, %108
  %128 = phi i32 [ %110, %108 ], [ %113, %111 ]
  call void @iput(ptr noundef nonnull %44) #13
  br label %129

129:                                              ; preds = %127, %25
  %130 = phi i32 [ %128, %127 ], [ -12, %25 ]
  call void @kfree(ptr noundef nonnull %23) #13
  br label %131

131:                                              ; preds = %129, %12
  %132 = phi i32 [ %130, %129 ], [ -12, %12 ]
  call void @kfree(ptr noundef nonnull %10) #13
  br label %133

133:                                              ; preds = %131, %115, %4
  %134 = phi i32 [ %132, %131 ], [ 0, %115 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %134
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__efivar_entry_iter(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_destroy(ptr noundef %0, ptr nocapture noundef readnone %1) #3 {
  %3 = tail call i32 @efivar_entry_remove(ptr noundef %0) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @kfree(ptr noundef %0) #13
  br label %6

6:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_delete_inode(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @efivarfs_evict_inode(ptr noundef %0) #3 {
  tail call void @clear_inode(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @efivarfs_d_hash(ptr noundef %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct.qstr, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.anon.15, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = tail call zeroext i1 @efivarfs_valid_name(ptr noundef %4, i32 noundef %6) #13
  br i1 %7, label %8, label %60

8:                                                ; preds = %2
  %9 = ptrtoint ptr %0 to i32
  %10 = add i32 %6, -1
  %11 = icmp ugt i32 %6, 36
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = add i32 %6, -36
  br label %22

14:                                               ; preds = %22
  %15 = getelementptr i8, ptr %4, i32 %13
  br label %18

16:                                               ; preds = %8
  %17 = icmp eq i32 %10, 0
  br i1 %17, label %57, label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %10, %16 ], [ 35, %14 ]
  %20 = phi ptr [ %4, %16 ], [ %15, %14 ]
  %21 = phi i32 [ %9, %16 ], [ %33, %14 ]
  br label %36

22:                                               ; preds = %22, %12
  %23 = phi i32 [ %34, %22 ], [ %10, %12 ]
  %24 = phi ptr [ %26, %22 ], [ %4, %12 ]
  %25 = phi i32 [ %33, %22 ], [ %9, %12 ]
  %26 = getelementptr i8, ptr %24, i32 1
  %27 = load i8, ptr %24, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 4
  %30 = add i32 %29, %25
  %31 = lshr i32 %28, 4
  %32 = add i32 %30, %31
  %33 = mul i32 %32, 11
  %34 = add i32 %23, -1
  %35 = icmp ugt i32 %23, 36
  br i1 %35, label %22, label %14

36:                                               ; preds = %36, %18
  %37 = phi i32 [ %40, %36 ], [ %19, %18 ]
  %38 = phi ptr [ %41, %36 ], [ %20, %18 ]
  %39 = phi i32 [ %55, %36 ], [ %21, %18 ]
  %40 = add i32 %37, -1
  %41 = getelementptr i8, ptr %38, i32 1
  %42 = load i8, ptr %38, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  %48 = add i8 %42, 32
  %49 = select i1 %47, i8 %42, i8 %48
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 4
  %52 = add i32 %51, %39
  %53 = lshr i32 %50, 4
  %54 = add i32 %52, %53
  %55 = mul i32 %54, 11
  %56 = icmp eq i32 %40, 0
  br i1 %56, label %57, label %36

57:                                               ; preds = %36, %16
  %58 = phi i32 [ %9, %16 ], [ %55, %36 ]
  %59 = mul i32 %58, 1640531527
  store i32 %59, ptr %1, align 8
  br label %60

60:                                               ; preds = %57, %2
  %61 = phi i32 [ 0, %57 ], [ -22, %2 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @efivarfs_d_compare(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #5 {
  %5 = add i32 %1, -36
  %6 = getelementptr inbounds %struct.anon.15, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.qstr, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @bcmp(ptr %2, ptr %11, i32 %5)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %11, i32 %5
  %16 = getelementptr i8, ptr %2, i32 %5
  %17 = tail call i32 @strncasecmp(ptr noundef %15, ptr noundef %16, i32 noundef 36)
  br label %18

18:                                               ; preds = %14, %9, %4
  %19 = phi i32 [ %17, %14 ], [ 1, %4 ], [ 1, %9 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @always_delete_dentry(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efivarfs_valid_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_utf8size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucs2_as_utf8(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efivar_variable_is_removable([4 x i32], ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efivar_entry_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

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
!9 = !{i64 2151341406}
!10 = !{i64 2149557961}
!11 = !{i64 2149558262}
!12 = !{i64 2151348964}
