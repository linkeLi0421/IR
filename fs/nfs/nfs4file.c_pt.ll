; ModuleID = '/llk/IR/fs/nfs/nfs4file.c_pt.bc'
source_filename = "../fs/nfs/nfs4file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfs4_ssc_client_ops = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.153, %struct.list_head, %struct.list_head, %union.anon.154 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.0, ptr }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.151 }
%union.anon.151 = type { i64 }
%union.anon.153 = type { %struct.list_head }
%union.anon.154 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [12 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.127, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.128, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.129, ptr, %struct.address_space, %struct.list_head, %union.anon.150, i32, i32, ptr, ptr }
%union.anon.127 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.128 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.129 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.150 = type { ptr }
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
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.131 }
%union.anon.131 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.nfs_rpc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.nfs_iostats = type { [8 x i64], [27 x i32], [20 x i8] }
%struct.nfs42_copy_notify_res = type { %struct.nfs4_sequence_res, %struct.nfstime4, %struct.nfs4_stateid_struct, %struct.nl4_server }
%struct.nfs4_sequence_res = type { ptr, i32, i32, i32, i32, i32 }
%struct.nfstime4 = type { i64, i32 }
%struct.nfs4_stateid_struct = type { %union.anon.142, i32 }
%union.anon.142 = type { %struct.anon.143 }
%struct.anon.143 = type { i32, [12 x i8] }
%struct.nl4_server = type { i32, %union.anon.157 }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { i32, [1025 x i8] }
%struct.nfs_open_context = type { %struct.nfs_lock_context, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.callback_head }
%struct.nfs_lock_context = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.atomic_t, %struct.callback_head }
%struct.nfs4_state = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %struct.spinlock, %struct.seqlock_t, %struct.nfs4_stateid_struct, %struct.nfs4_stateid_struct, i32, i32, i32, i32, %struct.refcount_struct, %struct.wait_queue_head, %struct.callback_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }

@nfs4_ssc_clnt_ops_tbl = internal constant %struct.nfs4_ssc_client_ops { ptr @__nfs42_ssc_open, ptr @__nfs42_ssc_close }, align 4
@nfs4_file_operations = dso_local constant %struct.file_operations { ptr null, ptr @nfs4_file_llseek, ptr null, ptr null, ptr @nfs_file_read, ptr @nfs_file_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nfs_file_mmap, i32 0, ptr @nfs4_file_open, ptr @nfs4_file_flush, ptr @nfs_file_release, ptr @nfs_file_fsync, ptr null, ptr @nfs_lock, ptr null, ptr null, ptr @nfs_check_flags, ptr @nfs_flock, ptr @iter_file_splice_write, ptr @generic_file_splice_read, ptr @nfs4_setlease, ptr @nfs42_fallocate, ptr null, ptr @nfs4_copy_file_range, ptr @nfs42_remap_file_range, ptr null }, align 4
@.str = private unnamed_addr constant [12 x i8] c"ssc_read_%d\00", align 1
@read_name_gen = internal unnamed_addr global i32 1, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs42_ssc_register_ops() local_unnamed_addr #0 {
  tail call void @nfs42_ssc_register(ptr noundef nonnull @nfs4_ssc_clnt_ops_tbl) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs42_ssc_unregister_ops() local_unnamed_addr #0 {
  tail call void @nfs42_ssc_unregister(ptr noundef nonnull @nfs4_ssc_clnt_ops_tbl) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs42_ssc_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nfs4_file_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %2, -3
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = tail call i64 @nfs42_proc_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #10
  %8 = icmp eq i64 %7, -95
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %3
  %10 = tail call i64 @nfs_file_llseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) #10
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i64 [ %10, %9 ], [ %7, %6 ]
  ret i64 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_read(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_write(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_file_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.iattr, align 8
  %4 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 67108864
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.dentry_operations, ptr %13, i32 0, i32 12
  %15 = load ptr, ptr %14, align 16
  %16 = tail call ptr %15(ptr noundef %5, ptr noundef %11) #10
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi ptr [ %16, %9 ], [ %5, %2 ]
  %19 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i32 80, i1 false), !annotation !10
  %21 = tail call i32 @nfs_check_flags(i32 noundef %20) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = and i32 %20, 3
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i32 @nfs_open(ptr noundef %0, ptr noundef %1) #10
  br label %84

28:                                               ; preds = %23
  %29 = and i32 %20, -193
  %30 = tail call ptr @dget_parent(ptr noundef %18) #10
  %31 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %4, align 4
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 67108864
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37, !prof !9

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.dentry, ptr %33, i32 0, i32 8
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.dentry_operations, ptr %41, i32 0, i32 12
  %43 = load ptr, ptr %42, align 16
  %44 = tail call ptr %43(ptr noundef %33, ptr noundef %39) #10
  br label %45

45:                                               ; preds = %37, %28
  %46 = phi ptr [ %44, %37 ], [ %33, %28 ]
  %47 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = tail call ptr @alloc_nfs_open_context(ptr noundef %46, i32 noundef %48, ptr noundef %1) #10
  %50 = ptrtoint ptr %49 to i32
  %51 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %51, label %81, label %52

52:                                               ; preds = %45
  store i32 32768, ptr %3, align 8
  %53 = and i32 %20, 512
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  store i32 32776, ptr %3, align 8
  %56 = getelementptr inbounds %struct.iattr, ptr %3, i32 0, i32 4
  store i64 0, ptr %56, align 8
  %57 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 9
  %58 = load ptr, ptr %57, align 8
  %59 = tail call i32 @filemap_write_and_wait_range(ptr noundef %58, i64 noundef 0, i64 noundef 9223372036854775807) #10
  br label %60

60:                                               ; preds = %55, %52
  %61 = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.super_block, ptr %62, i32 0, i32 27
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nfs_client, ptr %65, i32 0, i32 12
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nfs_rpc_ops, ptr %67, i32 0, i32 46
  %69 = load ptr, ptr %68, align 4
  %70 = call ptr %69(ptr noundef %32, ptr noundef %49, i32 noundef %29, ptr noundef nonnull %3, ptr noundef null) #10
  %71 = icmp ugt ptr %70, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = ptrtoint ptr %70 to i32
  switch i32 %73, label %79 [
    i32 -2, label %83
    i32 -116, label %83
    i32 -21, label %83
    i32 -20, label %83
    i32 -40, label %83
  ]

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.dentry, ptr %18, i32 0, i32 5
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %70, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  call void @nfs_file_set_open_context(ptr noundef %1, ptr noundef %49) #10
  br label %79

79:                                               ; preds = %83, %78, %72
  %80 = phi i32 [ %73, %72 ], [ -518, %83 ], [ 0, %78 ]
  call void @put_nfs_open_context(ptr noundef %49) #10
  br label %81

81:                                               ; preds = %79, %45
  %82 = phi i32 [ %50, %45 ], [ %80, %79 ]
  call void @dput(ptr noundef %30) #10
  br label %84

83:                                               ; preds = %74, %72, %72, %72, %72, %72
  call void @d_drop(ptr noundef %18) #10
  br label %79

84:                                               ; preds = %81, %26, %17
  %85 = phi i32 [ %27, %26 ], [ %82, %81 ], [ %21, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #10
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_file_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.super_block, ptr %6, i32 0, i32 27
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !11
  %10 = getelementptr inbounds %struct.nfs_server, ptr %8, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.nfs_iostats, ptr %11, i32 0, i32 1, i32 14
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #8, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #10, !srcloc !13
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %2
  %26 = tail call zeroext i1 @nfs4_delegation_flush_on_close(ptr noundef %4) #10
  %27 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 8
  br i1 %26, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @filemap_fdatawrite(ptr noundef %28) #10
  br label %38

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.address_space, ptr %28, i32 0, i32 11
  %33 = tail call i32 @errseq_sample(ptr noundef %32) #10
  %34 = tail call i32 @nfs_wb_all(ptr noundef %4) #10
  %35 = load ptr, ptr %27, align 8
  %36 = getelementptr inbounds %struct.address_space, ptr %35, i32 0, i32 11
  %37 = tail call i32 @errseq_check(ptr noundef %36, i32 noundef %33) #10
  br label %38

38:                                               ; preds = %31, %29, %2
  %39 = phi i32 [ %37, %31 ], [ %30, %29 ], [ 0, %2 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_file_fsync(ptr noundef, i64 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_lock(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_check_flags(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_flock(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iter_file_splice_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_file_splice_read(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_setlease(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = tail call i32 @nfs4_proc_setlease(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs42_fallocate(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, -4096
  %9 = icmp eq i16 %8, -32768
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  switch i32 %1, label %22 [
    i32 3, label %11
    i32 0, label %11
  ]

11:                                               ; preds = %10, %10
  %12 = add i64 %3, %2
  %13 = tail call i32 @inode_newsize_ok(ptr noundef %6, i64 noundef %12) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = and i32 %1, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @nfs42_proc_deallocate(ptr noundef %0, i64 noundef %2, i64 noundef %3) #10
  br label %22

20:                                               ; preds = %15
  %21 = tail call i32 @nfs42_proc_allocate(ptr noundef %0, i64 noundef %2, i64 noundef %3) #10
  br label %22

22:                                               ; preds = %20, %18, %11, %10, %4
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ], [ -95, %4 ], [ -95, %10 ], [ %13, %11 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_copy_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @nfs4_file_operations
  br i1 %9, label %10, label %104

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.inode, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.super_block, ptr %14, i32 0, i32 27
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nfs_server, ptr %16, i32 0, i32 10
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 16777216
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %104, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.super_block, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfs_server, ptr %27, i32 0, i32 10
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 16777216
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq ptr %23, %12
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %104, label %34

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.nfs_server, ptr %27, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 1
  %38 = icmp ult i32 %37, %4
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %93, %34
  %41 = phi ptr [ %16, %34 ], [ %103, %93 ]
  %42 = phi ptr [ %27, %34 ], [ %98, %93 ]
  %43 = phi ptr [ null, %34 ], [ %70, %93 ]
  %44 = phi ptr [ null, %34 ], [ %71, %93 ]
  %45 = phi ptr [ null, %34 ], [ %72, %93 ]
  %46 = load ptr, ptr %42, align 8
  %47 = load ptr, ptr %41, align 8
  %48 = getelementptr inbounds %struct.nfs_client, ptr %46, i32 0, i32 38
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nfs_client, ptr %47, i32 0, i32 38
  %51 = load ptr, ptr %50, align 4
  %52 = tail call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %49, ptr noundef %51) #10
  br i1 %52, label %64, label %53

53:                                               ; preds = %40
  br i1 %38, label %54, label %104

54:                                               ; preds = %53
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %56 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3392, i32 noundef 1096) #11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %106, label %58, !prof !14

58:                                               ; preds = %54
  %59 = tail call i32 @nfs42_proc_copy_notify(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %56) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %56, i32 0, i32 3
  %63 = getelementptr inbounds %struct.nfs42_copy_notify_res, ptr %56, i32 0, i32 2
  br label %64

64:                                               ; preds = %61, %40
  %65 = phi ptr [ %43, %40 ], [ %56, %61 ]
  %66 = phi ptr [ %44, %40 ], [ %62, %61 ]
  %67 = phi ptr [ %45, %40 ], [ %63, %61 ]
  %68 = tail call i32 @nfs42_proc_copy(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %66, ptr noundef %67, i1 noundef zeroext %39) #10
  br label %69

69:                                               ; preds = %64, %58
  %70 = phi ptr [ %65, %64 ], [ %56, %58 ]
  %71 = phi ptr [ %66, %64 ], [ %44, %58 ]
  %72 = phi ptr [ %67, %64 ], [ %45, %58 ]
  %73 = phi i32 [ %68, %64 ], [ -95, %58 ]
  %74 = load ptr, ptr %22, align 8
  %75 = getelementptr inbounds %struct.inode, ptr %74, i32 0, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.super_block, ptr %76, i32 0, i32 27
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 8
  %80 = load ptr, ptr %11, align 8
  %81 = getelementptr inbounds %struct.inode, ptr %80, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.super_block, ptr %82, i32 0, i32 27
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.nfs_client, ptr %79, i32 0, i32 38
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nfs_client, ptr %85, i32 0, i32 38
  %89 = load ptr, ptr %88, align 4
  %90 = tail call zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef %87, ptr noundef %89) #10
  br i1 %90, label %92, label %91

91:                                               ; preds = %69
  tail call void @kfree(ptr noundef %70) #10
  br label %92

92:                                               ; preds = %91, %69
  switch i32 %73, label %106 [
    i32 -11, label %93
    i32 -18, label %104
    i32 -95, label %104
  ]

93:                                               ; preds = %92
  %94 = load ptr, ptr %22, align 8
  %95 = getelementptr inbounds %struct.inode, ptr %94, i32 0, i32 8
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.super_block, ptr %96, i32 0, i32 27
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %11, align 8
  %100 = getelementptr inbounds %struct.inode, ptr %99, i32 0, i32 8
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.super_block, ptr %101, i32 0, i32 27
  %103 = load ptr, ptr %102, align 4
  br label %40

104:                                              ; preds = %92, %92, %53, %21, %10, %6
  %105 = tail call i32 @generic_copy_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #10
  br label %106

106:                                              ; preds = %104, %92, %54
  %107 = phi i32 [ %105, %104 ], [ %73, %92 ], [ -12, %54 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @nfs42_remap_file_range(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nfs_server, ptr %12, i32 0, i32 28
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %5, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %6
  %20 = and i32 %5, -3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %27
  %33 = icmp eq i32 %16, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %32
  %35 = zext i32 %16 to i64
  %36 = add nsw i64 %35, -1
  %37 = or i64 %3, %1
  %38 = and i64 %36, %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %34
  %41 = and i64 %36, %4
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc i64 @i_size_read(ptr noundef %14)
  %45 = add i64 %4, %1
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %43, %40, %32
  %48 = icmp eq ptr %14, %8
  br i1 %48, label %54, label %49

49:                                               ; preds = %47
  %50 = icmp ult ptr %8, %14
  %51 = select i1 %50, ptr %8, ptr %14
  %52 = select i1 %50, ptr %14, ptr %8
  %53 = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 24
  tail call void @down_write(ptr noundef %53) #10
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi ptr [ %8, %47 ], [ %52, %49 ]
  %56 = getelementptr inbounds %struct.inode, ptr %55, i32 0, i32 24
  tail call void @down_write(ptr noundef %56) #10
  %57 = tail call i32 @nfs_sync_inode(ptr noundef %14) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = tail call i32 @nfs_sync_inode(ptr noundef %8) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = tail call i32 @nfs42_proc_clone(ptr noundef %0, ptr noundef %2, i64 noundef %1, i64 noundef %3, i64 noundef %4) #10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.inode, ptr %8, i32 0, i32 41
  %67 = add i64 %3, -1
  %68 = add i64 %67, %4
  tail call void @truncate_inode_pages_range(ptr noundef %66, i64 noundef %3, i64 noundef %68) #10
  br label %69

69:                                               ; preds = %65, %62, %59, %54
  %70 = phi i32 [ %57, %54 ], [ %60, %59 ], [ %63, %62 ], [ 0, %65 ]
  br i1 %48, label %76, label %71

71:                                               ; preds = %69
  %72 = icmp ult ptr %8, %14
  %73 = select i1 %72, ptr %14, ptr %8
  %74 = select i1 %72, ptr %8, ptr %14
  %75 = getelementptr inbounds %struct.inode, ptr %73, i32 0, i32 24
  tail call void @up_write(ptr noundef %75) #10
  br label %76

76:                                               ; preds = %71, %69
  %77 = phi ptr [ %8, %69 ], [ %74, %71 ]
  %78 = getelementptr inbounds %struct.inode, ptr %77, i32 0, i32 24
  tail call void @up_write(ptr noundef %78) #10
  %79 = icmp slt i32 %70, 0
  %80 = sext i32 %70 to i64
  br i1 %79, label %81, label %83

81:                                               ; preds = %76, %43, %34
  %82 = phi i64 [ %80, %76 ], [ -22, %43 ], [ -22, %34 ]
  br label %83

83:                                               ; preds = %81, %76, %27, %22, %19, %6
  %84 = phi i64 [ -95, %6 ], [ -22, %19 ], [ -26, %27 ], [ -26, %22 ], [ %82, %81 ], [ %4, %76 ]
  ret i64 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @__nfs42_ssc_open(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @nfs_alloc_fattr() #10
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %4, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %3
  %14 = tail call i32 @nfs4_proc_getattr(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %4, ptr noundef null) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = inttoptr i32 %14 to ptr
  br label %72

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3392, i32 noundef 27) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr @read_name_gen, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr @read_name_gen, align 4
  %25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %20, i32 noundef 27, ptr noundef nonnull @.str, i32 noundef %23)
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.inode, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr @nfs_fhget(ptr noundef %30, ptr noundef %1, ptr noundef nonnull %4) #10
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %70, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.inode, ptr %31, i32 0, i32 39
  %35 = load ptr, ptr %34, align 8
  %36 = tail call ptr @alloc_file_pseudo(ptr noundef %31, ptr noundef %0, ptr noundef nonnull %20, i32 noundef 0, ptr noundef %35) #10
  %37 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %70, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 8
  %42 = load i32, ptr %41, align 8
  %43 = tail call ptr @alloc_nfs_open_context(ptr noundef %40, i32 noundef %42, ptr noundef %36) #10
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %76, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.nfs_open_context, ptr %43, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call ptr @nfs4_get_state_owner(ptr noundef %11, ptr noundef %47, i32 noundef 3264) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %50

50:                                               ; preds = %45
  %51 = tail call ptr @nfs4_get_open_state(ptr noundef %31, ptr noundef nonnull %48) #10
  %52 = getelementptr inbounds %struct.nfs_open_context, ptr %43, i32 0, i32 5
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nfs4_state, ptr %51, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %55) #10
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr inbounds %struct.nfs4_state, ptr %56, i32 0, i32 9, i32 0, i32 0, i32 1
  %58 = getelementptr inbounds %struct.anon.143, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %57, ptr noundef align 4 dereferenceable(12) %58, i32 12, i1 false)
  %59 = load ptr, ptr %52, align 4
  %60 = load i32, ptr %41, align 8
  %61 = tail call i32 @update_open_stateid(ptr noundef %59, ptr noundef %2, ptr noundef null, i32 noundef %60) #10
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr inbounds %struct.nfs4_state, ptr %62, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %63) #10
  tail call void @nfs_file_set_open_context(ptr noundef %36, ptr noundef %43) #10
  tail call void @put_nfs_open_context(ptr noundef %43) #10
  %64 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 13
  %65 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 17
  %66 = load ptr, ptr %65, align 8
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.inode, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 8
  tail call void @file_ra_state_init(ptr noundef %64, ptr noundef %69) #10
  br label %70

70:                                               ; preds = %76, %54, %33, %22
  %71 = phi ptr [ %77, %76 ], [ %36, %54 ], [ %31, %22 ], [ %36, %33 ]
  tail call void @kfree(ptr noundef nonnull %20) #10
  br label %72

72:                                               ; preds = %70, %18, %16
  %73 = phi ptr [ %17, %16 ], [ inttoptr (i32 -12 to ptr), %18 ], [ %71, %70 ]
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %78

74:                                               ; preds = %50
  tail call void @nfs4_put_state_owner(ptr noundef nonnull %48) #10
  br label %75

75:                                               ; preds = %74, %45
  tail call void @put_nfs_open_context(ptr noundef %43) #10
  br label %76

76:                                               ; preds = %75, %38
  %77 = phi ptr [ inttoptr (i32 -22 to ptr), %75 ], [ %43, %38 ]
  tail call void @fput(ptr noundef %36) #10
  br label %70

78:                                               ; preds = %72, %3
  %79 = phi ptr [ %73, %72 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %79
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @__nfs42_ssc_close(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nfs_open_context, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs4_state, ptr %5, i32 0, i32 5
  store i32 0, ptr %6, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_alloc_fattr() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_getattr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_fhget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_file_pseudo(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_nfs_open_context(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_state_owner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_get_open_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_open_stateid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_file_set_open_context(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_nfs_open_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @file_ra_state_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_put_state_owner(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfs42_proc_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfs_file_llseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @d_drop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_write_and_wait_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_delegation_flush_on_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filemap_fdatawrite(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_wb_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_sample(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @errseq_check(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_setlease(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_newsize_ok(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_deallocate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_allocate(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_copy_file_range(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_copy_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_copy(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_check_serverowner_major_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 22
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 13
  br label %4

4:                                                ; preds = %12, %1
  %5 = load volatile i32, ptr %2, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %8, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !16
  %9 = load volatile i32, ptr %2, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %5, %4 ], [ %9, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  %14 = load i64, ptr %3, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  %15 = load volatile i32, ptr %2, align 4
  %16 = icmp eq i32 %15, %13
  br i1 %16, label %17, label %4

17:                                               ; preds = %12
  ret i64 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_sync_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs42_proc_clone(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_range(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"auto-init"}
!11 = !{i64 742478, i64 742539}
!12 = !{i64 761178}
!13 = !{i64 745495}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2151289441}
!16 = !{i64 2151289283}
!17 = !{i64 2151289585}
!18 = !{i64 2149483828}
