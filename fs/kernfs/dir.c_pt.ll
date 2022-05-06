; ModuleID = '/llk/IR/fs/kernfs/dir.c_pt.bc'
source_filename = "../fs/kernfs/dir.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_path_from_node:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_path_from_node\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_path_from_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_get:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_get\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_put:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_put\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernfs_find_and_get_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22kernfs_find_and_get_ns\22\09\09\09\09\09"
module asm "__kstrtabns_kernfs_find_and_get_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon, ptr, i64, i16, i16, ptr }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.simple_xattr = type { %struct.list_head, ptr, i32, [0 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.67, %struct.list_head, %struct.list_head, %union.anon.68 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.65 }
%union.anon.65 = type { i64 }
%union.anon.67 = type { %struct.list_head }
%union.anon.68 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.59, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.60, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.61, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%union.anon.59 = type { i32 }
%union.anon.60 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.61 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kernfs_elem_dir = type { i32, %struct.rb_root, ptr, i32 }
%struct.kernfs_super_info = type { ptr, ptr, ptr, %struct.list_head }
%struct.kernfs_syscall_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.2, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.2 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dir_context = type { ptr, i64 }

@kernfs_rename_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_kernfs_path_from_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_path_from_node = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_path_from_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_path_from_node to i32), ptr @__kstrtab_kernfs_path_from_node, ptr @__kstrtabns_kernfs_path_from_node }, section "___ksymtab_gpl+kernfs_path_from_node", align 4
@kernfs_pr_cont_buf = internal global [4096 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\01c(error)\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"\01c(name too long)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fs/kernfs/dir.c\00", align 1
@__kstrtab_kernfs_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_get = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_get to i32), ptr @__kstrtab_kernfs_get, ptr @__kstrtabns_kernfs_get }, section "___ksymtab_gpl+kernfs_get", align 4
@kernfs_put.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"kernfs_put: %s/%s: released with incorrect active_ref %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kernfs_iattrs_cache = external dso_local local_unnamed_addr global ptr, align 4
@kernfs_idr_lock = internal global %struct.spinlock zeroinitializer, align 4
@kernfs_node_cache = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_kernfs_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_put = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_put to i32), ptr @__kstrtab_kernfs_put, ptr @__kstrtabns_kernfs_put }, section "___ksymtab_gpl+kernfs_put", align 4
@kernfs_sops = external dso_local constant %struct.super_operations, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"\014kernfs: ns %s in '%s' for '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@__kstrtab_kernfs_find_and_get_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernfs_find_and_get_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_kernfs_find_and_get_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernfs_find_and_get_ns to i32), ptr @__kstrtab_kernfs_find_and_get_ns, ptr @__kstrtabns_kernfs_find_and_get_ns }, section "___ksymtab_gpl+kernfs_find_and_get_ns", align 4
@kernfs_create_root.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"&root->kernfs_rwsem\00", align 1
@kernfs_create_root.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"&root->deactivate_waitq\00", align 1
@kernfs_dops = dso_local local_unnamed_addr constant %struct.dentry_operations { ptr @kernfs_dop_revalidate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [12 x i8] undef }, align 64
@kernfs_dir_iops = dso_local local_unnamed_addr constant %struct.inode_operations { ptr @kernfs_iop_lookup, ptr null, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_mkdir, ptr @kernfs_iop_rmdir, ptr null, ptr @kernfs_iop_rename, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@kernfs_activate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernfs_activate.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernfs_remove_self.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"\014kernfs: can not remove '%s', no directory\0A\00", align 1
@kernfs_dir_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_fop_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @kernfs_dir_fop_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__kernfs_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kernfs_drain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_kernfs_find_and_get_ns, ptr @__ksymtab_kernfs_get, ptr @__ksymtab_kernfs_path_from_node, ptr @__ksymtab_kernfs_put], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_name(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %2) #13
  br label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8
  %16 = phi ptr [ %14, %12 ], [ @.str.15, %8 ]
  %17 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef %16, i32 noundef %2) #13
  br label %18

18:                                               ; preds = %15, %6
  %19 = phi i32 [ %17, %15 ], [ %7, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %4) #13
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_path_from_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %6 = tail call fastcc i32 @kernfs_path_from_node_locked(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %5) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kernfs_path_from_node_locked(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 3026479, ptr %5, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 @strlcpy(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef %3) #13
  br label %177

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr %0, ptr %13
  %16 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi ptr [ %1, %9 ], [ %18, %11 ]
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 @strlcpy(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef %3) #13
  br label %177

24:                                               ; preds = %19
  %25 = icmp eq ptr %2, null
  br i1 %25, label %177, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %20, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr %20, ptr %28
  %31 = getelementptr inbounds %struct.kernfs_node, ptr %30, i32 0, i32 7, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr %0, ptr %34
  %37 = getelementptr inbounds %struct.kernfs_node, ptr %36, i32 0, i32 7, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %32, %38
  br i1 %39, label %40, label %113

40:                                               ; preds = %26
  %41 = load ptr, ptr %32, align 4
  %42 = icmp ne ptr %28, null
  %43 = icmp ne ptr %20, %41
  %44 = and i1 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %50, %40
  %46 = phi i32 [ 0, %40 ], [ %53, %50 ]
  %47 = icmp ne ptr %34, null
  %48 = icmp ne ptr %41, %0
  %49 = and i1 %47, %48
  br i1 %49, label %59, label %68

50:                                               ; preds = %50, %40
  %51 = phi i32 [ %53, %50 ], [ 0, %40 ]
  %52 = phi ptr [ %55, %50 ], [ %28, %40 ]
  %53 = add i32 %51, 1
  %54 = getelementptr inbounds %struct.kernfs_node, ptr %52, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = icmp ne ptr %55, null
  %57 = icmp ne ptr %52, %41
  %58 = and i1 %56, %57
  br i1 %58, label %50, label %45

59:                                               ; preds = %59, %45
  %60 = phi i32 [ %62, %59 ], [ 0, %45 ]
  %61 = phi ptr [ %64, %59 ], [ %34, %45 ]
  %62 = add i32 %60, 1
  %63 = getelementptr inbounds %struct.kernfs_node, ptr %61, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = icmp ne ptr %64, null
  %66 = icmp ne ptr %61, %41
  %67 = and i1 %65, %66
  br i1 %67, label %59, label %68

68:                                               ; preds = %59, %45
  %69 = phi i32 [ 0, %45 ], [ %62, %59 ]
  %70 = icmp ugt i32 %46, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = add i32 %46, -1
  %73 = icmp ugt i32 %72, %69
  br i1 %73, label %81, label %74

74:                                               ; preds = %81, %71, %68
  %75 = phi ptr [ %20, %68 ], [ %28, %71 ], [ %85, %81 ]
  %76 = phi i32 [ %46, %68 ], [ %69, %71 ], [ %69, %81 ]
  %77 = icmp ugt i32 %69, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = add i32 %69, -1
  %80 = icmp ugt i32 %79, %76
  br i1 %80, label %91, label %88

81:                                               ; preds = %81, %71
  %82 = phi i32 [ %86, %81 ], [ %72, %71 ]
  %83 = phi ptr [ %85, %81 ], [ %28, %71 ]
  %84 = getelementptr inbounds %struct.kernfs_node, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = add i32 %82, -1
  %87 = icmp ugt i32 %86, %69
  br i1 %87, label %81, label %74

88:                                               ; preds = %91, %78, %74
  %89 = phi ptr [ %0, %74 ], [ %34, %78 ], [ %95, %91 ]
  %90 = icmp eq ptr %89, %75
  br i1 %90, label %106, label %98

91:                                               ; preds = %91, %78
  %92 = phi i32 [ %96, %91 ], [ %79, %78 ]
  %93 = phi ptr [ %95, %91 ], [ %34, %78 ]
  %94 = getelementptr inbounds %struct.kernfs_node, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = add i32 %92, -1
  %97 = icmp ugt i32 %96, %76
  br i1 %97, label %91, label %88

98:                                               ; preds = %98, %88
  %99 = phi ptr [ %102, %98 ], [ %89, %88 ]
  %100 = phi ptr [ %104, %98 ], [ %75, %88 ]
  %101 = getelementptr inbounds %struct.kernfs_node, ptr %99, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.kernfs_node, ptr %100, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = icmp eq ptr %102, %104
  br i1 %105, label %106, label %98

106:                                              ; preds = %98, %88
  %107 = phi ptr [ %75, %88 ], [ %102, %98 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %113, label %109, !prof !9

109:                                              ; preds = %106
  %110 = icmp ne ptr %34, null
  %111 = icmp ne ptr %107, %0
  %112 = and i1 %111, %110
  br i1 %112, label %114, label %123

113:                                              ; preds = %106, %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 143, i32 noundef 9, ptr noundef null) #13
  br label %177

114:                                              ; preds = %114, %109
  %115 = phi i32 [ %117, %114 ], [ 0, %109 ]
  %116 = phi ptr [ %119, %114 ], [ %34, %109 ]
  %117 = add i32 %115, 1
  %118 = getelementptr inbounds %struct.kernfs_node, ptr %116, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = icmp ne ptr %119, null
  %121 = icmp ne ptr %116, %107
  %122 = and i1 %121, %120
  br i1 %122, label %114, label %123

123:                                              ; preds = %114, %109
  %124 = phi i32 [ -1, %109 ], [ %115, %114 ]
  %125 = icmp ne ptr %28, null
  %126 = icmp ne ptr %20, %107
  %127 = and i1 %126, %125
  br i1 %127, label %128, label %137

128:                                              ; preds = %128, %123
  %129 = phi i32 [ %131, %128 ], [ 0, %123 ]
  %130 = phi ptr [ %133, %128 ], [ %28, %123 ]
  %131 = add i32 %129, 1
  %132 = getelementptr inbounds %struct.kernfs_node, ptr %130, i32 0, i32 2
  %133 = load ptr, ptr %132, align 8
  %134 = icmp ne ptr %133, null
  %135 = icmp ne ptr %130, %107
  %136 = and i1 %135, %134
  br i1 %136, label %128, label %137

137:                                              ; preds = %128, %123
  %138 = phi i32 [ 0, %123 ], [ %131, %128 ]
  store i8 0, ptr %2, align 1
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %143, %137
  %141 = phi i32 [ 0, %137 ], [ %149, %143 ]
  %142 = icmp sgt i32 %124, -1
  br i1 %142, label %152, label %177

143:                                              ; preds = %143, %137
  %144 = phi i32 [ %150, %143 ], [ 0, %137 ]
  %145 = phi i32 [ %149, %143 ], [ 0, %137 ]
  %146 = getelementptr i8, ptr %2, i32 %145
  %147 = call i32 @llvm.usub.sat.i32(i32 %3, i32 %145)
  %148 = call i32 @strlcpy(ptr noundef %146, ptr noundef nonnull %5, i32 noundef %147) #13
  %149 = add i32 %148, %145
  %150 = add nuw i32 %144, 1
  %151 = icmp eq i32 %150, %138
  br i1 %151, label %140, label %143

152:                                              ; preds = %163, %140
  %153 = phi i32 [ %175, %163 ], [ %124, %140 ]
  %154 = phi i32 [ %174, %163 ], [ %141, %140 ]
  %155 = icmp eq i32 %153, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %156, %152
  %157 = phi i32 [ %161, %156 ], [ 0, %152 ]
  %158 = phi ptr [ %160, %156 ], [ %0, %152 ]
  %159 = getelementptr inbounds %struct.kernfs_node, ptr %158, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8
  %161 = add nuw nsw i32 %157, 1
  %162 = icmp eq i32 %161, %153
  br i1 %162, label %163, label %156

163:                                              ; preds = %156, %152
  %164 = phi ptr [ %0, %152 ], [ %160, %156 ]
  %165 = getelementptr i8, ptr %2, i32 %154
  %166 = call i32 @llvm.usub.sat.i32(i32 %3, i32 %154)
  %167 = call i32 @strlcpy(ptr noundef %165, ptr noundef nonnull @.str.15, i32 noundef %166) #13
  %168 = add i32 %167, %154
  %169 = getelementptr i8, ptr %2, i32 %168
  %170 = getelementptr inbounds %struct.kernfs_node, ptr %164, i32 0, i32 3
  %171 = load ptr, ptr %170, align 4
  %172 = call i32 @llvm.usub.sat.i32(i32 %3, i32 %168)
  %173 = call i32 @strlcpy(ptr noundef %169, ptr noundef %171, i32 noundef %172) #13
  %174 = add i32 %173, %168
  %175 = add i32 %153, -1
  %176 = icmp sgt i32 %175, -1
  br i1 %176, label %152, label %177

177:                                              ; preds = %163, %140, %113, %24, %22, %7
  %178 = phi i32 [ %23, %22 ], [ -22, %113 ], [ %8, %7 ], [ -22, %24 ], [ %141, %140 ], [ %174, %163 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pr_cont_kernfs_name(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @strlcpy(ptr noundef nonnull @kernfs_pr_cont_buf, ptr noundef nonnull @.str.14, i32 noundef 4096) #13
  br label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ @.str.15, %6 ]
  %15 = tail call i32 @strlcpy(ptr noundef nonnull @kernfs_pr_cont_buf, ptr noundef %14, i32 noundef 4096) #13
  br label %16

16:                                               ; preds = %13, %4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @kernfs_pr_cont_buf) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %2) #13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pr_cont_kernfs_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %3 = tail call fastcc i32 @kernfs_path_from_node_locked(ptr noundef %0, ptr noundef null, ptr noundef nonnull @kernfs_pr_cont_buf, i32 noundef 4096)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %13

