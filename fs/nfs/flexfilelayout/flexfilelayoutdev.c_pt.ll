; ModuleID = '/llk/IR/fs/nfs/flexfilelayout/flexfilelayoutdev.c_pt.bc'
source_filename = "../fs/nfs/flexfilelayout/flexfilelayoutdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.133 }
%union.anon.133 = type { ptr }
%struct.nfs4_ff_layout_ds = type { %struct.nfs4_deviceid_node, i32, ptr, ptr }
%struct.nfs4_deviceid_node = type { %struct.hlist_node, %struct.hlist_node, ptr, ptr, i32, i32, %struct.nfs4_deviceid, %struct.callback_head, %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pnfs_device = type { %struct.nfs4_deviceid, i32, i32, i32, ptr, i32, i32, i8 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__kernel_sockaddr_storage = type { %union.anon.112 }
%union.anon.112 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs4_pnfs_ds_addr = type { %struct.__kernel_sockaddr_storage, i32, %struct.list_head, ptr, ptr, i32 }
%struct.nfs4_ff_ds_version = type { i32, i32, i32, i32, i8 }
%struct.nfs4_ff_layout_mirror = type { ptr, %struct.list_head, i32, i32, %struct.nfs4_deviceid, ptr, i32, ptr, %struct.nfs4_stateid_struct, ptr, ptr, %struct.refcount_struct, %struct.spinlock, i32, %struct.nfs4_ff_layoutstat, %struct.nfs4_ff_layoutstat, i64, i32 }
%struct.nfs4_stateid_struct = type { %union.anon.122, i32 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, [12 x i8] }
%struct.nfs4_ff_layoutstat = type { %struct.nfs4_ff_io_stat, %struct.nfs4_ff_busy_timer }
%struct.nfs4_ff_io_stat = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nfs4_ff_busy_timer = type { i64, %struct.atomic_t }
%struct.nfs4_ff_layout_ds_err = type { %struct.list_head, i64, i64, i32, i32, %struct.nfs4_stateid_struct, %struct.nfs4_deviceid }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.134, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.135, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.136, ptr, %struct.address_space, %struct.list_head, %union.anon.137, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.134 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.135 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.136 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.137 = type { ptr }
%struct.nfs4_flexfile_layout = type { %struct.pnfs_layout_hdr, %struct.pnfs_ds_commit_info, %struct.list_head, %struct.list_head, i64 }
%struct.pnfs_ds_commit_info = type { %struct.list_head, i32, i32, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.nfs4_pnfs_ds = type { %struct.list_head, ptr, %struct.list_head, ptr, %struct.refcount_struct, i32 }
%struct.nfs4_ff_layout_segment = type { %struct.pnfs_layout_segment, i64, i32, i32, [0 x ptr] }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.74 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.74 = type { %struct.callback_head }

@dataserver_timeo = internal global i32 600, align 4
@dataserver_retrans = internal global i32 0, align 4
@__param_str_dataserver_retrans = internal constant [40 x i8] c"nfs_layout_flexfiles.dataserver_retrans\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dataserver_retrans = internal constant %struct.kernel_param { ptr @__param_str_dataserver_retrans, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.133 { ptr @dataserver_retrans } }, section "__param", align 4
@__UNIQUE_ID_dataserver_retranstype456 = internal constant [54 x i8] c"nfs_layout_flexfiles.parmtype=dataserver_retrans:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_retrans457 = internal constant [149 x i8] c"nfs_layout_flexfiles.parm=dataserver_retrans:The  number of times the NFSv4.1 client retries a request before it attempts further  recovery  action.\00", section ".modinfo", align 1
@__param_str_dataserver_timeo = internal constant [38 x i8] c"nfs_layout_flexfiles.dataserver_timeo\00", align 1
@__param_dataserver_timeo = internal constant %struct.kernel_param { ptr @__param_str_dataserver_timeo, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.133 { ptr @dataserver_timeo } }, section "__param", align 4
@__UNIQUE_ID_dataserver_timeotype458 = internal constant [52 x i8] c"nfs_layout_flexfiles.parmtype=dataserver_timeo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_timeo459 = internal constant [172 x i8] c"nfs_layout_flexfiles.parm=dataserver_timeo:The time (in tenths of a second) the NFSv4.1  client  waits for a response from a  data server before it retries an NFS request.\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_dataserver_retrans457, ptr @__UNIQUE_ID_dataserver_retranstype456, ptr @__UNIQUE_ID_dataserver_timeo459, ptr @__UNIQUE_ID_dataserver_timeotype458, ptr @__param_dataserver_retrans, ptr @__param_dataserver_timeo], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_ff_layout_put_deviceid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef nonnull %0) #11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_put_deviceid_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_ff_layout_free_deviceid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @nfs4_pnfs_ds_put(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #11
  %6 = icmp eq ptr %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %8, ptr noundef nonnull inttoptr (i32 48 to ptr)) #11
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_pnfs_ds_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_ff_alloc_deviceid_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.xdr_stream, align 4
  %5 = alloca %struct.xdr_buf, align 4
  %6 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %183, label %9

