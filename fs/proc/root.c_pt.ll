; ModuleID = '/llk/IR/fs/proc/root.c_pt.bc'
source_filename = "../fs/proc/root.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proc_dir_entry = type { %struct.atomic_t, %struct.refcount_struct, %struct.list_head, %struct.spinlock, ptr, ptr, %union.anon.71, ptr, %union.anon.72, ptr, ptr, i32, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, ptr, %struct.rb_root, %struct.rb_node, ptr, i16, i8, i8, [0 x i8] }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%union.anon.71 = type { ptr }
%union.anon.72 = type { ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.fs_context_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [14 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.4 }
%union.anon.4 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.57, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, i32, i32, i32 }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.p_log = type { ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
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
%struct.proc_fs_info = type { ptr, ptr, ptr, %struct.kgid_t, i32, i32 }
%struct.fs_parse_result = type { i8, %union.anon.61 }
%union.anon.61 = type { i64 }
%struct.proc_fs_context = type { ptr, i32, i32, i32, i32 }
%struct.fs_parameter = type { ptr, i8, %union.anon.2, i32, i32 }
%union.anon.2 = type { ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.69, %struct.list_head, %struct.list_head, %union.anon.70 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.1, ptr }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.67 }
%union.anon.67 = type { i64 }
%union.anon.69 = type { %struct.list_head }
%union.anon.70 = type { %struct.hlist_node }
%struct.path = type { ptr, ptr }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.dir_context = type { ptr, i64 }

