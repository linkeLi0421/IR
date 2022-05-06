; ModuleID = '/llk/IR/fs/nfs/callback_xdr.c_pt.bc'
source_filename = "../fs/nfs/callback_xdr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.svc_procedure = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.svc_version = type { i32, i32, ptr, ptr, i32, i8, i8, i8, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_op = type { ptr, ptr, ptr, i32 }
%struct.svc_rqst = type { %struct.list_head, %struct.callback_head, ptr, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, ptr, ptr, %struct.svc_cred, ptr, ptr, i32, %struct.xdr_buf, %struct.xdr_stream, %struct.xdr_stream, ptr, %struct.xdr_buf, [260 x ptr], ptr, ptr, ptr, %struct.pagevec, [259 x %struct.kvec], [259 x %struct.bio_vec], i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i32, i32, i32, i64, %struct.cache_req, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon.112 }
%union.anon.112 = type { ptr, [124 x i8] }
%struct.svc_cred = type { %struct.kuid_t, %struct.kgid_t, ptr, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, i32, ptr }
%struct.kvec = type { ptr, i32 }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.pagevec = type { i8, i8, [15 x ptr] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cache_req = type { ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cb_process_state = type { i32, ptr, ptr, i32, ptr }
%struct.svc_xprt = type { ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, %struct.__kernel_sockaddr_storage, i32, %struct.__kernel_sockaddr_storage, i32, [58 x i8], %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfs4_session = type { %struct.nfs4_sessionid, i32, i32, i32, i32, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, %struct.nfs4_channel_attrs, %struct.nfs4_slot_table, ptr }
%struct.nfs4_sessionid = type { [16 x i8] }
%struct.nfs4_channel_attrs = type { i32, i32, i32, i32, i32 }
%struct.nfs4_slot_table = type { ptr, ptr, [32 x i32], %struct.spinlock, %struct.rpc_wait_queue, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nfs_fh = type { i16, [128 x i8] }
%struct.cb_getattrargs = type { %struct.nfs_fh, [2 x i32] }
%struct.cb_getattrres = type { i32, [2 x i32], i64, i64, %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.cb_recallargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32 }
%struct.nfs4_stateid_struct = type { %union.anon.124, i32 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, [12 x i8] }
%struct.cb_layoutrecallargs = type { i32, i32, i32, %union.anon.158 }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type { %struct.nfs_fh, %struct.pnfs_layout_range, %struct.nfs4_stateid_struct }
%struct.pnfs_layout_range = type { i32, i64, i64 }
%struct.cb_recallanyargs = type { i32, i32 }
%struct.cb_sequenceargs = type { ptr, %struct.nfs4_sessionid, i32, i32, i32, i32, i32, ptr }
%struct.referring_call_list = type { %struct.nfs4_sessionid, i32, ptr }
%struct.referring_call = type { i32, i32 }
%struct.cb_sequenceres = type { i32, %struct.nfs4_sessionid, i32, i32, i32, i32 }
%struct.cb_notify_lock_args = type { %struct.nfs_fh, %struct.nfs_lowner, i8 }
%struct.nfs_lowner = type { i64, i64, i32 }
%struct.cb_devicenotifyargs = type { i32, ptr }
%struct.cb_devicenotifyitem = type { i32, i32, %struct.nfs4_deviceid, i32 }
%struct.nfs4_deviceid = type { [16 x i8] }
%struct.cb_offloadargs = type { %struct.nfs_fh, %struct.nfs4_stateid_struct, i32, i64, %struct.nfs_writeverf }
%struct.nfs_writeverf = type { %struct.nfs_write_verifier, i32 }
%struct.nfs_write_verifier = type { [8 x i8] }

@nfs4_callback_procedures1 = internal constant [2 x %struct.svc_procedure] [%struct.svc_procedure { ptr @nfs4_callback_null, ptr null, ptr @nfs4_encode_void, ptr null, i32 0, i32 0, i32 0, i32 1, ptr @.str }, %struct.svc_procedure { ptr @nfs4_callback_compound, ptr null, ptr @nfs4_encode_void, ptr null, i32 256, i32 256, i32 0, i32 3072, ptr @.str.1 }], align 4
@nfs4_callback_count1 = internal global [2 x i32] zeroinitializer, align 4
@nfs4_callback_version1 = dso_local local_unnamed_addr constant %struct.svc_version { i32 1, i32 2, ptr @nfs4_callback_procedures1, ptr @nfs4_callback_count1, i32 2048, i8 1, i8 0, i8 1, ptr @nfs_callback_dispatch }, align 4
@nfs4_callback_count4 = internal global [2 x i32] zeroinitializer, align 4
@nfs4_callback_version4 = dso_local local_unnamed_addr constant %struct.svc_version { i32 4, i32 2, ptr @nfs4_callback_procedures1, ptr @nfs4_callback_count4, i32 2048, i8 1, i8 0, i8 1, ptr @nfs_callback_dispatch }, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"COMPOUND\00", align 1
@nfs4_callback_compound._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.nfs4_callback_compound = private unnamed_addr constant [23 x i8] c"nfs4_callback_compound\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\014NFS: NFSv4 callback contains invalid cred\0A\00", align 1
@decode_compound_hdr_arg._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.decode_compound_hdr_arg = private unnamed_addr constant [24 x i8] c"decode_compound_hdr_arg\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"\014NFS: %s: NFSv4 server callback with illegal minor version %u!\0A\00", align 1
@__tracepoint_nfs_cb_no_clp = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_nfs_cb_badprinc = external dso_local global %struct.tracepoint, align 4
@callback_ops = internal unnamed_addr constant [16 x %struct.callback_op] [%struct.callback_op { ptr null, ptr null, ptr null, i32 8 }, %struct.callback_op zeroinitializer, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_getattr, ptr @decode_getattr_args, ptr @encode_getattr_res, i32 64 }, %struct.callback_op { ptr @nfs4_callback_recall, ptr @decode_recall_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_layoutrecall, ptr @decode_layoutrecall_args, ptr null, i32 8 }, %struct.callback_op zeroinitializer, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_recallany, ptr @decode_recallany_args, ptr null, i32 8 }, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_recallslot, ptr @decode_recallslot_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_sequence, ptr @decode_cb_sequence_args, ptr @encode_cb_sequence_res, i32 40 }, %struct.callback_op zeroinitializer, %struct.callback_op { ptr @nfs4_callback_notify_lock, ptr @decode_notify_lock_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_devicenotify, ptr @decode_devicenotify_args, ptr null, i32 8 }, %struct.callback_op { ptr @nfs4_callback_offload, ptr @decode_offload_args, ptr null, i32 8 }], align 4
@switch.table.nfs4_callback_compound = private unnamed_addr constant [13 x ptr] [ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 4), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 5), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 8), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 10), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 13), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 14), ptr getelementptr inbounds ([16 x %struct.callback_op], ptr @callback_ops, i32 0, i32 15)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs_callback_dispatch(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 16
  %6 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  tail call void @xdr_init_decode(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef null) #10
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 18
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @page_address(ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 16, i32 4
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 16, i32 4, i32 1
  store i32 4096, ptr %12, align 4
  %13 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17
  %14 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19
  %15 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 4
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 4, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 1
  store ptr %14, ptr %17, align 4
  %18 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 3
  store ptr %14, ptr %18, align 4
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %19, i32 %21
  store ptr %22, ptr %13, align 4
  %23 = getelementptr i8, ptr %19, i32 4096
  %24 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 39
  %25 = load i32, ptr %24, align 8
  %26 = sub i32 0, %25
  %27 = getelementptr i8, ptr %23, i32 %26
  %28 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 2
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 8
  store i32 %21, ptr %29, align 4
  %30 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr ptr, ptr %31, i32 -1
  %33 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 5
  store ptr %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 23
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr ptr, ptr %35, i32 1
  %37 = ptrtoint ptr %36 to i32
  %38 = ptrtoint ptr %31 to i32
  %39 = sub i32 %37, %38
  %40 = shl i32 %39, 10
  %41 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 19, i32 7
  %42 = sub i32 %40, %25
  store i32 %42, ptr %41, align 4
  %43 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 7
  store ptr null, ptr %43, align 4
  %44 = load ptr, ptr %4, align 4
  %45 = tail call i32 %44(ptr noundef %0) #10
  store i32 %45, ptr %1, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nfs4_callback_null(ptr nocapture noundef readnone %0) #1 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nfs4_encode_void(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #1 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nfs4_callback_compound(ptr noundef %0) #0 {
  %2 = alloca %struct.cb_process_state, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 4
  %4 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i64 12, i1 false)
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.svc_xprt, ptr %5, i32 0, i32 19
  %8 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 48
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 16
  %12 = tail call ptr @xdr_inline_decode(ptr noundef %11, i32 noundef 4) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %242, label %14, !prof !8

14:                                               ; preds = %1
  %15 = load i32, ptr %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %11, i32 noundef %18) #10
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt i32 %18, 512
  %22 = or i1 %21, %20
  br i1 %22, label %242, label %23, !prof !9