9:                                                ; preds = %3
  %10 = and i32 %2, 17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !9

12:                                               ; preds = %9
  %13 = and i32 %2, 1
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 2
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i32 [ 0, %9 ], [ %15, %12 ]
  %18 = or i32 %2, 256
  %19 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %17, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef %18, i32 noundef 72) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %182, label %23

23:                                               ; preds = %16
  tail call void @nfs4_init_deviceid_node(ptr noundef nonnull %21, ptr noundef %0, ptr noundef %1) #11
  store volatile ptr %6, ptr %6, align 8
  %24 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %24, align 4
  %25 = getelementptr inbounds %struct.pnfs_device, ptr %1, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pnfs_device, ptr %1, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %26, i32 noundef %28) #11
  %29 = call ptr @page_address(ptr noundef nonnull %7) #11
  %30 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4, i32 1
  store i32 4096, ptr %31, align 4
  %32 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %166, label %34, !prof !10

34:                                               ; preds = %23
  %35 = load i32, ptr %32, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %34
  %38 = call i32 @llvm.bswap.i32(i32 %35) #11
  %39 = call i32 @llvm.umax.i32(i32 %38, i32 1)
  br label %40

40:                                               ; preds = %51, %37
  %41 = phi i32 [ %52, %51 ], [ 0, %37 ]
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.nfs_client, ptr %42, i32 0, i32 44
  %44 = load ptr, ptr %43, align 8
  %45 = call ptr @nfs4_decode_mp_ds_addr(ptr noundef %44, ptr noundef nonnull %4, i32 noundef %2) #11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %45, i32 0, i32 2
  %49 = load ptr, ptr %24, align 4
  store ptr %48, ptr %24, align 4
  store ptr %6, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %45, i32 0, i32 2, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %48, ptr %49, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = add nuw i32 %41, 1
  %53 = icmp eq i32 %52, %39
  br i1 %53, label %54, label %40

54:                                               ; preds = %51, %34
  %55 = load volatile ptr, ptr %6, align 8
  %56 = icmp eq ptr %55, %6
  br i1 %56, label %166, label %57

57:                                               ; preds = %54
  %58 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %166, label %60, !prof !10

60:                                               ; preds = %57
  %61 = load i32, ptr %58, align 4
  %62 = call i32 @llvm.bswap.i32(i32 %61) #11
  %63 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %62, i32 20) #11
  %64 = extractvalue { i32, i1 } %63, 1
  br i1 %64, label %182, label %65, !prof !10

65:                                               ; preds = %60
  %66 = extractvalue { i32, i1 } %63, 0
  %67 = call noalias align 64 ptr @__kmalloc(i32 noundef %66, i32 noundef %18) #13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %182, label %69

69:                                               ; preds = %65
  %70 = icmp eq i32 %61, 0
  br i1 %70, label %145, label %71

71:                                               ; preds = %69
  %72 = call i32 @llvm.umax.i32(i32 %62, i32 1)
  br label %73

73:                                               ; preds = %142, %71
  %74 = phi i32 [ %143, %142 ], [ 0, %71 ]
  %75 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 20) #11
  %76 = icmp eq ptr %75, null
  br i1 %76, label %166, label %77, !prof !10

77:                                               ; preds = %73
  %78 = getelementptr i32, ptr %75, i32 1
  %79 = load i32, ptr %75, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #11
  %81 = getelementptr %struct.nfs4_ff_ds_version, ptr %67, i32 %74
  store i32 %80, ptr %81, align 4
  %82 = getelementptr i32, ptr %75, i32 2
  %83 = load i32, ptr %78, align 4
  %84 = call i32 @llvm.bswap.i32(i32 %83) #11
  %85 = getelementptr %struct.nfs4_ff_ds_version, ptr %67, i32 %74, i32 1
  store i32 %84, ptr %85, align 4
  %86 = getelementptr i32, ptr %75, i32 3
  %87 = load i32, ptr %82, align 4
  %88 = call i32 @llvm.bswap.i32(i32 %87) #11
  %89 = icmp ult i32 %88, 1024
  %90 = call i32 @llvm.umin.i32(i32 %88, i32 1048576) #11
  %91 = select i1 %89, i32 4096, i32 %90
  %92 = call i32 @llvm.ctpop.i32(i32 %91) #11, !range !11
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %98, label %104

