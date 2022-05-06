; ModuleID = '/llk/IR/fs/nfs/nfs4super.c_pt.bc'
source_filename = "../fs/nfs/nfs4super.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type {}
%struct.rpc_version = type { i32, i32, ptr, ptr }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_subversion = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.18 = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.p_log = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.157, %struct.anon.159, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.anon.157 = type { %union.anon.158, i32, ptr, i32, i32, i16 }
%union.anon.158 = type { %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.112 }
%union.anon.112 = type { ptr, [124 x i8] }
%struct.anon.159 = type { %union.anon.160, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.160 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.fs_parameter = type { ptr, i8, %union.anon.18, i32, i32 }
%struct.nfs_referral_count = type { %struct.list_head, ptr, i32 }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.136, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.137, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.138, ptr, %struct.address_space, %struct.list_head, %union.anon.139, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.136 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.137 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.138 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.ida = type { %struct.xarray }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfs4_stateid_struct = type { %union.anon.124, i32 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, [12 x i8] }

@nfs4_fs_type = external dso_local global %struct.file_system_type, align 4
@nfs_version4 = external dso_local constant %struct.rpc_version, align 4
@nfs_v4_clientops = external dso_local constant %struct.nfs_rpc_ops, align 4
@nfs4_sops = internal constant %struct.super_operations { ptr @nfs_alloc_inode, ptr null, ptr @nfs_free_inode, ptr null, ptr @nfs4_write_inode, ptr @nfs_drop_inode, ptr @nfs4_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_statfs, ptr null, ptr @nfs_umount_begin, ptr @nfs_show_options, ptr @nfs_show_devname, ptr @nfs_show_path, ptr @nfs_show_stats, ptr null, ptr null }, align 4
@nfs4_xattr_handlers = external dso_local global [0 x ptr], align 4
@nfs_v4 = dso_local global %struct.nfs_subversion { ptr null, ptr @nfs4_fs_type, ptr @nfs_version4, ptr @nfs_v4_clientops, ptr @nfs4_sops, ptr @nfs4_xattr_handlers, %struct.list_head zeroinitializer }, align 4
@.str = private unnamed_addr constant [34 x i8] c"NFS4: Couldn't follow remote path\00", align 1
@__UNIQUE_ID_file448 = internal constant [24 x i8] c"nfsv4.file=fs/nfs/nfsv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license449 = internal constant [18 x i8] c"nfsv4.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_nfsv4__450_313_init_nfs_v46 = internal global ptr @init_nfs_v4, section ".initcall6.init", align 4
@__exitcall_exit_nfs_v4 = internal global ptr @exit_nfs_v4, section ".exitcall.exit", align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@__const.do_nfs4_mount.param = private unnamed_addr constant { ptr, i8, [3 x i8], %union.anon.18, i32, i32 } { ptr @.str.1, i8 2, [3 x i8] zeroinitializer, %union.anon.18 zeroinitializer, i32 0, i32 -1 }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[%s]:/\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s:/\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nfs_referral_count_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@nfs_referral_count_list = internal global %struct.list_head { ptr @nfs_referral_count_list, ptr @nfs_referral_count_list }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file448, ptr @__UNIQUE_ID_license449, ptr @__exitcall_exit_nfs_v4, ptr @__initcall__kmod_nfsv4__450_313_init_nfs_v46, ptr @exit_nfs_v4], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_try_get_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @nfs4_create_server(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @do_nfs4_mount(ptr noundef %4, ptr noundef %0, ptr noundef %6, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str) #11
  br label %16

16:                                               ; preds = %15, %11, %1
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_nfs4_mount(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.fs_parameter, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @__const.do_nfs4_mount.param, i32 20, i1 false)
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %0 to i32
  br label %84

9:                                                ; preds = %4
  %10 = tail call ptr @vfs_dup_fs_context(ptr noundef %1) #11
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  tail call void @nfs_free_server(ptr noundef %0) #11
  %13 = ptrtoint ptr %10 to i32
  br label %84

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.fs_context, ptr %10, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #11
  store ptr null, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fs_context, ptr %10, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.nfs_fs_context, ptr %18, i32 0, i32 28
  store ptr %0, ptr %19, align 4
  %20 = tail call i32 @strlen(ptr noundef %2)
  %21 = add i32 %20, 5
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3264) #12
  %23 = getelementptr inbounds %struct.fs_parameter, ptr %5, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  tail call void @put_fs_context(ptr noundef %10) #11
  br label %84