7:                                                ; preds = %1
  %8 = icmp ugt i32 %3, 4095
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %13

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @kernfs_pr_cont_buf) #14
  br label %13

13:                                               ; preds = %11, %9, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_get_parent(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @kernfs_rename_lock) #13
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %10

10:                                               ; preds = %9, %6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #13, !srcloc !10
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #13, !srcloc !11
  br label %12

12:                                               ; preds = %10, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @kernfs_rename_lock, i32 noundef %2) #13
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_get(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load volatile i32, ptr %0, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %7

7:                                                ; preds = %6, %3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !11
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_get_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3, !prof !9

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  %5 = load volatile i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %15, %3
  %7 = phi i32 [ %5, %3 ], [ %16, %15 ]
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %18, label %9, !prof !9

9:                                                ; preds = %6
  %10 = add nuw i32 %7, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !10
  br label %11

11:                                               ; preds = %11, %9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 %7, i32 %10, ptr elementtype(i32) %4) #13, !srcloc !13
  %13 = extractvalue { i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %11

15:                                               ; preds = %11
  %16 = extractvalue { i32, i32 } %12, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %18, label %6, !prof !15

18:                                               ; preds = %15, %6, %1
  %19 = phi ptr [ null, %1 ], [ null, %6 ], [ %0, %15 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_put_active(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3, !prof !9

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !17
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %7 = icmp eq i32 %6, -2147483647
  br i1 %7, label %8, label %16, !prof !9

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr %0, ptr %10
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.kernfs_root, ptr %14, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %15, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %16

16:                                               ; preds = %8, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %80, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !17
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %80

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr %0, ptr %9
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.kernfs_root, ptr %13, i32 0, i32 2
  br label %15

15:                                               ; preds = %76, %7
  %16 = phi ptr [ %9, %7 ], [ %78, %76 ]
  %17 = phi ptr [ %0, %7 ], [ %16, %76 ]
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 1
  %19 = load volatile i32, ptr %18, align 4
  %20 = icmp ne i32 %19, -2147483647
  %21 = load i1, ptr @kernfs_put.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %34, !prof !9

24:                                               ; preds = %15
  store i1 true, ptr @kernfs_put.__already_done, align 1
  %25 = icmp eq ptr %16, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi ptr [ %28, %26 ], [ @.str.5, %24 ]
  %31 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load volatile i32, ptr %18, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 525, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef %30, ptr noundef %32, i32 noundef %33) #13
  br label %34

34:                                               ; preds = %29, %15
  %35 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 10
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 15
  %38 = icmp eq i16 %37, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 7
  %41 = load ptr, ptr %40, align 8
  tail call void @kernfs_put(ptr noundef %41)
  br label %42

42:                                               ; preds = %39, %34
  %43 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  tail call void @kfree_const(ptr noundef %44) #13
  %45 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 12
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.kernfs_iattrs, ptr %46, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %60, label %52

52:                                               ; preds = %52, %48
  %53 = phi ptr [ %54, %52 ], [ %50, %48 ]
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.simple_xattr, ptr %53, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #13
  tail call void @kvfree(ptr noundef %53) #13
  %57 = icmp eq ptr %54, %49
  br i1 %57, label %58, label %52

58:                                               ; preds = %52
  %59 = load ptr, ptr %45, align 4
  br label %60

60:                                               ; preds = %58, %48
  %61 = phi ptr [ %59, %58 ], [ %46, %48 ]
  %62 = load ptr, ptr @kernfs_iattrs_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %62, ptr noundef %61) #13
  br label %63

63:                                               ; preds = %60, %42
  tail call void @_raw_spin_lock(ptr noundef nonnull @kernfs_idr_lock) #13
  %64 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 9
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = tail call ptr @idr_remove(ptr noundef %14, i32 noundef %66) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %68 = load i16, ptr @kernfs_idr_lock, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr @kernfs_idr_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  %70 = load ptr, ptr @kernfs_node_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %70, ptr noundef nonnull %17) #13
  %71 = icmp eq ptr %16, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %63
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #13, !srcloc !10
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #13, !srcloc !17
  %74 = extractvalue { i32, i32 } %73, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  br label %15

79:                                               ; preds = %63
  tail call void @idr_destroy(ptr noundef %14) #13
  tail call void @kfree(ptr noundef %13) #13
  br label %80