94:                                               ; preds = %98
  %95 = add nsw i8 %100, -1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i8 %95, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94, %77
  %99 = phi i32 [ %96, %94 ], [ 31, %77 ]
  %100 = phi i8 [ %95, %94 ], [ 31, %77 ]
  %101 = shl nuw i32 1, %99
  %102 = and i32 %101, %91
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %94, label %104

104:                                              ; preds = %98, %94, %77
  %105 = phi i32 [ %91, %77 ], [ 1, %94 ], [ %101, %98 ]
  %106 = getelementptr %struct.nfs4_ff_ds_version, ptr %67, i32 %74, i32 2
  store i32 %105, ptr %106, align 4
  %107 = getelementptr i32, ptr %75, i32 4
  %108 = load i32, ptr %86, align 4
  %109 = call i32 @llvm.bswap.i32(i32 %108) #11
  %110 = icmp ult i32 %109, 1024
  %111 = call i32 @llvm.umin.i32(i32 %109, i32 1048576) #11
  %112 = select i1 %110, i32 4096, i32 %111
  %113 = call i32 @llvm.ctpop.i32(i32 %112) #11, !range !11
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %119, label %125

115:                                              ; preds = %119
  %116 = add nsw i8 %121, -1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i8 %116, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %115, %104
  %120 = phi i32 [ %117, %115 ], [ 31, %104 ]
  %121 = phi i8 [ %116, %115 ], [ 31, %104 ]
  %122 = shl nuw i32 1, %120
  %123 = and i32 %122, %112
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %115, label %125

125:                                              ; preds = %119, %115, %104
  %126 = phi i32 [ %112, %104 ], [ 1, %115 ], [ %122, %119 ]
  %127 = getelementptr %struct.nfs4_ff_ds_version, ptr %67, i32 %74, i32 3
  store i32 %126, ptr %127, align 4
  %128 = load i32, ptr %107, align 4
  %129 = icmp ne i32 %128, 0
  %130 = getelementptr %struct.nfs4_ff_ds_version, ptr %67, i32 %74, i32 4
  %131 = zext i1 %129 to i8
  store i8 %131, ptr %130, align 4
  %132 = icmp ugt i32 %105, 1048576
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  store i32 1048576, ptr %106, align 4
  br label %134

134:                                              ; preds = %133, %125
  %135 = icmp ugt i32 %126, 1048576
  br i1 %135, label %136, label %137

136:                                              ; preds = %134
  store i32 1048576, ptr %127, align 4
  br label %137

137:                                              ; preds = %136, %134
  switch i32 %80, label %166 [
    i32 3, label %138
    i32 4, label %140
  ]

138:                                              ; preds = %137
  %139 = icmp eq i32 %83, 0
  br i1 %139, label %142, label %166

140:                                              ; preds = %137
  %141 = icmp ult i32 %84, 3
  br i1 %141, label %142, label %166

142:                                              ; preds = %140, %138
  %143 = add nuw i32 %74, 1
  %144 = icmp eq i32 %143, %72
  br i1 %144, label %145, label %73

145:                                              ; preds = %142, %69
  %146 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %21, i32 0, i32 2
  store ptr %67, ptr %146, align 8
  %147 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %21, i32 0, i32 1
  store i32 %62, ptr %147, align 4
  %148 = call ptr @nfs4_pnfs_ds_add(ptr noundef nonnull %6, i32 noundef %2) #11
  %149 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %21, i32 0, i32 3
  store ptr %148, ptr %149, align 4
  %150 = icmp eq ptr %148, null
  br i1 %150, label %166, label %151

151:                                              ; preds = %145
  %152 = load volatile ptr, ptr %6, align 8
  %153 = icmp eq ptr %152, %6
  br i1 %153, label %165, label %154

154:                                              ; preds = %154, %151
  %155 = phi ptr [ %163, %154 ], [ %152, %151 ]
  %156 = getelementptr i8, ptr %155, i32 -132
  %157 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %155, align 4
  %160 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %158, ptr %160, align 4
  store volatile ptr %159, ptr %158, align 4
  store volatile ptr %155, ptr %155, align 4
  store ptr %155, ptr %157, align 4
  %161 = getelementptr i8, ptr %155, i32 8
  %162 = load ptr, ptr %161, align 4
  call void @kfree(ptr noundef %162) #11
  call void @kfree(ptr noundef %156) #11
  %163 = load volatile ptr, ptr %6, align 8
  %164 = icmp eq ptr %163, %6
  br i1 %164, label %165, label %154

165:                                              ; preds = %154, %151
  call void @__free_pages(ptr noundef nonnull %7, i32 noundef 0) #11
  br label %185

