; ModuleID = '/llk/IR/fs/tracefs/inode.c_pt.bc'
source_filename = "../fs/tracefs/inode.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.tree_descr = type { ptr, ptr, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.68, %struct.list_head, %struct.list_head, %union.anon.69 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.lockref = type { %union.anon.66 }
%union.anon.66 = type { i64 }
%union.anon.68 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.69 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.65, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.63 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.65 = type { ptr }
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
%struct.anon = type { i32, i32 }
%struct.substring_t = type { ptr, ptr }
%struct.tracefs_mount_opts = type { %struct.kuid_t, %struct.kgid_t, i16 }

@__UNIQUE_ID_alias226 = internal constant [25 x i8] c"tracefs.alias=fs-tracefs\00", section ".modinfo", align 1
@tracefs_file_operations = internal constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @default_read_file, ptr @default_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@simple_dir_inode_operations = external dso_local constant %struct.inode_operations, align 64
@tracefs_ops.0 = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@tracefs_ops.1 = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str = private unnamed_addr constant [19 x i8] c"fs/tracefs/inode.c\00", align 1
@tracefs_dir_inode_operations = internal constant %struct.inode_operations { ptr @simple_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tracefs_syscall_mkdir, ptr @tracefs_syscall_rmdir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@trace_fs_type = internal global %struct.file_system_type { ptr @.str.1, i32 0, ptr null, ptr null, ptr @trace_mount, ptr @kill_litter_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@tracefs_mount = internal global ptr null, align 4
@tracefs_mount_count = internal global i32 0, align 4
@tracefs_registered = internal unnamed_addr global i1 false, align 1
@__initcall__kmod_tracefs__227_630_tracefs_init1 = internal global ptr @tracefs_init, section ".initcall1.init", align 4
@simple_dir_operations = external dso_local constant %struct.file_operations, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tracefs\00", align 1
@trace_fill_super.trace_files = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { ptr @.str.2, ptr null, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tracefs_super_operations = internal constant %struct.super_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr @tracefs_remount, ptr null, ptr @tracefs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = internal constant [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.4 }, %struct.match_token { i32 1, ptr @.str.5 }, %struct.match_token { i32 2, ptr @.str.6 }, %struct.match_token { i32 3, ptr null }], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"uid=%u\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"gid=%u\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mode=%o\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c",mode=%o\00", align 1
@overflowuid = external dso_local local_unnamed_addr global i32, align 4
@overflowgid = external dso_local local_unnamed_addr global i32, align 4
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__initcall__kmod_tracefs__227_630_tracefs_init1], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tracefs_create_file(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.timespec64, align 8
  %7 = icmp ult i16 %1, 4096
  %8 = or i16 %1, -32768
  %9 = select i1 %7, i16 %8, i16 %1
  %10 = and i16 %9, -4096
  %11 = icmp eq i16 %10, -32768
  br i1 %11, label %13, label %12, !prof !8

12:                                               ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/tracefs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #11, !srcloc !9
  unreachable

13:                                               ; preds = %5
  %14 = tail call fastcc ptr @start_creating(ptr noundef %0, ptr noundef %2)
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %62, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @new_inode(ptr noundef %18) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call fastcc void @failed_creating(ptr noundef %14)
  br label %62

22:                                               ; preds = %16
  %23 = tail call i32 @get_next_ino() #11
  %24 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 10
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 14
  %26 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 15
  %27 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %6, ptr noundef nonnull %19) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %26, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %25, ptr noundef align 8 dereferenceable(16) %27, i32 16, i1 false) #11
  store i16 %9, ptr %19, align 8
  %28 = icmp eq ptr %4, null
  %29 = select i1 %28, ptr @tracefs_file_operations, ptr %4
  %30 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 39
  store ptr %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 47
  store ptr %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 2
  %33 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 3
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %32, align 4
  %39 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 3
  %40 = load ptr, ptr %33, align 8
  %41 = getelementptr inbounds %struct.dentry, ptr %40, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 8
  store i32 %44, ptr %39, align 8
  call void @d_instantiate(ptr noundef %14, ptr noundef nonnull %19) #11
  %45 = load ptr, ptr %33, align 8
  %46 = getelementptr inbounds %struct.dentry, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %49, i32 0, i32 42
  %51 = load volatile i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %22
  %54 = getelementptr inbounds %struct.dentry, ptr %14, i32 0, i32 4
  %55 = call i32 @fsnotify(i32 noundef 256, ptr noundef %14, i32 noundef 3, ptr noundef %47, ptr noundef %54, ptr noundef null, i32 noundef 0) #11
  %56 = load ptr, ptr %33, align 8
  %57 = getelementptr inbounds %struct.dentry, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 8
  br label %59