80:                                               ; preds = %79, %72, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @kernfs_node_from_dentry(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @kernfs_sops
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 47
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = phi ptr [ null, %1 ], [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_new_node(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, [1 x i32] %3, [1 x i32] %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call fastcc ptr @__kernfs_new_node(ptr noundef %12, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, [1 x i32] %3, [1 x i32] %4, i32 noundef %5)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %6
  %16 = icmp eq ptr %0, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %15
  %18 = load volatile i32, ptr %0, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !9

20:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %21

21:                                               ; preds = %20, %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !11
  br label %23

23:                                               ; preds = %21, %15
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 2
  store ptr %0, ptr %24, align 8
  br label %25

25:                                               ; preds = %23, %6
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__kernfs_new_node(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i16 noundef zeroext %3, [1 x i32] %4, [1 x i32] %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.iattr, align 8
  %9 = extractvalue [1 x i32] %4, 0
  %10 = extractvalue [1 x i32] %5, 0
  %11 = tail call ptr @kstrdup_const(ptr noundef %2, i32 noundef 3264) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr @kernfs_node_cache, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3520) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  tail call void @idr_preload(i32 noundef 3264) #13
  tail call void @_raw_spin_lock(ptr noundef nonnull @kernfs_idr_lock) #13
  %18 = getelementptr inbounds %struct.kernfs_root, ptr %0, i32 0, i32 2
  %19 = tail call i32 @idr_alloc_cyclic(ptr noundef %18, ptr noundef nonnull %15, i32 noundef 1, i32 noundef 0, i32 noundef 2592) #13
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.kernfs_root, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.kernfs_root, ptr %0, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %25, %21, %17
  %30 = getelementptr inbounds %struct.kernfs_root, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.kernfs_root, ptr %0, i32 0, i32 3
  store i32 %19, ptr %32, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %33 = load i16, ptr @kernfs_idr_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @kernfs_idr_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  %35 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %36) #9, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %38 = icmp slt i32 %19, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %29
  %40 = zext i32 %31 to i64
  %41 = shl nuw i64 %40, 32
  %42 = zext i32 %19 to i64
  %43 = or i64 %41, %42
  %44 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 9
  store i64 %43, ptr %44, align 8
  store volatile i32 1, ptr %15, align 8
  %45 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 1
  store volatile i32 -2147483647, ptr %45, align 4
  %46 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 4
  %47 = ptrtoint ptr %46 to i32
  store i32 %47, ptr %46, align 8
  %48 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 3
  store ptr %11, ptr %48, align 4
  %49 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 11
  store i16 %3, ptr %49, align 2
  %50 = trunc i32 %6 to i16
  %51 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 10
  store i16 %50, ptr %51, align 8
  %52 = icmp eq i32 %9, 0
  %53 = icmp eq i32 %10, 0
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %67, label %55

55:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i64 80, i1 false)
  store i32 6, ptr %8, align 8
  %56 = getelementptr inbounds %struct.iattr, ptr %8, i32 0, i32 2
  store i32 %9, ptr %56, align 8
  %57 = getelementptr inbounds %struct.iattr, ptr %8, i32 0, i32 3
  store i32 %10, ptr %57, align 4
  %58 = call i32 @__kernfs_setattr(ptr noundef nonnull %15, ptr noundef nonnull %8) #13
  %59 = icmp slt i32 %58, 0
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #13
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i64, ptr %44, align 8
  %62 = trunc i64 %61 to i32
  %63 = call ptr @idr_remove(ptr noundef %18, i32 noundef %62) #13
  br label %64

64:                                               ; preds = %60, %29
  %65 = load ptr, ptr @kernfs_node_cache, align 4
  call void @kmem_cache_free(ptr noundef %65, ptr noundef nonnull %15) #13
  br label %66

66:                                               ; preds = %64, %13
  call void @kfree_const(ptr noundef nonnull %11) #13
  br label %67

67:                                               ; preds = %66, %55, %39, %7
  %68 = phi ptr [ null, %66 ], [ null, %7 ], [ %15, %39 ], [ %15, %55 ]
  ret ptr %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_find_and_get_node_by_id(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = lshr i64 %1, 32
  %5 = trunc i64 %4 to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @kernfs_idr_lock) #13
  %6 = getelementptr inbounds %struct.kernfs_root, ptr %0, i32 0, i32 2
  %7 = tail call ptr @idr_find(ptr noundef %6, i32 noundef %3) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %5, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 9
  %13 = load i64, ptr %12, align 8
  %14 = lshr i64 %13, 32
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %15, %5
  br i1 %16, label %17, label %29, !prof !15

17:                                               ; preds = %11, %9
  %18 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 10
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 16
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %29, label %22, !prof !9

22:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #13, !srcloc !10
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 0, i32 1, ptr nonnull elementtype(i32) %7) #13, !srcloc !26
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %27 = load i16, ptr @kernfs_idr_lock, align 4
  %28 = add i16 %27, 1
  store i16 %28, ptr @kernfs_idr_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %32

29:                                               ; preds = %22, %17, %11, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %30 = load i16, ptr @kernfs_idr_lock, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr @kernfs_idr_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi ptr [ null, %29 ], [ %7, %26 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_add_one(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %3, ptr %5
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 8
  tail call void @down_write(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 32
  %14 = icmp ne i16 %13, 0
  %15 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = xor i1 %17, %14
  br i1 %18, label %25, label %19, !prof !15

19:                                               ; preds = %1
  %20 = select i1 %14, ptr @.str.7, ptr @.str.8
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 731, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull %20, ptr noundef %22, ptr noundef %24) #13
  br label %88

25:                                               ; preds = %1
  %26 = and i16 %12, 15
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %88

28:                                               ; preds = %25
  %29 = zext i16 %12 to i32
  %30 = and i32 %29, 4096
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  %33 = and i32 %29, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %88

39:                                               ; preds = %35, %32
  %40 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = ptrtoint ptr %16 to i32
  %43 = tail call i32 @strlen(ptr noundef %41) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %45, %39
  %46 = phi i32 [ %49, %45 ], [ %43, %39 ]
  %47 = phi i32 [ %57, %45 ], [ %42, %39 ]
  %48 = phi ptr [ %50, %45 ], [ %41, %39 ]
  %49 = add i32 %46, -1
  %50 = getelementptr i8, ptr %48, i32 1
  %51 = load i8, ptr %48, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 4
  %54 = add i32 %53, %47
  %55 = lshr i32 %52, 4
  %56 = add i32 %54, %55
  %57 = mul i32 %56, 11
  %58 = icmp eq i32 %49, 0
  br i1 %58, label %59, label %45

59:                                               ; preds = %45, %39
  %60 = phi i32 [ %42, %39 ], [ %57, %45 ]
  %61 = mul i32 %60, 1640531527
  %62 = and i32 %61, 2147483647
  %63 = icmp ult i32 %62, 2
  %64 = add nuw i32 %62, 2
  %65 = select i1 %63, i32 %64, i32 %62
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 2147483646) #13
  %67 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 6
  store i32 %66, ptr %67, align 8
  %68 = tail call fastcc i32 @kernfs_link_sibling(ptr noundef %0)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.kernfs_iattrs, ptr %72, i32 0, i32 4
  tail call void @ktime_get_real_ts64(ptr noundef %75) #13
  %76 = getelementptr inbounds %struct.kernfs_iattrs, ptr %72, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %76, ptr noundef align 8 dereferenceable(16) %75, i32 16, i1 false)
  br label %77

77:                                               ; preds = %74, %70
  tail call void @up_write(ptr noundef %10) #13
  %78 = load ptr, ptr %2, align 8
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr %0, ptr %78
  %81 = getelementptr inbounds %struct.kernfs_node, ptr %80, i32 0, i32 7, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.kernfs_root, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  tail call void @kernfs_activate(ptr noundef %0)
  br label %90

88:                                               ; preds = %59, %35, %28, %25, %19
  %89 = phi i32 [ -22, %25 ], [ -2, %28 ], [ %68, %59 ], [ -2, %35 ], [ -22, %19 ]
  tail call void @up_write(ptr noundef %10) #13
  br label %90