166:                                              ; preds = %145, %140, %138, %137, %73, %57, %54, %23
  %167 = phi ptr [ null, %23 ], [ null, %57 ], [ %67, %145 ], [ null, %54 ], [ %67, %73 ], [ %67, %140 ], [ %67, %138 ], [ %67, %137 ]
  %168 = load volatile ptr, ptr %6, align 8
  %169 = icmp eq ptr %168, %6
  br i1 %169, label %181, label %170

170:                                              ; preds = %170, %166
  %171 = phi ptr [ %179, %170 ], [ %168, %166 ]
  %172 = getelementptr i8, ptr %171, i32 -132
  %173 = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = load ptr, ptr %171, align 4
  %176 = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  store ptr %174, ptr %176, align 4
  store volatile ptr %175, ptr %174, align 4
  store volatile ptr %171, ptr %171, align 4
  store ptr %171, ptr %173, align 4
  %177 = getelementptr i8, ptr %171, i32 8
  %178 = load ptr, ptr %177, align 4
  call void @kfree(ptr noundef %178) #11
  call void @kfree(ptr noundef %172) #11
  %179 = load volatile ptr, ptr %6, align 8
  %180 = icmp eq ptr %179, %6
  br i1 %180, label %181, label %170

181:                                              ; preds = %170, %166
  call void @kfree(ptr noundef %167) #11
  br label %182

182:                                              ; preds = %181, %65, %60, %16
  call void @__free_pages(ptr noundef nonnull %7, i32 noundef 0) #11
  br label %183

183:                                              ; preds = %182, %3
  %184 = phi ptr [ %21, %182 ], [ null, %3 ]
  call void @kfree(ptr noundef %184) #11
  br label %185

185:                                              ; preds = %183, %165
  %186 = phi ptr [ null, %183 ], [ %21, %165 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #11
  ret ptr %186
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_init_deviceid_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_decode_mp_ds_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_pnfs_ds_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ff_layout_track_ds_error(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %105, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %105, label %15

15:                                               ; preds = %9
  %16 = and i32 %6, 17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !9

18:                                               ; preds = %15
  %19 = and i32 %6, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 1, i32 2
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ 0, %15 ], [ %21, %18 ]
  %24 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %23, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef %6, i32 noundef 72) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %105, label %28

28:                                               ; preds = %22
  store volatile ptr %26, ptr %26, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %26, ptr %29, align 4
  %30 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %26, i32 0, i32 1
  store i64 %2, ptr %30, align 8
  %31 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %26, i32 0, i32 2
  store i64 %3, ptr %31, align 8
  %32 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %26, i32 0, i32 3
  store i32 %4, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %26, i32 0, i32 4
  store i32 %5, ptr %33, align 4
  %34 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %26, i32 0, i32 5
  %35 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %34, ptr noundef align 4 dereferenceable(16) %35, i32 16, i1 false) #11
  %36 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 8, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %26, i32 0, i32 5, i32 1
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %26, i32 0, i32 6
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %40, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %39, ptr noundef align 4 dereferenceable(16) %41, i32 16, i1 false)
  %42 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %0, i32 0, i32 15
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.inode, ptr %43, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %44) #11
  %45 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %81, %28
  %48 = phi ptr [ %46, %28 ], [ %49, %81 ]
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %48, %45
  br i1 %50, label %96, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %48, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = load i32, ptr %33, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = icmp ult i32 %53, %54
  br i1 %57, label %81, label %96

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %48, i32 0, i32 3
  %60 = load i32, ptr %59, align 8
  %61 = load i32, ptr %32, align 8
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = icmp slt i32 %60, %61
  br i1 %64, label %81, label %96

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %48, i32 0, i32 5
  %67 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %66, ptr noundef dereferenceable(16) %34, i32 noundef 16) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %48, i32 0, i32 6
  %71 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %70, ptr noundef dereferenceable(16) %39, i32 noundef 16) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %48, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %48, i32 0, i32 2
  %77 = load i64, ptr %76, align 8
  %78 = tail call i64 @llvm.uadd.sat.i64(i64 %75, i64 %77) #11
  %79 = load i64, ptr %30, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %73, %69, %65, %63, %56
  %82 = phi i32 [ %67, %65 ], [ %71, %69 ], [ -1, %73 ], [ -1, %56 ], [ -1, %63 ]
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %47, label %96

84:                                               ; preds = %73
  %85 = load i64, ptr %31, align 8
  %86 = tail call i64 @llvm.uadd.sat.i64(i64 %79, i64 %85) #11
  %87 = icmp ugt i64 %75, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = tail call i64 @llvm.umax.i64(i64 %86, i64 %78) #11
  %90 = tail call i64 @llvm.umin.i64(i64 %79, i64 %75) #11
  store i64 %90, ptr %30, align 8
  %91 = sub i64 %89, %90
  store i64 %91, ptr %31, align 8
  %92 = load ptr, ptr %48, align 4
  store ptr %92, ptr %26, align 8
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %26, ptr %93, align 4
  %94 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  store ptr %95, ptr %29, align 4
  store ptr %26, ptr %95, align 4
  tail call void @kfree(ptr noundef %48) #11
  br label %100