23:                                               ; preds = %17, %14
  %24 = phi ptr [ null, %14 ], [ %19, %17 ]
  %25 = phi i32 [ 0, %14 ], [ %18, %17 ]
  %26 = tail call ptr @xdr_inline_decode(ptr noundef %11, i32 noundef 12) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %242, label %28, !prof !8

28:                                               ; preds = %23
  %29 = load i32, ptr %26, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #10
  %31 = icmp ult i32 %30, 3
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @___ratelimit(ptr noundef nonnull @decode_compound_hdr_arg._rs, ptr noundef nonnull @__func__.decode_compound_hdr_arg) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %94, label %35

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.decode_compound_hdr_arg, i32 noundef %30) #11
  br label %94

37:                                               ; preds = %28
  %38 = getelementptr i32, ptr %26, i32 1
  %39 = getelementptr i32, ptr %26, i32 2
  %40 = load i32, ptr %38, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  %42 = load i32, ptr %39, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %44 = icmp eq i32 %29, 0
  br i1 %44, label %45, label %94

45:                                               ; preds = %37
  %46 = load ptr, ptr %4, align 8
  %47 = icmp eq ptr %46, null
  %48 = getelementptr inbounds %struct.svc_xprt, ptr %46, i32 0, i32 19
  %49 = select i1 %47, ptr %8, ptr %48
  %50 = load ptr, ptr %49, align 4
  %51 = tail call ptr @nfs4_find_client_ident(ptr noundef %50, i32 noundef %41) #10
  %52 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 27
  %56 = load i32, ptr %55, align 4
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_no_clp, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %235

59:                                               ; preds = %54
  %60 = tail call ptr @llvm.thread.pointer() #10
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %235, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %71 = tail call i32 @__traceiter_nfs_cb_no_clp(ptr noundef null, i32 noundef %56, i32 noundef %41) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %235

72:                                               ; preds = %45
  %73 = tail call i32 @check_gss_callback_principal(ptr noundef nonnull %51, ptr noundef %0) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 27
  %77 = load i32, ptr %76, align 4
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_nfs_cb_badprinc, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = tail call ptr @llvm.thread.pointer() #10
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %80
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  %92 = tail call i32 @__traceiter_nfs_cb_badprinc(ptr noundef null, i32 noundef %77, i32 noundef %41) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %93

93:                                               ; preds = %91, %80, %75
  tail call void @nfs_put_client(ptr noundef nonnull %51) #10
  br label %235

94:                                               ; preds = %72, %37, %35, %32
  %95 = phi ptr [ %51, %72 ], [ null, %37 ], [ null, %32 ], [ null, %35 ]
  %96 = phi i32 [ 0, %72 ], [ 0, %37 ], [ 623312896, %32 ], [ 623312896, %35 ]
  %97 = phi i32 [ %43, %72 ], [ %43, %37 ], [ 0, %32 ], [ 0, %35 ]
  %98 = phi i32 [ 0, %72 ], [ %30, %37 ], [ %30, %32 ], [ %30, %35 ]
  %99 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17
  %101 = tail call ptr @xdr_reserve_space(ptr noundef %100, i32 noundef 4) #10
  %102 = icmp eq ptr %101, null
  br i1 %102, label %119, label %103, !prof !8

103:                                              ; preds = %94
  %104 = add nuw nsw i32 %25, 7
  %105 = and i32 %104, -4
  %106 = tail call ptr @xdr_reserve_space(ptr noundef %100, i32 noundef %105) #10
  %107 = icmp eq ptr %106, null
  br i1 %107, label %119, label %108, !prof !8

