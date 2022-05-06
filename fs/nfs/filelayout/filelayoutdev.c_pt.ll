; ModuleID = '/llk/IR/fs/nfs/filelayout/filelayoutdev.c_pt.bc'
source_filename = "../fs/nfs/filelayout/filelayoutdev.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.133 }
%union.anon.133 = type { ptr }
%struct.nfs4_file_layout_dsaddr = type { %struct.nfs4_deviceid_node, i32, ptr, i32, [0 x ptr] }
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
%struct.nfs4_filelayout_segment = type { %struct.pnfs_layout_segment, i32, i32, i32, i32, i64, %struct.nfs4_deviceid, ptr, i32, ptr }
%struct.pnfs_layout_segment = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.pnfs_layout_range, %struct.refcount_struct, i32, i32, ptr }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.pnfs_layout_hdr = type { %struct.refcount_struct, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, %struct.nfs4_stateid_struct, i32, i32, i32, i64, ptr, ptr, %struct.callback_head }
%struct.nfs4_stateid_struct = type { %union.anon.122, i32 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, [12 x i8] }
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

@.str = private unnamed_addr constant [62 x i8] c"\014NFS: %s: stripe count %d greater than supported maximum %d\0A\00", align 1
@__func__.nfs4_fl_alloc_deviceid_node = private unnamed_addr constant [28 x i8] c"nfs4_fl_alloc_deviceid_node\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"\014NFS: %s: multipath count %d greater than supported maximum %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"\014NFS: %s: stripe index %u >= num ds %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013NFS: %s: No data server for offset index %d\0A\00", align 1
@__func__.nfs4_fl_prepare_ds = private unnamed_addr constant [19 x i8] c"nfs4_fl_prepare_ds\00", align 1
@dataserver_timeo = internal global i32 600, align 4
@dataserver_retrans = internal global i32 5, align 4
@__param_str_dataserver_retrans = internal constant [43 x i8] c"nfs_layout_nfsv41_files.dataserver_retrans\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_dataserver_retrans = internal constant %struct.kernel_param { ptr @__param_str_dataserver_retrans, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.133 { ptr @dataserver_retrans } }, section "__param", align 4
@__UNIQUE_ID_dataserver_retranstype451 = internal constant [57 x i8] c"nfs_layout_nfsv41_files.parmtype=dataserver_retrans:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_retrans452 = internal constant [152 x i8] c"nfs_layout_nfsv41_files.parm=dataserver_retrans:The  number of times the NFSv4.1 client retries a request before it attempts further  recovery  action.\00", section ".modinfo", align 1
@__param_str_dataserver_timeo = internal constant [41 x i8] c"nfs_layout_nfsv41_files.dataserver_timeo\00", align 1
@__param_dataserver_timeo = internal constant %struct.kernel_param { ptr @__param_str_dataserver_timeo, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.133 { ptr @dataserver_timeo } }, section "__param", align 4
@__UNIQUE_ID_dataserver_timeotype453 = internal constant [55 x i8] c"nfs_layout_nfsv41_files.parmtype=dataserver_timeo:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dataserver_timeo454 = internal constant [175 x i8] c"nfs_layout_nfsv41_files.parm=dataserver_timeo:The time (in tenths of a second) the NFSv4.1  client  waits for a response from a  data server before it retries an NFS request.\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_dataserver_retrans452, ptr @__UNIQUE_ID_dataserver_retranstype451, ptr @__UNIQUE_ID_dataserver_timeo454, ptr @__UNIQUE_ID_dataserver_timeotype453, ptr @__param_dataserver_retrans, ptr @__param_dataserver_timeo], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_fl_free_deviceid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %13, %1
  %6 = phi i32 [ %14, %13 ], [ %3, %1 ]
  %7 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %8 = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %0, i32 0, i32 4, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @nfs4_pnfs_ds_put(ptr noundef nonnull %9) #9
  %12 = load i32, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %6, %5 ], [ %12, %11 ]
  %15 = add nuw i32 %7, 1
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %5, label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = icmp eq ptr %0, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %0, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %22, ptr noundef nonnull inttoptr (i32 48 to ptr)) #9
  br label %23

23:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_pnfs_ds_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_fl_alloc_deviceid_node(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.xdr_stream, align 4
  %5 = alloca %struct.xdr_buf, align 4
  %6 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %5, i8 0, i32 44, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !annotation !8
  %7 = tail call ptr @__alloc_pages(i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %159, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pnfs_device, ptr %1, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pnfs_device, ptr %1, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  call void @xdr_init_decode_pages(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %11, i32 noundef %13) #9
  %14 = call ptr @page_address(ptr noundef nonnull %7) #9
  %15 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.xdr_stream, ptr %4, i32 0, i32 4, i32 1
  store i32 4096, ptr %16, align 4
  %17 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %157, label %19, !prof !9

19:                                               ; preds = %9
  %20 = load i32, ptr %17, align 4
  %21 = call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = icmp ugt i32 %21, 4096
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.nfs4_fl_alloc_deviceid_node, i32 noundef %21, i32 noundef 4096) #10
  br label %157

25:                                               ; preds = %19
  %26 = or i32 %2, 256
  %27 = call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef %26) #11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %157, label %29

29:                                               ; preds = %25
  %30 = shl nuw nsw i32 %21, 2
  %31 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %156, label %33, !prof !9

33:                                               ; preds = %29
  %34 = icmp eq i32 %20, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %33
  %36 = call i32 @llvm.umax.i32(i32 %21, i32 1)
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i32 [ %49, %37 ], [ 0, %35 ]
  %39 = phi ptr [ %48, %37 ], [ %27, %35 ]
  %40 = phi ptr [ %42, %37 ], [ %31, %35 ]
  %41 = phi i32 [ %47, %37 ], [ 0, %35 ]
  %42 = getelementptr i32, ptr %40, i32 1
  %43 = load i32, ptr %40, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #9
  %45 = trunc i32 %44 to i8
  store i8 %45, ptr %39, align 1
  %46 = and i32 %44, 255
  %47 = call i32 @llvm.smax.i32(i32 %41, i32 %46)
  %48 = getelementptr i8, ptr %39, i32 1
  %49 = add nuw i32 %38, 1
  %50 = icmp eq i32 %49, %36
  br i1 %50, label %51, label %37

51:                                               ; preds = %37, %33
  %52 = phi i32 [ 0, %33 ], [ %47, %37 ]
  %53 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %156, label %55, !prof !9

55:                                               ; preds = %51
  %56 = load i32, ptr %53, align 4
  %57 = call i32 @llvm.bswap.i32(i32 %56) #9
  %58 = icmp ugt i32 %57, 256
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.nfs4_fl_alloc_deviceid_node, i32 noundef %57, i32 noundef 256) #10
  br label %156

61:                                               ; preds = %55
  %62 = icmp ult i32 %52, %57
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.nfs4_fl_alloc_deviceid_node, i32 noundef %52, i32 noundef %57) #10
  br label %156

65:                                               ; preds = %61
  %66 = shl nuw nsw i32 %57, 2
  %67 = add nuw nsw i32 %66, 72
  %68 = call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef %26) #11
  %69 = icmp eq ptr %68, null
  br i1 %69, label %156, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %68, i32 0, i32 1
  store i32 %21, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %68, i32 0, i32 2
  store ptr %27, ptr %72, align 64
  %73 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %68, i32 0, i32 3
  store i32 %57, ptr %73, align 4
  call void @nfs4_init_deviceid_node(ptr noundef nonnull %68, ptr noundef %0, ptr noundef %1) #9
  store volatile ptr %6, ptr %6, align 8
  %74 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %74, align 4
  %75 = load i32, ptr %73, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %157, label %77

77:                                               ; preds = %123, %70
  %78 = phi i32 [ %124, %123 ], [ 0, %70 ]
  %79 = call ptr @xdr_inline_decode(ptr noundef nonnull %4, i32 noundef 4) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %138, label %81, !prof !9

81:                                               ; preds = %77
  %82 = load i32, ptr %79, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %81
  %85 = call i32 @llvm.bswap.i32(i32 %82) #9
  %86 = call i32 @llvm.umax.i32(i32 %85, i32 1)
  br label %87