96:                                               ; preds = %84, %81, %63, %56, %47
  %97 = phi ptr [ %48, %84 ], [ %45, %47 ], [ %48, %81 ], [ %48, %63 ], [ %48, %56 ]
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  store ptr %26, ptr %98, align 4
  store ptr %97, ptr %26, align 8
  store ptr %99, ptr %29, align 4
  store volatile ptr %26, ptr %99, align 4
  br label %100

100:                                              ; preds = %96, %88
  %101 = load ptr, ptr %42, align 4
  %102 = getelementptr inbounds %struct.inode, ptr %101, i32 0, i32 17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %103 = load i16, ptr %102, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %102, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  br label %105

105:                                              ; preds = %100, %22, %9, %7
  %106 = phi i32 [ 0, %100 ], [ 0, %7 ], [ -22, %9 ], [ -12, %22 ]
  ret i32 %106
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nfs4_ff_layout_select_ds_fh(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nfs4_ff_layout_select_ds_stateid(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %1, ptr noundef align 4 dereferenceable(16) %10, i32 16, i1 false) #11
  %11 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 8, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nfs4_stateid_struct, ptr %1, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_ff_layout_prepare_ds(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %1, null
  br i1 %12, label %96, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %1, i32 0, i32 4
  %19 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %5, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @nfs4_find_get_deviceid(ptr noundef %11, ptr noundef %18, ptr noundef %20, i32 noundef 3264) #11
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr inttoptr (i32 -19 to ptr), ptr %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %24 = ptrtoint ptr %23 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #11, !srcloc !17
  br label %25

25:                                               ; preds = %25, %17
  %26 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %14, i32 0, i32 %24) #11, !srcloc !18
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq ptr %23, inttoptr (i32 -19 to ptr)
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %21) #11
  br label %36

36:                                               ; preds = %34, %29
  %37 = load ptr, ptr %14, align 4
  br label %38

38:                                               ; preds = %36, %13
  %39 = phi ptr [ %37, %36 ], [ %15, %13 ]
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %96, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %39, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %43, i32 0, i32 3
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %155

47:                                               ; preds = %41
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !20
  %48 = load ptr, ptr %14, align 4
  %49 = load i32, ptr @dataserver_timeo, align 4
  %50 = load i32, ptr @dataserver_retrans, align 4
  %51 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %48, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %52, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @nfs4_pnfs_ds_connect(ptr noundef %11, ptr noundef %43, ptr noundef %48, i32 noundef %49, i32 noundef %50, i32 noundef %53, i32 noundef %55) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %47
  %59 = load ptr, ptr %44, align 4
  %60 = getelementptr inbounds %struct.nfs_client, ptr %59, i32 0, i32 11
  %61 = load ptr, ptr %60, align 8
  %62 = tail call i32 @rpc_max_payload(ptr noundef %61) #11
  %63 = icmp ult i32 %62, 1024
  %64 = tail call i32 @llvm.umin.i32(i32 %62, i32 1048576) #11
  %65 = select i1 %63, i32 4096, i32 %64
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65) #11, !range !11
  %67 = icmp ugt i32 %66, 1
  br i1 %67, label %72, label %78

68:                                               ; preds = %72
  %69 = add nsw i8 %74, -1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i8 %69, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68, %58
  %73 = phi i32 [ %70, %68 ], [ 31, %58 ]
  %74 = phi i8 [ %69, %68 ], [ 31, %58 ]
  %75 = shl nuw i32 1, %73
  %76 = and i32 %75, %65
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %68, label %78

78:                                               ; preds = %72, %68, %58
  %79 = phi i32 [ %65, %58 ], [ 1, %68 ], [ %75, %72 ]
  %80 = load ptr, ptr %14, align 4
  %81 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp ugt i32 %84, %79
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  store i32 %79, ptr %83, align 4
  %87 = load ptr, ptr %14, align 4
  %88 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = phi ptr [ %89, %86 ], [ %82, %78 ]
  %92 = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %93, %79
  br i1 %94, label %95, label %155

95:                                               ; preds = %90
  store i32 %79, ptr %92, align 4
  br label %155

96:                                               ; preds = %47, %38, %3
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3, i32 1
  %99 = load i64, ptr %98, align 8
  %100 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3, i32 2
  %101 = load i64, ptr %100, align 8
  %102 = tail call i32 @ff_layout_track_ds_error(ptr noundef %97, ptr noundef %1, i64 noundef %99, i64 noundef %101, i32 noundef 6, i32 noundef 10044, i32 noundef 3072)
  tail call void @ff_layout_send_layouterror(ptr noundef %0) #11
  br i1 %2, label %154, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 1
  %107 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %106, label %110, label %131