90:                                               ; preds = %88, %87, %77
  %91 = phi i32 [ %89, %88 ], [ 0, %87 ], [ 0, %77 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kernfs_link_sibling(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 7, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  br label %24

14:                                               ; preds = %41
  %15 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  %16 = select i1 %46, ptr %26, ptr %15
  br label %17

17:                                               ; preds = %38, %14
  %18 = phi i1 [ %39, %38 ], [ %45, %14 ]
  %19 = phi ptr [ %40, %38 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  %21 = select i1 %18, ptr %20, ptr %19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %17, %7
  %25 = phi ptr [ %5, %7 ], [ %22, %17 ]
  %26 = phi ptr [ %4, %7 ], [ %21, %17 ]
  %27 = getelementptr i8, ptr %25, i32 16
  %28 = load i32, ptr %27, align 8
  %29 = icmp ugt i32 %28, %9
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = icmp ult i32 %28, %9
  br i1 %31, label %38, label %32

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %25, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp ugt ptr %34, %13
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = icmp ult ptr %34, %13
  br i1 %37, label %38, label %41

38:                                               ; preds = %36, %32, %30, %24
  %39 = phi i1 [ false, %36 ], [ false, %30 ], [ true, %32 ], [ true, %24 ]
  %40 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  br label %17

41:                                               ; preds = %36
  %42 = getelementptr i8, ptr %25, i32 -4
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @strcmp(ptr noundef %11, ptr noundef %43) #13
  %45 = icmp slt i32 %44, 0
  %46 = icmp eq i32 %44, 0
  %47 = xor i1 %46, true
  %48 = or i1 %45, %47
  br i1 %48, label %14, label %73

49:                                               ; preds = %17, %1
  %50 = phi ptr [ null, %1 ], [ %25, %17 ]
  %51 = phi ptr [ %4, %1 ], [ %21, %17 ]
  %52 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 4
  %53 = ptrtoint ptr %50 to i32
  store i32 %53, ptr %52, align 4
  %54 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 4, i32 1
  store ptr null, ptr %54, align 4
  %55 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 4, i32 2
  store ptr null, ptr %55, align 4
  store ptr %52, ptr %51, align 4
  %56 = load ptr, ptr %2, align 8
  %57 = getelementptr inbounds %struct.kernfs_node, ptr %56, i32 0, i32 7, i32 0, i32 1
  tail call void @rb_insert_color(ptr noundef %52, ptr noundef %57) #13
  %58 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %59 = load i16, ptr %58, align 8
  %60 = and i16 %59, 15
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load ptr, ptr %2, align 8
  %64 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 7
  %65 = load i32, ptr %64, align 8
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %62, %49
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.kernfs_node, ptr %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.kernfs_elem_dir, ptr %69, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %67, %41
  %74 = phi i32 [ 0, %67 ], [ -17, %41 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_activate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr %0, ptr %3
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_root, ptr %7, i32 0, i32 8
  tail call void @down_write(ptr noundef %8) #13
  br label %9

9:                                                ; preds = %77, %1
  %10 = phi ptr [ null, %1 ], [ %45, %77 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %18, %9
  %13 = phi ptr [ %22, %18 ], [ %0, %9 ]
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 10
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 15
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 7, i32 0, i32 1
  %20 = tail call ptr @rb_first(ptr noundef %19) #13
  %21 = icmp eq ptr %20, null
  %22 = getelementptr i8, ptr %20, i32 -16
  br i1 %21, label %44, label %12

23:                                               ; preds = %9
  %24 = icmp eq ptr %10, %0
  br i1 %24, label %78, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 4
  %27 = tail call ptr @rb_next(ptr noundef %26) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %35, %25
  %30 = phi ptr [ %37, %35 ], [ %27, %25 ]
  %31 = getelementptr i8, ptr %30, i32 64
  %32 = load i16, ptr %31, align 8
  %33 = and i16 %32, 15
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %30, i32 28
  %37 = tail call ptr @rb_first(ptr noundef %36) #13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %29

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  br label %44

42:                                               ; preds = %35, %29
  %43 = getelementptr i8, ptr %30, i32 -16
  br label %44

44:                                               ; preds = %42, %39, %18, %12
  %45 = phi ptr [ %41, %39 ], [ %43, %42 ], [ %13, %18 ], [ %13, %12 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.kernfs_node, ptr %45, i32 0, i32 10
  %49 = load i16, ptr %48, align 8
  %50 = and i16 %49, 16
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.kernfs_node, ptr %45, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.kernfs_node, ptr %45, i32 0, i32 4
  %58 = load i32, ptr %57, align 8
  %59 = ptrtoint ptr %57 to i32
  %60 = icmp eq i32 %58, %59
  %61 = load i1, ptr @kernfs_activate.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %65, !prof !9

64:                                               ; preds = %56
  store i1 true, ptr @kernfs_activate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1316, i32 noundef 9, ptr noundef null) #13
  br label %65

65:                                               ; preds = %64, %56, %52
  %66 = getelementptr inbounds %struct.kernfs_node, ptr %45, i32 0, i32 1
  %67 = load volatile i32, ptr %66, align 4
  %68 = icmp ne i32 %67, -2147483647
  %69 = load i1, ptr @kernfs_activate.__already_done.12, align 1
  %70 = xor i1 %69, true
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %72, label %73, !prof !9

72:                                               ; preds = %65
  store i1 true, ptr @kernfs_activate.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1317, i32 noundef 9, ptr noundef null) #13
  br label %73

73:                                               ; preds = %72, %65
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %66) #13, !srcloc !10
  %74 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 -2147483647, ptr elementtype(i32) %66) #13, !srcloc !28
  %75 = load i16, ptr %48, align 8
  %76 = or i16 %75, 16
  store i16 %76, ptr %48, align 8
  br label %77

77:                                               ; preds = %73, %47
  br label %9

78:                                               ; preds = %44, %23
  tail call void @up_write(ptr noundef %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_find_and_get_ns(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr %0, ptr %5
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 8
  tail call void @down_read(ptr noundef %10) #13
  %11 = tail call fastcc ptr @kernfs_find_ns(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load volatile i32, ptr %11, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %17

17:                                               ; preds = %16, %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %11) #13, !srcloc !10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %11, ptr nonnull %11, i32 1, ptr nonnull elementtype(i32) %11) #13, !srcloc !11
  br label %19

19:                                               ; preds = %17, %3
  tail call void @up_read(ptr noundef %10) #13
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @kernfs_find_ns(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 32
  %9 = icmp ne i16 %8, 0
  %10 = icmp eq ptr %2, null
  %11 = xor i1 %10, %9
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = select i1 %9, ptr @.str.7, ptr @.str.8
  %14 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 796, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %1) #13
  br label %73

16:                                               ; preds = %3
  %17 = ptrtoint ptr %2 to i32
  %18 = tail call i32 @strlen(ptr noundef %1) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %20, %16
  %21 = phi i32 [ %24, %20 ], [ %18, %16 ]
  %22 = phi i32 [ %32, %20 ], [ %17, %16 ]
  %23 = phi ptr [ %25, %20 ], [ %1, %16 ]
  %24 = add i32 %21, -1
  %25 = getelementptr i8, ptr %23, i32 1
  %26 = load i8, ptr %23, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 4
  %29 = add i32 %28, %22
  %30 = lshr i32 %27, 4
  %31 = add i32 %29, %30
  %32 = mul i32 %31, 11
  %33 = icmp eq i32 %24, 0
  br i1 %33, label %34, label %20

34:                                               ; preds = %20, %16
  %35 = phi i32 [ %17, %16 ], [ %32, %20 ]
  %36 = mul i32 %35, 1640531527
  %37 = and i32 %36, 2147483647
  %38 = icmp ult i32 %37, 2
  %39 = add nuw i32 %37, 2
  %40 = select i1 %38, i32 %39, i32 %37
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 2147483646) #13
  %42 = icmp eq ptr %5, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %67, %34
  %44 = phi ptr [ %69, %67 ], [ %5, %34 ]
  %45 = getelementptr i8, ptr %44, i32 16
  %46 = load i32, ptr %45, align 8
  %47 = icmp ugt i32 %46, %41
  br i1 %47, label %61, label %48

48:                                               ; preds = %43
  %49 = icmp ult i32 %46, %41
  br i1 %49, label %65, label %50

50:                                               ; preds = %48
  %51 = getelementptr i8, ptr %44, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = icmp ugt ptr %52, %2
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = icmp ult ptr %52, %2
  br i1 %55, label %65, label %56

56:                                               ; preds = %54
  %57 = getelementptr i8, ptr %44, i32 -4
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %58) #13
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %50, %43
  %62 = getelementptr inbounds %struct.rb_node, ptr %44, i32 0, i32 2
  br label %67

63:                                               ; preds = %56
  %64 = icmp eq i32 %59, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %63, %54, %48
  %66 = getelementptr inbounds %struct.rb_node, ptr %44, i32 0, i32 1
  br label %67

67:                                               ; preds = %65, %61
  %68 = phi ptr [ %62, %61 ], [ %66, %65 ]
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %73, label %43

71:                                               ; preds = %63
  %72 = getelementptr i8, ptr %44, i32 -16
  br label %73

73:                                               ; preds = %71, %67, %34, %12
  %74 = phi ptr [ null, %12 ], [ %72, %71 ], [ null, %34 ], [ null, %67 ]
  ret ptr %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_walk_and_get_ns(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr %0, ptr %6
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %8, i32 0, i32 7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.kernfs_root, ptr %10, i32 0, i32 8
  tail call void @down_read(ptr noundef %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_rename_lock) #13
  %12 = tail call i32 @strlcpy(ptr noundef nonnull @kernfs_pr_cont_buf, ptr noundef %1, i32 noundef 4096) #13
  %13 = icmp ugt i32 %12, 4095
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %15 = load i16, ptr @kernfs_rename_lock, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr @kernfs_rename_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %40

17:                                               ; preds = %3
  store ptr @kernfs_pr_cont_buf, ptr %4, align 4
  br label %18

18:                                               ; preds = %28, %17
  %19 = phi ptr [ %29, %28 ], [ %0, %17 ]
  %20 = icmp ne ptr %19, null
  br label %21

21:                                               ; preds = %25, %18
  %22 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.15) #13
  %23 = icmp ne ptr %22, null
  %24 = select i1 %23, i1 %20, i1 false
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8, ptr %22, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %21, label %28

28:                                               ; preds = %25
  %29 = call fastcc ptr @kernfs_find_ns(ptr noundef nonnull %19, ptr noundef nonnull %22, ptr noundef %2) #13
  br label %18

30:                                               ; preds = %21
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %31 = load i16, ptr @kernfs_rename_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @kernfs_rename_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !29
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %33 = icmp eq ptr %19, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = load volatile i32, ptr %19, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38, !prof !9

37:                                               ; preds = %34
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %38

38:                                               ; preds = %37, %34
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %19) #13, !srcloc !10
  %39 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %19, ptr nonnull %19, i32 1, ptr nonnull elementtype(i32) %19) #13, !srcloc !11
  br label %40

40:                                               ; preds = %38, %30, %14
  %41 = phi ptr [ null, %14 ], [ null, %30 ], [ %19, %38 ]
  call void @up_read(ptr noundef %11) #13
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_root(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 84) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 2
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 2, i32 0, i32 1
  store i32 33554436, ptr %9, align 4
  %10 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 2, i32 0, i32 2
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 2, i32 1
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 2, i32 2
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef nonnull @kernfs_create_root.__key) #13
  %14 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 6
  store volatile ptr %14, ptr %14, align 8
  %15 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 6, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 4
  store i32 1, ptr %16, align 8
  %17 = tail call fastcc ptr @__kernfs_new_node(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @.str.5, i16 noundef zeroext 16749, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 noundef 1)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  tail call void @idr_destroy(ptr noundef %8) #13
  tail call void @kfree(ptr noundef nonnull %5) #13
  br label %30

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 8
  store ptr %2, ptr %21, align 8
  %22 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 7, i32 0, i32 2
  store ptr %5, ptr %22, align 8
  %23 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 5
  store ptr %0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 1
  store i32 %1, ptr %24, align 4
  store ptr %17, ptr %5, align 8
  %25 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %25, ptr noundef nonnull @.str.11, ptr noundef nonnull @kernfs_create_root.__key.10) #13
  %26 = load i32, ptr %24, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  tail call void @kernfs_activate(ptr noundef nonnull %17)
  br label %30