108:                                              ; preds = %103
  %109 = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %106, ptr noundef %24, i32 noundef %25) #10
  %110 = tail call ptr @xdr_reserve_space(ptr noundef %100, i32 noundef 4) #10
  %111 = icmp eq ptr %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = icmp ne i32 %97, 0
  %114 = select i1 %31, i1 %113, i1 false
  br i1 %114, label %115, label %216

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 17, i32 2
  %117 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 35
  %118 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 36
  br label %122

119:                                              ; preds = %108, %103, %94
  %120 = icmp eq ptr %95, null
  br i1 %120, label %242, label %121

121:                                              ; preds = %119
  tail call void @nfs_put_client(ptr noundef nonnull %95) #10
  br label %242

122:                                              ; preds = %205, %115
  %123 = phi i32 [ 0, %115 ], [ %207, %205 ]
  %124 = call ptr @xdr_inline_decode(ptr noundef %11, i32 noundef 4) #10
  %125 = icmp eq ptr %124, null
  br i1 %125, label %203, label %126, !prof !8

126:                                              ; preds = %122
  %127 = load i32, ptr %124, align 4
  %128 = call i32 @llvm.bswap.i32(i32 %127) #10
  %129 = load i32, ptr %99, align 4
  switch i32 %129, label %153 [
    i32 0, label %130
    i32 1, label %135
    i32 2, label %143
  ]

130:                                              ; preds = %126
  %131 = add i32 %128, -3
  %132 = icmp ult i32 %131, 2
  br i1 %132, label %133, label %186

133:                                              ; preds = %130
  %134 = getelementptr [0 x %struct.callback_op], ptr @callback_ops, i32 0, i32 %128
  br label %163

135:                                              ; preds = %126
  %136 = icmp eq i32 %127, 184549376
  %137 = icmp eq i32 %123, 0
  br i1 %136, label %138, label %139

138:                                              ; preds = %135
  br i1 %137, label %141, label %153

139:                                              ; preds = %135
  br i1 %137, label %153, label %140

140:                                              ; preds = %139
  switch i32 %128, label %186 [
    i32 3, label %141
    i32 4, label %141
    i32 12, label %153
    i32 8, label %141
    i32 10, label %141
    i32 5, label %141
    i32 14, label %141
    i32 13, label %141
    i32 6, label %153
    i32 7, label %153
    i32 9, label %153
  ]

141:                                              ; preds = %140, %140, %140, %140, %140, %140, %140, %138
  %142 = getelementptr [0 x %struct.callback_op], ptr @callback_ops, i32 0, i32 %128
  br label %163

143:                                              ; preds = %126
  %144 = icmp eq i32 %127, 184549376
  %145 = icmp eq i32 %123, 0
  br i1 %144, label %146, label %147

146:                                              ; preds = %143
  br i1 %145, label %151, label %153

147:                                              ; preds = %143
  br i1 %145, label %153, label %148

148:                                              ; preds = %147
  %149 = add i32 %128, -3
  %150 = icmp ult i32 %149, 13
  br i1 %150, label %155, label %153

151:                                              ; preds = %146
  %152 = getelementptr [0 x %struct.callback_op], ptr @callback_ops, i32 0, i32 %128
  br label %163

153:                                              ; preds = %155, %148, %147, %146, %140, %140, %140, %140, %139, %138, %126
  %154 = phi i32 [ 338100224, %148 ], [ 1344733184, %146 ], [ 1462173696, %147 ], [ 338100224, %140 ], [ 338100224, %140 ], [ 338100224, %140 ], [ 338100224, %140 ], [ 1462173696, %139 ], [ 1344733184, %138 ], [ 623312896, %126 ], [ 338100224, %155 ]
  br label %186

155:                                              ; preds = %148
  %156 = trunc i32 %149 to i16
  %157 = lshr i16 7335, %156
  %158 = and i16 %157, 1
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %153, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds [13 x ptr], ptr @switch.table.nfs4_callback_compound, i32 0, i32 %149
  %162 = load ptr, ptr %161, align 4
  br label %163

163:                                              ; preds = %160, %151, %141, %133
  %164 = phi ptr [ %142, %141 ], [ %134, %133 ], [ %152, %151 ], [ %162, %160 ]
  %165 = load i32, ptr %2, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %163
  %168 = load ptr, ptr %116, align 4
  %169 = load ptr, ptr %100, align 4
  %170 = ptrtoint ptr %168 to i32
  %171 = ptrtoint ptr %169 to i32
  %172 = xor i32 %171, -1
  %173 = add i32 %172, %170
  %174 = icmp ult i32 %173, 16383
  br i1 %174, label %175, label %186

175:                                              ; preds = %167
  %176 = getelementptr inbounds %struct.callback_op, ptr %164, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = load ptr, ptr %117, align 8
  %179 = call i32 %177(ptr noundef %0, ptr noundef %11, ptr noundef %178) #10
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %186, !prof !14

181:                                              ; preds = %175
  %182 = load ptr, ptr %164, align 4
  %183 = load ptr, ptr %117, align 8
  %184 = load ptr, ptr %118, align 4
  %185 = call i32 %182(ptr noundef %183, ptr noundef %184, ptr noundef nonnull %2) #10
  br label %186

186:                                              ; preds = %181, %175, %167, %163, %153, %140, %130
  %187 = phi ptr [ %164, %181 ], [ %164, %175 ], [ %164, %167 ], [ %164, %163 ], [ @callback_ops, %153 ], [ @callback_ops, %130 ], [ @callback_ops, %140 ]
  %188 = phi i32 [ %128, %181 ], [ %128, %175 ], [ %128, %167 ], [ %128, %163 ], [ %128, %153 ], [ 10044, %130 ], [ 10044, %140 ]
  %189 = phi i32 [ %185, %181 ], [ %179, %175 ], [ 572981248, %167 ], [ %165, %163 ], [ %154, %153 ], [ 1009188864, %130 ], [ 1009188864, %140 ]
  %190 = call ptr @xdr_reserve_space(ptr noundef %100, i32 noundef 8) #10
  %191 = icmp eq ptr %190, null
  br i1 %191, label %203, label %192, !prof !8