110:                                              ; preds = %103
  br i1 %109, label %154, label %111

111:                                              ; preds = %127, %110
  %112 = phi i32 [ %128, %127 ], [ %108, %110 ]
  %113 = phi i32 [ %129, %127 ], [ 0, %110 ]
  %114 = getelementptr %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 4, i32 %113
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %115, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %155, label %121

121:                                              ; preds = %117
  %122 = icmp ugt ptr %119, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %127, label %123

123:                                              ; preds = %121
  %124 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %119) #11
  br i1 %124, label %125, label %155

125:                                              ; preds = %123
  %126 = load i32, ptr %107, align 4
  br label %127

127:                                              ; preds = %125, %121, %111
  %128 = phi i32 [ %126, %125 ], [ %112, %111 ], [ %112, %121 ]
  %129 = add nuw i32 %113, 1
  %130 = icmp ult i32 %129, %128
  br i1 %130, label %111, label %154

131:                                              ; preds = %103
  br i1 %109, label %154, label %132

132:                                              ; preds = %148, %131
  %133 = phi i32 [ %149, %148 ], [ %108, %131 ]
  %134 = phi i32 [ %150, %148 ], [ 0, %131 ]
  %135 = getelementptr %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 4, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %154, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %136, i32 0, i32 5
  %140 = load ptr, ptr %139, align 4
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %154, label %142

142:                                              ; preds = %138
  %143 = icmp eq ptr %140, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %142
  %145 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %140) #11
  br i1 %145, label %154, label %146

146:                                              ; preds = %144
  %147 = load i32, ptr %107, align 4
  br label %148

148:                                              ; preds = %146, %142
  %149 = phi i32 [ %147, %146 ], [ %133, %142 ]
  %150 = add nuw i32 %134, 1
  %151 = icmp ult i32 %150, %149
  br i1 %151, label %132, label %152

152:                                              ; preds = %148
  %153 = icmp eq i32 %149, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %152, %144, %138, %132, %131, %127, %110, %96
  tail call void @pnfs_error_mark_layout_for_return(ptr noundef %7, ptr noundef %0) #11
  br label %155

