; ModuleID = '/llk/IR/fs/nfs/nfs4namespace.c_pt.bc'
source_filename = "../fs/nfs/nfs4namespace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.114 }
%union.anon.114 = type { [4 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.149, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.150, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.151, ptr, %struct.address_space, %struct.list_head, %union.anon.152, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.149 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.150 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.151 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.152 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.63 }
%union.anon.63 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.nfs4_secinfo_flavors = type { i32, [0 x %struct.nfs4_secinfo4] }
%struct.nfs4_secinfo4 = type { i32, %struct.rpcsec_gss_info }
%struct.rpcsec_gss_info = type { %struct.rpcsec_gss_oid, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, %union.anon.68, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.68 = type { %struct.work_struct }
%struct.page = type { i32, %union.anon.19, %union.anon.89, %struct.atomic_t }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.155, %struct.anon.157, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.anon.155 = type { %union.anon.156, i32, ptr, i32, i32, i16 }
%union.anon.156 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.157 = type { %union.anon.158, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.158 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.22, ptr }
%union.anon.22 = type { i64 }
%struct.lockref = type { %union.anon.24 }
%union.anon.24 = type { i64 }
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.nfs4_fs_locations = type { %struct.nfs_fattr, ptr, %struct.nfs4_pathname, i32, [10 x %struct.nfs4_fs_location] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.70, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.70 = type { %struct.anon.72 }
%struct.anon.72 = type { i64 }
%struct.nfs4_pathname = type { i32, [512 x %struct.nfs4_string] }
%struct.nfs4_string = type { i32, ptr }
%struct.nfs4_fs_location = type { i32, [10 x %struct.nfs4_string], %struct.nfs4_pathname }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs_parse_server_name(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call i32 @rpc_pton(ptr noundef %4, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = tail call i32 @rpc_uaddr2sockaddr(ptr noundef %4, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = tail call i32 @nfs_dns_resolve_name(ptr noundef %4, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #8
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  br label %26

15:                                               ; preds = %6
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = trunc i32 %5 to i16
  %19 = load i16, ptr %2, align 2
  switch i16 %19, label %26 [
    i16 2, label %20
    i16 10, label %23
  ]

20:                                               ; preds = %17
  %21 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  %22 = getelementptr inbounds %struct.sockaddr_in, ptr %2, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  br label %26

23:                                               ; preds = %17
  %24 = tail call i16 @llvm.bswap.i16(i16 %18) #8
  %25 = getelementptr inbounds %struct.sockaddr_in6, ptr %2, i32 0, i32 1
  store i16 %24, ptr %25, align 2
  br label %26

26:                                               ; preds = %23, %20, %17, %15, %12, %9
  %27 = phi i32 [ %14, %12 ], [ %10, %9 ], [ %7, %15 ], [ %7, %17 ], [ %7, %20 ], [ %7, %23 ]
  ret i32 %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_uaddr2sockaddr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_dns_resolve_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_negotiate_security(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @page_address(ptr noundef nonnull %4) #8
  %8 = tail call i32 @nfs4_proc_secinfo(ptr noundef %1, ptr noundef %2, ptr noundef %7) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = inttoptr i32 %8 to ptr
  br label %45

12:                                               ; preds = %6
  %13 = load i32, ptr %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nfs_server, ptr %19, i32 0, i32 36
  br label %21

21:                                               ; preds = %41, %15
  %22 = phi i32 [ 0, %15 ], [ %42, %41 ]
  %23 = getelementptr %struct.nfs4_secinfo_flavors, ptr %7, i32 0, i32 1, i32 %22
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %41 [
    i32 0, label %25
    i32 1, label %25
    i32 6, label %25
  ]

25:                                               ; preds = %21, %21, %21
  %26 = getelementptr %struct.nfs4_secinfo_flavors, ptr %7, i32 0, i32 1, i32 %22, i32 1
  %27 = tail call i32 @rpcauth_get_pseudoflavor(i32 noundef %24, ptr noundef %26) #8
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = tail call zeroext i1 @nfs_auth_info_match(ptr noundef %20, i32 noundef %27) #8
  br i1 %30, label %31, label %41

31:                                               ; preds = %29
  %32 = tail call ptr @rpc_clone_client_set_auth(ptr noundef %0, i32 noundef %27) #8
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.rpc_clnt, ptr %32, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = tail call ptr @rpcauth_lookupcred(ptr noundef %36, i32 noundef 0) #8
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void @rpc_shutdown_client(ptr noundef %32) #8
  br label %41

40:                                               ; preds = %34
  tail call void @put_rpccred(ptr noundef %37) #8
  br label %45

41:                                               ; preds = %39, %31, %29, %25, %21
  %42 = add nuw i32 %22, 1
  %43 = load i32, ptr %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %21, label %45

45:                                               ; preds = %41, %40, %12, %10
  %46 = phi ptr [ %11, %10 ], [ %32, %40 ], [ inttoptr (i32 -1 to ptr), %12 ], [ inttoptr (i32 -1 to ptr), %41 ]
  %47 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 1
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !8

51:                                               ; preds = %45
  %52 = add i32 %48, -1
  br label %55

53:                                               ; preds = %45
  %54 = ptrtoint ptr %4 to i32
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = inttoptr i32 %56 to ptr
  %58 = getelementptr inbounds %struct.page, ptr %57, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !10
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #8, !srcloc !11
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !12
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  tail call void @__put_page(ptr noundef %57) #8
  br label %63

63:                                               ; preds = %62, %55, %3
  %64 = phi ptr [ inttoptr (i32 -12 to ptr), %3 ], [ %46, %55 ], [ %46, %62 ]
  ret ptr %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_secinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_submount(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 30, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @dget_parent(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 27
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 30, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @nfs4_proc_lookup_mountpoint(ptr noundef %10, ptr noundef %7, ptr noundef %12, ptr noundef %14) #8
  tail call void @dput(ptr noundef %8) #8
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = ptrtoint ptr %15 to i32
  br label %313

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.rpc_clnt, ptr %15, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rpc_auth, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nfs_fs_context, ptr %5, i32 0, i32 17
  store i32 %23, ptr %24, align 4
  %25 = load ptr, ptr %13, align 4
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 1048576
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %309, label %29

29:                                               ; preds = %19
  %30 = load ptr, ptr %4, align 4
  %31 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %311, label %33

33:                                               ; preds = %29
  %34 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 46152, i32 noundef 3264, i32 noundef 4) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %307, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.nfs_fs_context, ptr %30, i32 0, i32 30, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = tail call ptr @dget_parent(ptr noundef %38) #8
  %40 = getelementptr inbounds %struct.dentry, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.dentry, ptr %38, i32 0, i32 4
  %43 = tail call i32 @nfs4_proc_fs_locations(ptr noundef %15, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %34, ptr noundef nonnull %31) #8
  tail call void @dput(ptr noundef %39) #8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %305

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %34, i32 0, i32 3
  %47 = load i32, ptr %46, align 16
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %305, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %34, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %305, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.nfs_fs_context, ptr %54, i32 0, i32 30, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3264, i32 noundef 4096) #10
  %59 = icmp eq ptr %58, null
  br i1 %59, label %305, label %60

60:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !13
  %61 = call ptr @nfs_path(ptr noundef nonnull %3, ptr noundef %56, ptr noundef nonnull %58, i32 noundef 4096, i32 noundef 1) #8
  %62 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %62, label %86, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %3, align 4
  %65 = load i8, ptr %61, align 1
  %66 = icmp eq i8 %65, 91
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = call ptr @strchr(ptr noundef %61, i32 noundef 93) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %86, label %70

70:                                               ; preds = %67
  %71 = getelementptr i8, ptr %68, i32 1
  %72 = icmp ult ptr %71, %64
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i8, ptr %71, align 1
  %75 = icmp eq i8 %74, 58
  %76 = getelementptr i8, ptr %68, i32 2
  br i1 %75, label %83, label %86

77:                                               ; preds = %63
  %78 = call ptr @strchr(ptr noundef %61, i32 noundef 58) #8
  %79 = icmp ne ptr %78, null
  %80 = icmp ult ptr %78, %64
  %81 = and i1 %79, %80
  %82 = getelementptr i8, ptr %78, i32 1
  br i1 %81, label %83, label %86

83:                                               ; preds = %77, %73
  %84 = phi ptr [ %76, %73 ], [ %82, %77 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %77, %73, %70, %67, %60
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi ptr [ %61, %86 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %143, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr %50, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %104, %90
  %94 = phi i32 [ %106, %104 ], [ 0, %90 ]
  %95 = phi i32 [ %105, %104 ], [ 0, %90 ]
  %96 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 2, i32 1, i32 %94
  %97 = load i32, ptr %96, align 8
  %98 = icmp ugt i32 %97, 255
  %99 = add i32 %95, 1
  %100 = add i32 %99, %97
  %101 = icmp slt i32 %100, 4097
  %102 = xor i1 %98, true
  %103 = select i1 %102, i1 %101, i1 false
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = select i1 %98, i32 %95, i32 %100
  %106 = add nuw i32 %94, 1
  %107 = icmp eq i32 %106, %91
  br i1 %107, label %108, label %93

108:                                              ; preds = %104
  %109 = icmp slt i32 %105, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %108, %93
  %111 = phi i32 [ %105, %108 ], [ -36, %93 ]
  %112 = inttoptr i32 %111 to ptr
  br label %136

113:                                              ; preds = %108, %90
  %114 = phi i32 [ %105, %108 ], [ 0, %90 ]
  %115 = add nuw i32 %114, 1
  %116 = call noalias align 64 ptr @__kmalloc(i32 noundef %115, i32 noundef 3264) #9
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  call void @kfree(ptr noundef nonnull %58) #8
  br label %305

119:                                              ; preds = %113
  %120 = load i32, ptr %50, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %122, %119
  %123 = phi i32 [ %131, %122 ], [ 0, %119 ]
  %124 = phi ptr [ %130, %122 ], [ %116, %119 ]
  %125 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 2, i32 1, i32 %123
  %126 = getelementptr i8, ptr %124, i32 1
  store i8 47, ptr %124, align 1
  %127 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 2, i32 1, i32 %123, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = load i32, ptr %125, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %126, ptr align 1 %128, i32 %129, i1 false) #8
  %130 = getelementptr i8, ptr %126, i32 %129
  %131 = add nuw i32 %123, 1
  %132 = icmp eq i32 %131, %120
  br i1 %132, label %133, label %122

133:                                              ; preds = %122, %119
  %134 = phi ptr [ %116, %119 ], [ %130, %122 ]
  store i8 0, ptr %134, align 1
  %135 = and i32 %114, 65535
  br label %136

136:                                              ; preds = %133, %110
  %137 = phi i32 [ %135, %133 ], [ 0, %110 ]
  %138 = phi ptr [ %116, %133 ], [ %112, %110 ]
  %139 = icmp ugt ptr %138, inttoptr (i32 -4096 to ptr)
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = call i32 @strncmp(ptr noundef %88, ptr noundef %138, i32 noundef %137) #8
  call void @kfree(ptr noundef nonnull %58) #8
  call void @kfree(ptr noundef %138) #8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %147, label %305

143:                                              ; preds = %136, %87
  %144 = phi ptr [ %88, %87 ], [ %138, %136 ]
  call void @kfree(ptr noundef nonnull %58) #8
  %145 = ptrtoint ptr %144 to i32
  %146 = icmp slt ptr %144, null
  br i1 %146, label %305, label %147

147:                                              ; preds = %143, %140
  %148 = load i32, ptr %46, align 16
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %305

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 10
  %152 = getelementptr inbounds %struct.fs_context, ptr %0, i32 0, i32 7
  br label %153

153:                                              ; preds = %300, %150
  %154 = phi i32 [ -2, %150 ], [ %301, %300 ]
  %155 = phi i32 [ 0, %150 ], [ %302, %300 ]
  %156 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %300, label %159

159:                                              ; preds = %153
  %160 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155, i32 2
  %161 = load i32, ptr %160, align 8
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %300, label %163

163:                                              ; preds = %159
  %164 = load ptr, ptr %4, align 4
  br label %165

165:                                              ; preds = %165, %163
  %166 = phi i32 [ %171, %165 ], [ 0, %163 ]
  %167 = phi i32 [ %170, %165 ], [ 0, %163 ]
  %168 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155, i32 1, i32 %166
  %169 = load i32, ptr %168, align 8
  %170 = call i32 @llvm.umax.i32(i32 %169, i32 %167) #8
  %171 = add nuw i32 %166, 1
  %172 = icmp eq i32 %171, %157
  br i1 %172, label %173, label %165

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.nfs_fs_context, ptr %164, i32 0, i32 26
  %175 = getelementptr inbounds %struct.nfs_fs_context, ptr %164, i32 0, i32 26, i32 2
  %176 = load ptr, ptr %175, align 4
  call void @kfree(ptr noundef %176) #8
  %177 = add i32 %170, 1
  %178 = call noalias align 64 ptr @__kmalloc(i32 noundef %177, i32 noundef 3264) #9
  store ptr %178, ptr %175, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %300, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.nfs_fs_context, ptr %164, i32 0, i32 26, i32 8
  %182 = load i32, ptr %160, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %204, label %184

184:                                              ; preds = %195, %180
  %185 = phi i32 [ %197, %195 ], [ 0, %180 ]
  %186 = phi i32 [ %196, %195 ], [ 0, %180 ]
  %187 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155, i32 2, i32 1, i32 %185
  %188 = load i32, ptr %187, align 4
  %189 = icmp ugt i32 %188, 255
  %190 = add i32 %186, 1
  %191 = add i32 %190, %188
  %192 = icmp slt i32 %191, 4097
  %193 = xor i1 %189, true
  %194 = select i1 %193, i1 %192, i1 false
  br i1 %194, label %195, label %201

195:                                              ; preds = %184
  %196 = select i1 %189, i32 %186, i32 %191
  %197 = add nuw i32 %185, 1
  %198 = icmp eq i32 %197, %182
  br i1 %198, label %199, label %184

199:                                              ; preds = %195
  %200 = icmp slt i32 %196, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %199, %184
  %202 = phi i32 [ %196, %199 ], [ -36, %184 ]
  %203 = inttoptr i32 %202 to ptr
  br label %226

204:                                              ; preds = %199, %180
  %205 = phi i32 [ %196, %199 ], [ 0, %180 ]
  %206 = trunc i32 %205 to i16
  store i16 %206, ptr %181, align 2
  %207 = add nuw i32 %205, 1
  %208 = call noalias align 64 ptr @__kmalloc(i32 noundef %207, i32 noundef 3264) #9
  %209 = icmp eq ptr %208, null
  br i1 %209, label %229, label %210

210:                                              ; preds = %204
  %211 = load i32, ptr %160, align 8
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %213, %210
  %214 = phi i32 [ %222, %213 ], [ 0, %210 ]
  %215 = phi ptr [ %221, %213 ], [ %208, %210 ]
  %216 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155, i32 2, i32 1, i32 %214
  %217 = getelementptr i8, ptr %215, i32 1
  store i8 47, ptr %215, align 1
  %218 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155, i32 2, i32 1, i32 %214, i32 1
  %219 = load ptr, ptr %218, align 8
  %220 = load i32, ptr %216, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %217, ptr align 1 %219, i32 %220, i1 false) #8
  %221 = getelementptr i8, ptr %217, i32 %220
  %222 = add nuw i32 %214, 1
  %223 = icmp eq i32 %222, %211
  br i1 %223, label %224, label %213

224:                                              ; preds = %213, %210
  %225 = phi ptr [ %208, %210 ], [ %221, %213 ]
  store i8 0, ptr %225, align 1
  br label %226

226:                                              ; preds = %224, %201
  %227 = phi ptr [ %203, %201 ], [ %208, %224 ]
  %228 = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  br i1 %228, label %229, label %232

229:                                              ; preds = %226, %204
  %230 = phi ptr [ %227, %226 ], [ inttoptr (i32 -12 to ptr), %204 ]
  %231 = ptrtoint ptr %230 to i32
  br label %297

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.nfs_fs_context, ptr %164, i32 0, i32 26, i32 3
  %234 = load ptr, ptr %233, align 4
  call void @kfree(ptr noundef %234) #8
  store ptr %227, ptr %233, align 4
  %235 = load i16, ptr %181, align 2
  %236 = zext i16 %235 to i32
  %237 = add i32 %177, %236
  %238 = add i32 %237, 1
  %239 = call noalias align 64 ptr @__kmalloc(i32 noundef %238, i32 noundef 3264) #9
  %240 = icmp eq ptr %239, null
  br i1 %240, label %300, label %241

241:                                              ; preds = %232
  %242 = load ptr, ptr %151, align 4
  call void @kfree(ptr noundef %242) #8
  store ptr %239, ptr %151, align 4
  %243 = load i32, ptr %156, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %300, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.nfs_fs_context, ptr %164, i32 0, i32 26, i32 1
  %247 = getelementptr inbounds %struct.sockaddr_in6, ptr %174, i32 0, i32 1
  br label %248

248:                                              ; preds = %292, %245
  %249 = phi i32 [ -2, %245 ], [ %293, %292 ]
  %250 = phi i32 [ 0, %245 ], [ %294, %292 ]
  %251 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155, i32 1, i32 %250
  %252 = getelementptr %struct.nfs4_fs_locations, ptr %34, i32 0, i32 4, i32 %155, i32 1, i32 %250, i32 1
  %253 = load ptr, ptr %252, align 4
  %254 = load i32, ptr %251, align 8
  %255 = call ptr @memchr(ptr noundef %253, i32 noundef 37, i32 noundef %254) #8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %292

257:                                              ; preds = %248
  %258 = load ptr, ptr %152, align 4
  %259 = call i32 @rpc_pton(ptr noundef %258, ptr noundef %253, i32 noundef %254, ptr noundef %174, i32 noundef 128) #8
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = call i32 @rpc_uaddr2sockaddr(ptr noundef %258, ptr noundef %253, i32 noundef %254, ptr noundef %174, i32 noundef 128) #8
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %261, %257
  %265 = phi i32 [ %259, %257 ], [ %262, %261 ]
  store i32 %265, ptr %246, align 4
  br label %270

266:                                              ; preds = %261
  %267 = call i32 @nfs_dns_resolve_name(ptr noundef %258, ptr noundef %253, i32 noundef %254, ptr noundef %174, i32 noundef 128) #8
  %268 = call i32 @llvm.smax.i32(i32 %267, i32 0) #8
  store i32 %268, ptr %246, align 4
  %269 = icmp slt i32 %267, 1
  br i1 %269, label %292, label %270

270:                                              ; preds = %266, %264
  %271 = load i16, ptr %174, align 2
  switch i16 %271, label %273 [
    i16 2, label %272
    i16 10, label %272
  ]

272:                                              ; preds = %270, %270
  store i16 264, ptr %247, align 2
  br label %273

273:                                              ; preds = %272, %270
  %274 = load ptr, ptr %175, align 4
  %275 = load ptr, ptr %252, align 4
  %276 = load i32, ptr %251, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %274, ptr align 1 %275, i32 %276, i1 false) #8
  %277 = load ptr, ptr %175, align 4
  %278 = load i32, ptr %251, align 8
  %279 = getelementptr i8, ptr %277, i32 %278
  store i8 0, ptr %279, align 1
  %280 = load ptr, ptr %252, align 4
  %281 = load i32, ptr %251, align 8
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 64 %239, ptr align 1 %280, i32 %281, i1 false) #8
  %282 = getelementptr i8, ptr %239, i32 %281
  %283 = getelementptr i8, ptr %282, i32 1
  store i8 58, ptr %282, align 1
  %284 = load ptr, ptr %233, align 4
  %285 = load i16, ptr %181, align 2
  %286 = zext i16 %285 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %283, ptr align 1 %284, i32 %286, i1 false) #8
  %287 = load i16, ptr %181, align 2
  %288 = zext i16 %287 to i32
  %289 = getelementptr i8, ptr %283, i32 %288
  store i8 0, ptr %289, align 1
  %290 = call i32 @nfs4_get_referral_tree(ptr noundef %0) #8
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %305, label %292

292:                                              ; preds = %273, %266, %248
  %293 = phi i32 [ %290, %273 ], [ %249, %266 ], [ %249, %248 ]
  %294 = add nuw i32 %250, 1
  %295 = load i32, ptr %156, align 4
  %296 = icmp ult i32 %294, %295
  br i1 %296, label %248, label %297

297:                                              ; preds = %292, %229
  %298 = phi i32 [ %231, %229 ], [ %293, %292 ]
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %305, label %300

300:                                              ; preds = %297, %241, %232, %173, %159, %153
  %301 = phi i32 [ %298, %297 ], [ %154, %153 ], [ %154, %159 ], [ -2, %241 ], [ -12, %232 ], [ -12, %173 ]
  %302 = add nuw nsw i32 %155, 1
  %303 = load i32, ptr %46, align 16
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %153, label %305

305:                                              ; preds = %300, %297, %273, %147, %143, %140, %118, %53, %49, %45, %36
  %306 = phi i32 [ %43, %36 ], [ -2, %45 ], [ -2, %49 ], [ %145, %143 ], [ -2, %140 ], [ -12, %53 ], [ -2, %147 ], [ -12, %118 ], [ 0, %273 ], [ %301, %300 ], [ 0, %297 ]
  call void @kfree(ptr noundef nonnull %34) #8
  br label %307

307:                                              ; preds = %305, %33
  %308 = phi i32 [ %306, %305 ], [ -12, %33 ]
  call void @__free_pages(ptr noundef nonnull %31, i32 noundef 0) #8
  br label %311

309:                                              ; preds = %19
  %310 = tail call i32 @nfs_do_submount(ptr noundef %0) #8
  br label %311

311:                                              ; preds = %309, %307, %29
  %312 = phi i32 [ %310, %309 ], [ %308, %307 ], [ -12, %29 ]
  call void @rpc_shutdown_client(ptr noundef %15) #8
  br label %313

313:                                              ; preds = %311, %17
  %314 = phi i32 [ %18, %17 ], [ %312, %311 ]
  ret i32 %314
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_proc_lookup_mountpoint(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_do_submount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfs4_replace_transport(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %93, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.nfs4_fs_locations, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %93, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #8
  %10 = inttoptr i32 %9 to ptr
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %93, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #8
  %14 = inttoptr i32 %13 to ptr
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %93, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %5, align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %93

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.nfs_server, ptr %0, i32 0, i32 3
  br label %21

21:                                               ; preds = %88, %19
  %22 = phi i32 [ -12, %19 ], [ %89, %88 ]
  %23 = phi i32 [ 0, %19 ], [ %90, %88 ]
  %24 = getelementptr %struct.nfs4_fs_locations, ptr %1, i32 0, i32 4, i32 %23
  %25 = icmp eq ptr %24, null
  br i1 %25, label %88, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %24, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %88, label %29

29:                                               ; preds = %26
  %30 = getelementptr %struct.nfs4_fs_locations, ptr %1, i32 0, i32 4, i32 %23, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %88, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %20, align 4
  %35 = tail call ptr @rpc_net_ns(ptr noundef %34) #8
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 128) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %88, label %39

39:                                               ; preds = %33
  %40 = load i32, ptr %24, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %84, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sockaddr_in6, ptr %37, i32 0, i32 1
  br label %44

44:                                               ; preds = %79, %42
  %45 = phi i32 [ -2, %42 ], [ %80, %79 ]
  %46 = phi i32 [ 0, %42 ], [ %81, %79 ]
  %47 = getelementptr %struct.nfs4_fs_locations, ptr %1, i32 0, i32 4, i32 %23, i32 1, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -4097
  %50 = icmp ult i32 %49, -4096
  br i1 %50, label %79, label %51

51:                                               ; preds = %44
  %52 = getelementptr %struct.nfs4_fs_locations, ptr %1, i32 0, i32 4, i32 %23, i32 1, i32 %46, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = tail call ptr @memchr(ptr noundef %53, i32 noundef 37, i32 noundef %48) #8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = tail call i32 @rpc_pton(ptr noundef %35, ptr noundef %53, i32 noundef %48, ptr noundef nonnull %37, i32 noundef 128) #8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = tail call i32 @rpc_uaddr2sockaddr(ptr noundef %35, ptr noundef %53, i32 noundef %48, ptr noundef nonnull %37, i32 noundef 128) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = tail call i32 @nfs_dns_resolve_name(ptr noundef %35, ptr noundef %53, i32 noundef %48, ptr noundef nonnull %37, i32 noundef 128) #8
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 0) #8
  %65 = icmp slt i32 %63, 1
  br i1 %65, label %79, label %66

66:                                               ; preds = %62, %59, %56
  %67 = phi i32 [ %64, %62 ], [ %57, %56 ], [ %60, %59 ]
  %68 = load i16, ptr %37, align 8
  switch i16 %68, label %70 [
    i16 2, label %69
    i16 10, label %69
  ]

69:                                               ; preds = %66, %66
  store i16 264, ptr %43, align 2
  br label %70

70:                                               ; preds = %69, %66
  %71 = load ptr, ptr %52, align 4
  %72 = load i32, ptr %47, align 4
  %73 = tail call ptr @kmemdup_nul(ptr noundef %71, i32 noundef %72, i32 noundef 3264) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %84, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @nfs4_update_server(ptr noundef %0, ptr noundef nonnull %73, ptr noundef nonnull %37, i32 noundef %67, ptr noundef %35) #8
  tail call void @kfree(ptr noundef nonnull %73) #8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @kfree(ptr noundef nonnull %37) #8
  br label %93

79:                                               ; preds = %75, %62, %51, %44
  %80 = phi i32 [ %76, %75 ], [ %45, %44 ], [ %45, %51 ], [ %45, %62 ]
  %81 = add nuw i32 %46, 1
  %82 = load i32, ptr %24, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %44, label %86

84:                                               ; preds = %70, %39
  %85 = phi i32 [ -2, %39 ], [ -12, %70 ]
  tail call void @kfree(ptr noundef nonnull %37) #8
  br label %88

86:                                               ; preds = %79
  tail call void @kfree(ptr noundef nonnull %37) #8
  %87 = icmp eq i32 %80, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %86, %84, %33, %29, %26, %21
  %89 = phi i32 [ %85, %84 ], [ %80, %86 ], [ %22, %21 ], [ %22, %26 ], [ %22, %29 ], [ -12, %33 ]
  %90 = add nuw nsw i32 %23, 1
  %91 = load i32, ptr %5, align 8
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %21, label %93

93:                                               ; preds = %88, %86, %78, %16, %12, %8, %4, %2
  %94 = phi ptr [ null, %2 ], [ null, %4 ], [ %10, %12 ], [ null, %8 ], [ %10, %78 ], [ %10, %16 ], [ %10, %86 ], [ %10, %88 ]
  %95 = phi ptr [ null, %2 ], [ null, %4 ], [ null, %12 ], [ null, %8 ], [ %14, %78 ], [ %14, %16 ], [ %14, %86 ], [ %14, %88 ]
  %96 = phi i32 [ -2, %2 ], [ -2, %4 ], [ -12, %12 ], [ -12, %8 ], [ 0, %78 ], [ -12, %16 ], [ %89, %88 ], [ 0, %86 ]
  %97 = ptrtoint ptr %94 to i32
  tail call void @free_pages(i32 noundef %97, i32 noundef 0) #8
  %98 = ptrtoint ptr %95 to i32
  tail call void @free_pages(i32 noundef %98, i32 noundef 0) #8
  ret i32 %96
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_get_pseudoflavor(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_auth_info_match(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_clone_client_set_auth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcauth_lookupcred(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_rpccred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_fs_locations(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_get_referral_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_net_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_update_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(2) }

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
!9 = !{i64 2148155841}
!10 = !{i64 553776, i64 2148043747, i64 2148043773, i64 2148043820, i64 2148043842, i64 2148043870, i64 2148043890}
!11 = !{i64 2148058203, i64 2148058235, i64 2148058264, i64 2148058298, i64 2148058329, i64 2148058352}
!12 = !{i64 2148156044}
!13 = !{!"auto-init"}