59:                                               ; preds = %53, %22
  %60 = phi ptr [ %47, %22 ], [ %58, %53 ]
  %61 = getelementptr inbounds %struct.inode, ptr %60, i32 0, i32 24
  call void @up_write(ptr noundef %61) #11
  br label %62

62:                                               ; preds = %59, %21, %13
  %63 = phi ptr [ null, %21 ], [ %14, %59 ], [ null, %13 ]
  ret ptr %63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @start_creating(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @simple_pin_fs(ptr noundef nonnull @trace_fs_type, ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = inttoptr i32 %3 to ptr
  br label %35

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load ptr, ptr @tracefs_mount, align 4
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %1, %7 ], [ %11, %9 ]
  %14 = getelementptr inbounds %struct.dentry, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 24
  tail call void @down_write(ptr noundef %16) #11
  %17 = load ptr, ptr %14, align 8
  %18 = getelementptr inbounds %struct.inode, ptr %17, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31, !prof !8

22:                                               ; preds = %12
  %23 = tail call i32 @strlen(ptr noundef %0)
  %24 = tail call ptr @lookup_one_len(ptr noundef %0, ptr noundef %13, i32 noundef %23) #11
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  tail call void @dput(ptr noundef %24) #11
  br label %31

31:                                               ; preds = %30, %22, %12
  %32 = phi ptr [ inttoptr (i32 -17 to ptr), %30 ], [ inttoptr (i32 -2 to ptr), %12 ], [ %24, %22 ]
  %33 = load ptr, ptr %14, align 8
  %34 = getelementptr inbounds %struct.inode, ptr %33, i32 0, i32 24
  tail call void @up_write(ptr noundef %34) #11
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #11
  br label %35

35:                                               ; preds = %31, %26, %5
  %36 = phi ptr [ %6, %5 ], [ %32, %31 ], [ %24, %26 ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @failed_creating(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dentry, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 24
  tail call void @up_write(ptr noundef %6) #11
  tail call void @dput(ptr noundef %0) #11
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_instantiate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tracefs_create_dir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @__create_dir(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @simple_dir_inode_operations)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__create_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = tail call fastcc ptr @start_creating(ptr noundef %0, ptr noundef %1)
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %54, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @new_inode(ptr noundef %9) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @failed_creating(ptr noundef %5)
  br label %54

13:                                               ; preds = %7
  %14 = tail call i32 @get_next_ino() #11
  %15 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 10
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 14
  %17 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 15
  %18 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %4, ptr noundef nonnull %10) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 16, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %17, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %16, ptr noundef align 8 dereferenceable(16) %18, i32 16, i1 false) #11
  store i16 16872, ptr %10, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 7
  store ptr %2, ptr %19, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 39
  store ptr @simple_dir_operations, ptr %20, align 8
  %21 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 2
  %22 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  store i32 %27, ptr %21, align 4
  %28 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 3
  %29 = load ptr, ptr %22, align 8
  %30 = getelementptr inbounds %struct.dentry, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  store i32 %33, ptr %28, align 8
  call void @inc_nlink(ptr noundef nonnull %10) #11
  call void @d_instantiate(ptr noundef %5, ptr noundef nonnull %10) #11
  %34 = load ptr, ptr %22, align 8
  %35 = getelementptr inbounds %struct.dentry, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8
  call void @inc_nlink(ptr noundef %36) #11
  %37 = load ptr, ptr %22, align 8
  %38 = getelementptr inbounds %struct.dentry, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %39, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 42
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %13
  %46 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4
  %47 = call i32 @fsnotify(i32 noundef 1073742080, ptr noundef %5, i32 noundef 3, ptr noundef %39, ptr noundef %46, ptr noundef null, i32 noundef 0) #11
  %48 = load ptr, ptr %22, align 8
  %49 = getelementptr inbounds %struct.dentry, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 8
  br label %51

51:                                               ; preds = %45, %13
  %52 = phi ptr [ %39, %13 ], [ %50, %45 ]
  %53 = getelementptr inbounds %struct.inode, ptr %52, i32 0, i32 24
  call void @up_write(ptr noundef %53) #11
  br label %54

54:                                               ; preds = %51, %12, %3
  %55 = phi ptr [ null, %12 ], [ %5, %51 ], [ null, %3 ]
  ret ptr %55
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @tracefs_create_instance_dir(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 section ".init.text" {
  %5 = load ptr, ptr @tracefs_ops.0, align 4
  %6 = icmp ne ptr %5, null
  %7 = load ptr, ptr @tracefs_ops.1, align 4
  %8 = icmp ne ptr %7, null
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %11, !prof !10

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 572, i32 noundef 9, ptr noundef null) #11
  br label %15

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @__create_dir(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tracefs_dir_inode_operations)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store ptr %2, ptr @tracefs_ops.0, align 4
  store ptr %3, ptr @tracefs_ops.1, align 4
  br label %15

15:                                               ; preds = %14, %11, %10
  %16 = phi ptr [ null, %10 ], [ %12, %14 ], [ null, %11 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tracefs_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @simple_pin_fs(ptr noundef nonnull @trace_fs_type, ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #11
  tail call void @simple_recursive_removal(ptr noundef nonnull %0, ptr noundef nonnull @remove_one) #11
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_pin_fs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_recursive_removal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @remove_one(ptr nocapture noundef readnone %0) #0 {
  tail call void @simple_release_fs(ptr noundef nonnull @tracefs_mount, ptr noundef nonnull @tracefs_mount_count) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_release_fs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tracefs_initialized() local_unnamed_addr #5 {
  %1 = load i1, ptr @tracefs_registered, align 1
  ret i1 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tracefs_init() #4 section ".init.text" {
  %1 = load ptr, ptr @kernel_kobj, align 4
  %2 = tail call i32 @sysfs_create_mount_point(ptr noundef %1, ptr noundef nonnull @.str.10) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = tail call i32 @register_filesystem(ptr noundef nonnull @trace_fs_type) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i1 true, ptr @tracefs_registered, align 1
  br label %8

8:                                                ; preds = %7, %4, %0
  %9 = phi i32 [ -22, %0 ], [ 0, %7 ], [ %5, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lookup_one_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @default_read_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef readnone %3) #7 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @default_write_file(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, i32 noundef returned %2, ptr nocapture noundef readnone %3) #7 {
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsnotify(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inc_nlink(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_lookup(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracefs_syscall_mkdir(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %2, i32 0, i32 4, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = add i32 %7, 1
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %11, ptr align 1 %9, i32 %7, i1 false) #11
  %14 = getelementptr i8, ptr %11, i32 %7
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 24
  tail call void @up_write(ptr noundef %15) #11
  %16 = load ptr, ptr @tracefs_ops.0, align 4
  %17 = tail call i32 %16(ptr noundef nonnull %11) #11
  tail call void @down_write(ptr noundef %15) #11
  tail call void @kfree(ptr noundef nonnull %11) #11
  br label %18

18:                                               ; preds = %13, %4
  %19 = phi i32 [ %17, %13 ], [ -12, %4 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracefs_syscall_rmdir(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4
  %4 = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = add i32 %5, 1
  %9 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %9, ptr align 1 %7, i32 %5, i1 false) #11
  %12 = getelementptr i8, ptr %9, i32 %5
  store i8 0, ptr %12, align 1
  %13 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 24
  tail call void @up_write(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 24
  tail call void @up_write(ptr noundef %16) #11
  %17 = load ptr, ptr @tracefs_ops.1, align 4
  %18 = tail call i32 %17(ptr noundef nonnull %9) #11
  tail call void @down_write(ptr noundef %13) #11
  %19 = load ptr, ptr %14, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 24
  tail call void @down_write(ptr noundef %20) #11
  tail call void @kfree(ptr noundef nonnull %9) #11
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i32 [ %18, %11 ], [ -12, %2 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @trace_mount(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = tail call ptr @mount_single(ptr noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull @trace_fill_super) #11
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_litter_super(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_single(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_fill_super(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #13
  %6 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %5, ptr %6, align 4
  %7 = icmp eq ptr %5, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @tracefs_parse_options(ptr noundef %1, ptr noundef nonnull %5)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = tail call i32 @simple_fill_super(ptr noundef %0, i32 noundef 1953653091, ptr noundef nonnull @trace_fill_super.trace_files) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @tracefs_super_operations, ptr %15, align 4
  tail call fastcc void @tracefs_apply_options(ptr noundef %0)
  br label %18

16:                                               ; preds = %11, %8, %3
  %17 = phi i32 [ %9, %8 ], [ %12, %11 ], [ -12, %3 ]
  tail call void @kfree(ptr noundef %5) #11
  store ptr null, ptr %6, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %17, %16 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tracefs_parse_options(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca [3 x %struct.substring_t], align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !11
  %6 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %1, i32 0, i32 2
  store i16 448, ptr %6, align 4
  %7 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.3) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %1, i32 0, i32 1
  br label %11

11:                                               ; preds = %38, %9
  %12 = phi ptr [ %7, %9 ], [ %39, %38 ]
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %11
  %16 = call i32 @match_token(ptr noundef nonnull %12, ptr noundef nonnull @tokens, ptr noundef nonnull %4) #11
  switch i32 %16, label %38 [
    i32 0, label %17
    i32 1, label %24
    i32 2, label %31
  ]

17:                                               ; preds = %15
  %18 = call i32 @match_int(ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, ptr %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  store i32 %21, ptr %1, align 4
  br label %38

24:                                               ; preds = %15
  %25 = call i32 @match_int(ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %41, label %30

30:                                               ; preds = %27
  store i32 %28, ptr %10, align 4
  br label %38

31:                                               ; preds = %15
  %32 = call i32 @match_octal(ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, ptr %5, align 4
  %36 = trunc i32 %35 to i16
  %37 = and i16 %36, 4095
  store i16 %37, ptr %6, align 4
  br label %38

38:                                               ; preds = %34, %30, %23, %15, %11
  %39 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.3) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %11

41:                                               ; preds = %38, %31, %27, %24, %20, %17, %2
  %42 = phi i32 [ 0, %2 ], [ 0, %38 ], [ -22, %31 ], [ -22, %27 ], [ -22, %24 ], [ -22, %20 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_fill_super(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tracefs_apply_options(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, -4096
  store i16 %9, ptr %7, align 8
  %10 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %3, i32 0, i32 2
  %11 = load i16, ptr %10, align 4
  %12 = or i16 %11, %9
  store i16 %12, ptr %7, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %3, align 4
  store i32 %14, ptr %13, align 4
  %15 = load ptr, ptr %4, align 64
  %16 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %3, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.dentry, ptr %15, i32 0, i32 5
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.inode, ptr %20, i32 0, i32 3
  store i32 %17, ptr %23, align 8
  br label %24

24:                                               ; preds = %22, %1
  br label %30

25:                                               ; preds = %48
  %26 = getelementptr i8, ptr %40, i32 -112
  %27 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %30

30:                                               ; preds = %25, %24
  %31 = phi ptr [ %26, %25 ], [ %15, %24 ]
  %32 = getelementptr inbounds %struct.dentry, ptr %31, i32 0, i32 14
  %33 = load ptr, ptr %32, align 8
  br label %34

34:                                               ; preds = %79, %30
  %35 = phi ptr [ %33, %30 ], [ %72, %79 ]
  %36 = phi ptr [ %31, %30 ], [ %63, %79 ]
  %37 = getelementptr inbounds %struct.dentry, ptr %36, i32 0, i32 14
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %56, label %39

39:                                               ; preds = %52, %34
  %40 = phi ptr [ %41, %52 ], [ %35, %34 ]
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %40, i32 -32
  tail call void @_raw_spin_lock(ptr noundef %42) #11
  %43 = getelementptr i8, ptr %40, i32 -72
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.inode, ptr %44, i32 0, i32 3
  store i32 %17, ptr %47, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = getelementptr i8, ptr %40, i32 8
  %50 = load volatile ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %52, label %25

52:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %53 = load i16, ptr %42, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %55 = icmp eq ptr %41, %37
  br i1 %55, label %56, label %39

56:                                               ; preds = %52, %34
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  %57 = icmp eq ptr %36, %15
  br i1 %57, label %80, label %60

58:                                               ; preds = %69
  %59 = icmp eq ptr %63, %15
  br i1 %59, label %80, label %60

60:                                               ; preds = %58, %56
  %61 = phi ptr [ %63, %58 ], [ %36, %56 ]
  %62 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %65 = load i16, ptr %64, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %67 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %67) #11
  %68 = getelementptr inbounds %struct.dentry, ptr %63, i32 0, i32 14
  br label %69

69:                                               ; preds = %74, %60
  %70 = phi ptr [ %61, %60 ], [ %75, %74 ]
  %71 = getelementptr inbounds %struct.dentry, ptr %70, i32 0, i32 13
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, %68
  br i1 %73, label %58, label %74

74:                                               ; preds = %69
  %75 = getelementptr i8, ptr %72, i32 -112
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 32768
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %69, !prof !8

79:                                               ; preds = %74
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  br label %34

80:                                               ; preds = %58, %56
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %81 = load i16, ptr %18, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_octal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracefs_remount(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @sync_filesystem(ptr noundef %0) #11
  %7 = tail call fastcc i32 @tracefs_parse_options(ptr noundef %2, ptr noundef %5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @tracefs_apply_options(ptr noundef %0)
  br label %10

10:                                               ; preds = %9, %3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tracefs_show_options(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %7, -1
  %11 = load i32, ptr @overflowuid, align 4
  %12 = select i1 %10, i32 %11, i32 %7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %12) #11
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, -1
  %19 = load i32, ptr @overflowgid, align 4
  %20 = select i1 %18, i32 %19, i32 %15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %20) #11
  br label %21

21:                                               ; preds = %17, %13
  %22 = getelementptr inbounds %struct.tracefs_mount_opts, ptr %6, i32 0, i32 2
  %23 = load i16, ptr %22, align 4
  %24 = icmp eq i16 %23, 448
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %26) #11
  br label %27

27:                                               ; preds = %25, %21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_mount_point(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2152611481, i64 2152611964, i64 2152611518, i64 2152611574, i64 2152611608, i64 2152611632, i64 2152611673, i64 2152611694, i64 2152611722, i64 2152611756}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i64 2148940484}
!13 = !{i64 2148936308}
!14 = !{i64 2148936383, i64 2148936410, i64 2148936457, i64 2148936479, i64 2148936507, i64 2148936527}
!15 = !{i64 2148963487}
!16 = !{i64 2149058839}
!17 = !{i64 2149059056}