192:                                              ; preds = %186
  %193 = call i32 @llvm.bswap.i32(i32 %188) #10
  %194 = getelementptr i32, ptr %190, i32 1
  store i32 %193, ptr %190, align 4
  store i32 %189, ptr %194, align 4
  %195 = getelementptr inbounds %struct.callback_op, ptr %187, i32 0, i32 2
  %196 = load ptr, ptr %195, align 4
  %197 = icmp ne ptr %196, null
  %198 = icmp eq i32 %189, 0
  %199 = and i1 %198, %197
  br i1 %199, label %200, label %205

200:                                              ; preds = %192
  %201 = load ptr, ptr %118, align 4
  %202 = call i32 %196(ptr noundef %0, ptr noundef %100, ptr noundef %201) #10
  br label %205

203:                                              ; preds = %186, %122
  %204 = add nuw i32 %123, 1
  br label %213

205:                                              ; preds = %200, %192
  %206 = phi i32 [ %202, %200 ], [ %189, %192 ]
  %207 = add nuw i32 %123, 1
  %208 = icmp eq i32 %206, 0
  %209 = icmp ne i32 %207, %97
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %122, label %211

211:                                              ; preds = %205
  %212 = icmp eq i32 %206, 707461120
  br i1 %212, label %213, label %216, !prof !8

213:                                              ; preds = %211, %203
  %214 = phi i32 [ %204, %203 ], [ %207, %211 ]
  %215 = add i32 %214, -1
  br label %216

216:                                              ; preds = %213, %211, %112
  %217 = phi i32 [ %215, %213 ], [ %207, %211 ], [ 0, %112 ]
  %218 = phi i32 [ 572981248, %213 ], [ %206, %211 ], [ %96, %112 ]
  store i32 %218, ptr %101, align 4
  %219 = call i32 @llvm.bswap.i32(i32 %217)
  store i32 %219, ptr %110, align 4
  %220 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 2
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %232, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.nfs_client, ptr %225, i32 0, i32 36
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.nfs4_session, ptr %227, i32 0, i32 8
  %229 = getelementptr inbounds %struct.nfs4_session, ptr %227, i32 0, i32 8, i32 3
  call void @_raw_spin_lock(ptr noundef %229) #10
  call void @nfs4_free_slot(ptr noundef %228, ptr noundef nonnull %221) #10
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %230 = load i16, ptr %229, align 4
  %231 = add i16 %230, 1
  store i16 %231, ptr %229, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !16
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !17
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  store ptr null, ptr %220, align 4
  br label %232

232:                                              ; preds = %223, %216
  %233 = getelementptr inbounds %struct.cb_process_state, ptr %2, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  call void @nfs_put_client(ptr noundef %234) #10
  br label %242

235:                                              ; preds = %93, %70, %59, %54
  %236 = tail call i32 @___ratelimit(ptr noundef nonnull @nfs4_callback_compound._rs, ptr noundef nonnull @__func__.nfs4_callback_compound) #10
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %235
  %239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %240

240:                                              ; preds = %238, %235
  %241 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 38
  store i32 16777216, ptr %241, align 4
  br label %242

242:                                              ; preds = %240, %232, %121, %119, %23, %17, %1
  %243 = phi i32 [ 0, %232 ], [ 0, %240 ], [ 83886080, %121 ], [ 83886080, %119 ], [ 67108864, %23 ], [ 67108864, %17 ], [ 67108864, %1 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #10
  ret i32 %243
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_find_client_ident(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_gss_callback_principal(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_put_client(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_cb_no_clp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_nfs_cb_badprinc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_getattr(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_getattr_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %2, align 2
  %10 = and i32 %8, 65535
  %11 = icmp ugt i32 %10, 128
  br i1 %11, label %43, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %10) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15, !prof !8

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nfs_fh, ptr %2, i32 0, i32 1
  %17 = load i16, ptr %2, align 2
  %18 = zext i16 %17 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr nonnull align 4 %13, i32 %18, i1 false) #10
  %19 = getelementptr %struct.nfs_fh, ptr %2, i32 0, i32 1, i32 %18
  %20 = sub nsw i32 128, %18
  tail call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %20, i1 false) #10
  %21 = getelementptr inbounds %struct.cb_getattrargs, ptr %2, i32 0, i32 1
  %22 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24, !prof !8

24:                                               ; preds = %15
  %25 = load i32, ptr %22, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  %27 = shl i32 %26, 2
  %28 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30, !prof !8

30:                                               ; preds = %24
  %31 = icmp eq i32 %25, 0
  br i1 %31, label %36, label %32, !prof !8

32:                                               ; preds = %30
  %33 = getelementptr i32, ptr %28, i32 1
  %34 = load i32, ptr %28, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  store i32 %35, ptr %21, align 4
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi ptr [ %33, %32 ], [ %28, %30 ]
  %38 = icmp ugt i32 %26, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, ptr %37, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #10
  %42 = getelementptr %struct.cb_getattrargs, ptr %2, i32 0, i32 1, i32 1
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %39, %36, %24, %15, %12, %6, %3
  %44 = phi i32 [ 572981248, %15 ], [ 572981248, %24 ], [ 0, %39 ], [ 0, %36 ], [ 572981248, %12 ], [ 287768576, %6 ], [ 572981248, %3 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @encode_getattr_res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %82, !prof !14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cb_getattrres, ptr %2, i32 0, i32 1
  %8 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10, !prof !8

10:                                               ; preds = %6
  store i32 33554432, ptr %8, align 4
  %11 = getelementptr i32, ptr %8, i32 1
  %12 = load i32, ptr %7, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  store i32 %13, ptr %11, align 4
  %14 = getelementptr %struct.cb_getattrres, ptr %2, i32 0, i32 1, i32 1
  %15 = getelementptr i32, ptr %8, i32 2
  %16 = load i32, ptr %14, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  store i32 %17, ptr %15, align 4
  %18 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 4) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %82, label %20, !prof !8

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.cb_getattrres, ptr %2, i32 0, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = load i32, ptr %7, align 4
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %82, label %29, !prof !8

29:                                               ; preds = %26
  %30 = tail call i64 @llvm.bswap.i64(i64 %22) #10
  store i64 %30, ptr %27, align 1
  %31 = load i32, ptr %7, align 4
  br label %32

32:                                               ; preds = %29, %20
  %33 = phi i32 [ %31, %29 ], [ %23, %20 ]
  %34 = getelementptr inbounds %struct.cb_getattrres, ptr %2, i32 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = and i32 %33, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 8) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %82, label %41, !prof !8

41:                                               ; preds = %38
  %42 = tail call i64 @llvm.bswap.i64(i64 %35) #10
  store i64 %42, ptr %39, align 1
  br label %43

43:                                               ; preds = %41, %32
  %44 = getelementptr inbounds %struct.cb_getattrres, ptr %2, i32 0, i32 4
  %45 = load i32, ptr %14, align 4
  %46 = and i32 %45, 1048576
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %43
  %49 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %82, label %51, !prof !8

51:                                               ; preds = %48
  %52 = load i64, ptr %44, align 8
  %53 = tail call i64 @llvm.bswap.i64(i64 %52) #10
  store i64 %53, ptr %49, align 1
  %54 = getelementptr i32, ptr %49, i32 2
  %55 = getelementptr inbounds %struct.cb_getattrres, ptr %2, i32 0, i32 4, i32 1
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  store i32 %57, ptr %54, align 4
  %58 = load i32, ptr %14, align 4
  br label %59

59:                                               ; preds = %51, %43
  %60 = phi i32 [ %45, %43 ], [ %58, %51 ]
  %61 = getelementptr inbounds %struct.cb_getattrres, ptr %2, i32 0, i32 5
  %62 = and i32 %60, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 12) #10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67, !prof !8