155:                                              ; preds = %154, %152, %123, %117, %95, %90, %41
  %156 = phi ptr [ %43, %41 ], [ %43, %95 ], [ %43, %90 ], [ null, %154 ], [ null, %152 ], [ null, %117 ], [ null, %123 ]
  ret ptr %156
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_pnfs_ds_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_max_payload(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ff_layout_send_layouterror(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pnfs_error_mark_layout_for_return(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ff_layout_get_ds_cred(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nfs4_ff_ds_version, ptr %9, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %5
  %14 = load i32, ptr %1, align 8
  %15 = icmp eq i32 %14, 1
  %16 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 9
  %17 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 10
  %18 = select i1 %15, ptr %16, ptr %17
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %19

19:                                               ; preds = %22, %13
  %20 = load volatile ptr, ptr %18, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %20) #11, !srcloc !17
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 0, i32 1, ptr nonnull elementtype(i32) %20) #11, !srcloc !24
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %19, label %26

26:                                               ; preds = %22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !25
  %27 = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 24
  store i32 0, ptr %27, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %38

28:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  %29 = icmp eq ptr %2, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 24
  store i32 0, ptr %31, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #11, !srcloc !17
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #11, !srcloc !27
  br label %38

33:                                               ; preds = %5, %3
  %34 = icmp eq ptr %2, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.cred, ptr %2, i32 0, i32 24
  store i32 0, ptr %36, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %2) #11, !srcloc !17
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #11, !srcloc !27
  br label %38

38:                                               ; preds = %35, %33, %30, %28, %26
  %39 = phi ptr [ %20, %26 ], [ null, %28 ], [ %2, %30 ], [ null, %33 ], [ %2, %35 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_ff_find_or_create_ds_client(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nfs4_ff_layout_ds, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %14 [
    i32 3, label %9
    i32 4, label %12
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nfs_client, ptr %1, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  br label %15

12:                                               ; preds = %3
  %13 = tail call ptr @nfs4_find_or_create_ds_client(ptr noundef %1, ptr noundef %2) #11
  br label %15

14:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/nfs/flexfilelayout/flexfilelayoutdev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 455, 0\0A.popsection", ""() #11, !srcloc !28
  unreachable

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %13, %12 ], [ %11, %9 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_or_create_ds_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ff_layout_free_ds_ioerr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %10, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @kfree(ptr noundef %5) #11
  %10 = load volatile ptr, ptr %0, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ff_layout_encode_ds_ioerr(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %32, label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %30, %9 ], [ %3, %2 ]
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %0, i32 noundef 60) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9, !prof !10

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %6, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #11
  store i64 %12, ptr %7, align 1
  %13 = getelementptr i32, ptr %7, i32 2
  %14 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %6, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #11
  store i64 %16, ptr %13, align 1
  %17 = getelementptr i32, ptr %7, i32 4
  %18 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %6, i32 0, i32 5
  %19 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %17, ptr noundef %18, i32 noundef 16) #11
  %20 = getelementptr i32, ptr %19, i32 1
  store i32 16777216, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %6, i32 0, i32 6
  %22 = tail call ptr @xdr_encode_opaque_fixed(ptr noundef %20, ptr noundef %21, i32 noundef 16) #11
  %23 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %6, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = getelementptr i32, ptr %22, i32 1
  store i32 %25, ptr %22, align 4
  %27 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %6, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  store i32 %29, ptr %26, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %32, label %5

32:                                               ; preds = %9, %5, %2
  %33 = phi i32 [ 0, %2 ], [ 0, %9 ], [ -105, %5 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque_fixed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ff_layout_fetch_ds_ioerr(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.nfs4_flexfile_layout, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %49, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.pnfs_layout_range, ptr %1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.pnfs_layout_range, ptr %1, i32 0, i32 2
  br label %15

15:                                               ; preds = %45, %12
  %16 = phi i32 [ %3, %12 ], [ %47, %45 ]
  %17 = phi ptr [ %10, %12 ], [ %19, %45 ]
  %18 = phi i32 [ 0, %12 ], [ %46, %45 ]
  %19 = load ptr, ptr %17, align 8
  %20 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %17, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %17, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = tail call i64 @llvm.uadd.sat.i64(i64 %21, i64 %23) #11
  %25 = load i64, ptr %13, align 8
  %26 = icmp eq i64 %24, -1
  %27 = icmp ult i64 %25, %24
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %15
  %30 = load i64, ptr %14, align 8
  %31 = tail call i64 @llvm.uadd.sat.i64(i64 %25, i64 %30) #11
  %32 = icmp eq i64 %31, -1
  %33 = icmp ult i64 %21, %31
  %34 = or i1 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = icmp eq i32 %16, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %19, ptr %39, align 4
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %17, ptr %42, align 4
  store ptr %41, ptr %17, align 4
  store ptr %2, ptr %38, align 4
  store volatile ptr %17, ptr %2, align 4
  %43 = add i32 %16, -1
  %44 = add i32 %18, 1
  br label %45

45:                                               ; preds = %37, %29, %15
  %46 = phi i32 [ %44, %37 ], [ %18, %29 ], [ %18, %15 ]
  %47 = phi i32 [ %43, %37 ], [ %16, %29 ], [ %16, %15 ]
  %48 = icmp eq ptr %19, %9
  br i1 %48, label %49, label %15

49:                                               ; preds = %45, %35, %4
  %50 = phi i32 [ 0, %4 ], [ %46, %45 ], [ %18, %35 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %51 = load i16, ptr %8, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %53 = icmp eq i32 %50, %3
  br i1 %53, label %54, label %108

54:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store ptr %5, ptr %5, align 8
  %55 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %55, align 4
  %56 = load ptr, ptr %6, align 4
  %57 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 17
  call void @_raw_spin_lock(ptr noundef %57) #11
  %58 = load ptr, ptr %9, align 4
  %59 = icmp eq ptr %58, %9
  br i1 %59, label %94, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.pnfs_layout_range, ptr %1, i32 0, i32 1
  %62 = getelementptr inbounds %struct.pnfs_layout_range, ptr %1, i32 0, i32 2
  br label %63

63:                                               ; preds = %91, %60
  %64 = phi i32 [ -1, %60 ], [ %92, %91 ]
  %65 = phi ptr [ %58, %60 ], [ %66, %91 ]
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %65, i32 0, i32 1
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nfs4_ff_layout_ds_err, ptr %65, i32 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = call i64 @llvm.uadd.sat.i64(i64 %68, i64 %70) #11
  %72 = load i64, ptr %61, align 8
  %73 = icmp eq i64 %71, -1
  %74 = icmp ult i64 %72, %71
  %75 = or i1 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %63
  %77 = load i64, ptr %62, align 8
  %78 = call i64 @llvm.uadd.sat.i64(i64 %72, i64 %77) #11
  %79 = icmp eq i64 %78, -1
  %80 = icmp ult i64 %68, %78
  %81 = or i1 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = icmp eq i32 %64, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  store volatile ptr %66, ptr %86, align 4
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %65, ptr %89, align 4
  store ptr %88, ptr %65, align 4
  store ptr %5, ptr %85, align 4
  store volatile ptr %65, ptr %5, align 8
  %90 = add i32 %64, -1
  br label %91

91:                                               ; preds = %84, %76, %63
  %92 = phi i32 [ %90, %84 ], [ %64, %76 ], [ %64, %63 ]
  %93 = icmp eq ptr %66, %9
  br i1 %93, label %94, label %63

94:                                               ; preds = %91, %82, %54
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !12
  %95 = load i16, ptr %57, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %57, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !14
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %97 = load volatile ptr, ptr %5, align 8
  %98 = icmp eq ptr %97, %5
  br i1 %98, label %107, label %99

99:                                               ; preds = %99, %94
  %100 = phi ptr [ %105, %99 ], [ %97, %94 ]
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %100, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %102, ptr %104, align 4
  store volatile ptr %103, ptr %102, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %100, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %101, align 4
  call void @kfree(ptr noundef %100) #11
  %105 = load volatile ptr, ptr %5, align 8
  %106 = icmp eq ptr %105, %5
  br i1 %106, label %107, label %99

107:                                              ; preds = %99, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %108

108:                                              ; preds = %107, %49
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ff_layout_avoid_mds_available_ds(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %58

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %9, label %13, label %34

13:                                               ; preds = %6
  br i1 %12, label %58, label %14

14:                                               ; preds = %30, %13
  %15 = phi i32 [ %31, %30 ], [ %11, %13 ]
  %16 = phi i32 [ %32, %30 ], [ 0, %13 ]
  %17 = getelementptr %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 4, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %58, label %24

24:                                               ; preds = %20
  %25 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %22) #11
  br i1 %27, label %28, label %58

28:                                               ; preds = %26
  %29 = load i32, ptr %10, align 4
  br label %30

30:                                               ; preds = %28, %24, %14
  %31 = phi i32 [ %29, %28 ], [ %15, %14 ], [ %15, %24 ]
  %32 = add nuw i32 %16, 1
  %33 = icmp ult i32 %32, %31
  br i1 %33, label %14, label %58

34:                                               ; preds = %6
  br i1 %12, label %55, label %35

35:                                               ; preds = %51, %34
  %36 = phi i32 [ %52, %51 ], [ %11, %34 ]
  %37 = phi i32 [ %53, %51 ], [ 0, %34 ]
  %38 = getelementptr %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 4, i32 %37
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, ptr %39, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %58, label %45

45:                                               ; preds = %41
  %46 = icmp eq ptr %43, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = tail call zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef nonnull %43) #11
  br i1 %48, label %58, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %10, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i32 [ %50, %49 ], [ %36, %45 ]
  %53 = add nuw i32 %37, 1
  %54 = icmp ult i32 %53, %52
  br i1 %54, label %35, label %55

55:                                               ; preds = %51, %34
  %56 = phi i32 [ 0, %34 ], [ %52, %51 ]
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %55, %47, %41, %35, %30, %26, %20, %13, %1
  %59 = phi i1 [ true, %1 ], [ false, %13 ], [ %57, %55 ], [ false, %30 ], [ true, %26 ], [ true, %20 ], [ false, %35 ], [ false, %41 ], [ false, %47 ]
  ret i1 %59
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ff_layout_avoid_read_on_rw(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nfs4_ff_layout_segment, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_get_deviceid(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_test_deviceid_unavailable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.uadd.sat.i64(i64, i64) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i32 0, i32 33}
!12 = !{i64 2148953074}
!13 = !{i64 2148948898}
!14 = !{i64 2148948973, i64 2148949000, i64 2148949047, i64 2148949069, i64 2148949097, i64 2148949117}
!15 = !{i64 2148976077}
!16 = !{i64 2156190988}
!17 = !{i64 508382, i64 2147998353, i64 2147998379, i64 2147998426, i64 2147998448, i64 2147998476, i64 2147998496}
!18 = !{i64 520553, i64 520574, i64 520597, i64 520616, i64 520635}
!19 = !{i64 2156191381}
!20 = !{i64 2156194303}
!21 = !{i8 0, i8 2}
!22 = !{i64 2149071429}
!23 = !{i64 2148010072}
!24 = !{i64 494951, i64 494976, i64 494998, i64 495014, i64 495026, i64 495046, i64 495070, i64 495086, i64 495098}
!25 = !{i64 2148010198}
!26 = !{i64 2149071646}
!27 = !{i64 2148010565, i64 2148010591, i64 2148010620, i64 2148010654, i64 2148010685, i64 2148010708}
!28 = !{i64 2156194672, i64 2156195178, i64 2156194709, i64 2156194765, i64 2156194799, i64 2156194823, i64 2156194864, i64 2156194885, i64 2156194913, i64 2156194947}