30:                                               ; preds = %29, %20, %19, %3
  %31 = phi ptr [ inttoptr (i32 -12 to ptr), %19 ], [ %5, %29 ], [ %5, %20 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_destroy_root(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = load volatile i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %8

8:                                                ; preds = %7, %4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #13, !srcloc !10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #13, !srcloc !11
  %10 = load ptr, ptr %0, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi ptr [ null, %1 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr %12, ptr %14
  %17 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.kernfs_root, ptr %18, i32 0, i32 8
  tail call void @down_write(ptr noundef %19) #13
  tail call fastcc void @__kernfs_remove(ptr noundef %12) #13
  tail call void @up_write(ptr noundef %19) #13
  %20 = load ptr, ptr %0, align 4
  tail call void @kernfs_put(ptr noundef %20)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr %0, ptr %3
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.kernfs_root, ptr %7, i32 0, i32 8
  tail call void @down_write(ptr noundef %8) #13
  tail call fastcc void @__kernfs_remove(ptr noundef %0)
  tail call void @up_write(ptr noundef %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_dir_ns(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2, [1 x i32] %3, [1 x i32] %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = or i16 %2, 16384
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr %0, ptr %10
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call fastcc ptr @__kernfs_new_node(ptr noundef %14, ptr noundef %0, ptr noundef %1, i16 noundef zeroext %8, [1 x i32] %3, [1 x i32] %4, i32 noundef 1) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %0, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = load volatile i32, ptr %0, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %23

23:                                               ; preds = %22, %19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !11
  br label %25

25:                                               ; preds = %23, %17
  %26 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 2
  store ptr %0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 7, i32 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 5
  store ptr %6, ptr %30, align 4
  %31 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 8
  store ptr %5, ptr %31, align 8
  %32 = tail call i32 @kernfs_add_one(ptr noundef nonnull %15)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  tail call void @kernfs_put(ptr noundef nonnull %15)
  %35 = inttoptr i32 %32 to ptr
  br label %36

36:                                               ; preds = %34, %25, %7
  %37 = phi ptr [ %35, %34 ], [ %15, %25 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kernfs_create_empty_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %0, ptr %4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 7, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc ptr @__kernfs_new_node(ptr noundef %8, ptr noundef %0, ptr noundef %1, i16 noundef zeroext 16749, [1 x i32] zeroinitializer, [1 x i32] zeroinitializer, i32 noundef 1) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = icmp eq ptr %0, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %11
  %14 = load volatile i32, ptr %0, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %17

17:                                               ; preds = %16, %13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #13, !srcloc !10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #13, !srcloc !11
  br label %19

19:                                               ; preds = %17, %11
  %20 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 2
  store ptr %0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 10
  %22 = load i16, ptr %21, align 8
  %23 = or i16 %22, 4096
  store i16 %23, ptr %21, align 8
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 7, i32 0, i32 2
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 5
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 8
  store ptr null, ptr %28, align 8
  %29 = tail call i32 @kernfs_add_one(ptr noundef nonnull %9)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %19
  tail call void @kernfs_put(ptr noundef nonnull %9)
  %32 = inttoptr i32 %29 to ptr
  br label %33

33:                                               ; preds = %31, %19, %2
  %34 = phi ptr [ %32, %31 ], [ %9, %19 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_dop_revalidate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, 64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %92

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %37, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 47
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %21 = load i16, ptr %10, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  %23 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %18, ptr %24
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %26, i32 0, i32 7, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.kernfs_root, ptr %28, i32 0, i32 8
  tail call void @down_read(ptr noundef %29) #13
  %30 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 7
  %31 = getelementptr inbounds %struct.kernfs_elem_dir, ptr %30, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 10
  %34 = load i32, ptr %33, align 8
  %35 = icmp eq i32 %32, %34
  tail call void @up_read(ptr noundef %29) #13
  %36 = zext i1 %35 to i32
  br label %92

37:                                               ; preds = %16, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %38 = load i16, ptr %10, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  br label %92

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.kernfs_node, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %42, ptr %44
  %47 = getelementptr inbounds %struct.kernfs_node, ptr %46, i32 0, i32 7, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.kernfs_root, ptr %48, i32 0, i32 8
  tail call void @down_read(ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %42, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %91

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.dentry, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.inode, ptr %57, i32 0, i32 47
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi ptr [ %61, %59 ], [ null, %53 ]
  %64 = load ptr, ptr %43, align 8
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 4, i32 1
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.kernfs_node, ptr %42, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @strcmp(ptr noundef %68, ptr noundef %70)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = icmp eq ptr %63, null
  br i1 %74, label %90, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 10
  %77 = load i16, ptr %76, align 8
  %78 = and i16 %77, 32
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 27
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.kernfs_super_info, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.kernfs_node, ptr %42, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80, %75, %73
  tail call void @up_read(ptr noundef %49) #13
  br label %92

91:                                               ; preds = %80, %66, %62, %40
  tail call void @up_read(ptr noundef %49) #13
  br label %92

92:                                               ; preds = %91, %90, %37, %20, %2
  %93 = phi i32 [ 0, %91 ], [ 1, %90 ], [ -10, %2 ], [ 1, %37 ], [ %36, %20 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kernfs_iop_lookup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr %5, ptr %7
  %10 = getelementptr inbounds %struct.kernfs_node, ptr %9, i32 0, i32 7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.kernfs_root, ptr %11, i32 0, i32 8
  tail call void @down_read(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 10
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 32
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.kernfs_super_info, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %17, %3
  %25 = phi ptr [ %23, %17 ], [ null, %3 ]
  %26 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = tail call fastcc ptr @kernfs_find_ns(ptr noundef %5, ptr noundef %27, ptr noundef %25)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.kernfs_node, ptr %28, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @up_read(ptr noundef %12) #13
  br label %51

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = tail call ptr @kernfs_get_inode(ptr noundef %37, ptr noundef nonnull %28) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %48, label %42

42:                                               ; preds = %40, %24
  %43 = phi ptr [ %38, %40 ], [ null, %24 ]
  %44 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 7
  %45 = getelementptr inbounds %struct.kernfs_elem_dir, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 10
  store i32 %46, ptr %47, align 8
  br label %48

48:                                               ; preds = %42, %40, %35
  %49 = phi ptr [ %43, %42 ], [ %38, %40 ], [ inttoptr (i32 -12 to ptr), %35 ]
  tail call void @up_read(ptr noundef %12) #13
  %50 = tail call ptr @d_splice_alias(ptr noundef %49, ptr noundef %1) #13
  br label %51

51:                                               ; preds = %48, %34
  %52 = phi ptr [ %50, %48 ], [ null, %34 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_permission(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_iop_mkdir(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %6, ptr %8
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.kernfs_root, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %6, null
  br i1 %21, label %52, label %22, !prof !9

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %34, %22
  %26 = phi i32 [ %24, %22 ], [ %35, %34 ]
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %52, label %28, !prof !9

28:                                               ; preds = %25
  %29 = add nuw i32 %26, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #13, !srcloc !10
  br label %30

30:                                               ; preds = %30, %28
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 %26, i32 %29, ptr elementtype(i32) %23) #13, !srcloc !13
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %36 = icmp eq i32 %35, %26
  br i1 %36, label %37, label %25, !prof !15

37:                                               ; preds = %34
  %38 = load ptr, ptr %17, align 4
  %39 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = tail call i32 %38(ptr noundef nonnull %6, ptr noundef %40, i16 noundef zeroext %3) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #13, !srcloc !10
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #13, !srcloc !17
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %44 = icmp eq i32 %43, -2147483647
  br i1 %44, label %45, label %52, !prof !9

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 8
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr %6, ptr %46
  %49 = getelementptr inbounds %struct.kernfs_node, ptr %48, i32 0, i32 7, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.kernfs_root, ptr %50, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %51, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %52

52:                                               ; preds = %45, %37, %25, %20, %16, %4
  %53 = phi i32 [ -1, %16 ], [ -1, %4 ], [ %41, %37 ], [ %41, %45 ], [ -19, %20 ], [ -19, %25 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_iop_rmdir(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 47
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr %10, ptr %12
  %15 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 7, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.kernfs_root, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %20
  %25 = icmp eq ptr %10, null
  br i1 %25, label %54, label %26, !prof !9

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  br label %29

29:                                               ; preds = %38, %26
  %30 = phi i32 [ %28, %26 ], [ %39, %38 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %54, label %32, !prof !9

32:                                               ; preds = %29
  %33 = add nuw i32 %30, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !10
  br label %34

34:                                               ; preds = %34, %32
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 %30, i32 %33, ptr elementtype(i32) %27) #13, !srcloc !13
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34
  %39 = extractvalue { i32, i32 } %35, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %40 = icmp eq i32 %39, %30
  br i1 %40, label %41, label %29, !prof !15

41:                                               ; preds = %38
  %42 = load ptr, ptr %21, align 4
  %43 = tail call i32 %42(ptr noundef nonnull %10) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #13, !srcloc !10
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #13, !srcloc !17
  %45 = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %46 = icmp eq i32 %45, -2147483647
  br i1 %46, label %47, label %54, !prof !9

47:                                               ; preds = %41
  %48 = load ptr, ptr %11, align 8
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %10, ptr %48
  %51 = getelementptr inbounds %struct.kernfs_node, ptr %50, i32 0, i32 7, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.kernfs_root, ptr %52, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %53, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %54

54:                                               ; preds = %47, %41, %29, %24, %20, %9
  %55 = phi i32 [ -1, %20 ], [ -1, %9 ], [ %43, %41 ], [ %43, %47 ], [ -19, %24 ], [ -19, %29 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_iop_rename(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ null, %6 ]
  %15 = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 47
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr %14, ptr %18
  %21 = getelementptr inbounds %struct.kernfs_node, ptr %20, i32 0, i32 7, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.kernfs_root, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %13
  %27 = icmp eq ptr %24, null
  br i1 %27, label %98, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.kernfs_syscall_ops, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %98, label %32

32:                                               ; preds = %28
  %33 = icmp eq ptr %14, null
  br i1 %33, label %98, label %34, !prof !9

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.kernfs_node, ptr %14, i32 0, i32 1
  %36 = load volatile i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %46, %34
  %38 = phi i32 [ %36, %34 ], [ %47, %46 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %98, label %40, !prof !9

40:                                               ; preds = %37
  %41 = add nuw i32 %38, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #13, !srcloc !10
  br label %42

42:                                               ; preds = %42, %40
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 %38, i32 %41, ptr elementtype(i32) %35) #13, !srcloc !13
  %44 = extractvalue { i32, i32 } %43, 0
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %42

46:                                               ; preds = %42
  %47 = extractvalue { i32, i32 } %43, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %48 = icmp eq i32 %47, %38
  br i1 %48, label %49, label %37, !prof !15

49:                                               ; preds = %46
  %50 = icmp eq ptr %16, null
  br i1 %50, label %66, label %51, !prof !9

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 1
  %53 = load volatile i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %63, %51
  %55 = phi i32 [ %53, %51 ], [ %64, %63 ]
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %66, label %57, !prof !9

57:                                               ; preds = %54
  %58 = add nuw i32 %55, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #13, !srcloc !10
  br label %59

59:                                               ; preds = %59, %57
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 %55, i32 %58, ptr elementtype(i32) %52) #13, !srcloc !13
  %61 = extractvalue { i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %59

63:                                               ; preds = %59
  %64 = extractvalue { i32, i32 } %60, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  %65 = icmp eq i32 %64, %55
  br i1 %65, label %70, label %54, !prof !15

66:                                               ; preds = %54, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #13, !srcloc !10
  %67 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #13, !srcloc !17
  %68 = extractvalue { i32, i32 } %67, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %69 = icmp eq i32 %68, -2147483647
  br i1 %69, label %90, label %98, !prof !9

70:                                               ; preds = %63
  %71 = load ptr, ptr %29, align 4
  %72 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 4, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = tail call i32 %71(ptr noundef nonnull %14, ptr noundef nonnull %16, ptr noundef %73) #13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #13, !srcloc !10
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 1, ptr elementtype(i32) %52) #13, !srcloc !17
  %76 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %77 = icmp eq i32 %76, -2147483647
  br i1 %77, label %78, label %86, !prof !9

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.kernfs_node, ptr %16, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  %82 = select i1 %81, ptr %16, ptr %80
  %83 = getelementptr inbounds %struct.kernfs_node, ptr %82, i32 0, i32 7, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.kernfs_root, ptr %84, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %85, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %86

86:                                               ; preds = %78, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #13, !srcloc !10
  %87 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #13, !srcloc !17
  %88 = extractvalue { i32, i32 } %87, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %89 = icmp eq i32 %88, -2147483647
  br i1 %89, label %90, label %98, !prof !9

90:                                               ; preds = %86, %66
  %91 = phi i32 [ -19, %66 ], [ %74, %86 ]
  %92 = load ptr, ptr %17, align 8
  %93 = icmp eq ptr %92, null
  %94 = select i1 %93, ptr %14, ptr %92
  %95 = getelementptr inbounds %struct.kernfs_node, ptr %94, i32 0, i32 7, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.kernfs_root, ptr %96, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %97, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %98

98:                                               ; preds = %90, %86, %66, %37, %32, %28, %26, %13
  %99 = phi i32 [ -22, %13 ], [ -1, %28 ], [ -1, %26 ], [ -19, %66 ], [ %74, %86 ], [ -19, %32 ], [ %91, %90 ], [ -19, %37 ]
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_getattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_iop_listxattr(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__kernfs_remove(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %162, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = ptrtoint ptr %9 to i32
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %162, label %13

13:                                               ; preds = %8, %4
  br label %14

14:                                               ; preds = %61, %13
  %15 = phi ptr [ null, %13 ], [ %50, %61 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %23, %14
  %18 = phi ptr [ %27, %23 ], [ %0, %14 ]
  %19 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 10
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 15
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %18, i32 0, i32 7, i32 0, i32 1
  %25 = tail call ptr @rb_first(ptr noundef %24) #13
  %26 = icmp eq ptr %25, null
  %27 = getelementptr i8, ptr %25, i32 -16
  br i1 %26, label %49, label %17

28:                                               ; preds = %14
  %29 = icmp eq ptr %15, %0
  br i1 %29, label %52, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 4
  %32 = tail call ptr @rb_next(ptr noundef %31) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %40, %30
  %35 = phi ptr [ %42, %40 ], [ %32, %30 ]
  %36 = getelementptr i8, ptr %35, i32 64
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 15
  %39 = icmp eq i16 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %35, i32 28
  %42 = tail call ptr @rb_first(ptr noundef %41) #13
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %34

44:                                               ; preds = %30
  %45 = getelementptr inbounds %struct.kernfs_node, ptr %15, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  br label %49

47:                                               ; preds = %40, %34
  %48 = getelementptr i8, ptr %35, i32 -16
  br label %49

49:                                               ; preds = %47, %44, %23, %17
  %50 = phi ptr [ %46, %44 ], [ %48, %47 ], [ %18, %23 ], [ %18, %17 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %28
  %53 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %54 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  br label %62

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.kernfs_node, ptr %50, i32 0, i32 1
  %57 = load volatile i32, ptr %56, align 4
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %56) #13, !srcloc !10
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %56, ptr %56, i32 -2147483647, ptr elementtype(i32) %56) #13, !srcloc !11
  br label %61

61:                                               ; preds = %59, %55
  br label %14

62:                                               ; preds = %73, %52
  %63 = phi ptr [ %0, %52 ], [ %74, %73 ]
  %64 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 10
  %65 = load i16, ptr %64, align 8
  %66 = and i16 %65, 15
  %67 = icmp eq i16 %66, 1
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 7, i32 0, i32 1
  %70 = call ptr @rb_first(ptr noundef %69) #13
  %71 = icmp eq ptr %70, null
  %72 = getelementptr i8, ptr %70, i32 -16
  br i1 %71, label %75, label %73

73:                                               ; preds = %160, %68
  %74 = phi ptr [ %72, %68 ], [ %0, %160 ]
  br label %62

75:                                               ; preds = %68, %62
  %76 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 10
  %77 = icmp eq ptr %63, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load volatile i32, ptr %63, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82, !prof !9

81:                                               ; preds = %78
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %82

82:                                               ; preds = %81, %78
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %63) #13, !srcloc !10
  %83 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %63, ptr nonnull %63, i32 1, ptr nonnull elementtype(i32) %63) #13, !srcloc !11
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i16, ptr %53, align 8
  %86 = and i16 %85, 16
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %117, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr %63, ptr %90
  %93 = getelementptr inbounds %struct.kernfs_node, ptr %92, i32 0, i32 7, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 1
  %96 = load volatile i32, ptr %95, align 4
  %97 = icmp sgt i32 %96, -1
  %98 = load i1, ptr @kernfs_drain.__already_done, align 1
  %99 = xor i1 %98, true
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %102, !prof !9

101:                                              ; preds = %88
  store i1 true, ptr @kernfs_drain.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 465, i32 noundef 9, ptr noundef null) #13
  br label %102

102:                                              ; preds = %101, %88
  %103 = getelementptr inbounds %struct.kernfs_root, ptr %94, i32 0, i32 8
  call void @up_write(ptr noundef %103) #13
  %104 = load volatile i32, ptr %95, align 4
  %105 = icmp eq i32 %104, -2147483647
  br i1 %105, label %116, label %106

106:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false) #13, !annotation !31
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #13
  %107 = getelementptr inbounds %struct.kernfs_root, ptr %94, i32 0, i32 7
  %108 = call i32 @prepare_to_wait_event(ptr noundef %107, ptr noundef nonnull %2, i32 noundef 2) #13
  %109 = load volatile i32, ptr %95, align 4
  %110 = icmp eq i32 %109, -2147483647
  br i1 %110, label %115, label %111

111:                                              ; preds = %111, %106
  call void @schedule() #13
  %112 = call i32 @prepare_to_wait_event(ptr noundef %107, ptr noundef nonnull %2, i32 noundef 2) #13
  %113 = load volatile i32, ptr %95, align 4
  %114 = icmp eq i32 %113, -2147483647
  br i1 %114, label %115, label %111

115:                                              ; preds = %111, %106
  call void @finish_wait(ptr noundef %107, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  br label %116

116:                                              ; preds = %115, %102
  call void @kernfs_drain_open_files(ptr noundef %63) #13
  call void @down_write(ptr noundef %103) #13
  br label %124

117:                                              ; preds = %84
  %118 = load volatile i32, ptr %54, align 4
  %119 = icmp ne i32 %118, -2147483647
  %120 = load i1, ptr @__kernfs_remove.__already_done, align 1
  %121 = xor i1 %120, true
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %123, label %124, !prof !9

123:                                              ; preds = %117
  store i1 true, ptr @__kernfs_remove.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1369, i32 noundef 9, ptr noundef null) #13
  br label %124

124:                                              ; preds = %123, %117, %116
  %125 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %159, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.kernfs_node, ptr %63, i32 0, i32 4
  %130 = load i32, ptr %129, align 8
  %131 = ptrtoint ptr %129 to i32
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %160, label %133

133:                                              ; preds = %128
  %134 = load i16, ptr %76, align 8
  %135 = and i16 %134, 15
  %136 = icmp eq i16 %135, 1
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.kernfs_node, ptr %126, i32 0, i32 7
  %139 = load i32, ptr %138, align 8
  %140 = add i32 %139, -1
  store i32 %140, ptr %138, align 8
  %141 = load ptr, ptr %125, align 8
  br label %142

142:                                              ; preds = %137, %133
  %143 = phi ptr [ %126, %133 ], [ %141, %137 ]
  %144 = getelementptr inbounds %struct.kernfs_node, ptr %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.kernfs_elem_dir, ptr %144, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 4
  %148 = load ptr, ptr %125, align 8
  %149 = getelementptr inbounds %struct.kernfs_node, ptr %148, i32 0, i32 7, i32 0, i32 1
  call void @rb_erase(ptr noundef %129, ptr noundef %149) #13
  store i32 %131, ptr %129, align 8
  %150 = load ptr, ptr %125, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.kernfs_node, ptr %150, i32 0, i32 12
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.kernfs_iattrs, ptr %154, i32 0, i32 4
  call void @ktime_get_real_ts64(ptr noundef %157) #13
  %158 = getelementptr inbounds %struct.kernfs_iattrs, ptr %154, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %158, ptr noundef align 8 dereferenceable(16) %157, i32 16, i1 false)
  br label %159

159:                                              ; preds = %156, %152, %142, %124
  call void @kernfs_put(ptr noundef %63)
  br label %160

160:                                              ; preds = %159, %128
  call void @kernfs_put(ptr noundef %63)
  %161 = icmp eq ptr %63, %0
  br i1 %161, label %162, label %73

162:                                              ; preds = %160, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_break_active_protection(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3, !prof !9

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #13, !srcloc !10
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #13, !srcloc !17
  %6 = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %7 = icmp eq i32 %6, -2147483647
  br i1 %7, label %8, label %16, !prof !9

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr %0, ptr %10
  %13 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.kernfs_root, ptr %14, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %15, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %16

16:                                               ; preds = %8, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kernfs_unbreak_active_protection(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #13, !srcloc !10
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #13, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @kernfs_remove_self(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr %0, ptr %4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 7, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.kernfs_root, ptr %8, i32 0, i32 8
  tail call void @down_write(ptr noundef %9) #13
  %10 = icmp eq ptr %0, null
  br i1 %10, label %23, label %11, !prof !9

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !16
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #13, !srcloc !10
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #13, !srcloc !17
  %14 = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !18
  %15 = icmp eq i32 %14, -2147483647
  br i1 %15, label %16, label %23, !prof !9

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr %0, ptr %17
  %20 = getelementptr inbounds %struct.kernfs_node, ptr %19, i32 0, i32 7, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.kernfs_root, ptr %21, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %22, i32 noundef 3, i32 noundef 0, ptr noundef null) #13
  br label %23

23:                                               ; preds = %16, %11, %1
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %25 = load i16, ptr %24, align 8
  %26 = and i16 %25, 1024
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = or i16 %25, 1024
  store i16 %29, ptr %24, align 8
  tail call fastcc void @__kernfs_remove(ptr noundef %0)
  %30 = load i16, ptr %24, align 8
  %31 = or i16 %30, 2048
  store i16 %31, ptr %24, align 8
  br label %63

32:                                               ; preds = %23
  %33 = load ptr, ptr %3, align 8
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr %0, ptr %33
  %36 = getelementptr inbounds %struct.kernfs_node, ptr %35, i32 0, i32 7, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.kernfs_root, ptr %37, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #13
  %39 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %40 = tail call ptr @llvm.thread.pointer() #13
  store i32 0, ptr %2, align 4
  store ptr %40, ptr %39, align 4
  %41 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @autoremove_wake_function, ptr %41, align 4
  %42 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr %42, ptr %42, align 4
  %43 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  br label %45

45:                                               ; preds = %52, %32
  call void @prepare_to_wait(ptr noundef %38, ptr noundef nonnull %2, i32 noundef 2) #13
  %46 = load i16, ptr %24, align 8
  %47 = and i16 %46, 2048
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load volatile i32, ptr %44, align 4
  %51 = icmp eq i32 %50, -2147483647
  br i1 %51, label %53, label %52

52:                                               ; preds = %49, %45
  call void @up_write(ptr noundef %9) #13
  call void @schedule() #13
  call void @down_write(ptr noundef %9) #13
  br label %45

53:                                               ; preds = %49
  call void @finish_wait(ptr noundef %38, ptr noundef nonnull %2) #13
  %54 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = ptrtoint ptr %54 to i32
  %57 = icmp ne i32 %55, %56
  %58 = load i1, ptr @kernfs_remove_self.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %62, !prof !9

61:                                               ; preds = %53
  store i1 true, ptr @kernfs_remove_self.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1525, i32 noundef 9, ptr noundef null) #13
  br label %62

62:                                               ; preds = %61, %53
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #13
  br label %63

63:                                               ; preds = %62, %28
  %64 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %64) #13, !srcloc !10
  %65 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %64, ptr %64, i32 1, ptr elementtype(i32) %64) #13, !srcloc !11
  call void @up_write(ptr noundef %9) #13
  ret i1 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_remove_by_name_ns(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1556, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %1) #13
  br label %19

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr %0, ptr %8
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 7, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.kernfs_root, ptr %12, i32 0, i32 8
  tail call void @down_write(ptr noundef %13) #13
  %14 = tail call fastcc ptr @kernfs_find_ns(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  tail call fastcc void @__kernfs_remove(ptr noundef nonnull %14)
  br label %17

17:                                               ; preds = %16, %6
  %18 = phi i32 [ 0, %16 ], [ -2, %6 ]
  tail call void @up_write(ptr noundef %13) #13
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ -2, %5 ], [ %18, %17 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernfs_rename_ns(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %120, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 7, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.kernfs_root, ptr %10, i32 0, i32 8
  tail call void @down_write(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 1
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %118

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 1
  %17 = load volatile i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %118

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 10
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 4096
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %118

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %3
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @strcmp(ptr noundef %33, ptr noundef %2)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %118, label %36

36:                                               ; preds = %31, %27, %24
  %37 = tail call fastcc ptr @kernfs_find_ns(ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %118

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @strcmp(ptr noundef %41, ptr noundef %2)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = tail call ptr @kstrdup_const(ptr noundef %2, i32 noundef 3264) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %118, label %47

47:                                               ; preds = %44, %39
  %48 = phi ptr [ %45, %44 ], [ null, %39 ]
  %49 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = ptrtoint ptr %49 to i32
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %71, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10
  %55 = load i16, ptr %54, align 8
  %56 = and i16 %55, 15
  %57 = icmp eq i16 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds %struct.kernfs_node, ptr %59, i32 0, i32 7
  %61 = load i32, ptr %60, align 8
  %62 = add i32 %61, -1
  store i32 %62, ptr %60, align 8
  br label %63

63:                                               ; preds = %58, %53
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct.kernfs_node, ptr %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.kernfs_elem_dir, ptr %65, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, ptr %66, align 4
  %69 = load ptr, ptr %5, align 8
  %70 = getelementptr inbounds %struct.kernfs_node, ptr %69, i32 0, i32 7, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %49, ptr noundef %70) #13
  store i32 %51, ptr %49, align 8
  br label %71

71:                                               ; preds = %63, %47
  %72 = icmp eq ptr %1, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %71
  %74 = load volatile i32, ptr %1, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77, !prof !9

76:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %77

77:                                               ; preds = %76, %73
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #13, !srcloc !10
  %78 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #13, !srcloc !11
  br label %79

79:                                               ; preds = %77, %71
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @kernfs_rename_lock) #13
  %80 = load ptr, ptr %5, align 8
  store ptr %1, ptr %5, align 8
  %81 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 5
  store ptr %3, ptr %81, align 4
  %82 = icmp eq ptr %48, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %40, align 4
  store ptr %48, ptr %40, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi ptr [ %84, %83 ], [ null, %79 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %87 = load i16, ptr @kernfs_rename_lock, align 4
  %88 = add i16 %87, 1
  store i16 %88, ptr @kernfs_rename_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %89 = load ptr, ptr %40, align 4
  %90 = load ptr, ptr %81, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = tail call i32 @strlen(ptr noundef %89) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %94, %85
  %95 = phi i32 [ %98, %94 ], [ %92, %85 ]
  %96 = phi i32 [ %106, %94 ], [ %91, %85 ]
  %97 = phi ptr [ %99, %94 ], [ %89, %85 ]
  %98 = add i32 %95, -1
  %99 = getelementptr i8, ptr %97, i32 1
  %100 = load i8, ptr %97, align 1
  %101 = zext i8 %100 to i32
  %102 = shl nuw nsw i32 %101, 4
  %103 = add i32 %102, %96
  %104 = lshr i32 %101, 4
  %105 = add i32 %103, %104
  %106 = mul i32 %105, 11
  %107 = icmp eq i32 %98, 0
  br i1 %107, label %108, label %94

108:                                              ; preds = %94, %85
  %109 = phi i32 [ %91, %85 ], [ %106, %94 ]
  %110 = mul i32 %109, 1640531527
  %111 = and i32 %110, 2147483647
  %112 = icmp ult i32 %111, 2
  %113 = add nuw i32 %111, 2
  %114 = select i1 %112, i32 %113, i32 %111
  %115 = tail call i32 @llvm.umin.i32(i32 %114, i32 2147483646) #13
  %116 = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 6
  store i32 %115, ptr %116, align 8
  %117 = tail call fastcc i32 @kernfs_link_sibling(ptr noundef %0)
  tail call void @kernfs_put(ptr noundef %80)
  tail call void @kfree_const(ptr noundef %86) #13
  br label %118

118:                                              ; preds = %108, %44, %36, %31, %19, %15, %8
  %119 = phi i32 [ -2, %19 ], [ 0, %31 ], [ -17, %36 ], [ 0, %108 ], [ -12, %44 ], [ -2, %15 ], [ -2, %8 ]
  tail call void @up_write(ptr noundef %11) #13
  br label %120

120:                                              ; preds = %118, %4
  %121 = phi i32 [ %119, %118 ], [ -22, %4 ]
  ret i32 %121
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_fop_readdir(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  switch i64 %16, label %42 [
    i64 0, label %17
    i64 1, label %26
  ]

17:                                               ; preds = %11
  %18 = load ptr, ptr %1, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = zext i32 %20 to i64
  %22 = tail call i32 %18(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef 1, i64 noundef 0, i64 noundef %21, i32 noundef 4) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %120

24:                                               ; preds = %17
  store i64 1, ptr %15, align 8
  %25 = load ptr, ptr %3, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %25, %24 ], [ %4, %11 ]
  %28 = load ptr, ptr %1, align 8
  %29 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %29) #13
  %30 = getelementptr inbounds %struct.dentry, ptr %27, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 5
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !19
  %36 = load i16, ptr %29, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %29, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  %38 = zext i32 %35 to i64
  %39 = tail call i32 %28(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef 2, i64 noundef 1, i64 noundef %38, i32 noundef 4) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %120

41:                                               ; preds = %26
  store i64 2, ptr %15, align 8
  br label %42

42:                                               ; preds = %41, %11
  %43 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr %12, ptr %44
  %47 = getelementptr inbounds %struct.kernfs_node, ptr %46, i32 0, i32 7, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.kernfs_root, ptr %48, i32 0, i32 8
  tail call void @down_read(ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %12, i32 0, i32 10
  %51 = load i16, ptr %50, align 8
  %52 = and i16 %51, 32
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 9
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.super_block, ptr %56, i32 0, i32 27
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.kernfs_super_info, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %54, %42
  %62 = phi ptr [ %60, %54 ], [ null, %42 ]
  %63 = load i64, ptr %15, align 8
  %64 = tail call fastcc ptr @kernfs_dir_pos(ptr noundef %62, ptr noundef %12, i64 noundef %63, ptr noundef %14)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %119, label %66

66:                                               ; preds = %108, %61
  %67 = phi ptr [ %64, %61 ], [ %103, %108 ]
  %68 = getelementptr inbounds %struct.kernfs_node, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.kernfs_node, ptr %67, i32 0, i32 11
  %71 = load i16, ptr %70, align 2
  %72 = lshr i16 %71, 12
  %73 = zext i16 %72 to i32
  %74 = tail call i32 @strlen(ptr noundef %69)
  %75 = getelementptr inbounds %struct.kernfs_node, ptr %67, i32 0, i32 9
  %76 = load i64, ptr %75, align 8
  %77 = getelementptr inbounds %struct.kernfs_node, ptr %67, i32 0, i32 6
  %78 = load i32, ptr %77, align 8
  %79 = zext i32 %78 to i64
  store i64 %79, ptr %15, align 8
  store ptr %67, ptr %13, align 8
  %80 = load volatile i32, ptr %67, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83, !prof !9

82:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 496, i32 noundef 9, ptr noundef null) #13
  br label %83

83:                                               ; preds = %82, %66
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %67) #13, !srcloc !10
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %67, ptr nonnull %67, i32 1, ptr nonnull elementtype(i32) %67) #13, !srcloc !11
  tail call void @up_read(ptr noundef %49) #13
  %85 = and i64 %76, 4294967295
  %86 = load ptr, ptr %1, align 8
  %87 = load i64, ptr %15, align 8
  %88 = tail call i32 %86(ptr noundef %1, ptr noundef %69, i32 noundef %74, i64 noundef %87, i64 noundef %85, i32 noundef %73) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %83
  tail call void @down_read(ptr noundef %49) #13
  %91 = load i64, ptr %15, align 8
  %92 = and i64 %91, 4294967295
  %93 = tail call fastcc ptr @kernfs_dir_pos(ptr noundef %62, ptr noundef %12, i64 noundef %92, ptr noundef nonnull %67) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %119, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.kernfs_node, ptr %93, i32 0, i32 4
  %97 = tail call ptr @rb_next(ptr noundef %96) #13
  %98 = icmp eq ptr %97, null
  %99 = getelementptr i8, ptr %97, i32 -16
  %100 = icmp eq ptr %99, null
  %101 = or i1 %98, %100
  br i1 %101, label %119, label %102

102:                                              ; preds = %112, %95
  %103 = phi ptr [ %116, %112 ], [ %99, %95 ]
  %104 = phi ptr [ %114, %112 ], [ %97, %95 ]
  %105 = getelementptr i8, ptr %104, i32 -12
  %106 = load volatile i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = getelementptr i8, ptr %104, i32 12
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %62
  br i1 %111, label %66, label %112

112:                                              ; preds = %108, %102
  %113 = getelementptr inbounds %struct.kernfs_node, ptr %103, i32 0, i32 4
  %114 = tail call ptr @rb_next(ptr noundef %113) #13
  %115 = icmp eq ptr %114, null
  %116 = getelementptr i8, ptr %114, i32 -16
  %117 = icmp eq ptr %116, null
  %118 = or i1 %115, %117
  br i1 %118, label %119, label %102

119:                                              ; preds = %112, %95, %90, %61
  tail call void @up_read(ptr noundef %49) #13
  store ptr null, ptr %13, align 8
  store i64 2147483647, ptr %15, align 8
  br label %120

120:                                              ; preds = %119, %83, %26, %17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kernfs_dir_fop_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  tail call void @kernfs_put(ptr noundef %4)
  ret i32 0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernfs_setattr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_splice_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_drain_open_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @kernfs_dir_pos(ptr noundef readnone %0, ptr noundef readonly %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %6
  tail call void @kernfs_put(ptr noundef nonnull %3)
  br label %20

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 6
  %17 = load i32, ptr %16, align 8
  %18 = zext i32 %17 to i64
  %19 = icmp eq i64 %18, %2
  tail call void @kernfs_put(ptr noundef nonnull %3)
  br i1 %19, label %46, label %20

20:                                               ; preds = %15, %14, %4
  %21 = add i64 %2, -2
  %22 = icmp ult i64 %21, 2147483645
  br i1 %22, label %23, label %64

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 7, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %64, label %27

27:                                               ; preds = %39, %23
  %28 = phi ptr [ %41, %39 ], [ %25, %23 ]
  %29 = getelementptr i8, ptr %28, i32 16
  %30 = load i32, ptr %29, align 8
  %31 = zext i32 %30 to i64
  %32 = icmp sgt i64 %31, %2
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 2
  br label %39

35:                                               ; preds = %27
  %36 = icmp ult i64 %31, %2
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 1
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %34, %33 ], [ %38, %37 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %27

43:                                               ; preds = %39, %35
  %44 = getelementptr i8, ptr %28, i32 -16
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %43, %15
  %47 = phi ptr [ %3, %15 ], [ %44, %43 ]
  br label %48

48:                                               ; preds = %57, %46
  %49 = phi ptr [ %61, %57 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.kernfs_node, ptr %49, i32 0, i32 1
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.kernfs_node, ptr %49, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53, %48
  %58 = getelementptr inbounds %struct.kernfs_node, ptr %49, i32 0, i32 4
  %59 = tail call ptr @rb_next(ptr noundef %58) #13
  %60 = icmp eq ptr %59, null
  %61 = getelementptr i8, ptr %59, i32 -16
  %62 = icmp eq ptr %61, null
  %63 = or i1 %60, %62
  br i1 %63, label %64, label %48

64:                                               ; preds = %57, %53, %43, %23, %20
  %65 = phi ptr [ null, %43 ], [ null, %20 ], [ null, %23 ], [ null, %57 ], [ %49, %53 ]
  ret ptr %65
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 560225, i64 2148061791, i64 2148061817, i64 2148061864, i64 2148061886, i64 2148061914, i64 2148061934}
!11 = !{i64 2148125053, i64 2148125079, i64 2148125108, i64 2148125142, i64 2148125173, i64 2148125196}
!12 = !{i64 2148238479}
!13 = !{i64 546288, i64 546312, i64 546333, i64 546350, i64 546367}
!14 = !{i64 2148238679}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2148225732}
!17 = !{i64 2148128094, i64 2148128126, i64 2148128155, i64 2148128189, i64 2148128220, i64 2148128243}
!18 = !{i64 2148225935}
!19 = !{i64 2149208438}
!20 = !{i64 2149204262}
!21 = !{i64 2149204337, i64 2149204364, i64 2149204411, i64 2149204433, i64 2149204461, i64 2149204481}
!22 = !{i64 2149231441}
!23 = !{i64 596077}
!24 = !{i64 2151389800}
!25 = !{i64 2148124560}
!26 = !{i64 546794, i64 546819, i64 546841, i64 546857, i64 546869, i64 546889, i64 546913, i64 546929, i64 546941}
!27 = !{i64 2148124686}
!28 = !{i64 2148127410, i64 2148127436, i64 2148127465, i64 2148127499, i64 2148127530, i64 2148127553}
!29 = !{i64 589217}
!30 = !{i64 2149232582}
!31 = !{!"auto-init"}