67:                                               ; preds = %64
  %68 = load i64, ptr %61, align 8
  %69 = tail call i64 @llvm.bswap.i64(i64 %68) #10
  store i64 %69, ptr %65, align 1
  %70 = getelementptr i32, ptr %65, i32 2
  %71 = getelementptr inbounds %struct.cb_getattrres, ptr %2, i32 0, i32 5, i32 1
  %72 = load i32, ptr %71, align 8
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #10
  store i32 %73, ptr %70, align 4
  br label %74

74:                                               ; preds = %67, %64, %59
  %75 = phi i32 [ 0, %59 ], [ 0, %67 ], [ 572981248, %64 ]
  %76 = load ptr, ptr %1, align 4
  %77 = getelementptr i32, ptr %18, i32 1
  %78 = ptrtoint ptr %76 to i32
  %79 = ptrtoint ptr %77 to i32
  %80 = sub i32 %78, %79
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  store i32 %81, ptr %18, align 4
  br label %82

82:                                               ; preds = %74, %48, %38, %26, %10, %6, %3
  %83 = phi i32 [ %4, %3 ], [ 572981248, %10 ], [ %75, %74 ], [ 572981248, %6 ], [ 572981248, %26 ], [ 572981248, %38 ], [ 572981248, %48 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_recall(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_recall_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.cb_recallargs, ptr %2, i32 0, i32 1, i32 1
  store i32 4, ptr %4, align 4
  %5 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7, !prof !8

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cb_recallargs, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 16, i1 false) #10
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11, !prof !8

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = getelementptr inbounds %struct.cb_recallargs, ptr %2, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17, !prof !8

17:                                               ; preds = %11
  %18 = load i32, ptr %15, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = trunc i32 %19 to i16
  store i16 %20, ptr %2, align 2
  %21 = and i32 %19, 65535
  %22 = icmp ugt i32 %21, 128
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %21) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26, !prof !8

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nfs_fh, ptr %2, i32 0, i32 1
  %28 = load i16, ptr %2, align 2
  %29 = zext i16 %28 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %27, ptr nonnull align 4 %24, i32 %29, i1 false) #10
  %30 = getelementptr %struct.nfs_fh, ptr %2, i32 0, i32 1, i32 %29
  %31 = sub nsw i32 128, %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %31, i1 false) #10
  br label %32

32:                                               ; preds = %26, %23, %17, %11, %7, %3
  %33 = phi i32 [ 572981248, %7 ], [ 572981248, %3 ], [ 0, %26 ], [ 572981248, %11 ], [ 287768576, %17 ], [ 572981248, %23 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_layoutrecall(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_layoutrecall_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %67, label %6, !prof !8

6:                                                ; preds = %3
  %7 = getelementptr i32, ptr %4, i32 1
  %8 = load i32, ptr %4, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr i32, ptr %4, i32 2
  %12 = load i32, ptr %7, align 4
  %13 = getelementptr i32, ptr %4, i32 3
  %14 = load i32, ptr %11, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 2
  store i32 %15, ptr %16, align 8
  %17 = load i32, ptr %13, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  store i32 %18, ptr %2, align 8
  switch i32 %17, label %67 [
    i32 16777216, label %19
    i32 33554432, label %55
    i32 50331648, label %66
  ]

19:                                               ; preds = %6
  %20 = tail call i32 @llvm.bswap.i32(i32 %12)
  %21 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3
  %22 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3, i32 0, i32 1
  store i32 %20, ptr %22, align 8
  %23 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %67, label %25, !prof !8

25:                                               ; preds = %19
  %26 = load i32, ptr %23, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #10
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %21, align 2
  %29 = and i32 %27, 65535
  %30 = icmp ugt i32 %29, 128
  br i1 %30, label %67, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %29) #10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %67, label %34, !prof !8

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1
  %36 = load i16, ptr %21, align 2
  %37 = zext i16 %36 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %35, ptr nonnull align 4 %32, i32 %37, i1 false) #10
  %38 = getelementptr %struct.nfs_fh, ptr %21, i32 0, i32 1, i32 %37
  %39 = sub nsw i32 128, %37
  tail call void @llvm.memset.p0.i32(ptr align 1 %38, i8 0, i32 %39, i1 false) #10
  %40 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %67, label %42, !prof !8

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3, i32 0, i32 1, i32 1
  %44 = load i64, ptr %40, align 1
  %45 = tail call i64 @llvm.bswap.i64(i64 %44) #10
  store i64 %45, ptr %43, align 8
  %46 = getelementptr i32, ptr %40, i32 2
  %47 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3, i32 0, i32 1, i32 2
  %48 = load i64, ptr %46, align 1
  %49 = tail call i64 @llvm.bswap.i64(i64 %48) #10
  store i64 %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3, i32 0, i32 2, i32 1
  store i32 5, ptr %50, align 4
  %51 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53, !prof !8

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %54, ptr noundef nonnull align 4 dereferenceable(16) %51, i32 16, i1 false) #10
  br label %67