@.str = private unnamed_addr constant [7 x i8] c"mounts\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"self/mounts\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"fs/nfsd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@proc_fs_type = internal global %struct.file_system_type { ptr @.str.7, i32 24, ptr @proc_init_fs_context, ptr @proc_fs_parameters, ptr null, ptr @proc_kill_sb, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, align 4
@proc_root_inode_operations = internal constant %struct.inode_operations { ptr @proc_root_lookup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_root_getattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 64
@proc_root_operations = internal constant %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr @generic_read_dir, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @proc_root_readdir, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@proc_root = dso_local global %struct.proc_dir_entry { %struct.atomic_t zeroinitializer, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @proc_root_inode_operations, %union.anon.71 { ptr @proc_root_operations }, ptr null, %union.anon.72 zeroinitializer, ptr null, ptr null, i32 0, i32 1, i32 2, %struct.kuid_t zeroinitializer, %struct.kgid_t zeroinitializer, i64 0, ptr @proc_root, %struct.rb_root zeroinitializer, %struct.rb_node zeroinitializer, ptr @.str.6, i16 16749, i8 0, i8 5, [0 x i8] zeroinitializer }, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"/proc\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@proc_fs_parameters = internal constant [4 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.19, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.8, ptr @fs_param_is_string, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.20, ptr @fs_param_is_string, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec zeroinitializer], align 4
@proc_fs_context_ops = internal constant %struct.fs_context_operations { ptr @proc_fs_context_free, ptr null, ptr @proc_parse_param, ptr null, ptr @proc_get_tree, ptr @proc_reconfigure }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"hidepid\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"proc: unexpected type of hidepid value\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"proc: unknown value of hidepid - %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"noaccess\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"invisible\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"ptraceable\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"proc: unsupported subset option - %s\0A\00", align 1
@proc_sops = external dso_local constant %struct.super_operations, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"\013proc_fill_super: get root inode failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"\013proc_fill_super: allocate dentry failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"subset\00", align 1
@switch.table.proc_parse_param = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 4], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @proc_root_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @proc_init_kmemcache() #9
  tail call void @set_proc_pid_nlink() #9
  tail call void @proc_self_init() #9
  tail call void @proc_thread_self_init() #9
  %1 = tail call ptr @proc_symlink(ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull @.str.1) #9
  %2 = tail call i32 @proc_net_init() #9
  %3 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.2, ptr noundef null) #9
  %4 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.3, ptr noundef null) #9
  %5 = tail call ptr @proc_create_mount_point(ptr noundef nonnull @.str.4) #9
  tail call void @proc_tty_init() #9
  %6 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.5, ptr noundef null) #9
  %7 = tail call i32 @proc_sys_init() #9
  %8 = tail call i32 @register_filesystem(ptr noundef nonnull @proc_fs_type) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_init_kmemcache() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_proc_pid_nlink() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_self_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_thread_self_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_symlink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_net_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_mount_point(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_tty_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_sys_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_init_fs_context(ptr nocapture noundef writeonly %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #9
  %7 = tail call ptr @task_active_pid_ns(ptr noundef %6) #9
  store ptr %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 6
  store ptr @init_user_ns, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  store ptr %3, ptr %9, align 4
  store ptr @proc_fs_context_ops, ptr %0, align 4
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ 0, %5 ], [ -12, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_kill_sb(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @kill_anon_super(ptr noundef %0) #9
  br label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @dput(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.proc_fs_info, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void @dput(ptr noundef %10) #9
  tail call void @kill_anon_super(ptr noundef %0) #9
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @proc_fs_context_free(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_parse_param(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.fs_parse_result, align 8
  %4 = alloca %struct.fs_parse_result, align 8
  %5 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9
  %8 = call i32 @__fs_parse(ptr noundef %7, ptr noundef nonnull @proc_fs_parameters, ptr noundef %1, ptr noundef nonnull %4) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %95, label %10

10:                                               ; preds = %2
  switch i32 %8, label %95 [
    i32 0, label %11
    i32 1, label %15
    i32 2, label %64
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.fs_parse_result, ptr %4, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.proc_fs_context, ptr %6, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  br label %90

15:                                               ; preds = %10
  %16 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #9, !annotation !8
  %17 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 2
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %22 = load ptr, ptr %21, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %22, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.9) #9
  br label %63

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fs_parse_result, ptr %3, i32 0, i32 1
  %27 = call i32 @kstrtouint(ptr noundef %25, i32 noundef 0, ptr noundef %26) #9
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, ptr %26, align 8
  %31 = icmp ult i32 %30, 5
  br i1 %31, label %52, label %32

32:                                               ; preds = %52, %29
  %33 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %24, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %34, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10, ptr noundef %35) #9
  br label %63

36:                                               ; preds = %23
  %37 = load ptr, ptr %24, align 4
  %38 = call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(4) @.str.11) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %36
  %41 = call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(9) @.str.12) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(10) @.str.13) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(11) @.str.14) #9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %51 = load ptr, ptr %50, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %51, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.10, ptr noundef %37) #9
  br label %63

52:                                               ; preds = %29
  %53 = trunc i32 %30 to i8
  %54 = lshr i8 23, %53
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %32, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds [5 x i32], ptr @switch.table.proc_parse_param, i32 0, i32 %30
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %46, %43, %40, %36
  %61 = phi i32 [ 0, %36 ], [ 1, %40 ], [ 2, %43 ], [ 4, %46 ], [ %59, %57 ]
  %62 = getelementptr inbounds %struct.proc_fs_context, ptr %16, i32 0, i32 2
  store i32 %61, ptr %62, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %90

63:                                               ; preds = %49, %32, %20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %95

64:                                               ; preds = %10
  %65 = getelementptr inbounds %struct.fs_parameter, ptr %1, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %90, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %5, align 4
  %70 = getelementptr inbounds %struct.proc_fs_context, ptr %69, i32 0, i32 4
  br label %71

71:                                               ; preds = %85, %68
  %72 = phi ptr [ %66, %68 ], [ %78, %85 ]
  %73 = call ptr @strchr(ptr noundef nonnull %72, i32 noundef 44) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = getelementptr i8, ptr %73, i32 1
  store i8 0, ptr %73, align 1
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi ptr [ %76, %75 ], [ null, %71 ]
  %79 = load i8, ptr %72, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = call i32 @strcmp(ptr noundef nonnull %72, ptr noundef nonnull dereferenceable(4) @.str.15) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  store i32 1, ptr %70, align 4
  br label %85

85:                                               ; preds = %84, %77
  %86 = icmp eq ptr %78, null
  br i1 %86, label %90, label %71

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %89 = load ptr, ptr %88, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %89, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str.16, ptr noundef nonnull %72) #9
  br label %95