87:                                               ; preds = %98, %84
  %88 = phi i32 [ %99, %98 ], [ 0, %84 ]
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.nfs_client, ptr %89, i32 0, i32 44
  %91 = load ptr, ptr %90, align 8
  %92 = call ptr @nfs4_decode_mp_ds_addr(ptr noundef %91, ptr noundef nonnull %4, i32 noundef %2) #9
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %92, i32 0, i32 2
  %96 = load ptr, ptr %74, align 4
  store ptr %95, ptr %74, align 4
  store ptr %6, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nfs4_pnfs_ds_addr, ptr %92, i32 0, i32 2, i32 1
  store ptr %96, ptr %97, align 4
  store volatile ptr %95, ptr %96, align 4
  br label %98

98:                                               ; preds = %94, %87
  %99 = add nuw i32 %88, 1
  %100 = icmp eq i32 %99, %86
  br i1 %100, label %101, label %87

101:                                              ; preds = %98, %81
  %102 = load volatile ptr, ptr %6, align 8
  %103 = icmp eq ptr %102, %6
  br i1 %103, label %138, label %104

104:                                              ; preds = %101
  %105 = call ptr @nfs4_pnfs_ds_add(ptr noundef nonnull %6, i32 noundef %2) #9
  %106 = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %68, i32 0, i32 4, i32 %78
  store ptr %105, ptr %106, align 4
  %107 = icmp eq ptr %105, null
  %108 = load volatile ptr, ptr %6, align 8
  %109 = icmp eq ptr %108, %6
  br i1 %107, label %111, label %110

110:                                              ; preds = %104
  br i1 %109, label %123, label %112

111:                                              ; preds = %104
  br i1 %109, label %138, label %127

112:                                              ; preds = %112, %110
  %113 = phi ptr [ %121, %112 ], [ %108, %110 ]
  %114 = getelementptr i8, ptr %113, i32 -132
  %115 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %113, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %116, ptr %118, align 4
  store volatile ptr %117, ptr %116, align 4
  store volatile ptr %113, ptr %113, align 4
  store ptr %113, ptr %115, align 4
  %119 = getelementptr i8, ptr %113, i32 8
  %120 = load ptr, ptr %119, align 4
  call void @kfree(ptr noundef %120) #9
  call void @kfree(ptr noundef %114) #9
  %121 = load volatile ptr, ptr %6, align 8
  %122 = icmp eq ptr %121, %6
  br i1 %122, label %123, label %112

123:                                              ; preds = %112, %110
  %124 = add nuw i32 %78, 1
  %125 = load i32, ptr %73, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %77, label %157

127:                                              ; preds = %127, %111
  %128 = phi ptr [ %136, %127 ], [ %108, %111 ]
  %129 = getelementptr i8, ptr %128, i32 -132
  %130 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %128, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  store ptr %131, ptr %133, align 4
  store volatile ptr %132, ptr %131, align 4
  store volatile ptr %128, ptr %128, align 4
  store ptr %128, ptr %130, align 4
  %134 = getelementptr i8, ptr %128, i32 8
  %135 = load ptr, ptr %134, align 4
  call void @kfree(ptr noundef %135) #9
  call void @kfree(ptr noundef %129) #9
  %136 = load volatile ptr, ptr %6, align 8
  %137 = icmp eq ptr %136, %6
  br i1 %137, label %138, label %127

138:                                              ; preds = %127, %111, %101, %77
  %139 = load i32, ptr %73, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %149, %138
  %142 = phi i32 [ %150, %149 ], [ %139, %138 ]
  %143 = phi i32 [ %151, %149 ], [ 0, %138 ]
  %144 = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %68, i32 0, i32 4, i32 %143
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %141
  call void @nfs4_pnfs_ds_put(ptr noundef nonnull %145) #9
  %148 = load i32, ptr %73, align 4
  br label %149

149:                                              ; preds = %147, %141
  %150 = phi i32 [ %142, %141 ], [ %148, %147 ]
  %151 = add nuw i32 %143, 1
  %152 = icmp ult i32 %151, %150
  br i1 %152, label %141, label %153

153:                                              ; preds = %149, %138
  %154 = load ptr, ptr %72, align 64
  call void @kfree(ptr noundef %154) #9
  %155 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %68, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %155, ptr noundef nonnull inttoptr (i32 48 to ptr)) #9
  br label %157