55:                                               ; preds = %6
  %56 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58, !prof !8

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3
  %60 = load i64, ptr %56, align 1
  %61 = tail call i64 @llvm.bswap.i64(i64 %60) #10
  store i64 %61, ptr %59, align 8
  %62 = getelementptr i32, ptr %56, i32 2
  %63 = getelementptr inbounds %struct.cb_layoutrecallargs, ptr %2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 6
  %64 = load i64, ptr %62, align 1
  %65 = tail call i64 @llvm.bswap.i64(i64 %64) #10
  store i64 %65, ptr %63, align 8
  br label %66

66:                                               ; preds = %58, %6
  br label %67

67:                                               ; preds = %66, %55, %53, %42, %34, %31, %25, %19, %6, %3
  %68 = phi i32 [ 0, %66 ], [ 874971136, %3 ], [ 874971136, %34 ], [ 874971136, %55 ], [ 874971136, %6 ], [ 0, %53 ], [ 572981248, %42 ], [ 572981248, %31 ], [ 287768576, %25 ], [ 572981248, %19 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_recallany(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_recallany_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr %2, align 4
  %9 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11, !prof !8

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  %14 = shl i32 %13, 2
  %15 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %14) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !8

17:                                               ; preds = %11
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %22, label %19, !prof !8

19:                                               ; preds = %17
  %20 = load i32, ptr %15, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ 0, %17 ], [ %21, %19 ]
  %24 = getelementptr inbounds %struct.cb_recallanyargs, ptr %2, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %11, %6, %3
  %26 = phi i32 [ 0, %22 ], [ 874971136, %3 ], [ 572981248, %6 ], [ 572981248, %11 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_recallslot(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_recallslot_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  store i32 %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %6 ], [ 874971136, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_sequence(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_cb_sequence_args(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %123, label %6, !prof !8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cb_sequenceargs, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 16, i1 false) #10
  %8 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 20) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %123, label %10, !prof !8

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.svc_rqst, ptr %0, i32 0, i32 3
  store ptr %11, ptr %2, align 4
  %12 = getelementptr i32, ptr %8, i32 1
  %13 = load i32, ptr %8, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = getelementptr inbounds %struct.cb_sequenceargs, ptr %2, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i32, ptr %8, i32 2
  %17 = load i32, ptr %12, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = getelementptr inbounds %struct.cb_sequenceargs, ptr %2, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = getelementptr i32, ptr %8, i32 3
  %21 = load i32, ptr %16, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = getelementptr inbounds %struct.cb_sequenceargs, ptr %2, i32 0, i32 4
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i32, ptr %8, i32 4
  %25 = load i32, ptr %20, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = getelementptr inbounds %struct.cb_sequenceargs, ptr %2, i32 0, i32 5
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %24, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr inbounds %struct.cb_sequenceargs, ptr %2, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.cb_sequenceargs, ptr %2, i32 0, i32 7
  store ptr null, ptr %31, align 4
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %123, label %33

33:                                               ; preds = %10
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 24) #10
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %123, label %36, !prof !8

36:                                               ; preds = %33
  %37 = extractvalue { i32, i1 } %34, 0
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3264) #12
  store ptr %38, ptr %31, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %123, label %40, !prof !8

40:                                               ; preds = %36
  %41 = load i32, ptr %30, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %123, label %43

43:                                               ; preds = %40
  %44 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %102, label %46, !prof !8

46:                                               ; preds = %109, %43
  %47 = phi ptr [ %111, %109 ], [ %44, %43 ]
  %48 = phi i32 [ %106, %109 ], [ 0, %43 ]
  %49 = phi ptr [ %110, %109 ], [ %38, %43 ]
  %50 = getelementptr %struct.referring_call_list, ptr %49, i32 %48
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %50, ptr noundef nonnull align 4 dereferenceable(16) %47, i32 16, i1 false) #10
  %51 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %102, label %53, !prof !8

53:                                               ; preds = %46
  %54 = load i32, ptr %51, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #10
  %56 = getelementptr %struct.referring_call_list, ptr %49, i32 %48, i32 1
  store i32 %55, ptr %56, align 4
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %105, label %58

58:                                               ; preds = %53
  %59 = shl i32 %55, 3
  %60 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %59) #10
  %61 = icmp eq ptr %60, null
  br i1 %61, label %102, label %62, !prof !8

62:                                               ; preds = %58
  %63 = load i32, ptr %56, align 4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 8) #10
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %66, label %68, !prof !8

66:                                               ; preds = %62
  %67 = getelementptr %struct.referring_call_list, ptr %49, i32 %48, i32 2
  store ptr null, ptr %67, align 4
  br label %102

68:                                               ; preds = %62
  %69 = extractvalue { i32, i1 } %64, 0
  %70 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %69, i32 noundef 3264) #12
  %71 = getelementptr %struct.referring_call_list, ptr %49, i32 %48, i32 2
  store ptr %70, ptr %71, align 4
  %72 = icmp eq ptr %70, null
  br i1 %72, label %102, label %73, !prof !8

73:                                               ; preds = %68
  %74 = load i32, ptr %56, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %105, label %76

76:                                               ; preds = %73
  %77 = getelementptr i32, ptr %60, i32 1
  %78 = load i32, ptr %60, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  store i32 %79, ptr %70, align 64
  %80 = load i32, ptr %77, align 4
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  %82 = load ptr, ptr %71, align 4
  %83 = getelementptr %struct.referring_call, ptr %82, i32 0, i32 1
  store i32 %81, ptr %83, align 4
  %84 = load i32, ptr %56, align 4
  %85 = icmp ugt i32 %84, 1
  br i1 %85, label %86, label %105