26:                                               ; preds = %14
  %27 = tail call ptr @strchr(ptr noundef %2, i32 noundef 58)
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.3, ptr @.str.2
  %30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %22, i32 noundef %21, ptr noundef nonnull %29, ptr noundef %2)
  %31 = getelementptr inbounds %struct.fs_parameter, ptr %5, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = call i32 @vfs_parse_fs_param(ptr noundef %10, ptr noundef nonnull %5) #11
  %33 = load ptr, ptr %23, align 4
  call void @kfree(ptr noundef %33) #11
  %34 = icmp slt i32 %32, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  call void @put_fs_context(ptr noundef %10) #11
  br label %84

36:                                               ; preds = %26
  %37 = call ptr @fc_mount(ptr noundef %10) #11
  call void @put_fs_context(ptr noundef %10) #11
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = ptrtoint ptr %37 to i32
  br label %84

41:                                               ; preds = %36
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %43 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 16) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %75, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @llvm.thread.pointer() #11
  %47 = getelementptr inbounds %struct.nfs_referral_count, ptr %43, i32 0, i32 1
  store ptr %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.nfs_referral_count, ptr %43, i32 0, i32 2
  store i32 1, ptr %48, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @nfs_referral_count_list_lock) #11
  br label %49

49:                                               ; preds = %53, %45
  %50 = phi ptr [ @nfs_referral_count_list, %45 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, @nfs_referral_count_list
  br i1 %52, label %65, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nfs_referral_count, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %46
  br i1 %56, label %57, label %49

57:                                               ; preds = %53
  %58 = icmp eq ptr %51, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.nfs_referral_count, ptr %51, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = add nuw nsw i32 %61, 1
  store i32 %64, ptr %60, align 4
  br label %69

65:                                               ; preds = %57, %49
  %66 = load ptr, ptr @nfs_referral_count_list, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %43, ptr %67, align 4
  store ptr %66, ptr %43, align 8
  %68 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr @nfs_referral_count_list, ptr %68, align 4
  store volatile ptr %43, ptr @nfs_referral_count_list, align 4
  br label %69

69:                                               ; preds = %65, %63, %59
  %70 = phi ptr [ %43, %63 ], [ null, %65 ], [ %43, %59 ]
  %71 = phi i1 [ true, %63 ], [ true, %65 ], [ false, %59 ]
  %72 = phi i32 [ 0, %63 ], [ 0, %65 ], [ -40, %59 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %73 = load i16, ptr @nfs_referral_count_list_lock, align 4
  %74 = add i16 %73, 1
  store i16 %74, ptr @nfs_referral_count_list_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  call void @kfree(ptr noundef %70) #11
  br i1 %71, label %77, label %75

75:                                               ; preds = %69, %41
  %76 = phi i32 [ %72, %69 ], [ -12, %41 ]
  call void @mntput(ptr noundef %37) #11
  br label %84

77:                                               ; preds = %69
  %78 = call ptr @mount_subtree(ptr noundef %37, ptr noundef %3) #11
  call fastcc void @nfs_referral_loop_unprotect()
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = ptrtoint ptr %78 to i32
  br label %84

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.fs_context, ptr %1, i32 0, i32 5
  store ptr %78, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %80, %75, %39, %35, %25, %12, %7
  %85 = phi i32 [ %8, %7 ], [ %13, %12 ], [ -12, %25 ], [ %32, %35 ], [ %40, %39 ], [ %76, %75 ], [ %81, %80 ], [ 0, %82 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_create_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_get_referral_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @nfs4_create_referral_server(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_fs_context, ptr %3, i32 0, i32 26, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call fastcc i32 @do_nfs4_mount(ptr noundef %4, ptr noundef %0, ptr noundef %6, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 9, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef nonnull %13, ptr noundef null, i8 noundef zeroext 101, ptr noundef nonnull @.str) #11
  br label %16

16:                                               ; preds = %15, %11, %1
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_create_referral_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_nfs_v4() #3 section ".exit.text" {
  tail call void @nfs4_pnfs_v3_ds_connect_unload() #11
  tail call void @unregister_nfs_version(ptr noundef nonnull @nfs_v4) #11
  tail call void @nfs4_xattr_cache_exit() #11
  tail call void @nfs42_ssc_unregister_ops() #11
  tail call void @nfs4_unregister_sysctl() #11
  tail call void @nfs_idmap_quit() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_pnfs_v3_ds_connect_unload() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_nfs_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_xattr_cache_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_unregister_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_unregister_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_idmap_quit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_nfs_v4() #3 section ".init.text" {
  %1 = tail call i32 @nfs_idmap_init() #11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = tail call i32 @nfs4_xattr_cache_init() #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = tail call i32 @nfs4_register_sysctl() #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @nfs42_ssc_register_ops() #11
  tail call void @register_nfs_version(ptr noundef nonnull @nfs_v4) #11
  br label %12

10:                                               ; preds = %6, %3
  %11 = phi i32 [ %4, %3 ], [ %7, %6 ]
  tail call void @nfs_idmap_quit() #11
  br label %12

12:                                               ; preds = %10, %9, %0
  %13 = phi i32 [ 0, %9 ], [ %1, %0 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_write_inode(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @nfs_write_inode(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.writeback_control, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 1
  %9 = tail call i32 @pnfs_layoutcommit_inode(ptr noundef %0, i1 noundef zeroext %8) #11
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ %9, %5 ], [ %3, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_drop_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nfs4_evict_inode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 41
  tail call void @truncate_inode_pages_final(ptr noundef %2) #11
  tail call void @clear_inode(ptr noundef %0) #11
  tail call void @nfs_inode_evict_delegation(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 44
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 -24
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %12, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 5, ptr noundef %15) #11
  %16 = tail call i32 @_pnfs_return_layout(ptr noundef %0) #11
  br label %17

17:                                               ; preds = %14, %10, %1
  %18 = getelementptr i8, ptr %0, i32 -296
  tail call void @pnfs_destroy_layout_final(ptr noundef %18) #11
  tail call void @nfs_clear_inode(ptr noundef %0) #11
  tail call void @nfs4_xattr_cache_zap(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_umount_begin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_options(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_devname(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_path(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_show_stats(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_write_inode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pnfs_layoutcommit_inode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_inode_evict_delegation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_destroy_layout_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_xattr_cache_zap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_pnfs_return_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vfs_dup_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_free_server(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fs_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_mount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mntput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mount_subtree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nfs_referral_loop_unprotect() unnamed_addr #0 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @nfs_referral_count_list_lock) #11
  br label %1

1:                                                ; preds = %5, %0
  %2 = phi ptr [ @nfs_referral_count_list, %0 ], [ %3, %5 ]
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @nfs_referral_count_list
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs_referral_count, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @llvm.thread.pointer() #11
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %1

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %3, %5 ], [ null, %1 ]
  %12 = getelementptr inbounds %struct.nfs_referral_count, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %11, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi ptr [ %11, %16 ], [ null, %10 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !8
  %23 = load i16, ptr @nfs_referral_count_list_lock, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr @nfs_referral_count_list_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !11
  tail call void @kfree(ptr noundef %22) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_idmap_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nfs4_xattr_cache_init() local_unnamed_addr #10 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_register_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_register_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_nfs_version(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
!8 = !{i64 2148931399}
!9 = !{i64 2148927223}
!10 = !{i64 2148927298, i64 2148927325, i64 2148927372, i64 2148927394, i64 2148927422, i64 2148927442}
!11 = !{i64 2148954402}