90:                                               ; preds = %85, %64, %60, %11
  %91 = shl nuw i32 1, %8
  %92 = getelementptr inbounds %struct.proc_fs_context, ptr %6, i32 0, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %90, %87, %63, %10, %2
  %96 = phi i32 [ 0, %90 ], [ %8, %2 ], [ -22, %63 ], [ -22, %87 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_get_tree(ptr noundef %0) #2 {
  %2 = tail call i32 @get_tree_nodev(ptr noundef %0, ptr noundef nonnull @proc_fill_super) #9
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_reconfigure(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 27
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @sync_filesystem(ptr noundef %5) #9
  %9 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 3
  %17 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 4
  %19 = load i32, ptr %11, align 4
  br label %20

20:                                               ; preds = %15, %1
  %21 = phi i32 [ %19, %15 ], [ %12, %1 ]
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %11, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ %28, %24 ], [ %21, %20 ]
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.proc_fs_info, ptr %7, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tree_nodev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_fill_super(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 24) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  store ptr %9, ptr %6, align 8
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.proc_fs_info, ptr %6, i32 0, i32 3
  %17 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 4
  %19 = load i32, ptr %11, align 4
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ %12, %8 ]
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.proc_fs_info, ptr %6, i32 0, i32 4
  store i32 %26, ptr %27, align 8
  %28 = load i32, ptr %11, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i32 [ %28, %24 ], [ %21, %20 ]
  %31 = and i32 %30, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.proc_fs_context, ptr %10, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.proc_fs_info, ptr %6, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 11
  %39 = load i32, ptr %38, align 8
  %40 = or i32 %39, 22
  store i32 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 10
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 2058
  store i32 %43, ptr %41, align 4
  %44 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 3
  store i32 1024, ptr %44, align 16
  %45 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 2
  store i8 10, ptr %45, align 4
  %46 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 12
  store i32 40864, ptr %46, align 4
  %47 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 6
  store ptr @proc_sops, ptr %47, align 4
  %48 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 28
  store i32 1, ptr %48, align 32
  %49 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27
  store ptr %6, ptr %49, align 4
  %50 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 53
  store i32 2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 40, i32 3
  store i32 0, ptr %51, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1)) #9, !srcloc !9
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), ptr getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1)) #9, !srcloc !10
  %53 = extractvalue { i32, i32, i32 } %52, 0
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !11

55:                                               ; preds = %37
  %56 = add i32 %53, 1
  %57 = or i32 %56, %53
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %61, label %59, !prof !12

59:                                               ; preds = %55, %37
  %60 = phi i32 [ 2, %37 ], [ 1, %55 ]
  tail call void @refcount_warn_saturate(ptr noundef getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 1), i32 noundef %60) #9
  br label %61

61:                                               ; preds = %59, %55
  %62 = tail call ptr @proc_get_inode(ptr noundef %0, ptr noundef nonnull @proc_root) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %77

66:                                               ; preds = %61
  %67 = tail call ptr @d_make_root(ptr noundef nonnull %62) #9
  %68 = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 13
  store ptr %67, ptr %68, align 64
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  br label %77

72:                                               ; preds = %66
  %73 = tail call i32 @proc_setup_self(ptr noundef %0) #9
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = tail call i32 @proc_setup_thread_self(ptr noundef %0) #9
  br label %77

77:                                               ; preds = %75, %72, %70, %64, %2
  %78 = phi i32 [ %76, %75 ], [ -12, %70 ], [ -12, %64 ], [ -12, %2 ], [ %73, %72 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_get_inode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setup_self(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_setup_thread_self(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sync_filesystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @proc_root_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @proc_pid_lookup(ptr noundef %1, i32 noundef %2) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @proc_lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_root_getattr(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.path, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %9, ptr noundef %2) #9
  %10 = load i32, ptr getelementptr inbounds (%struct.proc_dir_entry, ptr @proc_root, i32 0, i32 13), align 8
  %11 = tail call i32 @nr_processes() #9
  %12 = add i32 %11, %10
  %13 = getelementptr inbounds %struct.kstat, ptr %2, i32 0, i32 2
  store i32 %12, ptr %13, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_pid_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_processes() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_read_dir(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_root_readdir(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.dir_context, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = icmp slt i64 %4, 256
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call i32 @proc_readdir(ptr noundef %0, ptr noundef %1) #9
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %12, label %9, !prof !11

9:                                                ; preds = %6
  store i64 256, ptr %3, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = tail call i32 @proc_pid_readdir(ptr noundef %0, ptr noundef %1) #9
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ %7, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_readdir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_pid_readdir(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{i64 547719, i64 2148049285, i64 2148049311, i64 2148049358, i64 2148049380, i64 2148049408, i64 2148049428}
!10 = !{i64 2148114005, i64 2148114037, i64 2148114066, i64 2148114100, i64 2148114131, i64 2148114154}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