86:                                               ; preds = %86, %76
  %87 = phi i32 [ %99, %86 ], [ 1, %76 ]
  %88 = phi ptr [ %89, %86 ], [ %60, %76 ]
  %89 = getelementptr i32, ptr %88, i32 2
  %90 = load ptr, ptr %71, align 4
  %91 = getelementptr i32, ptr %88, i32 3
  %92 = load i32, ptr %89, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #10
  %94 = getelementptr %struct.referring_call, ptr %90, i32 %87
  store i32 %93, ptr %94, align 4
  %95 = load i32, ptr %91, align 4
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #10
  %97 = load ptr, ptr %71, align 4
  %98 = getelementptr %struct.referring_call, ptr %97, i32 %87, i32 1
  store i32 %96, ptr %98, align 4
  %99 = add nuw i32 %87, 1
  %100 = load i32, ptr %56, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %86, label %105

102:                                              ; preds = %109, %68, %66, %58, %46, %43
  %103 = phi i32 [ %48, %66 ], [ 0, %43 ], [ %48, %46 ], [ %48, %58 ], [ %48, %68 ], [ %106, %109 ]
  store i32 %103, ptr %30, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %121, label %113

105:                                              ; preds = %86, %76, %73, %53
  %106 = add nuw i32 %48, 1
  %107 = load i32, ptr %30, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load ptr, ptr %31, align 4
  %111 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %112 = icmp eq ptr %111, null
  br i1 %112, label %102, label %46, !prof !8

113:                                              ; preds = %113, %102
  %114 = phi i32 [ %118, %113 ], [ 0, %102 ]
  %115 = load ptr, ptr %31, align 4
  %116 = getelementptr %struct.referring_call_list, ptr %115, i32 %114, i32 2
  %117 = load ptr, ptr %116, align 4
  tail call void @kfree(ptr noundef %117) #10
  %118 = add nuw i32 %114, 1
  %119 = load i32, ptr %30, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %113, label %121

121:                                              ; preds = %113, %102
  %122 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %122) #10
  br label %123

123:                                              ; preds = %121, %105, %40, %36, %33, %10, %6, %3
  %124 = phi i32 [ 572981248, %121 ], [ 572981248, %6 ], [ 572981248, %36 ], [ 0, %10 ], [ 572981248, %3 ], [ 0, %40 ], [ 572981248, %33 ], [ 0, %105 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @encode_cb_sequence_res(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %29, !prof !14

6:                                                ; preds = %3
  %7 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9, !prof !8

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.cb_sequenceres, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef align 1 dereferenceable(16) %10, i32 16, i1 false) #10
  %11 = tail call ptr @xdr_reserve_space(ptr noundef %1, i32 noundef 16) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13, !prof !8

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cb_sequenceres, ptr %2, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = getelementptr i32, ptr %11, i32 1
  store i32 %16, ptr %11, align 4
  %18 = getelementptr inbounds %struct.cb_sequenceres, ptr %2, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = getelementptr i32, ptr %11, i32 2
  store i32 %20, ptr %17, align 4
  %22 = getelementptr inbounds %struct.cb_sequenceres, ptr %2, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = getelementptr i32, ptr %11, i32 3
  store i32 %24, ptr %21, align 4
  %26 = getelementptr inbounds %struct.cb_sequenceres, ptr %2, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  store i32 %28, ptr %25, align 4
  br label %29

29:                                               ; preds = %13, %9, %6, %3
  %30 = phi i32 [ 0, %13 ], [ %4, %3 ], [ 572981248, %9 ], [ 572981248, %6 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_notify_lock(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_notify_lock_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %49, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %2, align 2
  %10 = and i32 %8, 65535
  %11 = icmp ugt i32 %10, 128
  br i1 %11, label %49, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %10) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %49, label %15, !prof !8

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nfs_fh, ptr %2, i32 0, i32 1
  %17 = load i16, ptr %2, align 2
  %18 = zext i16 %17 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr nonnull align 4 %13, i32 %18, i1 false) #10
  %19 = getelementptr %struct.nfs_fh, ptr %2, i32 0, i32 1, i32 %18
  %20 = sub nsw i32 128, %18
  tail call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %20, i1 false) #10
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23, !prof !8

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cb_notify_lock_args, ptr %2, i32 0, i32 1
  %25 = load i64, ptr %21, align 1
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #10
  store i64 %26, ptr %24, align 8
  %27 = getelementptr i32, ptr %21, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  %30 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %29) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32, !prof !8

32:                                               ; preds = %23
  %33 = icmp eq i32 %28, 335544320
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = getelementptr i32, ptr %30, i32 2
  %36 = getelementptr i32, ptr %30, i32 3
  %37 = load i32, ptr %35, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %39 = getelementptr inbounds %struct.cb_notify_lock_args, ptr %2, i32 0, i32 1, i32 2
  store i32 %38, ptr %39, align 8
  %40 = load i64, ptr %36, align 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #10
  br label %44

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.cb_notify_lock_args, ptr %2, i32 0, i32 1, i32 2
  store i32 0, ptr %43, align 8
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi i64 [ %41, %34 ], [ 0, %42 ]
  %46 = phi i8 [ 1, %34 ], [ 0, %42 ]
  %47 = getelementptr inbounds %struct.cb_notify_lock_args, ptr %2, i32 0, i32 1, i32 1
  store i64 %45, ptr %47, align 8
  %48 = getelementptr inbounds %struct.cb_notify_lock_args, ptr %2, i32 0, i32 2
  store i8 %46, ptr %48, align 8
  br label %49

49:                                               ; preds = %44, %23, %15, %12, %6, %3
  %50 = phi i32 [ 874971136, %15 ], [ 874971136, %23 ], [ 0, %44 ], [ 572981248, %12 ], [ 287768576, %6 ], [ 572981248, %3 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_devicenotify(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_devicenotify_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %69, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %6
  %11 = icmp ugt i32 %8, 153391689
  br i1 %11, label %69, label %12

12:                                               ; preds = %10
  %13 = mul nuw i32 %8, 28
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3264) #12
  %15 = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %2, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %12
  %18 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  %19 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 32) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %66, label %21, !prof !8

21:                                               ; preds = %61, %17
  %22 = phi ptr [ %64, %61 ], [ %19, %17 ]
  %23 = phi ptr [ %63, %61 ], [ %14, %17 ]
  %24 = phi i32 [ %59, %61 ], [ 0, %17 ]
  %25 = phi ptr [ %62, %61 ], [ %14, %17 ]
  %26 = load i32, ptr %22, align 4
  %27 = icmp eq i32 %26, 16777216
  br i1 %27, label %28, label %66