156:                                              ; preds = %65, %63, %59, %51, %29
  call void @kfree(ptr noundef nonnull %27) #9
  br label %157

157:                                              ; preds = %156, %153, %123, %70, %25, %23, %9
  %158 = phi ptr [ %68, %70 ], [ null, %25 ], [ null, %9 ], [ null, %156 ], [ null, %153 ], [ null, %23 ], [ %68, %123 ]
  call void @__free_pages(ptr noundef nonnull %7, i32 noundef 0) #9
  br label %159

159:                                              ; preds = %157, %3
  %160 = phi ptr [ null, %3 ], [ %158, %157 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  ret ptr %160
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_init_deviceid_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_decode_mp_ds_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_pnfs_ds_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfs4_fl_put_deviceid(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call zeroext i1 @nfs4_put_deviceid_node(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs4_put_deviceid_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nfs4_fl_calc_j_index(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 5
  %4 = load i64, ptr %3, align 8
  %5 = sub i64 %1, %4
  %6 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 8
  %8 = icmp ult i64 %5, 4294967296
  br i1 %8, label %9, label %13, !prof !10

9:                                                ; preds = %2
  %10 = trunc i64 %5 to i32
  %11 = udiv i32 %10, %7
  %12 = zext i32 %11 to i64
  br label %16

13:                                               ; preds = %2
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %5) #12, !srcloc !11
  %15 = extractvalue { i64, i64 } %14, 1
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i64 [ %12, %9 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %17, %20
  %22 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 7
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i64 %21, 4294967296
  br i1 %26, label %27, label %30, !prof !10

27:                                               ; preds = %16
  %28 = trunc i64 %21 to i32
  %29 = urem i32 %28, %25
  br label %35

30:                                               ; preds = %16
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %21) #12, !srcloc !11
  %32 = extractvalue { i64, i64 } %31, 0
  %33 = lshr i64 %32, 32
  %34 = trunc i64 %33 to i32
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i32 [ %29, %27 ], [ %34, %30 ]
  ret i32 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nfs4_fl_calc_ds_index(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 %1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nfs4_fl_select_ds_fh(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 1, label %17
    i32 0, label %23
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nfs4_file_layout_dsaddr, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %1
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %9, %6, %2
  %18 = phi i32 [ %16, %9 ], [ 0, %6 ], [ %1, %2 ]
  %19 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr ptr, ptr %20, i32 %18
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %17, %6
  %24 = phi ptr [ %22, %17 ], [ null, %6 ]
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfs4_fl_prepare_ds(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nfs4_filelayout_segment, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr %struct.nfs4_file_layout_dsaddr, ptr %4, i32 0, i32 4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pnfs_layout_segment, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pnfs_layout_hdr, ptr %8, i32 0, i32 15
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %6, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.nfs4_fl_prepare_ds, i32 noundef %1) #10
  %18 = getelementptr inbounds %struct.nfs4_deviceid_node, ptr %4, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %18) #9
  br label %38

19:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  %20 = getelementptr inbounds %struct.nfs4_pnfs_ds, ptr %6, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, ptr @dataserver_timeo, align 4
  %25 = load i32, ptr @dataserver_retrans, align 4
  %26 = load ptr, ptr %14, align 8
  %27 = getelementptr inbounds %struct.nfs_client, ptr %26, i32 0, i32 15
  %28 = load i32, ptr %27, align 8
  %29 = tail call i32 @nfs4_pnfs_ds_connect(ptr noundef %14, ptr noundef nonnull %6, ptr noundef %4, i32 noundef %24, i32 noundef %25, i32 noundef 4, i32 noundef %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  tail call void @nfs4_mark_deviceid_unavailable(ptr noundef %4) #9
  br label %38

32:                                               ; preds = %23
  %33 = load ptr, ptr %20, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %19
  %36 = tail call zeroext i1 @filelayout_test_devid_unavailable(ptr noundef %4) #9
  br i1 %36, label %37, label %38

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %35, %31, %16
  %39 = phi ptr [ null, %16 ], [ null, %37 ], [ %6, %35 ], [ null, %31 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_pnfs_ds_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_mark_deviceid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @filelayout_test_devid_unavailable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148415264, i64 2148415544, i64 2148415878, i64 2148416212}
!12 = !{i64 2156177881}