28:                                               ; preds = %21
  %29 = getelementptr i32, ptr %22, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  store i32 %31, ptr %23, align 4
  switch i32 %30, label %66 [
    i32 33554432, label %32
    i32 67108864, label %32
  ]

32:                                               ; preds = %28, %28
  %33 = getelementptr i32, ptr %22, i32 2
  %34 = getelementptr i32, ptr %22, i32 3
  %35 = load i32, ptr %33, align 4
  %36 = icmp eq i32 %30, 33554432
  %37 = icmp ne i32 %35, 402653184
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %66, label %39

39:                                               ; preds = %32
  %40 = icmp eq i32 %30, 67108864
  %41 = icmp ne i32 %35, 335544320
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %66, label %43

43:                                               ; preds = %39
  %44 = getelementptr i32, ptr %22, i32 4
  %45 = load i32, ptr %34, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = getelementptr %struct.cb_devicenotifyitem, ptr %25, i32 %24, i32 1
  store i32 %46, ptr %47, align 4
  %48 = getelementptr %struct.cb_devicenotifyitem, ptr %25, i32 %24, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %48, ptr noundef align 4 dereferenceable(16) %44, i32 16, i1 false)
  %49 = icmp eq i32 %45, 33554432
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %52 = icmp eq ptr %51, null
  br i1 %52, label %66, label %53, !prof !8

53:                                               ; preds = %50
  %54 = load i32, ptr %51, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  br label %56

56:                                               ; preds = %53, %43
  %57 = phi i32 [ %55, %53 ], [ 0, %43 ]
  %58 = getelementptr %struct.cb_devicenotifyitem, ptr %25, i32 %24, i32 3
  store i32 %57, ptr %58, align 4
  %59 = add nuw i32 %24, 1
  %60 = icmp eq i32 %59, %18
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %15, align 4
  %63 = getelementptr %struct.cb_devicenotifyitem, ptr %62, i32 %59
  %64 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 32) #10
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %21, !prof !8

66:                                               ; preds = %61, %50, %39, %32, %28, %21, %17
  %67 = phi i32 [ 874971136, %17 ], [ 874971136, %50 ], [ 369098752, %32 ], [ 369098752, %39 ], [ 369098752, %28 ], [ 369098752, %21 ], [ 874971136, %61 ]
  %68 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %68) #10
  br label %69

69:                                               ; preds = %66, %12, %10, %6, %3
  %70 = phi i32 [ 0, %6 ], [ %67, %66 ], [ 874971136, %3 ], [ 874971136, %10 ], [ 405209088, %12 ]
  %71 = getelementptr inbounds %struct.cb_devicenotifyargs, ptr %2, i32 0, i32 1
  store ptr null, ptr %71, align 4
  br label %72

72:                                               ; preds = %69, %56
  %73 = phi i32 [ 0, %69 ], [ %8, %56 ]
  %74 = phi i32 [ %70, %69 ], [ 0, %56 ]
  store i32 %73, ptr %2, align 4
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_callback_offload(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @decode_offload_args(ptr nocapture noundef readnone %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %58, label %6, !prof !8

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %2, align 2
  %10 = and i32 %8, 65535
  %11 = icmp ugt i32 %10, 128
  br i1 %11, label %58, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef %10) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %58, label %15, !prof !8

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.nfs_fh, ptr %2, i32 0, i32 1
  %17 = load i16, ptr %2, align 2
  %18 = zext i16 %17 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %16, ptr nonnull align 4 %13, i32 %18, i1 false) #10
  %19 = getelementptr %struct.nfs_fh, ptr %2, i32 0, i32 1, i32 %18
  %20 = sub nsw i32 128, %18
  tail call void @llvm.memset.p0.i32(ptr align 1 %19, i8 0, i32 %20, i1 false) #10
  %21 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 16) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %23, !prof !8

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.cb_offloadargs, ptr %2, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %24, ptr noundef nonnull align 4 dereferenceable(16) %21, i32 16, i1 false) #10
  %25 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27, !prof !8

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = getelementptr inbounds %struct.cb_offloadargs, ptr %2, i32 0, i32 2
  store i32 %29, ptr %30, align 8
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 4) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %58, label %35, !prof !8

35:                                               ; preds = %32
  %36 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 12) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %58, label %38, !prof !8

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.cb_offloadargs, ptr %2, i32 0, i32 3
  %40 = load i64, ptr %36, align 1
  %41 = tail call i64 @llvm.bswap.i64(i64 %40) #10
  store i64 %41, ptr %39, align 8
  %42 = getelementptr i32, ptr %36, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #10
  %45 = getelementptr inbounds %struct.cb_offloadargs, ptr %2, i32 0, i32 4, i32 1
  store i32 %44, ptr %45, align 8
  %46 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48, !prof !8

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.cb_offloadargs, ptr %2, i32 0, i32 4
  %50 = load i64, ptr %46, align 4
  store i64 %50, ptr %49, align 8
  br label %58

51:                                               ; preds = %27
  %52 = tail call ptr @xdr_inline_decode(ptr noundef %1, i32 noundef 8) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !8

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.cb_offloadargs, ptr %2, i32 0, i32 3
  %56 = load i64, ptr %52, align 1
  %57 = tail call i64 @llvm.bswap.i64(i64 %56) #10
  store i64 %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %54, %51, %48, %38, %35, %32, %23, %15, %12, %6, %3
  %59 = phi i32 [ 572981248, %51 ], [ 572981248, %23 ], [ 572981248, %15 ], [ 0, %48 ], [ 0, %54 ], [ 572981248, %12 ], [ 287768576, %6 ], [ 572981248, %3 ], [ 572981248, %38 ], [ 572981248, %35 ], [ 572981248, %32 ]
  ret i32 %59
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs4_free_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdr_init_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 4001, i32 4000000}
!10 = !{i64 2156762919}
!11 = !{i64 2156763083}
!12 = !{i64 2156779074}
!13 = !{i64 2156779242}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148958936}
!16 = !{i64 2148954760}
!17 = !{i64 2148954835, i64 2148954862, i64 2148954909, i64 2148954931, i64 2148954959, i64 2148954979}
!18 = !{i64 2148981939}
